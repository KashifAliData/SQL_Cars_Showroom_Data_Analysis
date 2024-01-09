create schema cars;
 use cars;
 --- READ DATA ---
 select*from cars_info;
 -- Total Cars To get a count of total records - -
 select count(*) from cars_info;
 -- The manager asked the emplyee How many cars will be available in 2023?--
 select count(*) from cars_info where year = 2023;
 -- The manager asked the employee How many cars were available in 2020,2021,2022 -- 
 select count(*) from cars_info where year = 2020; #74
 select count(*) from cars_info where year = 2021;#7
 select count(*) from cars_info where year = 2022; #7
  -- Group By  --  
  select count(*) from cars_info where year in (2020,2021,2022) group by year;
  -- Objective:To print the total of all cars by year(only count) --
  select year ,count(*) from cars_info group by year;
  -- Objective:Find how many diesel cars will be available in 2020? --
  select count(*) from cars_info where year = 2020 and fuel = "Diesel";
  -- Objective:Find how many diesel cars will be available in 2020? --
  select count(*) from cars_info where year = 2020 and fuel = "Petrol";
  -- Objective : Give a print of all the fuel cars(petrol,diesl and CNG) by all years -- 
  select year, count(*) from cars_info where fuel ="Petrol" group by year;
  select year, count(*) from cars_info where fuel ="Diesel" group by year;
select year, count(*) from cars_info where fuel ="CNG" group by year;
-- Objective : There were more than 100 cars in  years which years were those? --
select year,count(*) from cars_info group by year having count(*)>100;
select year,count(*) from cars_info group by year having count(*)<50;
-- Objective:All cars count details between 2015 an 2023;in a complete list --
select count(*) from cars_info where year between 2015 and 2023;
-- Objective : :All cars details between 2015 an 2023; in a complete list --
select*from cars_info where year between 2015 and 2023;
-- END --