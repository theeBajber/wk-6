-- Question 1
-- Get employee details with office information using INNER JOIN
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o
ON e.officeCode = o.officeCode;

-- Question 2
-- Get product details with product line information using LEFT JOIN
SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines pl
ON p.productLine = pl.productLine;

-- Question 3
-- Retrieve first 10 orders with customer details using RIGHT JOIN
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o
ON c.customerNumber = o.customerNumber
LIMIT 10;
