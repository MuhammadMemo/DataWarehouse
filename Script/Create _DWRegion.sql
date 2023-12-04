--USE [DynamicsAx1]
--GO

--/****** Object: View [dbo].[_DWRegion] Script Date: 01-12-2023 1:57:37 AM ******/
--SET ANSI_NULLS ON
--GO

----SET QUOTED_IDENTIFIER ON
--GO

----alter view [dbo].[_DWRegion]  as
-- SELECT      y.RECID CountryAlternativeKey, trim(c.COUNTRYREGIONID) AS RegionName, trim(s.STATEID) AS StateName, trim(y.COUNTYID) AS CityName, c.DATAAREAID AS CompanyName,
-- 	isnull( case when c.MODIFIEDDATETIME >= s.MODIFIEDDATETIME or c.MODIFIEDDATETIME >= y.MODIFIEDDATETIME then 
--						 c.MODIFIEDDATETIME
--						 when  s.MODIFIEDDATETIME >= y.MODIFIEDDATETIME then
--						 s.MODIFIEDDATETIME 
--						 else y.MODIFIEDDATETIME  end , c.MODIFIEDDATETIME) as MODIFIEDDATETIME

--FROM            dbo.ADDRESSCOUNTRYREGION AS c LEFT OUTER JOIN
--                         trim(dbo.ADDRESSSTATE) AS s ON trim(c.COUNTRYREGIONID) = trim(s.COUNTRYREGIONID) AND c.DATAAREAID = s.DATAAREAID LEFT OUTER JOIN
--                         trimdbo.ADDRESSCOUNTY AS y ON s.STATEID = y.STATEID AND s.DATAAREAID = y.DATAAREAID
