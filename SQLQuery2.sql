select * 
from Portfolio.dbo.CovidDeaths
order by 3, 4

--select * 
--from Portfolio..CovidVaccinations
--order by 3, 4  (third and fourth columns)

-- select Data that we are going to be using 
-- comment shouldn't be on the portfolio project

select Location, date, total_cases, new_cases, total_deaths, population 
from Portfolio.dbo.CovidDeaths
order by 1, 2

-- looking at total cases vs total deaths 
select Location, date, total_cases,  total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
from Portfolio.dbo.CovidDeaths
where location like '%states'
order by 1, 2



select location,MAX(total_deaths) as TotalDeathCount
from por
