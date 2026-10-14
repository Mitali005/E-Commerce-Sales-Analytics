-- Find the average delivery time for each product category.
select product_category, avg(delivery_days) from sales
group by product_category;

-- Find the highest customer rating in each product category.
select product_category, max(customer_rating) from sales
group by product_category;

-- Find the minimum unit price for each region.
select region, min(unit_price) from sales
group by region;

