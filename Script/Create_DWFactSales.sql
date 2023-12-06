--alter view  _DWFactSales as 

SELECT     

                        s.INVENTTRANSID AS InventTranceKey, s.DATAAREAID AS CompanyKey, s.ITEMID AS ProductKey, s.SALESGROUP AS BrancheKey,
                        s.CUSTACCOUNT AS CustomerKey, s.INVENTDIMID AS DimensionKey, s.SALESSTATUS AS StatusKey, s.SALESTYPE AS TypeKey,
                       
                         CASE WHEN s.DESCSHOW = 0 THEN 5637156079 else s.DESCSHOW  END AS PromotionKey, 
                         CASE WHEN s.SALESUNIT = '' THEN '64' ELSE s.SALESUNIT END AS UnitKey,
                         CASE WHEN s.Transport = '' THEN 'بدون' ELSE s.Transport END AS CarKey, 
                         ISNULL(B.SALESRESPONSIBLE, N'19440') AS EmployeeKey,

                         --trim(s.DELIVERYCOUNTRYREGIONID) AS DELIVERYCOUNTRYREGIONID, trim(s.DELIVERYSTATE) AS DELIVERYSTATE, trim(s.DELIVERYCOUNTY) AS DELIVERYCOUNTY,
                         
                         (SELECT        MAX(RECID) AS Expr1 FROM  dbo.ADDRESSCOUNTY AS y
                           WHERE        (trim(COUNTRYREGIONID) = trim(s.DELIVERYCOUNTRYREGIONID)) AND (trim(STATEID) = trim(s.DELIVERYSTATE)) 
                           AND (trim(COUNTYID) = trim(s.DELIVERYCOUNTY)) AND (DATAAREAID = s.DATAAREAID))   AS GeographyKey,

                         CAST(REPLACE(CONVERT(date, s.SHIPPINGDATEREQUESTED), '-', '') AS int) AS OrderDateAlternativeKey,
                         CAST(REPLACE(CONVERT(date, s.RECEIPTDATEREQUESTED), '-', '') AS int)  AS ProductionDateAlternativeKey,
                         CAST(REPLACE(CONVERT(date, s.RECEIPTDATECONFIRMED), '-', '') AS int) AS ShippingDateAlternativeKey, 
                         
                         CONVERT(date, s.SHIPPINGDATEREQUESTED) AS OrderDate, 
                         CONVERT(date, s.RECEIPTDATEREQUESTED) AS ProductionDate, 
                         CONVERT(date, s.RECEIPTDATECONFIRMED) AS ShippingDate,

                         s.SALESID AS SalesOrderNumber, s.LINENUM AS SalesOrderLineNumber, 

                         s.SALESPRICE AS UnitPrice, s.SALESQTY,
                         s.LINEPERCENT AS DiscountPercent, s.LINEDISC AS DiscountAmount, s.LINEPERCENT AS LinePercentDiscount, s.LINEAMOUNT,
                        
                         dbo.GetTaxSalesSO(s.LINEAMOUNT, s.TAXGROUP) AS AmountAfterTax, 
                         dbo.GetTaxSalesSO(s.LINEAMOUNT, s.TAXGROUP) - s.LINEAMOUNT AS TaxAmount,
                         s.MODIFIEDDATETIME
FROM            dbo.SALESLINE AS s LEFT OUTER JOIN dbo.SALESTABLE AS B 
                ON s.SALESID = B.SALESID AND s.DATAAREAID = B.DATAAREAID
                         
WHERE        (s.SHIPPINGDATEREQUESTED >= CONVERT(datetime, '2013-01-01 00:00:00.000', 102)) and s.Transport is null