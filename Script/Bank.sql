


----alter view _DWBank as 

--select   b.ACCOUNTID as BankAlternativeKey ,b.LEDGERACCOUNT as  AccountKey ,g.NAME as BankGroupName ,case when c.Name  is null then 'None' else c.Name end  as Branchename
--,case when b.SALESGROUP  ='' then 'None' else b.SALESGROUP end as BrancheKey,
--b.CurrencyCode,b.NAME as BnakName ,b.DATAAREAID as CompanyName   from  BANKACCOUNTTABLE b left join BankGroup g 
--on b.BankGroupID=g.BankGroupID  and b.DATAAREAID=g.DATAAREAID
--left join COMMISSIONSALESGROUP c 
--on c.GROUPID=b.SALESGROUP  and c.DATAAREAID=b.DATAAREAID
----where b.ACCOUNTID in(15,27,33,44,64,66,67,68,79)
--order by  c.Name 
 

 alter view _DWBank as 

select   b.ACCOUNTID as BankAlternativeKey ,b.LEDGERACCOUNT as  AccountKey ,g.NAME as BankGroupName
,case when b.SALESGROUP  ='' then 'None' else b.SALESGROUP end as BrancheKey,
b.CurrencyCode,b.NAME as BnakName ,b.DATAAREAID as CompanyName   from  BANKACCOUNTTABLE b left join BankGroup g 
on b.BankGroupID=g.BankGroupID  and b.DATAAREAID=g.DATAAREAID


 select * from _DWBank where  BrancheKey is null
 select * from DimBank




   --alter view  _DWFactBank  as
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
WHERE      t.offsetaccounttype in(0,1,2,6) and t.AccountType in (0,1,2,6)
and t.OffsetAccount <>'' and accountnum<>''
--and t.voucher ='Maadi Cash_043735'
----(T.DATAAREAID = 'MFCO') 
--and 	t.TRANSDATE =convert (datetime,'2024-01-15 00:00:00.000',102)
and salesid='03014363_SO'

select count(*) from _DWFactBank
 select count(*) from  FactBank

 