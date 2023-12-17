select * from [dbo].[LogTable] where [Batch] in(select max([Batch]) from [dbo].[LogTable]) 

select SUM(SecondDiff)as SecondDiff ,sum(MinuteDiff)  as MinuteDiff from [dbo].[LogTable] where [Batch]	in (select max([Batch]) from [dbo].[LogTable]) 

select sum(ScondsDiff) from 	 [dbo].[LogTable]	   where 	  [Batch]	in (select max([Batch])   from 	 [dbo].[LogTable]	)

select * from [dbo].[LogTable] where   Tableno=20

select count(*) from  FactSales	  where IsDeleted=0

--delete [dbo].[LogTable] where [Batch] <> 134
--and tableNo=20


select  SalesOrderNumber ,LastupdateDate from   FactSales
where    ( OrderDate = CONVERT(datetime, '2023-12-17 00:00:00.000', 102))
--truncate table dimemptype
--truncate table FactSales

--delete  [dbo].[LogTable] where TableNo=20