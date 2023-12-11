CREATE TABLE dbo.FactSalesTrade
(
--PRIMARY Key :
InventTranceKey nvarchar(20) NOT NULL,
--Foreign Keys :
CompanyKey tinyint  not null,
--Trade
TradTypeKey tinyint  NULL,
NoteTrad   nvarchar (500) NULL,
InvoiceDateAlternativeKey int NOT NULL,
InvoiceDate date NULL,
InvoiceNumber nvarchar(20) NOT NULL,
InvoiceTotal  NUMERIC(28, 12) NOT NULL,
--Trace
IsDeleted bit DEFAULT 0 NOT NULL,
LastupdateDate datetime DEFAULT getDate()

    CONSTRAINT PK_FactSalesTrade PRIMARY KEY (CompanyKey,InventTranceKey) ,
    CONSTRAINT PF_InventTranceTrade FOREIGN KEY (CompanyKey,InventTranceKey) REFERENCES FactSales(CompanyKey,InventTranceKey),
    CONSTRAINT PF_CompanyTrade FOREIGN KEY (CompanyKey) REFERENCES DimCompany(CompanyKey),
    CONSTRAINT PF_InvoiceDateTrade FOREIGN KEY (InvoiceDateAlternativeKey) REFERENCES DimDate(DateKey),

)
