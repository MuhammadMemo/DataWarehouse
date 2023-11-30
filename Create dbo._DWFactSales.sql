USE [DynamicsAx1]
GO

/****** Object: View [dbo].[_DWFactSales] Script Date: 30-11-2023 11:18:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


----PRIMARY Key :
----InventTranceKey nvarchar(20) NOT NULL,
----Foreign Keys :
--CompanyKey tinyint  not null,
----ProductKey int not null,
----BrancheKey tinyint  not null,
----RegionKey int   not null,
----CustomerKey  int not null,
----PromotionKey int  not null,
----DimensionKey int  not null, 
----UnitKey  int  not null,
----EmployeeKey  int  not null,
----StatusKey  tinyint  not null,
----TypeKey  tinyint not null,
----CarKey  smallint  null,
----OrderDateAlternativeKey  int  not null,
----ProductionDateAlternativeKey  int  not null,
----ShippingDateAlternativeKey int  not null,
--TimeKey tinyint  not null,

----Degenerate Dim :
--SalesOrderNumber nvarchar(20) NOT NULL,
--SalesOrderLineNumber BIGINT NOT NULL,
--OrderDate Date,
--ProductionDate Date,
--ShippingDate Date,
----Measures :
--UnitPrice NUMERIC(28, 12) NOT NULL,
--SalesQty NUMERIC(28, 12) NOT NULL,
--DiscountPercent NUMERIC(28, 12) NOT NULL,
--DiscountAmount NUMERIC(28, 12),
--LineAmount NUMERIC(28, 12) NOT NULL,
--TaxAmount NUMERIC(28, 12) NOT NULL, 

--CREATE VIEW dbo._DWFactSales
--AS
SELECT   top(100)
s.[INVENTTRANSID] as InventTranceKey,
s.[DATAAREAID] as CompanyKey,
s.[ITEMID] AS ProductKey,
S.[SALESGROUP] AS BrancheKey,

--s.[CURRENCYCODE] AS [CurrencyKey], 
s.[CUSTACCOUNT] AS CustomerKey,
s.[DESCSHOW] as PromotionKey ,
s.[INVENTDIMID] AS DimensionKey,
isnull(s.[SALESUNIT],'64') as   UnitKey, 
b.[SALESRESPONSIBLE] AS EmployeeKey,
s.[SALESSTATUS] as StatusKey,
s.[SALESTYPE] as TypeKey,
s.[TRANSACTIONCODE] as CarKey,

s.[DeliveryCountryRegionId] AS RegionKey,
s.DELIVERYSTATE as [State],
s.DELIVERYCOUNTY as City,
CONVERT(date, s.[SHIPPINGDATEREQUESTED]) AS OrderDateAlternativeKey,
CONVERT(date, s.[RECEIPTDATEREQUESTED]) AS ProductionDateAlternativeKey,
CONVERT(date, s.[RECEIPTDATECONFIRMED]) AS ShippingDateAlternativeKey,
--Degenerate Dim :
s.[SALESID] as SalesOrderNumber,
s.[LINENUM] as SalesOrderLineNumber,
CONVERT(date, s.[SHIPPINGDATEREQUESTED]) AS OrderDate,
CONVERT(date, s.[RECEIPTDATEREQUESTED]) AS ProductionDate,
CONVERT(date, s.[RECEIPTDATECONFIRMED]) AS ShippingDate,
--Measures :
s.[SalesPrice] AS UnitPrice, 
s.[SALESQTY]  as SalesQty,
s.[LinePercent] as DiscountPercent,
s.[LineDisc] as DiscountAmount,
s.[LinePercent] AS [LinePercentDiscount], 
s.[LineAmount] as LineAmount,
[dbo].[GetTaxSalesSO](s.[LINEAMOUNT], s.[TAXGROUP]) AS AmountAfterTax,
[dbo].[GetTaxSalesSO](s.[LINEAMOUNT], s.[TAXGROUP])- [LineAmount] as TaxAmount,

s.[MODIFIEDDATETIME]
--[dbo].[GetTaxSalesSO](s.[LINEAMOUNT], s.[TAXGROUP]) AS [AmountAfterTax], ROW_NUMBER() OVER (PARTITION BY s.[SALESID]
--ORDER BY s.[ITEMID]) AS [SalesOrderLineNumber]
FROM         [DynamicsAx1].[dbo].[SALESLINE] s LEFT OUTER JOIN
 dbo.SALESTABLE AS B ON S.SALESID = B.SALESID and s.DATAAREAID =b.DATAAREAID
/*LEFT OUTER JOIN */ WHERE (S.SALESGROUP IN ('01', '02', '03', '04', '05', '06', '07', '12', '13', '25', '35', '45')) AND (S.SALESID LIKE '0008%' OR
                      S.SALESID LIKE '01%' OR
                      S.SALESID LIKE '02%' OR
                      S.SALESID LIKE '03%' OR
                      S.SALESID LIKE '04%' OR
                      S.SALESID LIKE '06%' OR
                      S.SALESID LIKE '07%' OR
                      S.SALESID LIKE '08%' OR
                      S.SALESID LIKE '1%' OR
                      S.SALESID LIKE '2%' OR
                      S.SALESID LIKE '3%' OR
                      S.SALESID LIKE '4%' OR
                      S.SALESID LIKE '6%' OR
                      S.SALESID LIKE '7%' OR
                      S.SALESID LIKE '8%') AND (S.SHIPPINGDATEREQUESTED >= CONVERT(datetime, '2013-01-01 00:00:00.000', 102)) AND (S.SALESSTATUS <> 4) AND b.SALESTYPE = 3
