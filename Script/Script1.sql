select * from 	 [dbo].[LogTable]	   where 	  [Batch]	in (select max([Batch])  from 	 [dbo].[LogTable]	) 

select SUM(SecondDiff)as SecondDiff ,sum(MinuteDiff)  as MinuteDiff from 	 [dbo].[LogTable]	   where 	  [Batch]	in (select max([Batch])  from 	 [dbo].[LogTable]	) 

select sum(ScondsDiff) from 	 [dbo].[LogTable]	   where 	  [Batch]	in (select max([Batch])   from 	 [dbo].[LogTable]	)


select count(*) from  FactSales	  where IsDeleted=0

--truncate table FactSales

--delete  [dbo].[LogTable] where TableNo=20