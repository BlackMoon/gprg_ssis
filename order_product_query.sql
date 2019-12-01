/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
	od.SalesOrderID,
	oh.OrderDate,	
	p.ProductID,
	psc.ProductCategoryID,
	od.OrderQty,
	od.UnitPrice,
	od.OrderQty * od.UnitPrice AS Total,
	oh.TerritoryID
FROM 
	sales.[SalesOrderDetail] od
	JOIN sales.SalesOrderHeader oh ON od.SalesOrderID = oh.SalesOrderID
	JOIN production.Product p ON od.ProductID = p.ProductID
	JOIN Production.ProductSubcategory psc ON psc.ProductSubcategoryID = p.ProductSubcategoryID