SELECT ProductID, ProductName, UnitPrice, UnitsInStock, (UnitPrice * UnitsInStock) AS CurrentStockValue, ((UnitsInStock + UnitsOnOrder) * UnitPrice) AS FutureStockValue
FROM dbo.Products