--TOTAL CASES VS TOTAL DEATH
-- Shows likelihood of dying if you contract covid in Nigeria

Select location, Date,
total_cases,
total_deaths,
round(total_deaths /(total_cases * 100),7)Percentage_Death
from coviddeaths
where location = 'Nigeria'
order by 1,2

--TOTAL CASES VS POPULATION
-- Shows the percentage of the Nigerian population that got Covid

Select location, Date,
total_cases,
population,
round(total_cases /(population)*100,4) Percentage_Death
from coviddeaths
where location = 'Nigeria'
order by 1,2

--Looking at countries with Highest Infection rate compared to its population

Select location,population,
max(total_cases )HighestInfectionRate,
round(max(total_cases )/(population)*100,2) Population_Infection_Rate
from coviddeaths
--where location = 'Nigeria'
group by location,population
order by Population_Infection_Rate desc

--Looking at countries with Highest DeathCount compared to its population

Select location,max(total_deaths)DeathCount,
population,round(max(total_deaths)/population *100,2)Population_Death_Percentage
from CovidDeaths
where continent is not null
group by location,population
order by 4 desc

--Looking at Continents with Highest DeathCount compared to its population

select location,max(total_deaths)Deaths_Per_Continents,
population,round(max(total_deaths)/population *100,3)Death_Rate_Continental_Percentage
from CovidDeaths
where continent is  null  and location not in ('World','European Union','International')
group by location, Population
order by 2 desc

--GLOBAL COVID OUTLOOK
--Total_Global_Cases 

select sum(new_cases)Total_Global_Cases
--sum(new_deaths)Total_Global_death 
--case when sum(new_cases)= 0 then 0
--else round(sum(new_deaths)/sum(new_cases)*100,2) end Global_Daily_death_rate
from CovidDeaths
--group by date
where continent is not null

--Total_Global_Deaths

select --sum(new_cases)Total_Global_Cases
sum(new_deaths)Total_Global_death 
--case when sum(new_cases)= 0 then 0
--else round(sum(new_deaths)/sum(new_cases)*100,2) end Global_Daily_death_rate
from CovidDeaths
--group by date
where continent is not null

--Globaly Percentage of Death vs Global Total Cases 

select sum(new_cases)Total_Global_Cases,
sum(new_deaths)Total_Global_death, 
case when sum(new_cases)= 0 then 0
else round(sum(new_deaths)/sum(new_cases)*100,2) end Global_Daily_death_rate
from CovidDeaths
--group by date
where continent is not null


--Global_Accumulative_Daily_Deaths

With cte as
(
select date,sum(new_deaths)Global_Daily_death from CovidDeaths
where continent is not null
group by date

)
select * ,sum(Global_Daily_death) over (order by date)Deaths_Accumulative from cte

--COVID VACCINATION OUTLOOK
--Accumulative Vaccination per Country
Select --d.continent,
v.location,cast(v.date as date)[Date], d.population,v.new_vaccinations,
sum(v.new_vaccinations) over (partition by v.location order by v.date)Daily_Accumulative_Vac
from CovidVaccinations v
join CovidDeaths d
on v.iso_code=d.iso_code and v.continent=d.continent
where v.continent is not null
group by v.location,d.population,v.date,v.new_vaccinations
--d.continent
order by 1, 2,3

--Rate of Total_Vaccination per Population
--Using a Cte to achieve this
With PopVac as
(
Select --d.continent,
v.location,cast(v.date as date)[Date], d.population,v.new_vaccinations,
sum(v.new_vaccinations) over (partition by v.location order by v.date)Daily_Accumulative_Vac
from CovidVaccinations v
join CovidDeaths d
on v.iso_code=d.iso_code and v.continent=d.continent
where v.continent is not null
group by v.location,d.population,v.date,v.new_vaccinations
--d.continent

)
select *,round(Daily_Accumulative_Vac/population * 100,5)Accumulative_Percentage_Vac from PopVac


--The above can also be achieve by the use of a Temp table:
Drop table if exists #Percentage_Vaccinations 
Create table #Percentage_Vaccinations
(
location nvarchar(255),
[Date] Date,
population numeric,
new_vaccinations numeric,
AccumulativeVac numeric
)

insert into #Percentage_Vaccinations 
Select --d.continent,
v.location,cast(v.date as date)[Date], d.population,v.new_vaccinations,
sum(v.new_vaccinations) over (partition by v.location order by v.date)Daily_Accumulative_Vac
from CovidVaccinations v
join CovidDeaths d
on v.iso_code=d.iso_code and v.continent=d.continent
where v.continent is not null
group by v.location,d.population,v.date,v.new_vaccinations
--d.continent
 
 
select *,
case when AccumulativeVac =0 then 0 else  
cast(AccumulativeVac/population *100 as decimal(10,2)) end Accumulative_Vac_Percentage 
from #Percentage_Vaccinations

---Creating Views for Visualizations Later

Create view Percentage_Vaccinations as

With PopVac as
(
Select --d.continent,
v.location,cast(v.date as date)[Date], d.population,v.new_vaccinations,
sum(v.new_vaccinations) over (partition by v.location order by v.date)Daily_Accumulative_Vac
from CovidVaccinations v
join CovidDeaths d
on v.iso_code=d.iso_code and v.continent=d.continent
where v.continent is not null
group by v.location,d.population,v.date,v.new_vaccinations
--d.continent

)
select *,round(Daily_Accumulative_Vac/population * 100,5)Accumulative_Percentage_Vac from PopVac

select * from Percentage_Vaccinations






