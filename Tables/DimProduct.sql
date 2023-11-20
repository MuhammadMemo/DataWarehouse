--DimProducts (Type:Conformed ,Loading:Every Hour,SCD)
CREATE TABLE [dbo].[DimProduct]
(
CompanyKey tinyint not null,
ProductKey int Not null IDENTITY (1,1) ,
ProductAlternativeKey nvarchar(50) Not null,
ProductName nvarchar(150)Not null,
Category nvarchar(20)Not null,
SubCategory nvarchar(20)Not null,
SalesPrice MONEY Not null,
PurchasePrice MONEY Not null, 
StartDate datetime NOT NULL Default getdate(),
EndDate datetime,
[Status] bit Default 0,
CONSTRAINT [PK_DimProduct_1] PRIMARY KEY CLUSTERED 
(
	ProductKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
