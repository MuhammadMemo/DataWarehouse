ALTER VIEW [dbo].[_DWUnit]
AS
SELECT        UNITID AS UnitAlternativeKey, TXT AS UnitName, DATAAREAID AS CompanyName, dateadd(Hour,2, MODIFIEDDATETIME   ) as MODIFIEDDATETIME
FROM            dbo.UNIT
GO