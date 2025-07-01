# 📊 Website Traffic & Google AdWords Analysis

**An end-to-end project using Python, Jupyter Notebook, Excel, MySQL, Pandas, NumPy, and Power BI to analyze website traffic and Google AdWords data. This project transforms raw keyword-level data into a structured relational model to uncover insights for SEO, CPC trends, and digital marketing optimization.**

---

## 📚 Table of Contents

- [🎯 Project Objective](#-project-objective)
- [🛠️ Tools Used](#️-tools-used)
- [📁 Project Files](#-project-files)
- [🔄 Workflow](#-workflow)
  - [🐍 1. Python (Jupyter Notebook – Data Cleaning & Fact Table Creation)](#-1-python-jupyter-notebook--data-cleaning--fact-table-creation)
  - [📊 2. Excel (Dimension Table Generation)](#-2-excel-dimension-table-generation)
  - [🛢️ 3. MySQL (Data Integration & Relational Modeling)](#-3-mysql-data-integration--relational-modeling)
  - [📈 4. Power BI (Visualization & Reporting)](#-4-power-bi-visualization--reporting)
- [🧩 Data Model Overview](#-data-model-overview)
- [✅ Key Features](#-key-features)
- [🚀 How to Use](#-how-to-use)

---

## 🎯 Project Objective

To convert raw AdWords and website traffic data into a clean, structured dataset that enables analysis of:
- Keyword ranking trends and performance
- CPC, competition, and keyword difficulty
- Traffic share and keyword cost-effectiveness
- Budget optimization for paid ads and SEO strategy

## 🛠️ Tools Used

| Tool/Library        | Purpose                                                                 |
|---------------------|-------------------------------------------------------------------------|
| **Python**           | Assign `keyword_id`, clean raw data, and create the fact table         |
| **Jupyter Notebook** | Interactive environment for executing Python code step by step         |
| **Pandas**           | Data manipulation and merging                                          |
| **NumPy**            | Support for numerical calculations and transformations                 |
| **Excel**            | Generate dimension tables using VLOOKUP, XLOOKUP, SUMIF                |
| **MySQL**            | Load CSVs, define schema, and apply PK-FK relationships                |
| **Power BI**         | Build dashboards and visualize traffic and AdWords insights            |

## 📁 Project Files

### 📄 Data Files
- **Raw Data**
  - `traffic_data_RAW.xls` – Original keyword and traffic data export  
- **Fact Table**
  - `website_traffic_data.csv` – Cleaned traffic + AdWords data with assigned `keyword_id`s (created using Python)  
- **Dimension Tables** (created using Excel)
  - `keyword.csv` – Keyword text and ID mapping  
  - `competition.csv` – Competition scores per keyword  
  - `keyword_difficulty.csv` – Difficulty ratings per keyword  

### ⚙️ Scripts & Notebooks
- `assaign_keyword_ID.ipynb` – Jupyter Notebook to:
  - Assign unique `keyword_id`s  
  - Clean and prepare the raw data  
  - Generate the `website_traffic_data.csv` fact table  
- `traffic_data_script.sql` – SQL script to:
  - Create the relational schema  
  - Define primary keys on dimension tables  
  - Apply foreign keys from the fact table

## 🔄 Workflow

```mermaid
graph LR
    A[Raw Excel] --> B[Excel Formulas]
    B --> C[Python Script]
    C --> D[MySQL Database]
    D --> E[Power BI Dashboard]
```

Each stage builds on the last. The result is a smooth, production-style pipeline from messy input to insights.

---

### 🐍 1. Python (Jupyter Notebook – Data Cleaning & Fact Table Creation)
- Load raw data from `traffic_data_RAW.xls`
- Assign unique `keyword_id`s using Python
- Clean and structure the dataset using Pandas and NumPy
- Export the cleaned fact table to `website_traffic_data.csv`

### 📊 2. Excel (Dimension Table Generation)
- Use VLOOKUP, XLOOKUP, and SUMIF formulas to create:
  - `keyword.csv`  
  - `competition.csv`  
  - `keyword_difficulty.csv`
- Save all dimension tables as `.csv` files

### 🛢️ 3. MySQL (Data Integration & Relational Modeling)
- Run `traffic_data_script.sql` to:
  - Create schema and define tables
  - Apply primary keys (dimension tables) and foreign keys (fact table)
- Import all CSV files (`website_traffic_data.csv` and dimension tables)

### 📈 4. Power BI (Visualization & Reporting)
- Load data from MySQL into Power BI
- Build interactive dashboards to visualize:
  - Keyword performance
  - Traffic share and cost
  - CPC vs. difficulty vs. competition

## 🧩 Data Model Overview

| Table Name              | Type         | Description                                | Key Field     | Related To             |
|-------------------------|--------------|--------------------------------------------|---------------|-------------------------|
| `website_traffic_data`  | Fact Table   | AdWords traffic metrics for each keyword    | `keyword_id`  | All dimension tables    |
| `keyword`               | Dimension    | Keyword ID and corresponding text           | `keyword_id`  | `website_traffic_data` |
| `competition`           | Dimension    | Competition score per keyword               | `keyword_id`  | `website_traffic_data` |
| `keyword_difficulty`    | Dimension    | Difficulty score per keyword                | `keyword_id`  | `website_traffic_data` |

> ✅ Fact table created using **Python (Jupyter Notebook)**  
> ✅ Dimension tables created using **Excel**  
> ✅ Relational model built and linked in **MySQL**  
> ✅ Insights visualized through **Power BI**

## ✅ Key Features
- Assign keyword IDs and generate structured data  
- Perform analysis using relational modeling  
- Use Excel and Python for preprocessing  
- Visualize data using Power BI dashboards  
- Drive better AdWords strategy and SEO decisions

## 🚀 How to Use
1. Start with `traffic_data_RAW.xls`  
2. Run Python notebook to create `website_traffic_data.csv`  
3. Use Excel to generate dimension tables  
4. Load all `.csv` files into MySQL  
5. Run `traffic_data_script.sql` to build schema and relationships  
6. Visualize insights using Power BI  

---
