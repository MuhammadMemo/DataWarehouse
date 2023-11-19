CREATE TABLE [dbo].[FactSales]
(
--Foreign Keys :
CompanyKey tinyint not null,
--OrderDateAlternativeKey  int not null,
--ProductionDateAlternativeKey  int not null,
--ShippingDateAlternativeKey int not null,
--TimeKey tinyint not null,
BrancheKey tinyint not null,
ProductsKey int not null,
RegionKey int not null,
CustomersKey  int not null,
PromotionsKey int not null,
StatusKey  tinyint not null,
TypeKey  tinyint not null,
CurrencyKey int not null,
--DimensionKey  nvarchar(30) not null,
--UnitKey  int not null,
--CarKey  int not null,
--GenderKey tinyint not null,
EmployeeKey  int not null,
--Degenerate Dim :
SalesOrderNumber nvarchar(20) NOT NULL,
SalesOrderLineNumber BIGINT NOT NULL,
OrderDate Date,
--ProductionDate Date,
--ShippingDate Date,
--Measures :
UnitPrice NUMERIC(28, 12) NOT NULL,
SalesQty NUMERIC(28, 12) NOT NULL,
DiscountPercent NUMERIC(28, 12) NOT NULL,
DiscountAmount money,
LineAmount NUMERIC(28, 12) NOT NULL,
TaxAmount NUMERIC(28, 12) NOT NULL, 
IsDeleted bit DEFAULT 0 NOT NULL,
LastupdateDate datetime DEFAULT getDate()
    CONSTRAINT [PK_Factsales] PRIMARY KEY (CompanyKey,SalesOrderNumber,SalesOrderLineNumber,ProductsKey) NOT NULL 

)
