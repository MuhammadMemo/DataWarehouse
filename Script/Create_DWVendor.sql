
ALTER view [dbo].[_DWVendor] as
 SELECT        c.ACCOUNTNUM AS VendorAlternativeKey, c.NAME AS VendorName, g.NAME AS VendorGroup, c.PARTYTYPE AS VendorType, c.DATAAREAID,

dateadd(HOUR,2, isnull( case when c.MODIFIEDDATETIME >= g.MODIFIEDDATETIME  then 
						 c.MODIFIEDDATETIME
						 else g.MODIFIEDDATETIME  end , c.MODIFIEDDATETIME)) as MODIFIEDDATETIME
FROM            dbo.VENDTABLE AS c LEFT OUTER JOIN
                         dbo.VENDGROUP AS g ON c.VENDGROUP = g.VENDGROUP AND g.DATAAREAID = c.DATAAREAID
GO
