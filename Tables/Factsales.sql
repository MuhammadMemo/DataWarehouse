CREATE TABLE [dbo].[FactSales]
(
--Foreign Keys :
ProductKey int not null,
BrancheKey tinyint  not null,
RegionKey int   not null,
CustomerKey  int not null,
PromotionKey int  not null,
DimensionKey int  not null, 
UnitKey  int  not null,
EmployeeKey  int  not null,

CompanyKey tinyint  FOREIGN KEY  REFERENCES DimCompany(CompanyKey) not null,
OrderDateAlternativeKey  int FOREIGN KEY  REFERENCES DimDate(DateKey) not null,
ProductionDateAlternativeKey  int FOREIGN KEY  REFERENCES DimDate(DateKey)  not null,
ShippingDateAlternativeKey int FOREIGN KEY  REFERENCES DimDate(DateKey)  not null,
TimeKey tinyint FOREIGN KEY  REFERENCES DimTime(TimeKey)  not null,
StatusKey  tinyint FOREIGN KEY  REFERENCES DimSalesStatus(StatusKey) not null,
TypeKey  tinyint FOREIGN KEY  REFERENCES DimSalesType(TypeKey) not null,

--Degenerate Dim :
INVENTTRANSID nvarchar(20) NOT NULL,
SalesOrderNumber nvarchar(20) NOT NULL,
SalesOrderLineNumber BIGINT NOT NULL,
OrderDate Date,
ProductionDate Date,
ShippingDate Date,
--Measures :
UnitPrice NUMERIC(28, 12) NOT NULL,
SalesQty NUMERIC(28, 12) NOT NULL,
DiscountPercent NUMERIC(28, 12) NOT NULL,
DiscountAmount money,
LineAmount NUMERIC(28, 12) NOT NULL,
TaxAmount NUMERIC(28, 12) NOT NULL, 
IsDeleted bit DEFAULT 0 NOT NULL,
LastupdateDate datetime DEFAULT getDate()
    CONSTRAINT [PK_Factsales] PRIMARY KEY (CompanyKey,INVENTTRANSID) ,

    CONSTRAINT [PF_Branche] FOREIGN KEY  (BrancheKey,CompanyKey) REFERENCES DimBranche(BrancheKey,CompanyKey),
    CONSTRAINT [PF_Product] FOREIGN KEY  (ProductKey,CompanyKey) REFERENCES DimProduct(ProductKey,CompanyKey),
    CONSTRAINT [PF_Region] FOREIGN KEY  (RegionKey,CompanyKey) REFERENCES DimRegion(RegionKey,CompanyKey),
    CONSTRAINT [PF_Dimension] FOREIGN KEY  (DimensionKey,CompanyKey) REFERENCES DimDimension(DimensionKey,CompanyKey),
    CONSTRAINT [PF_Promotion] FOREIGN KEY  (PromotionKey,CompanyKey) REFERENCES DimPromotion(PromotionKey,CompanyKey),
    CONSTRAINT [PF_Customer] FOREIGN KEY  (CustomerKey,CompanyKey) REFERENCES DimCustomer(CustomerKey,CompanyKey),
    CONSTRAINT [PF_Unit] FOREIGN KEY  (UnitKey,CompanyKey) REFERENCES DimUnit(UnitKey,CompanyKey),
    CONSTRAINT [PF_Employee] FOREIGN KEY  (EmployeeKey,CompanyKey) REFERENCES DimEmployee(EmployeeKey,CompanyKey),
    

)
