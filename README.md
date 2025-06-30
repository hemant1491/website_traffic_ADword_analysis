# 📈 Website Traffic & Keyword Analysis

**An end-to-end project using Excel, Python, MySQL, Pandas, NumPy, and Power BI to analyze keyword performance and website traffic. The analysis is based on a structured data model with a central fact table and supporting dimension tables, providing insights for SEO and digital marketing strategies.**

## 🎯 Project Objective

The objective of this project is to transform raw keyword traffic data into meaningful insights. Starting from a raw Excel file, the process involves cleaning, structuring, and analyzing the data to:
- Track keyword ranking and traffic changes
- Identify high-traffic, low-competition opportunities
- Assess cost-effectiveness through CPC and difficulty scores
- Drive SEO and content decisions using interactive dashboards

## 🛠️ Tools Used

| Tool/Library        | Purpose                                                                 |
|---------------------|-------------------------------------------------------------------------|
| **Python** (Jupyter Notebook) | Assign keyword IDs and create structured fact table                     |
| **Pandas**          | Data manipulation, analysis, and export                                 |
| **NumPy**           | Support for numerical operations and cleaning                           |
| **MySQL**           | Structured relational schema and querying                               |
| **Excel**           | Used for generating dimension tables using VLOOKUP, XLOOKUP, SUMIF, etc.|
| **Power BI**        | Visual dashboards and interactive reporting                             |

## 📁 Project Files

### 📄 Data Files
- **Raw Source File**
  - `traffic_data_RAW.xls` – Original raw keyword traffic export  
- **Fact Table**
  - `website_traffic_data.csv` – Cleaned dataset with keyword metrics and IDs (generated using Python)  
- **Dimension Tables** *(generated in Excel using formulas)*
  - `keyword.csv` – Keyword ID and text mapping (via XLOOKUP/VLOOKUP)  
  - `competition.csv` – Competition data extracted with lookup functions  
  - `keyword_difficulty.csv` – Difficulty scores compiled using SUMIF and lookups  

### ⚙️ Scripts & Notebooks
- `assaign_keyword_ID.ipynb` – Python notebook for generating the fact table  
- `traffic_data_script.sql` – SQL schema with foreign key constraints  

## 🔄 Workflow

1. **Raw Data Import**  
   Start with `traffic_data_RAW.xls`, the raw keyword dataset.

2. **Generate Dimension Tables in Excel**  
   Use **VLOOKUP, XLOOKUP, and SUMIF** to create clean dimension tables (`keyword`, `competition`, `keyword_difficulty`) from raw data.

3. **Assign Keyword IDs & Create Fact Table in Python**  
   Use Python to generate unique `keyword_id`s and build the structured `website_traffic_data.csv` fact table.

4. **Export Structured Data**  
   Save cleaned `.csv` files for use in MySQL and analysis.

5. **Database Setup in MySQL**  
   Use the provided SQL script to create a relational schema and establish foreign key relationships.

6. **Data Analysis with Pandas/NumPy**  
   Perform trend analysis and EDA in Python.

7. **Excel Validation**  
   Double-check table logic and calculations through Excel summaries.

8. **Power BI Visualization**  
   Build visual dashboards to communicate keyword performance insights effectively.

## 🧩 Data Model Overview

| Table Name              | Type         | Description                              | Key Field     | Related To             |
|-------------------------|--------------|------------------------------------------|---------------|-------------------------|
| `website_traffic_data`  | Fact Table   | Core traffic metrics for each keyword    | `keyword_id`  | All dimension tables    |
| `keyword`               | Dimension    | Keyword text and corresponding ID        | `keyword_id`  | `website_traffic_data` |
| `competition`           | Dimension    | Competition score for each keyword       | `keyword_id`  | `website_traffic_data` |
| `keyword_difficulty`    | Dimension    | Difficulty score for each keyword        | `keyword_id`  | `website_traffic_data` |

> 🔗 All dimension tables were generated in Excel and linked to the fact table via `keyword_id`.

## ✅ Key Features
- Assign unique keyword IDs and build relational structure  
- Generate dimension tables using Excel formulas (VLOOKUP, XLOOKUP, SUMIF)  
- Analyze keyword trends, CPC, difficulty, and competition  
- Create Power BI dashboards for actionable SEO insights  

## 🚀 How to Use
1. Start with `traffic_data_RAW.xls`  
2. Generate dimension tables in Excel using lookup formulas  
3. Use Python to create the fact table  
4. Set up schema using `traffic_data_script.sql` in MySQL  
5. Analyze with Python & visualize with Excel or Power BI  

---
