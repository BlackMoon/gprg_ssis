USE [AdventureWorksReporting2017]
GO

/****** Object:  Table [dbo].[Summary]    Script Date: 12/1/2019 5:09:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Summary](
	[SalesOrderId] [int] NOT NULL,
	[OrderDate] [datetime] NULL,
	[ProductName] nvarchar(50) NOT NULL,
	[ProductNumber] [nvarchar](25) NOT NULL,
	[ProductCategory] nvarchar(50) NOT NULL,
	[OrderQty] [smallint] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Total] [money] NULL,
	[TerritoryId] [int] NULL,
 CONSTRAINT [PK_Summary] PRIMARY KEY CLUSTERED 
(
	[SalesOrderId] ASC,
	[ProductNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


