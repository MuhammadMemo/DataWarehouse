


--alter view [dbo].[_DWDimension] as
SELECT        l.INVENTLOCATIONID, d.INVENTDIMID AS DimensionAlternativeKey, d.CONFIGID AS ConfigrationName, d.INVENTCOLORID AS ColorName, d.INVENTSIZEID AS SizeName, l.NAME AS WarehouseName, s.NAME AS SiteName, 
                         d.DATAAREAID AS CompanyName ,
						 dateadd(Hour,2, isnull( case when d.MODIFIEDDATETIME >= l.MODIFIEDDATETIME   then 
						 d.MODIFIEDDATETIME
						 else l.MODIFIEDDATETIME  end , d.MODIFIEDDATETIME)) as MODIFIEDDATETIME

FROM            dbo.INVENTDIM AS d LEFT OUTER JOIN
                         dbo.INVENTLOCATION AS l ON d.INVENTLOCATIONID = l.INVENTLOCATIONID AND d.DATAAREAID = l.DATAAREAID LEFT OUTER JOIN
                         dbo.INVENTSITE AS s ON d.INVENTSITEID = s.SITEID AND d.DATAAREAID = s.DATAAREAID
GO