
----alter view [dbo].[_DWCustomer] as
--SELECT        c.ACCOUNTNUM AS CustomerAlternativeKey, c.NAME AS CustomerName, g.NAME AS CustomerGroup, c.IDNATIONALSTR, f.TXT AS CustomerClassification, dbo.birthdate(c.IDNATIONALSTR) AS birthdate, 
--                         dbo.Gendr(c.IDNATIONALSTR) AS Gendr, dbo.CustType(c.PARTYTYPE) AS CustomerType, c.DATAAREAID,

--						isnull( case when c.MODIFIEDDATETIME >= g.MODIFIEDDATETIME or c.MODIFIEDDATETIME >= f.MODIFIEDDATETIME then 
--						 c.MODIFIEDDATETIME
--						 when  g.MODIFIEDDATETIME >= f.MODIFIEDDATETIME then
--						 g.MODIFIEDDATETIME 
--						 else f.MODIFIEDDATETIME  end , c.MODIFIEDDATETIME) as MODIFIEDDATETIME
--FROM            dbo.CUSTTABLE AS c LEFT OUTER JOIN
--                         dbo.CUSTGROUP AS g ON c.CUSTGROUP = g.CUSTGROUP AND g.DATAAREAID = c.DATAAREAID LEFT OUTER JOIN
--                         dbo.CUSTCLASSIFICATIONGROUP AS f ON c.CUSTCLASSIFICATIONID = f.CODE AND f.DATAAREAID = c.DATAAREAID
---------------------------------------------
----alter view [dbo].[_DWVendor] as
-- SELECT        c.ACCOUNTNUM AS VendorAlternativeKey, c.NAME AS VendorName, g.NAME AS VendorGroup, c.PARTYTYPE AS VendorType, c.DATAAREAID,

-- isnull( case when c.MODIFIEDDATETIME >= g.MODIFIEDDATETIME  then 
--						 c.MODIFIEDDATETIME
--						 else g.MODIFIEDDATETIME  end , c.MODIFIEDDATETIME) as MODIFIEDDATETIME
--FROM            dbo.VENDTABLE AS c LEFT OUTER JOIN
--                         dbo.VENDGROUP AS g ON c.VENDGROUP = g.VENDGROUP AND g.DATAAREAID = c.DATAAREAID
------------------------------------------------------
-- --alter view [dbo].[_DWDimension] as
--SELECT        l.INVENTLOCATIONID, d.INVENTDIMID AS DimensionAlternativeKey, d.CONFIGID AS ConfigrationName, d.INVENTCOLORID AS ColorName, d.INVENTSIZEID AS SizeName, l.NAME AS WarehouseName, s.NAME AS SiteName, 
--                         d.DATAAREAID AS CompanyName ,
--						  isnull( case when d.MODIFIEDDATETIME >= l.MODIFIEDDATETIME   then 
--						 d.MODIFIEDDATETIME
--						 else l.MODIFIEDDATETIME  end , d.MODIFIEDDATETIME) as MODIFIEDDATETIME

--FROM            dbo.INVENTDIM AS d LEFT OUTER JOIN
--                         dbo.INVENTLOCATION AS l ON d.INVENTLOCATIONID = l.INVENTLOCATIONID AND d.DATAAREAID = l.DATAAREAID LEFT OUTER JOIN
--                         dbo.INVENTSITE AS s ON d.INVENTSITEID = s.SITEID AND d.DATAAREAID = s.DATAAREAID
-- ------------------------------
--  --alter view [dbo].[_DWRegion]  as
-- SELECT        c.COUNTRYREGIONID AS CountryAlternativeKey, s.STATEID AS State, y.COUNTYID AS City, c.DATAAREAID AS CompanyName,
-- 	isnull( case when c.MODIFIEDDATETIME >= s.MODIFIEDDATETIME or c.MODIFIEDDATETIME >= y.MODIFIEDDATETIME then 
--						 c.MODIFIEDDATETIME
--						 when  s.MODIFIEDDATETIME >= y.MODIFIEDDATETIME then
--						 s.MODIFIEDDATETIME 
--						 else y.MODIFIEDDATETIME  end , c.MODIFIEDDATETIME) as MODIFIEDDATETIME

