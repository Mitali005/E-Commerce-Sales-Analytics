-- Q1. Find the total revenue generated in each year.
select * from sales;
select  EXTRACT(YEAR from order_date_new) as years,
 ROUND(SUM(revenue) ) as total_revenue
 from sales
group by years;

-- Q2. Find the total revenue generated in each month of each year.
select EXTRACT(YEAR from order_date_new) as years,
EXTRACT(MONTH from order_date_new) as months , 
ROUND(SUM(revenue)) as total_revenue
from sales
group by months,years ;

-- Q3. Find the month with the highest total revenue.
select * from sales;
select EXTRACT(MONTH from order_date_new) as months ,  
ROUND(SUM(revenue)) as total_revenue from sales
order by months desc limit 1;

-- Q4. Find the year with the highest total revenue.
select  EXTRACT(YEAR from order_date_new) as years ,  
ROUND(SUM(revenue)) as total_revenue from sales
group by years
order by total_revenue desc limit 1;

-- Q5. Find the total quantity sold in each region for each year.
select region,EXTRACT(YEAR from order_date_new) as years,
sum(quantity) as total_quantity from sales
group by region, years;
