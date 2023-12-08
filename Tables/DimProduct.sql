--DimProducts (Type:Conformed ,Loading:Every Hour,SCD)
CREATE TABLE [dbo].[DimProduct]
(
CompanyKey tinyint not null,
ProductKey int not null IDENTITY (1,1) ,
ProductAlternativeKey nvarchar(50) not null,
ProductName nvarchar(150) not null,
Category nvarchar(150) not null,
SubCategory nvarchar(100)   ,
StatusCategory nvarchar(500)   ,
StatusProduct nvarchar(30)   ,
SalesPrice MONEY not null Default 0,
PurchasePrice MONEY not null Default 0, 
StartDate datetime nOT NULL Default getdate(),
EndDate datetime,
[Status] bit Default 0,
CONSTRAINT [PK_DimProduct_1] PRIMARY KEY CLUSTERED 
(
	ProductKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
