----alter view [dbo].[_DWAccount] as
--SELECT        ACCOUNTNUM AS AccountAlternativeKey, ACCOUNTNAME, ACCOUNTPLTYPE AS AccountType,
--ACCOUNTCATEGORY AS AccountGroup, L.DATAAREAID,dateadd(Hour,2, MODIFIEDDATETIME) as MODIFIEDDATETIME
--FROM            dbo.LEDGERTABLE  L LEFT JOIN  dbo.LedgerAccountCategory G ON L.ACCOUNTCATEGORYREF=G.ACCOUNTCATEGORYREF AND L.DATAAREAID=G.DATAAREAID




alter view [dbo].[_DWAccount] as
SELECT        ACCOUNTNUM AS AccountAlternativeKey, ACCOUNTNAME, ACCOUNTPLTYPE AS AccountType,
ACCOUNTCATEGORYREF as AccountGroup,  DATAAREAID,dateadd(Hour,2, MODIFIEDDATETIME) as MODIFIEDDATETIME
FROM            dbo.LEDGERTABLE 


--Create View [dbo].[_DWAccountCategory] as
--SELECT     ACCOUNTCATEGORYREF as GroupKey,  ACCOUNTCATEGORY  as GroupName,Description as DescriptionGroup,DATAAREAID as Companyname
--FROM            dbo.LedgerAccountCategory  

--UPDATE [dbo].[DimAccountCategory]
--   SET 
     
--      [AccountCategoryName] = ?
--      ,[DescriptionGroup] =?
-- WHERE  ,[AccountCategoryAlternativeKey] = ? and	[CompanyKey] = ?
 
