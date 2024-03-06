CREATE TABLE [dbo].[DimProduct]
(
	        CompanyKey tinyint NOT NULL,
			[ID] [bigint] NOT NULL,
			ProductKey [int] NOT NULL IDENTITY (1,1),
			[GROUPTYPE] [nvarchar](50) NOT NULL,
			[TOPCATEGORY] [nvarchar](150) NOT NULL,
	        [GROUPNAME] [nvarchar](150) NOT NULL,
		    [SUBCATEGORID] [int] NOT NULL,
		    [SUBCATEGORNAME] [nvarchar](100) NOT NULL,
		    [LINEID] [int] NOT NULL,
			[LINENAME] [nvarchar](30) NOT NULL,
	        [ProductAlternativeKey] [nvarchar](30) NOT NULL,
	        [ProductName] [nvarchar](150) NOT NULL,
	        [CALC] [int] NOT NULL,
		    [PRICE] [numeric](28, 12) NOT NULL,
		    [PRICEQTY] [numeric](28, 12) NOT NULL,
		    [QTY] [int] NOT NULL,
			[PurchasePrice] MONEY NOT null Default 0, 
	    	[TOTALPRICE] MONEY NOT NULL,
			[DISCPERCENT] [numeric](28, 12) NOT NULL,
		    [DISCAMOUNT] MONEY NOT NULL,
			[TOTALAFTER] MONEY NOT NULL,
			[ListProduct] [int] NOT NULL,

CONSTRAINT [PK_DimProduct_2] PRIMARY KEY CLUSTERED 
(
	--ID ASC,
	ProductKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]


