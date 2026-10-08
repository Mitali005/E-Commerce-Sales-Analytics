-- Q1. Find products whose unit price is greater than the average unit price.
SELECT product_category, unit_price FROM sales
WHERE unit_price > (SELECT AVG(unit_price) FROM sales);

-- Q2 . Find products whose delivery time is greater than the average delivery time.
SELECT product_category, delivery_days FROM sales
WHERE delivery_days>(select AVG(delivery_days) FROM sales);

-- Q3. Find customers whose total quantity ordered is greater than the average quantity ordered by customers.
SELECT customer_id, SUM(quantity) AS total_quantity FROM sales
GROUP BY customer_id
HAVING SUM(quantity) > (SELECT AVG(total_quantity)
FROM (SELECT customer_id, SUM(quantity) AS total_quantity FROM sales
GROUP BY customer_id) AS customer_totals);

-- Q4. Find the product category whose total revenue is highest.
SELECT product_category, SUM(revenue) AS total_revenue FROM sales
GROUP BY product_category
ORDER BY total_revenue DESC
LIMIT 1;

-- Q5. Find the customer who has the highest average rating.
select customer_id , avg(customer_rating)as avg_rating from sales
group by customer_id
order by avg_rating DESC limit 1;
