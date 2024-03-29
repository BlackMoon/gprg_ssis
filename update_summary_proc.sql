USE [AdventureWorksReporting2017]
GO
/****** Object:  StoredProcedure [dbo].[updateSummary]    Script Date: 12/1/2019 4:55:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description:	<Update summary table comand>
-- =============================================
ALTER PROCEDURE [dbo].[updateSummary] 
	@salesOrderId		int,
	@productNumber		nvarchar(25),
    @orderDate			datetime,
    @productName		nvarchar(50),	
	@productCategory	nvarchar(50),
	@orderQty			smallint,
	@unitPrice			money,
	@territoryId		int
AS
BEGIN
	
	SET NOCOUNT ON;

    UPDATE dbo.Summary
	SET
		orderDate =			@orderDate,
		productName =		@productName,		
		productCategory =	@productCategory,
		orderQty =			@orderQty,
		unitPrice =			@unitPrice,
		total =				@orderQty * @unitPrice,
		territoryId =		@territoryId
	WHERE 
		productNumber =		@productNumber AND salesOrderId = @salesOrderId
	
END
