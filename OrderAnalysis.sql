USE Northwind 

SELECT COUNT(*) AS NumberOfOrders, 
	MIN(OrderDate) AS EarlisetOrder, 
	MAX(OrderDate) AS LatestOrder
FROM dbo.Orders
WHERE EmployeeID = 1