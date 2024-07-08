# Covid-19-Exploratoratory Data Analysis
## Project Overview:
This project  aims to explore COVID-19 data  using SQL to gain insights into the pandemic's spread, impact and trends.
SQL queries will be used to obtain information on both country-specific(Nigeria) and global trends such as the total number of deaths, total cases, and number of people vaccinated 

### Data sources:
The primary dataset used for this analysis is the "covid-death xslx"

Link to main dataset: https://ourworldindata.org/covid-deaths

The dataset was later split using Excel into "CovidDeaths.xlsx" and "CovidVaccinations.xslx"

### Tools Used:
- Excel
- SQL Server
- Github for version control and collaboration

### Data Cleaning/Preparation:
In the initial data preparation we perform the following task:
- Data Segmentation: We segmentate the main dataset "covid-death xslx" into two datasets "CovidDeaths.xlsx" and "CovidVaccinations.xslx". This was done using Excel.
- Data loading and inspection into Ms SQL
- Data cleaning: Standardize date column and make some datatype changes from nvarchar to numeric to some columns

### Exploratory Data Analysis:
Apply statistical and visual methods to understand data distribution, relationships and patterns,leading us to answer key questions such as:
- What is the likelihood of dying if you contract covid in your country
- What percentage of the population was infected with Covid
- Countries with the highest Infection rate compared to their population
- Countries with the highest death count compared to their population
- Continents with the highest death count
- Global death count
- Percentage of poplulation that received vaccination

### SQL Skills Used:
- SELECT statements with filters and sorting
- Group by used for Aggregations
- UPDATE, DELETE and CASE statements for data cleaning
- Joins used for joining the two tables "Coviddeaths.xlsx" and "Covidvaccinations.xslx"
- Temp Tables,CTEs and WINDOW functions for data transformation
- Views for later visualization

### Deliverables:
- Cleaned Datasets
- SQL Script for Exploratory Data Analysis
- GitHub repository with code and documentation

### Conclusion
This project aimed to explore and analyze COVID-19 data to gain insights into the pandemic's spread,impact, and trends.
By leveraging on this, we were able to:
- Clean and preprocess the large datasets
- Identify key trends and correlations
- Develops interactive dashboards and reports
- Gain insights into the pandemic's spread and impact.

Our analysis revealed the following:
- The likelihood of dying if you contact Covid in Nigeria is
- The country with the highest death count is the US
- Global death count is
- Continent with the highest death count is

These Insights can inform public health policy,resource allocation and future research














