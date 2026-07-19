# Supply Chain Performance & Forecast Analytics

Power BI | SQL | MySQL | Python | Flask

An end-to-end Supply Chain Analytics project developed as part of my Master's Degree in Management Information Systems.

The project combines relational database design, SQL analytics, Power BI dashboards and a Python-based frontend to monitor supply chain performance and forecasting KPIs.

---

# 📊 Dashboard Preview

## Supply Chain Performance Dashboard

<img src="Images/dashboard_overview.png" width="850">

---

## Power BI Data Model

![Power BI Data Model](Images/PowerBI_Data_Model.png)

---

## Database Schema (ER Diagram)

![Database Schema](Images/Database_Schema.png)

---

## Python Frontend

### Dashboard Interface

![Dashboard Interface](Images/Frontend_Dashboard.png)

### Supplier Entry Form

![Supplier Entry](Images/Frontend_Supplier.png)

---

# Project Objectives

- Design a relational supply chain database
- Build a normalized database schema
- Analyze operational performance using SQL
- Develop interactive Power BI dashboards
- Monitor forecasting and inventory KPIs
- Demonstrate a simple Python frontend for data entry

---

# Key Performance Indicators

- Forecast Accuracy
- Inventory Turnover
- On-Time Delivery Rate (OTDR)
- Stockout Rate
- Supplier Performance
- Supplier Delay Analysis
- Demand Trend Analysis

---

# Technologies

- MySQL
- SQL
- Power BI
- Python
- Flask
- HTML
- Excel

---

# Repository Structure

```text
Supply-Chain-Performance-Forecast-Analytics

├── Images/
│   ├── dashboard_overview.png
│   ├── powerbi_data_model.png
│   ├── database_schema.png
│   ├── frontend_dashboard.png
│   └── frontend_supplier.png
│
├── Input_Data/
│   ├── actual_demand.xlsx
│   ├── forecast.xlsx
│   ├── inventory.xlsx
│   ├── product.xlsx
│   ├── purchase_order.xlsx
│   ├── purchase_order_detail.xlsx
│   ├── supplier.xlsx
│   └── warehouse.xlsx
│
├── Output_Data/
│   ├── Demand_Trend_Analysis.xlsx
│   ├── Forecast_Accuracy.xlsx
│   ├── Forecast_Accuracy_View.xlsx
│   ├── Forecast_Deviation_Analysis.xlsx
│   ├── Inventory_Turnover.xlsx
│   ├── Stockout_Rate.xlsx
│   ├── Supplier_Performance_Delay_Analysis.xlsx
│   ├── Supplier_Performance_View.xlsx
│   └── Window_Function.xlsx
│
├── Python_Frontend/
│
├── Forward_Engineering.sql
├── Supply_Chain_Performance_Dashboard.pbix
└── Project_Report.pdf
```

---

# Database Design

The database was designed using a normalized relational model including:

- Product
- Warehouse
- Inventory
- Supplier
- Purchase Order
- Purchase Order Detail
- Forecast
- Actual Demand

The schema was implemented in MySQL using Forward Engineering.

---

# Power BI Dashboard

The Power BI dashboard provides interactive KPI monitoring for supply chain operations.

Dashboard components include:

- KPI Cards
- Supplier Performance Analysis
- Demand Trend Analysis
- Product Stockout Risk
- Forecast Accuracy Monitoring

---

# Python Frontend

A lightweight Flask application was developed to demonstrate basic data entry operations for supply chain entities.

Available modules include:

- Supplier Entry
- Product Entry
- Purchase Order Entry
- Forecast Entry

---

# Project Files

| File | Description |
|------|-------------|
| Project_Report.pdf | Complete project documentation |
| Supply_Chain_Performance_Dashboard.pbix | Interactive Power BI dashboard |
| Forward_Engineering.sql | MySQL database schema |
| Input_Data | Sample source datasets |
| Output_Data | SQL query outputs and KPI analyses |
| Python_Frontend | Flask-based frontend application |

---

# Future Improvements

- Real-time database integration
- Automated ETL pipeline
- Forecasting using Machine Learning
- Cloud deployment
- Interactive web dashboard
