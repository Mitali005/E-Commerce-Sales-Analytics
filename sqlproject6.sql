-- Q1. Find the product category with the highest revenue in each year.
select product_category,
 EXTRACT(YEAR from order_date_new)  as years,
 sum(revenue) as total_revenue
 from sales
 group by years, product_category;

-- Q2. Find the average customer rating in each year.
select EXTRACT(YEAR from order_date_new) as years ,
 avg(customer_rating) as avg_rating from sales
 group by years;
 
-- Q3. Find the number of orders placed in each year.
select EXTRACT(YEAR FROM order_date_new) as years, 
sum(quantity) as total_orders from sales
group by years;

-- Q4. Find the year in which the maximum quantity of products was sold.
select EXTRACT(YEAR from order_date_new) as years , sum(quantity) as total_quantity from sales
group by years
order by total_quantity DESC LIMIT 1;

-- Q5. Find the month and year in which the highest revenue was generated.
select EXTRACT(MONTH FROM order_date_new) as months,
EXTRACT(YEAR FROM order_date_new) as years ,
sum(revenue) as total_revenue from sales
group by months, years 
order by total_revenue desc limit 1;