# 📊 Website Traffic & Google AdWords Analysis

**An end-to-end project using Python, Jupyter Notebook, Excel, MySQL, Pandas, NumPy, and Power BI to analyze website traffic and Google AdWords data. This project transforms raw keyword-level data into a structured relational model to uncover insights for SEO, CPC trends, and digital marketing optimization.**

---

## 📚 Table of Contents

- [🎯 Project Objective](#-project-objective)
- [🛠️ Tools Used](#️-tools-used)
- [📁 Project Files](#-project-files)
- [🔄 Workflow](#-workflow)
  - [🐍 1. Python (Data Cleaning & Fact + Keyword Table Creation)](#-1-python-data-cleaning--fact--keyword-table-creation)
  - [📊 2. Excel (Other Dimension Table Generation)](#-2-excel-other-dimension-table-generation)
  - [🛢️ 3. MySQL (Fact Table Structure First, Then Imports & Keys)](#-3-mysql-fact-table-structure-first-then-imports--keys)
  - [📈 4. Power BI (Visualization, DAX & Reporting)](#-4-power-bi-visualization-dax--reporting)
- [🧩 Data Model Overview](#-data-model-overview)
- [✅ Key Features](#-key-features)
- [🚀 How to Use](#-how-to-use)
- [👤 About Me](#-about-me)

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
| **Python**           | Assign `keyword_id`, create fact and keyword dimension tables           |
| **Jupyter Notebook** | Interactive Python code and data processing                             |
| **Pandas**           | Data manipulation and cleaning                                          |
| **NumPy**            | Numerical transformation support                                        |
| **Excel**            | Create `competition` and `keyword_difficulty` dimension tables          |
| **MySQL**            | Define fact table structure first, then import data & enforce relations |
| **Power BI**         | Build dashboards and use DAX for reporting                              |

## 📁 Project Files

### 📄 Data Files
- **Raw Source**
  - `traffic_data_RAW.xls` – Original keyword and traffic data export  
- **Fact Table**
  - `website_traffic_data.csv` – Keyword-level traffic metrics (Python-generated)  
- **Dimension Tables**
  - `keyword.csv` – Keyword ID and text (Python-generated)  
  - `competition.csv` – Competition scores (Excel-generated)  
  - `keyword_difficulty.csv` – Difficulty ratings (Excel-generated)  

### ⚙️ Scripts & Notebooks
- `assaign_keyword_ID.ipynb` – Python notebook for:
  - Assigning `keyword_id`s  
  - Generating `website_traffic_data.csv` and `keyword.csv`  
- `traffic_data_script.sql` – SQL script to:
  - Apply primary/foreign keys  
  - Finalize schema relationships after importing all data  

## 🔄 Workflow

### 🐍 1. Python (Data Cleaning & Fact + Keyword Table Creation)
- Load `traffic_data_RAW.xls`
- Assign unique `keyword_id`s using Python
- Clean and format data using Pandas and NumPy
- Export:
  - `website_traffic_data.csv` (fact table)  
  - `keyword.csv` (dimension table)

### 📊 2. Excel (Other Dimension Table Generation)
- Use Excel formulas (VLOOKUP, XLOOKUP, SUMIF) to create:
  - `competition.csv`  
  - `keyword_difficulty.csv`

### 🛢️ 3. MySQL (Fact Table Structure First, Then Imports & Keys)
- **Create `website_traffic_data` table structure first** in MySQL  
- Import all `.csv` files:  
  - `website_traffic_data.csv`  
  - `keyword.csv`  
  - `competition.csv`  
  - `keyword_difficulty.csv`
- Run `traffic_data_script.sql` to:
  - Apply primary keys to dimension tables  
  - Add foreign key constraints to relate tables
- ✅ **Use MySQL Workbench ER Diagram** to visually validate relationships between fact and dimension tables

### 📈 4. Power BI (Visualization, DAX & Reporting)
- Connect Power BI to the MySQL database
- Build dashboards using visuals, filters, and custom DAX measures
- DAX examples: traffic cost %, CPC efficiency, difficulty-weighted ranks

## 🧩 Data Model Overview

| Table Name              | Type         | Description                                | Key Field     | Created Using |
|-------------------------|--------------|--------------------------------------------|---------------|----------------|
| `website_traffic_data`  | Fact Table   | Keyword-level AdWords traffic metrics      | `keyword_id`  | Python          |
| `keyword`               | Dimension    | Keyword ID and name mapping                | `keyword_id`  | Python          |
| `competition`           | Dimension    | Keyword competition scores                 | `keyword_id`  | Excel           |
| `keyword_difficulty`    | Dimension    | Keyword difficulty ratings                 | `keyword_id`  | Excel           |

## ✅ Key Features
- Assign and manage keyword IDs using Python  
- Build normalized relational structure in MySQL  
- Clean data pipeline from raw Excel to BI dashboards  
- Use Excel for supplemental enrichment (competition/difficulty)  
- Visualize actionable insights using Power BI and DAX  

## 🚀 How to Use
1. Run Python notebook to generate:
   - `website_traffic_data.csv`  
   - `keyword.csv`  
2. Create `competition.csv` and `keyword_difficulty.csv` in Excel  
3. In MySQL:
   - Create structure for `website_traffic_data` first  
   - Import all `.csv` files  
   - Run `traffic_data_script.sql` to define schema and constraints  
   - Use ER Diagram to visually verify table relationships  
4. Connect Power BI to MySQL  
5. Build dashboards using DAX and visual components  

---

## 👤 About Me

Hi, I'm [Hemant], a data enthusiast passionate about turning raw data into meaningful business insights.

🔧 **Skills Used in This Project:**
- Python (Pandas, NumPy) for data cleaning and transformation
- Jupyter Notebook for interactive development
- Excel for formula-based dimension table generation
- MySQL for relational data modeling with keys
- Power BI for dashboard design and DAX-based measures

💼 **Project Role:**  
I led the full pipeline — from raw data preparation to final dashboarding — ensuring data integrity, structure, and business relevance at every stage.

📫 **Let’s connect:**  
- GitHub : [GitHub Profile](https://github.com/hemant1491)
- LinkedIn : [LinkedIn Profile](https://www.linkedin.com/in/hemant1491/)  
- Email : hemant0452@outlook.com

---



---
