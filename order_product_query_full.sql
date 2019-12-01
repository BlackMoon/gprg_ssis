/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
	od.SalesOrderID,
	oh.OrderDate,
	p.Name as ProductName,
	p.ProductID,	
	pc.ProductCategoryID,
	pc.Name AS CategoryName,
	psc.ProductSubcategoryID,
	psc.Name AS SubCategoryName,
	od.OrderQty,
	od.UnitPrice,
	od.OrderQty * od.UnitPrice AS Total,
	t.TerritoryID,
	t.Name AS TerritoryName,
	t.CountryRegionCode
FROM 
	sales.[SalesOrderDetail] od
	JOIN sales.SalesOrderHeader oh ON od.SalesOrderID = oh.SalesOrderID
	JOIN production.Product p ON od.ProductID = p.ProductID
	JOIN Production.ProductSubcategory psc ON psc.ProductSubcategoryID = p.ProductSubcategoryID
	JOIN Production.ProductCategory pc ON pc.ProductCategoryID = psc.ProductCategoryID
	JOIN sales.SalesTerritory t ON t.TerritoryID = oh.TerritoryID