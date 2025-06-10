create database sales;
use sales;

create table online_sales(
Transaction_ID int primary key,
Date_purchased date,
Product_Category varchar(30),
Product_Name varchar(100),
Units_Sold int,
Unit_Price decimal(10,2),
Total_Revenue decimal(10,2),
Region varchar(20),
Payment_Method varchar(20));

select * from online_sales;

select
	extract(year from Date_purchased) as Year, 
    extract(month from Date_purchased) as Month,
    sum(Total_Revenue) as Monthly_Revenue,
    count(distinct Transaction_ID) as Order_Volume
from online_sales
where Date_purchased between '2024-02-01' and '2024-06-30'
group by Year,Month
order by Month;
