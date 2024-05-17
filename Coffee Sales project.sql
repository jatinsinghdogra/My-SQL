USE Coffee;

SELECT * FROM coffee.coffee_sales;

# Total number of sales 
SELECT SUM(unit_price*transaction_qty) AS Total_sales
FROM Coffee_sales;

# Average transaction amount
SELECT AVG(transaction_qty*unit_price) AS Average_transaction_amount
FROM coffee_sales;

# Top 5 best selling coffee among all the products
SELECT product_type, SUM(transaction_qty*unit_price) AS Best_selling_product
FROM coffee_sales
GROUP BY product_type
ORDER BY Best_selling_product DESC
LIMIT 5;

# Sales based on product category from lower to higher
SELECT product_category, SUM(transaction_qty*unit_price) AS Sales_per_category
FROM Coffee_sales
GROUP BY product_category
ORDER BY Sales_per_category ASC;

# Total sales based on store location
SELECT store_location, SUM(transaction_qty*unit_price) AS Sales_per_store
FROM coffee_sales
GROUP BY Store_location;

# Store with highest number of sales
SELECT DISTINCT(store_id), store_location, SUM(transaction_qty*unit_price) AS Store_sales
FROM coffee_sales
GROUP BY store_id,store_location
ORDER BY store_sales DESC;

# Average transaction amount for each store based in location
SELECT store_location, AVG(transaction_qty*unit_price) AS Average_store_sales
FROM coffee_sales
GROUP BY store_location;

# Sales per Month and highest numner of sales in a month
SELECT Month_name, SUM(transaction_qty*unit_price) AS Sales_per_month
FROM Coffee_sales
GROUP BY Month_name;

SELECT *FROM coffee_sales;

