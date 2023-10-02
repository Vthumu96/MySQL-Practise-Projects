USE Cars
-- READ DATA --

SELECT * FROM car_info;

-- Count of total records --
SELECT Count(*) FROM Car_info;

-- How many Cars will be available in 2023 --

SELECT Count(*) FROM Car_info WHERE year = 2023 ;

-- How many cars will be available in 2020,2021,2022 --

SELECT COUNT(*) FROM Car_info WHERE YEAR IN (2020,2021,2022) GROUP BY YEAR;

-- Client asked to print all cars of years --

SELECT Year,Count(*) From Car_info Group by year ;
-- How many Diesel cars in 2020 -- #20
SELECT Year,COUNT(*) FROM Car_info Where Fuel = "Diesel"
Group by Year;

-- How many Petrol cars in 2020 -- #51

SELECT COUNT(*) FROM Car_info WHERE Year = 2020 and Fuel = "Petrol";

-- Print all the fuel cars come by all year --
SELECT Year,COUNT(*) FROM Car_info WHERE Fuel="PETROL" Group by Year;
SELECT Year,COUNT(*) FROM Car_info WHERE Fuel="DIESEL" Group by Year;
SELECT Year,COUNT(*) FROM Car_info WHERE Fuel="CNG" Group by Year;

-- WHICH YEAR HAS MORE THAN 100 CARS --

SELECT Year, Count(*) From Car_info Group by year having Count(*) > 100;
SELECT Year, Count(*) From Car_info Group by year having Count(*) < 25;

-- Complete Information of cars from 2015 to 2023--
SELECT * FROM car_info Where Year  Between 2015 And 2023 ;

-- END --
