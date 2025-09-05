USE salesDB;

-- 	Question1
SELECT e.firstName, e.lastName, e.email, e.officeCode  -- PICKING OUT NECESSARY COLUMNS 
FROM employees e 
INNER JOIN offices  o 
ON  e.officeCode = o.officeCode;

-- Question 2
SELECT p.productName, p.productVendor, p.productLine 
FROM products p 
LEFT JOIN productlines l 
ON p.productLine = l.ProductLine;

-- Question 3
SELECT o.orderDate, o.shippedDate, o.`status`, o.customerNumber 
FROM orders o 
JOIN customers c 
ON c.customerNumber = o.customerNumber LIMIT 10;