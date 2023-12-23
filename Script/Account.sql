--alter view [dbo].[_DWAccount] as
SELECT        ACCOUNTNUM AS AccountAlternativeKey, ACCOUNTNAME, ACCOUNTPLTYPE AS AccountType,
ACCOUNTCATEGORY AS AccountGroup, L.DATAAREAID,dateadd(Hour,2, MODIFIEDDATETIME) as MODIFIEDDATETIME
FROM            dbo.LEDGERTABLE  L LEFT JOIN  dbo.LedgerAccountCategory G ON L.ACCOUNTCATEGORYREF=G.ACCOUNTCATEGORYREF AND L.DATAAREAID=G.DATAAREAID


--SELECT        *
--FROM            dbo.LEDGERTABLE


SELECT       *
FROM            dbo.LedgerAccountCategory  
   
