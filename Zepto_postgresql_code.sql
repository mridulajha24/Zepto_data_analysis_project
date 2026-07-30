drop table if exists zepto;

Create table zepto(
sku_id serial primary key,
category varchar(120),
name varchar(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent numeric(5,2),
availableQuantity Integer,
discountedSellingPrice numeric(8,2),
weightInGms Integer,
outOfStock BOOLEAN,
quantity Integer
);

--data exploration
--count of rows
SELECT COUNT(*) FROM zepto;

--sample data
SELECT * FROM zepto
LIMIT 10;

--null values
SELECT * FROM zepto
where name is null 
OR
 category is null 
OR
 mrp is null 
OR
discountpercent is null 
OR
 availableQuantity is null 
OR
 discountedSellingPrice is null 
OR
 weightInGms is null 
OR
 outOfStock is null 
OR
quantity is null;

--different product categories 
SELECT DISTINCT category
FROM zepto
ORDER BY category;

--product in stock vs out of stock

SELECT outOfStock, COUNT(sku_id)
FROM zepto
Group BY outOfStock;

--product names present multiple times
SELECT name, COUNT(sku_id) as "Number of skus"
from zepto
group by name
having count(sku_id)>1
order by count(sku_id) DESC;

--data cleaning

--products with price = 0

SELECT * FROM zepto
WHERE mrp = 0
OR discountedSellingPrice = 0;

DELETE FROM zepto
WHERE mrp = 0;

--convert paisa into rupee by dividing into 100
UPDATE zepto
SET mrp = mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100.0;

SELECT mrp,discountedSellingPrice from zepto;


--Find the top 10 best-value products based on discount percentage.
SELECT DISTINCT name, mrp, discountPercent 
FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;

--Identify high-MRP products that are currently out of stock.
SELECT DISTINCT name, mrp
from zepto
where outOfStock = TRUE and mrp > 300
order by mrp DESC;

--Estimate the potential revenue for each product category.
SELECT category,
SUM(discountedSellingPrice * availableQuantity) AS total_revenue
from zepto
group by category
order by total_revenue;

--Find expensive products (MRP > ₹500) that offer minimal discounts.

Select distinct name,mrp,discountPercent
from zepto
where mrp>500
and
discountPercent<10
order by mrp Desc, discountPercent Desc;

--Rank the top 5 product categories with the highest average discount percentages.

select category,
ROUND(AVG(discountPercent),2) AS avg_discount
from zepto
group by category
order by avg_discount DESC
LIMIT 5;

--Calculate the price per gram for each product to identify the best value-for-money options.

SELECT DISTINCT name,weightInGms, discountedSellingPrice,
Round(discountedSellingPrice/weightInGms,2) AS price_per_gram
from zepto
where weightInGms >= 100
order by price_per_gram;

--Group products into Low, Medium, and Bulk categories based on their weight.

SELECT DISTINCT name, weightInGms,
CASE WHEN weightInGms <1000 THEN 'Low'
     WHEN weightInGms <5000 Then 'Medium'
	 Else 'Bulk'
	 END AS weight_category
FROM zepto;

--Calculate the total inventory weight for each product category.

SELECT category,
SUM(weightInGms * availableQuantity) AS total_weight
from zepto
group by category
order by total_weight;