--FROM            dbo.ADDRESSCOUNTRYREGION AS c LEFT OUTER JOIN
--                         dbo.ADDRESSSTATE AS s ON c.COUNTRYREGIONID = s.COUNTRYREGIONID AND c.DATAAREAID = s.DATAAREAID LEFT OUTER JOIN
--                         dbo.ADDRESSCOUNTY AS y ON s.STATEID = y.STATEID AND s.DATAAREAID = y.DATAAREAID
-----------------------------------------
--  --alter view [dbo].[_DWProducts]  as
--SELECT        t.ITEMID AS ProductsAlternativeKey, t.ITEMNAME AS ProductName, t.DATAAREAID, g.NAME AS Category,  ISNULL
--                             ((SELECT        SUM(PRICE) AS Expr1
--                                 FROM            dbo.INVENTTABLEMODULE AS m
--                                 WHERE        (t.ITEMID = ITEMID) AND (t.DATAAREAID = DATAAREAID) AND (MODULETYPE = 2)), 0) AS SalesPrice, ISNULL
--                             ((SELECT        SUM(PRICE) AS Expr1
--                                 FROM            dbo.INVENTTABLEMODULE AS m
--                                 WHERE        (t.ITEMID = ITEMID) AND (t.DATAAREAID = DATAAREAID) AND (MODULETYPE = 1)), 0) AS PurchasePrice,

--							case when t.MODIFIEDDATETIME >=	 (SELECT  max(MODIFIEDDATETIME) AS Expr1
--                                 FROM            dbo.INVENTTABLEMODULE AS m
--                                 WHERE        (t.ITEMID = ITEMID) AND (t.DATAAREAID = DATAAREAID))  then t.MODIFIEDDATETIME
--								 else 
--								(SELECT        max(MODIFIEDDATETIME) AS Expr1
--                                 FROM            dbo.INVENTTABLEMODULE AS m
--                                 WHERE        (t.ITEMID = ITEMID) AND (t.DATAAREAID = DATAAREAID)) end AS MODIFIEDDATETIME
								  
--FROM            dbo.INVENTTABLE AS t LEFT OUTER JOIN
--                         dbo.INVENTITEMGROUP AS g ON t.ITEMGROUPID = g.ITEMGROUPID AND t.DATAAREAID = g.DATAAREAID
-------------------------------------
--  --alter view [dbo].[_DWPromotion] as
--SELECT        d.RECID AS PromotionAlternativeKey, d.DESCRIPTION, d.FROMDATE, d.TODATE, d.DELIVERYDATE, d.QUANTITY, d.DISCOUNT, d.PRICEDISCOUNT, ISNULL(l.NAME, N'الكل') AS Location, d.ITEMGROUP, d.DESCACTIVE, 
--                         d.CREATEDATE, d.STATUS, d.SORTDISC, d.DATAAREAID AS CompanyName,
--						   isnull( case when d.MODIFIEDDATETIME >= l.MODIFIEDDATETIME   then 
--						 d.MODIFIEDDATETIME
--						 else l.MODIFIEDDATETIME  end , d.MODIFIEDDATETIME) as MODIFIEDDATETIME

--FROM            dbo.DESCSHOW AS d LEFT OUTER JOIN
--                         dbo.INVENTLOCATION AS l ON d.WAREHOUSE = l.INVENTLOCATIONID AND d.DATAAREAID = l.DATAAREAID

-------------------------------------------------------------------
--   --alter view [dbo].[_DWAccount] as
--SELECT        ACCOUNTNUM AS AccountAlternativeKey, ACCOUNTNAME, ACCOUNTPLTYPE AS AccountType, ACCOUNTNAMEALIAS AS AccountGroup, DATAAREAID, MODIFIEDDATETIME
--FROM            dbo.LEDGERTABLE



--	--select * from _DWAccount where DATEADD("HOUR",2 ,MODIFIEDDATETIME)  >?