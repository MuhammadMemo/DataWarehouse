CREATE TABLE [dbo].[FactProductCoverage]
(
	CompanyKey Tinyint not null,
	[Id] INT NOT NULL PRIMARY KEY,
	ProductMin DECIMAL Default 0.0,
	ProductMax DECIMAL Default 0.0,
	LeadTimePurchase int  Default 0.0,
	DimensionKey  int  not null,
	ProductKey int  not null
	
)
