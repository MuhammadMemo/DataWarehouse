
ALTER view [dbo].[_DWProducts]  as
SELECT        t.ITEMID AS ProductsAlternativeKey, t.ITEMNAME AS ProductName, t.DATAAREAID, g.NAME AS Category, 
                    p.Name as SubCategory, 
                   case when  p.Status =0 then N'في التشغيل' when  p.Status =1 then N'تحت الإلغاء' when  p.Status =2 then N'ملغاه'  end as  StatusCategory,
                    s.ItemCodeId StatusProduct,
                    
                         case when g.GroupType=1  then N'منتجات موردين'  else N'منتجات الشركة' end  as GroupType ,
                        ISNULL((SELECT        SUM(PRICE) AS Expr1
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
                         LEFT OUTER JOIN dbo.InventPackagingGroup AS p ON t.PackagingGroupId = p.PackagingGroupId AND t.DATAAREAID = p.DATAAREAID
                         LEFT OUTER JOIN dbo.IntrastatItemCode AS s ON t.Intracode = s.ParentItemCode AND t.DATAAREAID = s.DATAAREAID

                         
                         