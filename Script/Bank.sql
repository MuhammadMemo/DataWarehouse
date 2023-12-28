﻿


alter view _DWBank as 

select   b.ACCOUNTID as BankAlternativeKey ,b.LEDGERACCOUNT as  AccountKey ,g.NAME as BankGroupName 
,case when b.SALESGROUP  ='' then 'None' else b.SALESGROUP end as BrancheKey,
b.CurrencyCode,b.NAME as BnakName ,b.DATAAREAID as CompanyName   from  BANKACCOUNTTABLE b left join BankGroup g on b.BankGroupID=g.BankGroupID  and b.DATAAREAID=g.DATAAREAID
 
 
 select * from _DWBank where  BrancheKey is null


   alter view  _DWFactBank  as
SELECT      t.recid as id,
t.TransDate as PaymentDate,
 CAST(REPLACE(CONVERT(date, T.TRANSDATE), '-', '') AS int)  as PaymentDateAlternativeKey,
t.journalNum,
t.LineNum,
t.accountnum as AccountNum,
t.Amountcurdebit as AmountDebit,
t.amountcurcredit as AmountCredit,
t.txt,
t.AccountType,
t.OffsetAccountType,
t.OffsetAccount,
t.salesid,
t.voucher ,
t.dataareaid  as CompanyName  ,
 DATEADD(Hour, 2, T.MODIFIEDDATETIME) AS MODIFIEDDATETIME
FROM           
 dbo.LEDGERJOURNALTRANS AS T
WHERE      t.offsetaccounttype in(0,1,2,6)
----(T.DATAAREAID = 'MFCO') 
----and 	t.TRANSDATE =convert (datetime,'2023-12-24 00:00:00.000',102)

  select * from _DWFactBank