
--ALTER view [dbo].[_DWProducts]  as
SELECT        t.ITEMID AS ProductsAlternativeKey, t.ITEMNAME AS ProductName, t.DATAAREAID, g.NAME AS Category, 
                    p.Name as SubCategory, 
                   case when  p.Status =0 then N'في التشغيل' when  p.Status =1 then N'تحت الإلغاء' when  p.Status =2 then N'ملغاه'  end as  StatusCategory,
                    t.Intracode StatusProduct,d.Description as ProductLine,
                    
                         case when g.GroupType=1  then N'منتجات موردين'  else N'منتجات الشركة' end  as GroupType ,
                        ISNULL((SELECT        SUM(PRICE) AS Expr1
                                 FROM            dbo.INVENTTABLEMODULE AS m
                                 WHERE        (t.ITEMID = ITEMID) AND (t.DATAAREAID = DATAAREAID) AND (MODULETYPE = 2)), 0) AS SalesPrice,

                         ISNULL((SELECT        SUM(PriceQty) AS Expr1
                                 FROM            dbo.INVENTTABLEMODULE AS m
                                 WHERE        (t.ITEMID = ITEMID) AND (t.DATAAREAID = DATAAREAID) AND (MODULETYPE = 2)), 0) AS SalesQty,
                        ISNULL  ((SELECT        SUM(PRICE) AS Expr1
                                 FROM            dbo.INVENTTABLEMODULE AS m
                                 WHERE        (t.ITEMID = ITEMID) AND (t.DATAAREAID = DATAAREAID) AND (MODULETYPE = 1)), 0) AS PurchasePrice,

    isnull(  dateadd(HOUR,2,        
                      
                      case 
                        when t.MODIFIEDDATETIME  >=	 (SELECT  max(MODIFIEDDATETIME) AS Expr1 FROM  dbo.INVENTTABLEMODULE AS m WHERE  (t.ITEMID = ITEMID) AND (t.DATAAREAID = m.DATAAREAID))  and                               
                             t.MODIFIEDDATETIME  >=  g.MODIFIEDDATETIME   and t.MODIFIEDDATETIME >=  p.MODIFIEDDATETIME  and t.MODIFIEDDATETIME >= d.MODIFIEDDATETIME then t.MODIFIEDDATETIME
                        when  g.MODIFIEDDATETIME >=  p.MODIFIEDDATETIME   and g.MODIFIEDDATETIME >=  d.MODIFIEDDATETIME  then g.MODIFIEDDATETIME
                        when  p.MODIFIEDDATETIME >=  d.MODIFIEDDATETIME   then p.MODIFIEDDATETIME
                        else  d.MODIFIEDDATETIME  end ) ,t.MODIFIEDDATETIME)as MODIFIEDDATETIME
                                 
                         --,t.MODIFIEDDATETIME ,g.MODIFIEDDATETIME,p.MODIFIEDDATETIME,d.MODIFIEDDATETIME,(SELECT  max(MODIFIEDDATETIME) AS Expr1 FROM  dbo.INVENTTABLEMODULE AS m WHERE  (t.ITEMID = ITEMID) AND (t.DATAAREAID = m.DATAAREAID)) as MODIFIEDDATETIME
                                 
								 
FROM            dbo.INVENTTABLE AS t LEFT OUTER JOIN
                         dbo.INVENTITEMGROUP AS g ON t.ITEMGROUPID = g.ITEMGROUPID AND t.DATAAREAID = g.DATAAREAID
                         LEFT OUTER JOIN dbo.InventPackagingGroup AS p ON t.PackagingGroupId = p.PackagingGroupId AND t.DATAAREAID = p.DATAAREAID
                         --LEFT OUTER JOIN dbo.IntrastatItemCode AS s ON t.Intracode = s.ParentItemCode AND t.DATAAREAID = s.DATAAREAID
                          LEFT OUTER JOIN  Dimensions as d ON d.Num = t.DIMENSION2_ AND d.DATAAREAID = t.DATAAREAID and d.DimensionCode=1

                        where t.itemid='60-40-71-602'


                         
                         