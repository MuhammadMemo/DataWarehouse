--alter view [dbo].[_DWFactFinance] as
--SELECT    RECID ID, ACCOUNTNUM as AccountKey,TRANSTYPE as TransTypeKey , TRANSDATE as FinancialDate,AMOUNTMST as Amount, Posting as PostingType,
--CAST(REPLACE(CONVERT(date, TRANSDATE), '-', '') AS int) AS FinancialDateAlternativeKey,
-- DATAAREAID as CompanyName,dateadd(Hour,2, MODIFIEDDATETIME) as MODIFIEDDATETIME
--FROM            LedgerTrans
--WHERE        (TRANSDATE >= CONVERT(datetime, '2013-01-01 00:00:00.000', 102))

--SELECT        *
--FROM            dbo.LEDGERTABLE


--SELECT       *
--FROM            dbo.LedgerAccountCategory  
   
   
   
 --  update [dbo].[FactFinance] set 
	--AccountKey = ?
	--,FinancialDateAlternativeKey= ?
	--,TransTypeKey =?
	--,FinancialDate =?
	--,Amount =?
	--where Id  =? and CompanyKey =? 

	