# Walmart Brazil Sales Analysis

This project analyzes Walmart Brazil’s sales decline using a Kaggle e-commerce dataset. Data is cleaned in Python (`clean.ipynb`), loaded into SQL Server (`To_SQL.ipynb`), and used to train an ML model to predict delivery delays (`pred.ipynb`). Three Power BI dashboards (Sales, Customer Reviews, Logistics) provide insights to achieve a 10% sales increase. Visuals include process flow, data dictionary, ER diagram, and dashboard screenshots.

## Structure
- `scripts/`: Python notebooks for data cleaning, ML prediction, SQL loading
- `visuals/`: Process flow, data dictionary, ER diagram, dashboard screenshots
- `docs/`: Project summary presentation (PDF)

## Setup
1. Clone: `git clone https://github.com/your-username/walmart-brazil-sales.git`
2. Install: `pip install -r requirements.txt`
3. Configure SQL Server and Power BI (see `docs/presentation.pdf`)

## Process Flow
The system starts with customer orders captured in the web application, stored in a Data Warehouse (star schema with ORDERS fact table). ETL processes via SSIS load data into SQL Server. Python ML models predict delivery delays, and results are stored back in SQL. Power BI dashboards visualize sales, reviews, and logistics. Salesforce CRM tracks customer interactions, enabling targeted campaigns for managers.

![image](https://github.com/aditya-pa/walmart-brazil-sales/blob/main/visuals/PROCESS%20FLOW.svg)

## ER Diagram
The e-commerce system ER (Entity-Relationship) diagram depicts seven entities which consist of Sellers, Payments, Orders, Order Items, Products, Reviews and Customers.

![image](https://github.com/aditya-pa/walmart-brazil-sales/blob/main/visuals/Database%20ER%20diagram.png)



## License
MIT [License](License)
