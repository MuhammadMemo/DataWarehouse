﻿

--alter view  _DWFactSales as 
--
SELECT     
top(100)
                         s.INVENTTRANSID AS InventTranceKey, s.DATAAREAID AS CompanyKeySource, s.ITEMID AS ProductKeySource, s.SALESGROUP AS BrancheKeySource,
                         s.CUSTACCOUNT AS CustomerKeySource, s.INVENTDIMID AS DimensionKeySource, s.SALESSTATUS AS StatusKeySource, b.SALESSTATUS AS StatusOrderKeySource, b.SALESTYPE AS TypeKeySource,
                        
                         --isnull(b.TradRemndType,0) as TradTypeKeySource,isnull(b.NoteSOTrad ,' ') as  NoteTradSource,

                         isnull((select max(RECID) from smmBusRelSalesDistrictGroup sm where  b.SalesDistrictGroup=sm.SalesDistrictId and b.DATAAREAID=sm.DATAAREAID),1) as MethodAcquisitionKeySource,
                         isnull((select max(RECID) from DlvMode sm where  b.DlvMode=sm.Code and b.DATAAREAID=sm.DATAAREAID),1) as MethodDeliveryKeySource,
                         isnull((select max(RECID) from CustPaymModeTable sm where  b.PaymMode=sm.PaymMode and b.DATAAREAID=sm.DATAAREAID),1) as MethodPaymentKeySource,
                         s.DESCSHOW AS PromotionKeySource,  
                         --cast( CASE WHEN s.DESCSHOW = 0 THEN 5637156079 else s.DESCSHOW  END  as bigint)AS PromotionKeySource, 
                         CASE WHEN s.SALESUNIT = '' THEN '64' ELSE s.SALESUNIT END AS UnitKeySource,
                         CASE WHEN s.Transport = '' THEN 'بدون' ELSE s.Transport END AS CarKeySource, 
                         ISNULL(B.SALESRESPONSIBLE, N'19440') AS EmployeeKeySource,

                         --trim(s.DELIVERYCOUNTRYREGIONID) AS DELIVERYCOUNTRYREGIONID, trim(s.DELIVERYSTATE) AS DELIVERYSTATE, trim(s.DELIVERYCOUNTY) AS DELIVERYCOUNTY,
                         
                         (SELECT  MAX(RECID) AS Expr1 FROM  dbo.ADDRESSCOUNTY AS y
                           WHERE  (trim(COUNTRYREGIONID) = trim(s.DELIVERYCOUNTRYREGIONID)) AND (trim(STATEID) = trim(s.DELIVERYSTATE)) 
                           AND (trim(COUNTYID) = trim(s.DELIVERYCOUNTY)) AND (DATAAREAID = s.DATAAREAID))   AS GeographyKeySource,

                         CAST(REPLACE(CONVERT(date, s.SHIPPINGDATEREQUESTED), '-', '') AS int) AS OrderDateAlternativeKeySource,
                         CAST(REPLACE(CONVERT(date, s.RECEIPTDATEREQUESTED), '-', '') AS int)  AS ProductionDateAlternativeKeySource,
                         CAST(REPLACE(CONVERT(date, s.RECEIPTDATECONFIRMED), '-', '') AS int) AS ShippingDateAlternativeKeySource, 
                         
                        isnull( CONVERT(date, s.SHIPPINGDATEREQUESTED),'1900-01-01')  AS OrderDateSource, 
                        isnull( CONVERT(date, s.RECEIPTDATEREQUESTED),'1900-01-01') AS ProductionDateSource, 
                        isnull( CONVERT(date, s.RECEIPTDATECONFIRMED),'1900-01-01') AS ShippingDateSource,

                         s.SALESID AS SalesOrderNumber, s.LINENUM AS SalesOrderLineNumberSource, 
                         s.SALESPRICE AS UnitPriceSource, s.SALESQTY as SALESQTYSource,
                         s.LINEPERCENT AS DiscountPercentSource, s.LINEDISC AS DiscountAmountSource,
                         s.LINEPERCENT AS LinePercentDiscountSource, s.LineAmount as LineAmountSource,
                        
                         dbo.GetTaxSalesSO(s.LINEAMOUNT, s.TAXGROUP) AS AmountAfterTaxSource, 
                         dbo.GetTaxSalesSO(s.LINEAMOUNT, s.TAXGROUP) - s.LINEAMOUNT AS TaxAmountSource,
                         
                       isnull((select sum(AmountCurCredit) from LedgerJournalTrans t  where t.SALESID=s.SALESID and   t.DATAAREAID=s.DATAAREAID) / (select count(*) from salesline i where i.SALESID=s.SALESID and   i.DATAAREAID=s.DATAAREAID ) ,0) as PaymentSource,
                        DATEADD("HOUR",4 ,s.MODIFIEDDATETIME)as  MODIFIEDDATETIME ,s.CreatedDateTime, 0 as IsDeleted
                    
                      
FROM            dbo.SALESLINE AS s LEFT OUTER JOIN dbo.SALESTABLE AS B 
                ON s.SALESID = B.SALESID AND s.DATAAREAID = B.DATAAREAID
                         
WHERE        (s.SHIPPINGDATEREQUESTED >= CONVERT(datetime, '2013-01-01 00:00:00.000', 102))
--AND (S.SALESGROUP IN ('01', '02', '03', '04', '05', '06', '07','12','13', '25', '35','45','08'))
AND (S.SALESID LIKE '01%'
OR S.SALESID LIKE '02%'
OR S.SALESID LIKE '03%'
OR S.SALESID LIKE '04%'
OR S.SALESID LIKE '06%'
OR S.SALESID LIKE '07%'
OR S.SALESID LIKE '08%'
OR S.SALESID LIKE '00%'
OR S.SALESID LIKE '10%'
--OR S.SALESID LIKE '2%'
--OR S.SALESID LIKE '3%'
--OR S.SALESID LIKE '4%'
--OR S.SALESID LIKE '6%'
--OR S.SALESID LIKE '7%'
--OR S.SALESID LIKE '8%'
--OR S.SALESID LIKE '003%'
)
AND (S.SALESSTATUS <> 4 and b.SALESTYPE = 3 ) 
--and s.SALESPRICE <> 0
--and  dbo.GetTaxSalesSO(S.LINEAMOUNT, S.TAXGROUP)>0  
and s.ITEMID not like '8%'
--UnitPriceSource
--0.000000000000
--and s.salesid='06115599_SO'

--delete [dbo].[FactSales] WHERE   [InventTranceKey] =?	    and [CompanyKey] = ?

--UPDATE 
--   SET 
--      [IsDeleted] =1

--