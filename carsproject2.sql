-- read cars data--
select * from cardekho

-- total cars to get a count of total records--
select count(*) from cardekho ---7927

-- the manager asked the employee how many a cars will be availabale in 2023--
select count(*) from cardekho 
where year=2023----------------- 6

-- the manager asked the empleyee how many cars is available in 2020,2021,2022--
---group by--
select count(*) from cardekho 
where year in(2020,2021,2022)
group by year

---without group by---
select count(*) from cardekho 
where year=2020--------------74

select count(*) from cardekho 
where year=2021----------------7

select count(*) from cardekho 
where year=2022------------------7

-- clint asked me to print the total of all cars by year i dont see all the details --
select year, count(*) from cardekho group by year

-- clint asked to car dealer agent how many diesel cars will there be in 2020.--
select year,fuel, count(*) from cardekho 
where fuel ="diesel" and year =2020----------20

-- clint requested a car dealer agent how many petrol cars will there be in 2020--
select year, fuel, count(*) from cardekho 
where fuel="petrol" and year=2020------------51

-- the manager told the employee to give a print all the fuel cars petrol,diesel,and cng come by all year--
select year,fuel, count(*) from cardekho 
where fuel ="diesel"
group by year

select year ,fuel,count(*) from cardekho
where fuel ="petrol"
group by year


select year,fuel,count(*) from cardekho
where fuel ="cng"
group by year 

-- manager said there were more than 100 cars in a given year which year had more than 100 cars--
select year, count(*) from cardekho group by year 
having count(*)>100

-- the manager said to the employee all cars count details between 2015 and 2023--
select count(*) from cardekho
where year between 2015 and 2023-------------4124

-- the manager said to the employee all cars deatails between 2015 to 2023 we need complete list--

select * from cardekho
where year between 2015 and 2023 




