# Supply Chain Performance & Forecast Analytics

![Power BI](https://img.shields.io/badge/Power%20BI-Analytics-F2C811?logo=powerbi&logoColor=black)
![SQL](https://img.shields.io/badge/SQL-Database-blue)
![Python](https://img.shields.io/badge/Python-Analytics-3776AB?logo=python&logoColor=white)
![Flask](https://img.shields.io/badge/Flask-Web%20Application-black?logo=flask)
![MySQL](https://img.shields.io/badge/MySQL-Database-4479A1?logo=mysql&logoColor=white)

An end-to-end Supply Chain Analytics project developed as part of my **Master's Degree in Management Information Systems**.

The project integrates relational database design, SQL analytics, Power BI dashboards and a Flask-based frontend application to monitor supply chain performance and demand forecasting KPIs.

---

# 📊 Dashboard Preview

## Supply Chain Performance Dashboard

<p align="center">
  <img src="Images/Dashboard_Overview.png" width="900">
</p>

---

# 🔗 Power BI Data Model

<p align="center">
  <img src="Images/PowerBI_Data_Model.png" width="900">
</p>

---

# 🗄️ Database Schema (ER Diagram)

<p align="center">
  <img src="Images/Database_Schema.png" width="900">
</p>

---

# 💻 Python Frontend

## Dashboard Interface

<p align="center">
  <img src="Images/Frontend_Dashboard.png" width="900">
</p>

### Supplier Entry Module

<p align="center">
  <img src="Images/Frontend_Supplier.png" width="900">
</p>

---

# 🎯 Project Objectives

- Design a normalized relational database for supply chain operations
- Build an end-to-end supply chain analytics workflow
- Analyze operational performance using SQL
- Develop interactive Power BI dashboards
- Monitor inventory, logistics and forecasting KPIs
- Demonstrate a simple Python-based frontend for data entry

---

# 📈 Key Performance Indicators

- Forecast Accuracy
- Inventory Turnover
- On-Time Delivery Rate (OTDR)
- Stockout Rate
- Supplier Performance
- Supplier Delay Analysis
- Demand Trend Analysis

---

# 🛠️ Technologies

- MySQL
- SQL
- Power BI
- Python
- Flask
- HTML
- Excel
- ERwin Data Modeler

---

# 📂 Repository Structure

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

# 🗄️ Database Design

The relational database was designed using **ERwin Data Modeler** and implemented in **MySQL** through Forward Engineering.

The data model includes the following entities:

- Product
- Warehouse
- Inventory
- Supplier
- Purchase Order
- Purchase Order Detail
- Forecast
- Actual Demand

The schema supports inventory management, procurement, supplier performance analysis and demand forecasting scenarios.

---

# 📊 Power BI Dashboard

The interactive Power BI dashboard was developed to monitor operational and forecasting performance across the supply chain.

Dashboard components include:

- KPI Cards
- Supplier Performance Analysis
- Demand Trend Analysis
- Product Stockout Risk
- Forecast Accuracy Monitoring
- Inventory Performance Metrics

---

# 💻 Python Frontend

A lightweight Flask-based web application was developed to simulate operational data entry.

Available modules include:

- Supplier Entry
- Product Entry
- Purchase Order Entry
- Forecast Entry

The frontend demonstrates how operational data can be captured before being processed for analytics and reporting.

---

# 📄 Project Files

| File | Description |
|------|-------------|
| Project_Report.pdf | Complete project documentation |
| Supply_Chain_Performance_Dashboard.pbix | Interactive Power BI dashboard |
| Forward_Engineering.sql | MySQL database schema |
| Input_Data | Sample source datasets |
| Output_Data | SQL analysis results and KPI outputs |
| Python_Frontend | Flask-based frontend application |

---

# 🚀 Future Improvements

- Automated ETL pipeline
- Machine Learning-based demand forecasting
- Cloud deployment (Azure / AWS)
- REST API integration
- Real-time dashboard updates
- Interactive web dashboard
