
 -- create view _DWBankGroup as 
  --select BANKGROUPID as BankGroupAlternativeKey,NAME as BnakGroupName,DATAAREAID  as CompanyName  from BankGroup


  select * from _DWBankGroup

--alter view _DWBank as 
--select   ACCOUNTID as BankAlternativeKey ,LEDGERACCOUNT as  AccountKey ,BankGroupID ,SALESGROUP as BrancheKey,
--CurrencyCode,NAME as BnakName ,DATAAREAID as CompanyName   from  BANKACCOUNTTABL
  select * from _DWBank


--   alter view  _DWFactBank  as
--SELECT      t.recid as BankTranceAlternativeKey,
--t.TransDate as PaymentDate,
-- CAST(REPLACE(CONVERT(date, T.TRANSDATE), '-', '') AS int)  as PaymentDateAlternativeKey,
--t.journalNum,
--t.LineNum,
--t.accountnum,
--t.Amountcurdebit as AmountDebit,
--t.amountcurcredit as AmountCredit,
--t.txt,
--t.offsetaccounttype,
--t.salesid,
--t.voucher ,
--t.dataareaid  as CompanyName  
--FROM           
-- dbo.LEDGERJOURNALTRANS AS T
--WHERE        (T.DATAAREAID = 'MFCO') 
--and 	t.TRANSDATE =convert (datetime,'2023-12-24 00:00:00.000',102)

  select * from _DWFactBank