alter View  _DWTargetLevel as 
select  ID as TargetLevelsKeySource,DGREE as TargetLevelsNameSource,DATAAREAID as CompanyName from TargetLevels




select * from SalesTarget

select * from SalesCommission

select t.DATAAREAID as CompanyName, t.RECID as TargetLevelKey , t.DATE as TargetDateKeySource ,t.AMOUNTFROM as AmountFromSource ,t.AMOUNTto as AmountToSource,t.TYPE,t.PRECENT,t.LEVEL_ as LEVEL,
 CAST(REPLACE(CONVERT(date, t.DATE), '-', '') AS int) AS TargetDateAlternativeKeySource,
isnull(c.USER_,0) as UserKey,isnull(c.AMOUNT,0) as Amount,isnull(c.COUNT,0)  as CountSo,isnull(c.Total,0)  as TotalSales 
from SalesTarget t left join SalesCommission c on t.RECID=c.ID_LEVEL and t.DATAAREAID=c.DATAAREAID
