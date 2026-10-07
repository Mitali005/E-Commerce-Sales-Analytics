-- Q1. Find product categories whose total quantity sold is greater than 100.
SELECT product_category,SUM(quantity) AS total_quantity FROM sales
GROUP BY product_category
HAVING sum(quantity) > 100;

-- Q2. Find regions whose total revenue is greater than the average revenue of all regions.
SELECT region,SUM(revenue) AS total_revenue FROM sales
GROUP BY region
HAVING SUM(revenue) > (SELECT AVG(region_revenue) FROM (
        SELECT SUM(revenue) AS region_revenue FROM sales
        GROUP BY region) AS regional_sales);


-- Q3. Find product categories having an average rating greater than 3.
select product_category, avg(customer_rating) as avg_rating from sales
group by product_category
having avg(customer_rating)> 3 ;

-- Q4. Find customers who have placed more than 5 orders.
SELECT customer_id, COUNT(*) AS total_orders FROM sales
GROUP BY customer_id
HAVING COUNT(*) > 5;

-- Q5. Find customers whose total revenue is greater than 10,000.
select customer_id, sum(revenue) as total_revenue from sales
group by customer_id
having total_revenue>10000;
