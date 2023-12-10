--DimProducts (Type:Conformed ,Loading:Every Hour,SCD)
CREATE TABLE [dbo].[DimProduct]
(
CompanyKey tinyint not null,
ProductKey int not null IDENTITY (1,1) ,
ProductAlternativeKey nvarchar(50) not null,
ProductName nvarchar(150) not null,
Category nvarchar(150) not null,
SubCategory nvarchar(150)   ,
StatusCategory nvarchar(50)   ,
StatusProduct nvarchar(30)   ,
GroupType nvarchar(50)  NULL,
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
