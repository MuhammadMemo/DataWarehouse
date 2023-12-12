--alter View  _DWTargetLevel as 
select  ID as TargetLevelsKeySource,DGREE as TargetLevelsNameSource,DATAAREAID as CompanyName from TargetLevels




select * from SalesTarget

select * from SalesCommission

--alter View _DWFactSalesCommission as 
select t.DATAAREAID as CompanyName, t.RECID as TargetLevelAlternativeKeySource , t.DATE as TargetDateKeySource ,t.AMOUNTFROM as AmountFromSource ,t.AMOUNTto as AmountToSource,t.TYPE as TypeSource,t.PRECENT as PrecentSource,t.LEVEL_ as LevelSource,
 CAST(REPLACE(CONVERT(date, t.DATE), '-', '') AS int) AS TargetDateAlternativeKeySource,t.COMMISSSALESGROUP as BrancheNameSource,
isnull(c.USER_,0) as EmpKeySource,isnull(c.AMOUNT,0) as AmountSource,isnull(c.COUNT,0)  as CountSoSource,isnull(c.Total,0)  as TotalSalesSource 
from SalesTarget t left join SalesCommission c on t.RECID=c.ID_LEVEL and t.DATAAREAID=c.DATAAREAID
where c.COUNT is not null
