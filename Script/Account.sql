


--alter view [dbo].[_DWAccount] as
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
 


--  SELECT     distinct(Posting)  ,max(VOUCHER)
--FROM            dbo.LEDGERTRANS	 
--	 group by 	 Posting
--		 order by  Posting