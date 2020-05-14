-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

Select ProductName, CategoryName from Product as p
JOIN Category as c on c.Id = p.CategoryId

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT [Order].Id , Shipper.CompanyName
FROM [Order]
JOIN Shipper
ON [Order].ShipVia = Shipper.Id
WHERE [Order].OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT  o.quantity, p.ProductName 
FROM OrderDetail as o
JOIN Product as p on p.id = o.ProductId
WHERE o.OrderId = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.Id, c.CompanyName, e.LastName
FROM [Order] as o
JOIN Employee as e
ON o.EmployeeId = e.Id
JOIN Customer as c
ON o.CustomerId = c.Id