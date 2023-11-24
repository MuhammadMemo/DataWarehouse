CREATE TABLE [dbo].[FactSales]
(
--PRIMARY Key :
InventTranceKey nvarchar(20) NOT NULL,
--Foreign Keys :
CompanyKey tinyint  not null,
ProductKey int not null,
BrancheKey tinyint  not null,
RegionKey int   not null,
CustomerKey  int not null,
PromotionKey int  not null,
DimensionKey int  not null, 
UnitKey  int  not null,
EmployeeKey  int  not null,
StatusKey  tinyint  not null,
TypeKey  tinyint not null,
CarKey  smallint  null,
OrderDateAlternativeKey  int  not null,
ProductionDateAlternativeKey  int  not null,
ShippingDateAlternativeKey int  not null,
TimeKey tinyint  not null,

--Degenerate Dim :
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
--Trace
IsDeleted bit DEFAULT 0 NOT NULL,
LastupdateDate datetime DEFAULT getDate()
    CONSTRAINT [PK_FactSales] PRIMARY KEY (CompanyKey,InventTranceKey) ,
    
    CONSTRAINT [PF_Branche] FOREIGN KEY  (BrancheKey,CompanyKey) REFERENCES DimBranche(BrancheKey,CompanyKey),
    CONSTRAINT [PF_Product] FOREIGN KEY  (ProductKey,CompanyKey) REFERENCES DimProduct(ProductKey,CompanyKey),
    CONSTRAINT [PF_Region] FOREIGN KEY  (RegionKey,CompanyKey) REFERENCES DimRegion(RegionKey,CompanyKey),
    CONSTRAINT [PF_Dimension] FOREIGN KEY  (DimensionKey,CompanyKey) REFERENCES DimDimension(DimensionKey,CompanyKey),
    CONSTRAINT [PF_Promotion] FOREIGN KEY  (PromotionKey,CompanyKey) REFERENCES DimPromotion(PromotionKey,CompanyKey),
    CONSTRAINT [PF_Customer] FOREIGN KEY  (CustomerKey,CompanyKey) REFERENCES DimCustomer(CustomerKey,CompanyKey),
    CONSTRAINT [PF_Unit] FOREIGN KEY  (UnitKey,CompanyKey) REFERENCES DimUnit(UnitKey,CompanyKey),
    CONSTRAINT [PF_Employee] FOREIGN KEY  (EmployeeKey,CompanyKey) REFERENCES DimEmployee(EmployeeKey,CompanyKey),
    CONSTRAINT [PF_Car] FOREIGN KEY (CarKey,CompanyKey) REFERENCES DimCar(CarKey,CompanyKey),
    CONSTRAINT [PF_Status] FOREIGN KEY (StatusKey) REFERENCES DimOrderStatus(StatusKey),
    CONSTRAINT [PF_Type] FOREIGN KEY (TypeKey) REFERENCES DimSalesType(TypeKey),
    CONSTRAINT [PF_Company] FOREIGN KEY (CompanyKey) REFERENCES DimCompany(CompanyKey),

    CONSTRAINT [PF_OrderDate] FOREIGN KEY (OrderDateAlternativeKey) REFERENCES DimDate(DateKey),
    CONSTRAINT [PF_ProductionDate] FOREIGN KEY (ProductionDateAlternativeKey) REFERENCES DimDate(DateKey),
    CONSTRAINT [PF_ShippingDate] FOREIGN KEY (ShippingDateAlternativeKey) REFERENCES DimDate(DateKey),
    CONSTRAINT [PF_Time] FOREIGN KEY (TimeKey) REFERENCES DimTime(TimeKey),
   

)
