﻿
 ALTER view [dbo].[_DWPromotion] as
SELECT        d.RECID AS PromotionAlternativeKey, d.DESCRIPTION, d.FROMDATE, d.TODATE, d.DELIVERYDATE, d.QUANTITY, d.DISCOUNT, d.PRICEDISCOUNT, ISNULL(l.NAME, N'الكل') AS Location, d.ITEMGROUP, d.DESCACTIVE, 
                         d.CREATEDATE, d.STATUS, d.SORTDISC, d.DATAAREAID AS CompanyName,
						dateadd(HOUR,2,   isnull( case when d.MODIFIEDDATETIME >= l.MODIFIEDDATETIME   then 
						 d.MODIFIEDDATETIME
						 else l.MODIFIEDDATETIME  end , d.MODIFIEDDATETIME)) as MODIFIEDDATETIME

FROM            dbo.DESCSHOW AS d LEFT OUTER JOIN
                         dbo.INVENTLOCATION AS l ON d.WAREHOUSE = l.INVENTLOCATIONID AND d.DATAAREAID = l.DATAAREAID