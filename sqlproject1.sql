-- Q: Find the total quantity of products ordered in each month and year, along with the product category
select product_category, sum(quantity) as orders_in_each_month,
 EXTRACT(MONTH from order_date_new) as months ,
 EXTRACT(YEAR from order_date_new) as years from sales
group by months , years;

-- Find the product categories and revenue for the years where the revenue is greater than the average revenue of all sales.
select product_category, (revenue) , EXTRACT(YEAR FROM order_date_new) years from sales
where revenue>(select avg(revenue) from sales)
group by years ;

-- Q: Find the total number of products sold each year.
SELECT extract(YEAR FROM order_date_new) AS years,
SUM(quantity) AS total_product_sold
FROM sales
GROUP BY years;

-- Q: In which year were the most products sold ?
SELECT extract(YEAR FROM order_date_new) AS years,
SUM(quantity) AS total_product_sold
FROM sales
GROUP BY years
order by total_product_sold desc ;

-- Q: find the  total  product in each region.
select sum(quantity) as total ,
region from sales
group by region;





