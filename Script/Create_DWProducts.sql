
ALTER view [dbo].[_DWProducts]  as
SELECT        t.ITEMID AS ProductsAlternativeKey, t.ITEMNAME AS ProductName, t.DATAAREAID, g.NAME AS Category,  ISNULL
                             ((SELECT        SUM(PRICE) AS Expr1
                                 FROM            dbo.INVENTTABLEMODULE AS m
                                 WHERE        (t.ITEMID = ITEMID) AND (t.DATAAREAID = DATAAREAID) AND (MODULETYPE = 2)), 0) AS SalesPrice, ISNULL
                             ((SELECT        SUM(PRICE) AS Expr1
                                 FROM            dbo.INVENTTABLEMODULE AS m
                                 WHERE        (t.ITEMID = ITEMID) AND (t.DATAAREAID = DATAAREAID) AND (MODULETYPE = 1)), 0) AS PurchasePrice,

						dateadd(HOUR,2,	case when t.MODIFIEDDATETIME >=	 (SELECT  max(MODIFIEDDATETIME) AS Expr1
                                 FROM            dbo.INVENTTABLEMODULE AS m
                                 WHERE        (t.ITEMID = ITEMID) AND (t.DATAAREAID = DATAAREAID))  then t.MODIFIEDDATETIME
								 else 
								(SELECT        max(MODIFIEDDATETIME) AS Expr1
                                 FROM            dbo.INVENTTABLEMODULE AS m
                                 WHERE        (t.ITEMID = ITEMID) AND (t.DATAAREAID = DATAAREAID)) end) AS MODIFIEDDATETIME
								 
								 
FROM            dbo.INVENTTABLE AS t LEFT OUTER JOIN
                         dbo.INVENTITEMGROUP AS g ON t.ITEMGROUPID = g.ITEMGROUPID AND t.DATAAREAID = g.DATAAREAID