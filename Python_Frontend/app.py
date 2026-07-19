from flask import Flask, render_template, request, redirect
import mysql.connector

app = Flask(__name__)

db_config = {
    "host": "localhost",
    "user": "root",
    "password": "Elma1muz6&",
    "database": "supply_chain_db"
}

def get_connection():
    return mysql.connector.connect(**db_config)

@app.route("/")
def index():
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute("""
        SELECT ROUND(
            (SUM(CASE WHEN actual_delivery_date <= expected_delivery_date THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2
        ) AS value
        FROM purchase_order
    """)
    on_time = cursor.fetchone()["value"]

    cursor.execute("""
        SELECT ROUND(
            (SUM(CASE WHEN stock_quantity < safety_stock THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2
        ) AS value
        FROM inventory
    """)
    stockout = cursor.fetchone()["value"]

    conn.close()
    return render_template("index.html", on_time=on_time, stockout=stockout)

@app.route("/supplier", methods=["GET", "POST"])
def supplier():
    if request.method == "POST":
        conn = get_connection()
        cursor = conn.cursor()
        cursor.execute("""
            INSERT INTO supplier (supplier_id, supplier_name, country, status)
            VALUES (%s, %s, %s, %s)
        """, (
            request.form["supplier_id"],
            request.form["supplier_name"],
            request.form["country"],
            request.form["status"]
        ))
        conn.commit()
        conn.close()
        return redirect("/supplier")

    return render_template("supplier.html")

@app.route("/product", methods=["GET", "POST"])
def product():
    if request.method == "POST":
        conn = get_connection()
        cursor = conn.cursor()
        cursor.execute("""
            INSERT INTO product (product_id, product_name, category, unit_price, standard_lead_time, status)
            VALUES (%s, %s, %s, %s, %s, %s)
        """, (
            request.form["product_id"],
            request.form["product_name"],
            request.form["category"],
            request.form["unit_price"],
            request.form["standard_lead_time"],
            request.form["status"]
        ))
        conn.commit()
        conn.close()
        return redirect("/product")

    return render_template("product.html")

@app.route("/purchase_order", methods=["GET", "POST"])
def purchase_order():
    if request.method == "POST":
        conn = get_connection()
        cursor = conn.cursor()
        cursor.execute("""
            INSERT INTO purchase_order 
            (po_id, supplier_id, warehouse_id, order_date, expected_delivery_date, actual_delivery_date, po_status, total_amount)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
        """, (
            request.form["po_id"],
            request.form["supplier_id"],
            request.form["warehouse_id"],
            request.form["order_date"],
            request.form["expected_delivery_date"],
            request.form["actual_delivery_date"],
            request.form["po_status"],
            request.form["total_amount"]
        ))
        conn.commit()
        conn.close()
        return redirect("/purchase_order")

    return render_template("purchase_order.html")

@app.route("/forecast", methods=["GET", "POST"])
def forecast():
    if request.method == "POST":
        conn = get_connection()
        cursor = conn.cursor()
        cursor.execute("""
            INSERT INTO forecast 
            (forecast_id, product_id, warehouse_id, forecast_period, forecast_quantity, created_date)
            VALUES (%s, %s, %s, %s, %s, %s)
        """, (
            request.form["forecast_id"],
            request.form["product_id"],
            request.form["warehouse_id"],
            request.form["forecast_period"],
            request.form["forecast_quantity"],
            request.form["created_date"]
        ))
        conn.commit()
        conn.close()
        return redirect("/forecast")

    return render_template("forecast.html")

if __name__ == "__main__":
    app.run(debug=True)