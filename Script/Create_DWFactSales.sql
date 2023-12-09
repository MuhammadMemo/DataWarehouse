--alter view  _DWFactSales as 
--
SELECT     
top(100)
                        s.INVENTTRANSID AS InventTranceKey, s.DATAAREAID AS CompanyKeySource, s.ITEMID AS ProductKeySource, s.SALESGROUP AS BrancheKeySource,
                        s.CUSTACCOUNT AS CustomerKeySource, s.INVENTDIMID AS DimensionKeySource, s.SALESSTATUS AS StatusKeySource, s.SALESTYPE AS TypeKeySource,
                        --b.PaymMode as MethodPaymentKeySource,
                         isnull(b.TradRemndType,0) as TradTypeKeySource,isnull(b.NoteSOTrad ,'UnKown') as  NoteSOTradSource,
                       isnull((select max(RECID) from smmBusRelSalesDistrictGroup sm where  b.SalesDistrictGroup=sm.SalesDistrictId and b.DATAAREAID=sm.DATAAREAID),1) as MethodAcquisitionKeySource,
                        isnull((select max(RECID) from DlvMode sm where  b.DlvMode=sm.Code and b.DATAAREAID=sm.DATAAREAID),1) as MethodDeliveryKeySource,
                       isnull((select max(RECID) from CustPaymModeTable sm where  b.PaymMode=sm.PaymMode and b.DATAAREAID=sm.DATAAREAID),1) as MethodPaymentKeySource,
                      
                        cast( CASE WHEN s.DESCSHOW = 0 THEN 1 else s.DESCSHOW  END  as bigint)AS PromotionKeySource, 
                        CASE WHEN s.SALESUNIT = '' THEN '64' ELSE s.SALESUNIT END AS UnitKeySource,
                        CASE WHEN s.Transport = '' THEN 'بدون' ELSE s.Transport END AS CarKeySource, 
                        ISNULL(B.SALESRESPONSIBLE, N'19440') AS EmployeeKeySource,

                         --trim(s.DELIVERYCOUNTRYREGIONID) AS DELIVERYCOUNTRYREGIONID, trim(s.DELIVERYSTATE) AS DELIVERYSTATE, trim(s.DELIVERYCOUNTY) AS DELIVERYCOUNTY,
                         
                       (SELECT        MAX(RECID) AS Expr1 FROM  dbo.ADDRESSCOUNTY AS y
                           WHERE        (trim(COUNTRYREGIONID) = trim(s.DELIVERYCOUNTRYREGIONID)) AND (trim(STATEID) = trim(s.DELIVERYSTATE)) 
                           AND (trim(COUNTYID) = trim(s.DELIVERYCOUNTY)) AND (DATAAREAID = s.DATAAREAID))   AS GeographyKeySource,

                         CAST(REPLACE(CONVERT(date, s.SHIPPINGDATEREQUESTED), '-', '') AS int) AS OrderDateAlternativeKeySource,
                         CAST(REPLACE(CONVERT(date, s.RECEIPTDATEREQUESTED), '-', '') AS int)  AS ProductionDateAlternativeKeySource,
                         CAST(REPLACE(CONVERT(date, s.RECEIPTDATECONFIRMED), '-', '') AS int) AS ShippingDateAlternativeKeySource, 
                         
                         CONVERT(date, s.SHIPPINGDATEREQUESTED) AS OrderDateSource, 
                         CONVERT(date, s.RECEIPTDATEREQUESTED) AS ProductionDateSource, 
                        isnull( CONVERT(date, s.RECEIPTDATECONFIRMED),'1900-01-01') AS ShippingDateSource,

                         s.SALESID AS SalesOrderNumber, s.LINENUM AS SalesOrderLineNumberSource, 

                         s.SALESPRICE AS UnitPriceSource, s.SALESQTY as SALESQTYSource,
                         s.LINEPERCENT AS DiscountPercentSource, s.LINEDISC AS DiscountAmountSource, s.LINEPERCENT AS LinePercentDiscountSource, s.LineAmount as LineAmountSource,
                        
                         dbo.GetTaxSalesSO(s.LINEAMOUNT, s.TAXGROUP) AS AmountAfterTaxSource, 
                         dbo.GetTaxSalesSO(s.LINEAMOUNT, s.TAXGROUP) - s.LINEAMOUNT AS TaxAmountSource,
                       DATEADD(HOUR, 2,s.MODIFIEDDATETIME) as MODIFIEDDATETIME
FROM            dbo.SALESLINE AS s LEFT OUTER JOIN dbo.SALESTABLE AS B 
                ON s.SALESID = B.SALESID AND s.DATAAREAID = B.DATAAREAID
                         
WHERE        (s.SHIPPINGDATEREQUESTED >= CONVERT(datetime, '2013-01-01 00:00:00.000', 102)) 