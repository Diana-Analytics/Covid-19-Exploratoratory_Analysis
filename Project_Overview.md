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

Our analysis revealed the following insights:

𝐇𝐢𝐠𝐡𝐞𝐫 𝐂𝐨𝐧𝐟𝐢𝐫𝐦𝐞𝐝 𝐂𝐚𝐬𝐞𝐬 :
The United States has the highest number of confirmed cases.
This reflects the significant impact of COVID-19 on the US, particularly during the peak periods of the pandemic.

𝐋𝐨𝐰𝐞𝐬𝐭 𝐃𝐞𝐚𝐭𝐡 𝐂𝐚𝐬𝐞𝐬 :
Countries like Dominica, Kiribati, Marshall Islands, and Samoa have the lowest number of death cases. 
These countries may have managed to control the spread of the virus effectively or have smaller populations, leading to fewer deaths.

𝐇𝐢𝐠𝐡𝐞𝐬𝐭 𝐑𝐞𝐜𝐨𝐯𝐞𝐫𝐞𝐝 𝐂𝐚𝐬𝐞𝐬 :
The top five countries with the highest number of recovered cases are India, Brazil, the US, Turkey, and Russia. 
These countries likely experienced high numbers of cases overall, leading to high recovery numbers as well.

**Highest** 𝐃𝐞𝐚𝐭𝐡 𝐂𝐚𝐬𝐞𝐬 :
The country with the highest death count is the United States.


These Insights can inform public health policy,resource allocation and future research














