select * from [dbo].[LogTable] where [Batch] in(select max([Batch]) from [dbo].[LogTable]) 

select SUM(SecondDiff)as SecondDiff ,sum(MinuteDiff)  as MinuteDiff from [dbo].[LogTable] where [Batch]	in (select max([Batch]) from [dbo].[LogTable]) 

select [Batch],SUM(SecondDiff)as SecondDiff ,sum(MinuteDiff)  as MinuteDiff from [dbo].[LogTable] group by [Batch]


select sum(ScondsDiff) from 	 [dbo].[LogTable]	   where 	  [Batch]	in (select max([Batch])   from 	 [dbo].[LogTable]	)


select count(*) from [dbo].[LogTable]

select * from [dbo].[LogTable] where   Tableno=20

select count(*) from  FactSales	  where IsDeleted=0

--delete [dbo].[LogTable] where [Batch] <> 135
--and tableNo=20


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

--update LogTable set StartPakage	='2023-12-10 11:35:32.000' ,ModifiedDate ='2023-12-10 11:35:32.230'

	


--truncate table dimemptype
--truncate table FactSales

--delete  [dbo].[LogTable] where TableNo=20