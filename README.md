# 📊 Brent Ozar Salary Survey - India Analysis 🇮🇳

An exploratory analysis of the 2025 Brent Ozar Salary Survey focused on insights from India using MS SQL Server, DBeaver, and Databricks.

---

## 📁 Project Overview

This project dives into global salary data for data professionals with a specific lens on Indian responses. I wanted to observe career trends, salary disparities, and technologies in use among Indian tech professionals, while also getting hands-on with tools like Docker, DBeaver, and Databricks on Linux Mint.

---

## 🧪 Workflow Summary

1. **Data Acquisition**
   - Downloaded Brent Ozar’s [2025 Salary Survey CSV](https://www.brentozar.com/archive/2025/01/announcing-the-2025-data-professional-salary-survey-results/).

2. **Database Setup**
   - Set up **SQL Server** using Docker on Linux Mint.
   - Imported data into **staging table** via DBeaver (after troubleshooting formatting issues).

3. **Transformation**
   - Cleaned and inserted data into a final table (`SalarySurveyResults2025`).
   - Created a view (`vw_SalarySurveyResults2025`) for analysis.

4. **Visualization**
   - Initially attempted Apache Superset (unsuccessfully configured with MSSQL).
   - Switched to **Databricks Community Edition** for final dashboard visualization.

---

## 📉 Key Findings (India)

- **Survey Responses**: Only ~170 responses from India in 2025.
- **Salary vs Staff Management**: Staff managers in India earned less on average than non-managers—unlike global trends.
- **Gender Pay Gap**: Significant disparity in salary based on gender.
- **Popular Databases**: 
  - 🥇 MS SQL Server
  - 🥉 MongoDB was least used.
- **Career Plans**:
  - Indians: Prefer changing both role & employer.
  - Americans: Prefer stability.
- **Experience vs Pay**: Highest salaries among those with ~6 years experience.

---

## ⚙️ Tools Used

| Tool                | Purpose                                |
|---------------------|----------------------------------------|
| Docker              | Hosting MS SQL Server on Linux Mint    |
| DBeaver             | Data import and query execution        |
| T-SQL               | Table/view creation and data cleaning  |
| Databricks          | Final dashboard visualization          |
| Linux Mint          | Development environment                |

---

## 🚧 Challenges Faced

- Struggled with number parsing and data type mismatch during import.
- Spent 2 days trying to get Superset + MSSQL working via Docker—ultimately switched to Databricks.
- Limited Indian data affected depth of analysis, but gave valuable insight into toolchain handling and real-world data issues.

---

## 🧠 Lessons Learned

- Importance of data quality and country-wise distribution.
- Dealing with data import quirks via DBeaver on Linux.
- Databricks is an excellent low-friction tool for visualization when other BI tools fail.
- Will definitely contribute to the 2026 survey and encourage others to do so!

---

## 📌 To Run Yourself

1. Start MSSQL Server using Docker.
2. Connect using DBeaver and run the scripts in `/sql/`.
3. Use Databricks (or your preferred BI tool) to connect to the final view or export CSVs.
4. Visualize using filters (e.g., by country = 'India').

---
## Visualization

This visualization provides an India-focused analysis of the 2025 Data Professional Salary Survey conducted by Brent Ozar. The analysis covers trends in salary, gender disparities, preferred technologies, and career outlooks among Indian respondents.

[Databricks dashboard](https://dbc-6421872d-ac6f.cloud.databricks.com/dashboardsv3/01f04792c68910c8a3e4d54416abb531/published?o=3774014382757505&f_89f4f076%7Ea48092b2=%257B%2522columns%2522%253A%255B%2522color%2522%252C%2522x%2522%255D%252C%2522rows%2522%253A%255B%255B%2522Private%2520business%2522%252C%2522Private%2520business%2522%255D%255D%257D)

[Dashboard snip]("https://github.com/user-attachments/assets/36b1e3db-3629-4653-897c-93109a487f7e")


---

## 🙏 Data Source

Thanks to Brent Ozar for compiling this invaluable dataset!

📦 [Original Blog Post](https://www.brentozar.com/archive/2025/01/announcing-the-2025-data-professional-salary-survey-results/)

Thanks to SQLDEVdba on youtube fro excellent tutorial
[Youtube](https://www.youtube.com/@SQLDevDBA)

---



Created with ❤️ by **Astha**  


