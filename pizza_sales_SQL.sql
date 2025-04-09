Create database pizza_db;
use pizza_db;

select sum(total_price) as Total_revenue from pizza_sales;

select * from pizza_sales;

select sum(total_price) / count(distinct order_id) as Avg_Order_Value from pizza_sales;

select sum(quantity) as Total_pizza_sold from pizza_sales;

select count(distinct order_id) as Total_orders from pizza_sales;

select sum(quantity) / count(distinct order_id) as Avg_piza_per_order from pizza_sales;

SELECT DAYNAME(order_date) AS order_day, COUNT(DISTINCT order_id) AS Total_orders
FROM pizza_sales
GROUP BY order_day
ORDER BY WEEKDAY(order_date);

SELECT MONTHNAME(order_date) AS Month_Name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY MONTH(order_date)
ORDER BY MONTH(order_date);

select pizza_category, sum(total_price) as Total_Sales,
sum(total_price) * 100 / (select sum(total_price) from pizza_sales where month(order_date)) as PCT
from pizza_sales
where month(order_date) = 1
group by pizza_category;

select pizza_size, cast(sum(total_price) as decimal(10,2)) as Total_Sales,
CAST(sum(total_price) * 100 / (select sum(total_price) from pizza_sales WHERE QUARTER(order_date) = 1) as decimal(10,2)) as PCT
from pizza_sales
WHERE QUARTER(order_date) = 1
group by pizza_size
order by PCT DESC;

select pizza_name, sum(total_price) as Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue desc
LIMIT 5;

select pizza_name, sum(total_price) as Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue asc
LIMIT 5;

select pizza_name, sum(quantity) as Total_Quantity from pizza_sales
group by pizza_name
order by Total_Quantity desc
LIMIT 5;

select pizza_name, sum(quantity) as Total_Quantity from pizza_sales
group by pizza_name
order by Total_Quantity asc
LIMIT 5;

select pizza_name, count(distinct order_id) as Total_Orders
from pizza_sales
group by pizza_name
order by Total_Orders desc
limit 5;

select pizza_name, count(distinct order_id) as Total_Orders
from pizza_sales
group by pizza_name
order by Total_Orders asc
limit 5;

select pizza_name, sum(quantity) as Total_Pizza_Sold 
from pizza_sales
where month(order_date) = 8
group by pizza_name
order by Total_Pizza_Sold desc
limit 5;

select pizza_name, sum(quantity) as Total_Pizza_Sold 
from pizza_sales
where month(order_date) = 8
group by pizza_name
order by Total_Pizza_Sold asc
limit 5;