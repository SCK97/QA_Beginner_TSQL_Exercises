USE Northwind

SELECT c.CustomerID, c.CompanyName, c.ContactName, od.ProductID, od.Quantity, p.productID, p.ProductName
FROM dbo.Customers AS c
JOIN dbo.Orders AS o 
	ON c.CustomerID = o.CustomerID
JOIN dbo.[Order Details] AS od
	ON o.OrderID = od.OrderID
JOIN dbo.Products AS p
	ON od.ProductID = p.ProductID
WHERE c.Country = 'UK' 
ORDER BY c.CompanyName, o.OrderDate