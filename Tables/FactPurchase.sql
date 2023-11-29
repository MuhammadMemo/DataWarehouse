-- PurchaseRequisition, PurchasePlane
CREATE TABLE [dbo].[FactPurchase]
(
	--PRIMARY Key :
InventTranceKey nvarchar(20) NOT NULL,
--Foreign Keys :
CompanyKey tinyint  not null,
ProductKey int not null,
VendorKey  int not null,
DimensionKey int  not null, 
UnitKey  int  not null,
EmployeeKey  int  not null,
StatusKey  tinyint  not null,
TypeKey  tinyint not null,
OrderDateAlternativeKey  int  not null,
ShippingDateAlternativeKey int  not null,

--Degenerate Dim :
PurchaseOrderNumber nvarchar(20) NOT NULL,
PurchaseOrderLineNumber BIGINT NOT NULL,
OrderDate Date,
ShippingDate Date,
--Measures :
UnitPrice NUMERIC(28, 12) NOT NULL,
PurchaseQty NUMERIC(28, 12) NOT NULL,
DiscountPercent NUMERIC(28, 12) NOT NULL,
DiscountAmount money,
LineAmount NUMERIC(28, 12) NOT NULL,
TaxAmount NUMERIC(28, 12) NOT NULL, 
--Trace
IsDeleted bit DEFAULT 0 NOT NULL,
LastupdateDate datetime DEFAULT getDate()
    CONSTRAINT [PK_FactPurchase] PRIMARY KEY (CompanyKey,InventTranceKey) ,

    CONSTRAINT [PF_PurhProduct] FOREIGN KEY  (ProductKey,CompanyKey) REFERENCES DimProduct(ProductKey,CompanyKey),
    CONSTRAINT [PF_PurhDimension] FOREIGN KEY  (DimensionKey,CompanyKey) REFERENCES DimDimension(DimensionKey,CompanyKey),
    CONSTRAINT [PF_PurhVendor] FOREIGN KEY  (VendorKey,CompanyKey) REFERENCES DimVendor(VendorKey,CompanyKey),
    CONSTRAINT [PF_PurhUnit] FOREIGN KEY  (UnitKey,CompanyKey) REFERENCES DimUnit(UnitKey,CompanyKey),
    CONSTRAINT [PF_PurhEmployee] FOREIGN KEY  (EmployeeKey,CompanyKey) REFERENCES DimEmployee(EmployeeKey,CompanyKey),
    CONSTRAINT [PF_PurhStatus] FOREIGN KEY (StatusKey) REFERENCES DimFixOrderStatus(StatusKey),
    CONSTRAINT [PF_PurhType] FOREIGN KEY (TypeKey) REFERENCES DimFixPurchaseType(TypeKey),
    CONSTRAINT [PF_PurhCompany] FOREIGN KEY (CompanyKey) REFERENCES DimCompany(CompanyKey),
    CONSTRAINT [PF_PurhOrderDate] FOREIGN KEY (OrderDateAlternativeKey) REFERENCES DimDate(DateKey),
    CONSTRAINT [PF_PurhShippingDate] FOREIGN KEY (ShippingDateAlternativeKey) REFERENCES DimDate(DateKey),
  

)

