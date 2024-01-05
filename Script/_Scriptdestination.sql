select * from [dbo].[LogTable] where [Batch] in(select max([Batch]) from [dbo].[LogTable]) 

--select SUM(SecondDiff)as SecondDiff ,sum(MinuteDiff)  as MinuteDiff from [dbo].[LogTable] where [Batch]	in (select max([Batch]) from [dbo].[LogTable]) 

select  [Batch],sum(IsInserted)IsInserted, sum(IsUpdated)IsUpdated,  sum(IsDeleted)IsDeleted,SUM(SecondDiff)as SecondDiff ,sum(MinuteDiff)MinuteDiff ,max(ModifiedDate) as MinuteDiff from [dbo].[LogTable]   group by [Batch] order by [Batch] desc


select sum(SecondDiff),sum(MinuteDiff)MinuteDiff from 	 [dbo].[LogTable]	   where 	  [Batch]	in (select max([Batch])   from 	 [dbo].[LogTable]	)

select count(*) from  FactSales	  where IsDeleted=0

select count(*) from [dbo].[LogTable]

select * from [dbo].[LogTable] where   Tableno=32


--truncate table DimProduct

truncate table FactFinance
--truncate table  DimAccount
--delete [dbo].[LogTable] where   tableNo=32 and batch<>352

--update LogTable set StartPakage	='2023-12-15 11:35:32.000' ,ModifiedDate ='2023-12-15 11:35:32.230' where batch=352

select distinct( SalesOrderNumber)   from   FactSales
where    ( OrderDate = CONVERT(datetime, '2023-12-16 00:00:00.000', 102))

select *  from   FactSales
where    ( OrderDate = CONVERT(datetime, '2023-12-16 00:00:00.000', 102))
--and isdeleted=1
order by InventTranceKey

select  sum(Payment) from FactSales
where    ( OrderDate = CONVERT(datetime, '2023-12-16 00:00:00.000', 102)) and SalesOrderNumber='10004397_SO'
--order by InventTranceKey

select  SalesOrderNumber,sum(AmountAfterTax) from  FactSales
where    ( OrderDate = CONVERT(datetime, '2023-12-17 00:00:00.000', 102))
group by SalesOrderNumber



	


--truncate table dimemptype


--delete  [dbo].[LogTable] where TableNo=20