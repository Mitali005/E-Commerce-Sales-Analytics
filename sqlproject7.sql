-- Q1. Find the total number of orders placed in each region.
SELECT region, COUNT(*) AS total_orders
FROM sales
GROUP BY region;

-- Q2. Find the maximum unit price in each product category.
select product_category, max(unit_price) as max_unit_price from sales
group by product_category;

-- Q3. Find the minimum revenue generated in each region.
SELECT region, MIN(revenue) AS minimum_revenue
FROM sales
GROUP BY region;

-- Q4. Find the total discount given in each region.
select region, sum(discount) as total_discount from sales
group by region;

-- Q5. Find the number of orders placed using each payment method.
select payment_method, count(*) from sales
group by payment_method;

