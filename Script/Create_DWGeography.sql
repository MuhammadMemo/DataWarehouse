ALTER VIEW [dbo].[_DWGeography]
AS
SELECT        RECID AS GeographyAlternativeKey, trim(COUNTYID) AS CityName, trim(COUNTRYREGIONID) AS RegionName, trim(STATEID) AS StateName, dateadd(HOUR,2,MODIFIEDDATETIME) as MODIFIEDDATETIME, DATAAREAID AS CompanyName
FROM            dbo.ADDRESSCOUNTY AS y