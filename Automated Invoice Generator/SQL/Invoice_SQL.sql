CREATE DATABASE data_analytics_projects;

USE data_analytics_projects;

SELECT DATABASE();

SHOW TABLES;

SELECT * FROM clean_invoice LIMIT 5;

SELECT * FROM clean_invoice;

SELECT * FROM clean_invoice LIMIT 5;

SELECT full_name, final_amount FROM clean_invoice LIMIT 5;

SELECT DISTINCT city FROM clean_invoice;

SELECT * FROM clean_invoice WHERE final_amount > 100;

SELECT * FROM clean_invoice WHERE city = 'Lake James';

SELECT * FROM clean_invoice WHERE final_amount BETWEEN 50 AND 100;

SELECT * FROM clean_invoice WHERE city LIKE 'Lake%';

SELECT full_name, final_amount FROM clean_invoice ORDER BY final_amount DESC;

SELECT full_name, final_amount FROM clean_invoice ORDER BY final_amount ASC;

SELECT full_name, final_amount FROM clean_invoice ORDER BY final_amount DESC LIMIT 10;

SELECT COUNT(*) FROM clean_invoice;

SELECT SUM(final_amount) FROM clean_invoice;

SELECT AVG(final_amount) FROM clean_invoice;

SELECT MIN(final_amount) FROM clean_invoice;

SELECT MAX(final_amount) FROM clean_invoice;

SELECT city, ROUND(SUM(final_amount),2) AS Total_Revenue FROM clean_invoice GROUP BY city;

SELECT job, ROUND(SUM(final_amount),2) AS Total_Revenue FROM clean_invoice GROUP BY job;

SELECT city, COUNT(*) AS Total_Orders FROM clean_invoice GROUP BY city;

SELECT city, ROUND(SUM(final_amount),2) AS Revenue FROM clean_invoice GROUP BY city HAVING SUM(final_amount) > 500;

SELECT city, COUNT(*) AS Orders FROM clean_invoice GROUP BY city HAVING COUNT(*) > 15;

SELECT COUNT(*) AS Total_Orders,
    ROUND(SUM(final_amount),2) AS Total_Revenue,
    ROUND(AVG(final_amount),2) AS Average_Order_Value FROM clean_invoice;
    
SELECT invoice_id, final_amount,
    CASE WHEN final_amount >= 80 THEN 'High Bill'
        WHEN final_amount >= 40 THEN 'Medium Bill'
        ELSE 'Low Bill' END AS Bill_Category FROM clean_invoice;

SELECT Bill_Category, COUNT(*) AS Total_Bills
FROM(SELECT
        CASE WHEN final_amount >= 80 THEN 'High Bill'
            WHEN final_amount >= 40 THEN 'Medium Bill'
            ELSE 'Low Bill' END AS Bill_Category FROM clean_invoice) AS t GROUP BY Bill_Category;
            
SELECT UPPER(city) FROM clean_invoice;

SELECT LOWER(city) FROM clean_invoice;

SELECT city, LENGTH(city) FROM clean_invoice;

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM clean_invoice;

SELECT SUBSTRING(city,1,3) FROM clean_invoice;

SELECT CURDATE() AS Today;

SELECT NOW() AS Current_Date_Time;

SELECT YEAR(CURDATE()) AS Current_Year;
    
SELECT ROUND(SUM(final_amount),2) AS Total_Revenue, COUNT(*) AS Total_Orders,
    ROUND(AVG(final_amount),2) AS Average_Order_Value FROM clean_invoice;
    
SELECT city, ROUND(SUM(final_amount),2) AS Revenue FROM clean_invoice
	GROUP BY city ORDER BY Revenue DESC LIMIT 5;
    
SELECT job, ROUND(SUM(final_amount),2) AS Revenue FROM clean_invoice GROUP BY job;

SELECT city, ROUND(SUM(final_amount),2) AS Revenue
	FROM clean_invoice GROUP BY city HAVING SUM(final_amount) > 500;

SELECT Product_ID, SUM(qty) AS Total_Quantity FROM clean_invoice
	GROUP BY Product_ID ORDER BY Total_Quantity DESC LIMIT 10;
    
SELECT job, ROUND(AVG(final_amount), 2) AS Avg_Revenue FROM clean_invoice
	GROUP BY job HAVING AVG(final_amount) > 70
	ORDER BY Avg_Revenue DESC LIMIT 5;
    
DESCRIBE clean_invoice;

SELECT city, ROUND(SUM(final_amount), 2) AS Total_Revenue
	FROM clean_invoice GROUP BY city ORDER BY Total_Revenue DESC LIMIT 5;

SELECT job, ROUND(AVG(final_amount), 2) AS Avg_Revenue
	FROM clean_invoice GROUP BY job HAVING AVG(final_amount) > 70;

SELECT product_id, SUM(qty) AS Total_Quantity
	FROM clean_invoice GROUP BY product_id ORDER BY Total_Quantity DESC;
