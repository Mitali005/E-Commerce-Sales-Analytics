SELECT * FROM ecommerce_db.sales;
drop database movie;
use ecommerce_db;

-- Display all the records.  
select * from sales;

-- count the total number of orders
select sum(quantity) from sales;
select * from sales;

-- find the product category which has highest rating.
select product_category,avg(customer_rating) from sales;

select product_category,(order_id) as order_count from sales
group by product_category order by order_count ;

-- find the average discount on each product category.
select product_category, avg(discount) from sales
group by product_category;

-- find the product with the highest discount
select product_category, max(discount) from  sales;

-- find average delivery time in each region.
select product_category, avg(delivery_days), region from sales 
group by region;

-- find max delivery time from the table  .
select product_category, max(delivery_days), region from sales ;

-- find the payment method which has highest revenue.
select payment_method,max(revenue) from sales;

-- find which payment method is highly used
select payment_method,(payment_method) as highly_used_method from sales
order by highly_used_method desc limit 1;


select * from sales;
select customer_id, max(quantity)from sales
group by customer_id order by customer_id desc limit 1 ;

-- find the customer who ordered maximum products.
select customer_id,sum(quantity) as total_quantity from sales
group by customer_id order by total_quantity desc limit 1 ;

select max(revenue) from sales;

-- which product has highest rating.
select max(customer_rating) , revenue , product_category from sales
group by customer_rating order by customer_rating desc limit 1;

select avg(quantity) from sales;

-- ek month me kitne orders aaye.
select extract(month from order_date) from sales;


-- in which region revenue is highest.
select region, max(revenue) from sales;
-- OR 
select region,max(revenue) as max_revenue  from sales
group by region 
order by max_revenue desc;

-- find the customer whose total revenue is highest.
select customer_id, sum(revenue) as total_revenue from sales
group by customer_id 
order by total_revenue desc limit 1;

-- Find the total number or order on the basis of product category.
select product_category, count(quantity) as max_count from sales
group by product_category 
order by max_count desc ;


-- find product whose rating is higher than the average rating.
select product_category , (customer_rating) from sales
where customer_rating > (select avg(customer_rating) from sales);

-- find average rating of product from sales table
select avg(customer_rating) from sales;

-- find the rating of product whose delivery time is maximum.
select product_category, customer_rating, max(delivery_days) from sales;

-- find the product name and quantity which  has minimum rating.
select product_category , min(customer_rating), quantity from sales;

-- find product which has minimum unit price
select product_category, min(unit_price) from sales;
select * from sales;

--                             ORDER_ID

-- find product  whose srevenue is greater than the average revenue. 
select * from sales
where revenue>(select avg(revenue) from sales);

-- count orders in each region.
select region,count(quantity) from sales
group by region;

-- find orders on the basis of payment method
select * from sales
group by  payment_method;

-- find orders whose customer rating greater then 3.
select * from sales
where customer_rating>3;

-- find top 5  product which has rating higher than average of rating and revenue higher than average revenue.
select * from sales
where customer_rating>(select avg(customer_rating) from sales) 
and 
revenue>(select avg(revenue) from sales)
limit 5;

select * from sales;

select MONTH(order_date) from sales;
describe sales;
select (order_date) from sales;

alter table sales modify order_date datetime;

ALTER TABLE sales
MODIFY COLUMN order_date DATETIME;

UPDATE sales
SET order_date = STR_TO_DATE(order_date, '%d/%m/%Y');

ALTER TABLE sales
ADD COLUMN order_date_new DATETIME;

UPDATE sales
SET order_date_new = STR_TO_DATE(order_date, '%d/%m/%Y');



SET SQL_SAFE_UPDATES = 0;

UPDATE sales
SET order_date_new = STR_TO_DATE(order_date, '%d/%m/%Y');   -- FORMATE GLT THAAA

UPDATE sales
SET order_date_new = STR_TO_DATE(order_date, '%m/%d/%Y');  -- YE CHL GYII OLD COLUMN SE NEW COLUMN BNATA JISKA DATATYPE HE DATETIME

select * from sales;

select extract(MONTH from order_date_new) as months from sales;     

