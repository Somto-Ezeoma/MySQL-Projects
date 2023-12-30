-- Prepare a list of offices sorted by country, state, city.
SELECT * FROM OFFICES;
SELECT COUNTRY, STATE, CITY FROM OFFICES
ORDER BY COUNTRY, STATE, CITY ASC;

-- How many employees are there in the company? 
SELECT EMPLOYEENUMBER FROM EMPLOYEES;
SELECT COUNT(EMPLOYEENUMBER) AS NO_OF_EMPLOYEES FROM EMPLOYEES;

-- What is the total of payments received?
SELECT * FROM PAYMENTS;
SELECT SUM(AMOUNT) AS TOTAL_PAYMENTS FROM PAYMENTS;

-- List the product lines that contain 'Cars'
SELECT PRODUCTLINE FROM PRODUCTLINES
WHERE PRODUCTLINE LIKE '% CARS';

-- Report total payments for October 28, 2004
SELECT PAYMENTDATE, AMOUNT FROM PAYMENTS
WHERE PAYMENTDATE = '2004-10-28';

-- Report those payments greater than \\$100,000. 
SELECT * FROM PAYMENTS
WHERE AMOUNT > 100000;

-- List the products in each product line
SELECT PRODUCTLINE FROM PRODUCTLINES;

#How many products in each product line?
SELECT PRODUCTLINE, COUNT(PRODUCTNAME) AS NO_OF_PRODUCTS FROM 
PRODUCTS 
GROUP BY PRODUCTLINE; 

-- What is the minimum payment received? 
SELECT MIN(AMOUNT) FROM PAYMENTS;

SELECT * FROM PAYMENTS
ORDER BY AMOUNT ASC;

-- List all payments greater than twice the average payment 
SELECT AMOUNT FROM PAYMENTS
WHERE (AMOUNT) > 32431*2;

-- What is the average percentage markup of the MSRP on buyPrice?
SELECT * FROM PRODUCTS;
SELECT AVG(BUYPRICE), AVG(MSRP), AVG(BUYPRICE)/AVG(MSRP) * 100 AS AVERAGE_PERCENTAGE FROM PRODUCTS;

-- How many distinct products does ClassicModels sell? 
SELECT COUNT(DISTINCT PRODUCTNAME) AS PRODUCTS FROM PRODUCTS; 

-- Report the name and city of customers who don't have sales representatives? 
SELECT CUSTOMERNAME, CITY, SALESREPEMPLOYEENUMBER FROM CUSTOMERS 
WHERE SALESREPEMPLOYEENUMBER IS NULL; 

-- What are the names of executives with VP or Manager in their title? Use the CONCAT 
-- function to combine the employee's first name and last name into a single field for reporting. 
SELECT CONCAT(FIRSTNAME, ' ', LASTNAME) AS EMPLOYEE_FULL_NAME, JOBTITLE 
FROM EMPLOYEES 
WHERE JOBTITLE LIKE '%VP%' OR JOBTITLE LIKE '%MANAGER%'; 

-- Which orders have a value greater than $5,000? 
SELECT O.CUSTOMERNUMBER, P.CUSTOMERNUMBER, AMOUNT 
FROM ORDERS AS O 
INNER JOIN PAYMENTS AS P 
ON O.CUSTOMERNUMBER = P.CUSTOMERNUMBER 
WHERE AMOUNT > 5000 
ORDER BY AMOUNT ASC; 

