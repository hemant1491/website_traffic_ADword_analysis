# 📊 Website Traffic & Google AdWords Analysis

**An end-to-end project using Python, Excel, MySQL, Pandas, NumPy, and Power BI to analyze website traffic and Google AdWords data. The analysis focuses on keyword performance, CPC, competition, and traffic trends—structured using a star schema to provide actionable insights for digital marketing and SEO strategy.**

## 🎯 Project Objective

The objective of this project is to transform raw AdWords and traffic data into a structured, relational model that enables deep analysis of:
- Keyword performance trends and ranking changes
- CPC, competition, and keyword difficulty impact
- High-traffic, low-cost keyword opportunities
- Budget optimization and SEO strategy refinement

## 🛠️ Tools Used

| Tool/Library        | Purpose                                                                 |
|---------------------|-------------------------------------------------------------------------|
| **Python** (Jupyter Notebook) | Assign `keyword_id`, preprocess raw data, and generate fact table        |
| **Pandas**          | Data manipulation and transformation                                    |
| **NumPy**           | Support for numeric operations                                          |
| **Excel**           | Generate dimension tables using VLOOKUP, XLOOKUP, and SUMIF             |
| **MySQL**           | Load structured CSVs, define schema, and establish table relationships  |
| **Power BI**        | Build dashboards and visualize keyword performance and cost trends      |

## 📁 Project Files

### 📄 Data Files
- **Raw Data**
  - `traffic_data_RAW.xls` – Original export from AdWords/SEO tool  
- **Fact Table**
  - `website_traffic_data.csv` – Cleaned data with assigned `keyword_id`s  
- **Dimension Tables** *(generated in Excel using formulas)*
  - `keyword.csv` – Keyword to ID mapping  
  - `competition.csv` – Competition scores  
  - `keyword_difficulty.csv` – Difficulty ratings  

### ⚙️ Scripts & Notebooks
- `assaign_keyword_ID.ipynb` – Python notebook to assign `keyword_id`s and generate base data  
- `traffic_data_script.sql` – SQL script to create schema and apply primary/foreign keys  

## 🔄 Workflow

1. **Raw Data Import (Excel)**  
   Start with `traffic_data_RAW.xls` as the raw data source.

2. **Assign Keyword IDs in Python**  
   Use Python to process the raw data and assign unique `keyword_id`s.

3. **Create Dimension Tables in Excel**  
   Generate `keyword.csv`, `competition.csv`, and `keyword_difficulty.csv` using Excel formulas like VLOOKUP, XLOOKUP, and SUMIF.

4. **Export All Tables as CSV**  
   Save both the fact and dimension tables as `.csv` files.

5. **Load Data into MySQL**  
   Import all CSVs into MySQL and run the SQL script to:
   - Create structured tables
   - Define **primary keys** in dimension tables
   - Establish **foreign key relationships** from the fact table

6. **Data Analysis in Python**  
   Use Pandas and NumPy to explore trends, CPC impact, traffic changes, and performance patterns.

7. **Validate in Excel**  
   Cross-check keyword mappings, IDs, and aggregates.

8. **Visualize in Power BI**  
   Build interactive dashboards to present keyword insights, traffic cost, and AdWords performance.

## 🧩 Data Model Overview

| Table Name              | Type         | Description                              | Key Field     | Related To             |
|-------------------------|--------------|------------------------------------------|---------------|-------------------------|
| `website_traffic_data`  | Fact Table   | Traffic, CPC, keyword performance data   | `keyword_id`  | All dimension tables    |
| `keyword`               | Dimension    | Keyword name and ID                      | `keyword_id`  | `website_traffic_data` |
| `competition`           | Dimension    | Keyword competition score                | `keyword_id`  | `website_traffic_data` |
| `keyword_difficulty`    | Dimension    | Difficulty rating of each keyword        | `keyword_id`  | `website_traffic_data` |

> ✅ Fact table generated using **Python**  
> ✅ Dimension tables generated using **Excel**  
> ✅ All CSVs imported into **MySQL**  
> ✅ Relationships enforced via **primary and foreign keys**

## ✅ Key Features
- Assign and manage keyword IDs for structured analysis  
- Generate dimension tables using Excel lookup formulas  
- Load structured data into MySQL with relational integrity  
- Analyze CPC, difficulty, and competition effects  
- Build dashboards to support SEO and Ad strategy  

## 🚀 How to Use
1. Open and process `traffic_data_RAW.xls` using Python  
2. Assign keyword IDs and export `website_traffic_data.csv`  
3. Use Excel to generate dimension tables and export them  
4. Load all CSVs into MySQL  
5. Run `traffic_data_script.sql` to define relationships  
6. Explore trends with Python and visualize insights in Power BI  

---



---
