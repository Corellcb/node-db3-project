-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT products.ProductName
	, categories.CategoryName
FROM products
INNER JOIN categories ON products.CategoryId = categories.CategoryId;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT OrderId, ShipperName FROM Orders
JOIN shippers on orders.ShipperID = shippers.ShipperID
WHERE orders.OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT ProductName, Quantity FROM products
JOIN orderDetails on products.ProductID = orderDetails.ProductID
WHERE OrderId = 10251;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT OrderID, CustomerName, LastName FROM orders
JOIN customers ON orders.CustomerID = customers.CustomerID
JOIN employees ON orders.EmployeeID = employees.EmployeeID