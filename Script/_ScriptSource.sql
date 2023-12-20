select count(*) from  _DWFactSales

select distinct( left(SalesOrderNumber,2)) from  _DWFactSales

select   distinct( left(SALESID,2)),DATAAREAID  from  SALESTABLE	
order by 	  left(SALESID,2)

 --Grant select on 	[dbo].[MUHAMMAD_SALESTARGET] to [MFFCO\SBD05]


--delete SALESTABLE  where salesid like'05%' 
--go
--delete	 SALESline  where salesid like'05%' 
	 --count(*),
select  SALESID,  SHIPPINGDATEREQUESTED,DATAAREAID from  SALESTABLE	
where SALESID like '00%'  and    ( SHIPPINGDATEREQUESTED = CONVERT(datetime, '2023-12-16 00:00:00.000', 102))
and SALESGROUP <>'07'		and SALESSTATUS <> 4
order by  SALESID, SHIPPINGDATEREQUESTED

--distinct
select  SalesOrderNumber,sum(AmountAfterTaxSource) from  _DWFactSales
where    ( OrderDateSource = CONVERT(datetime, '2023-12-17 00:00:00.000', 102))
group by SalesOrderNumber
--order by MODIFIEDDATETIME

select  * from  _DWFactSales
where    ( OrderDateSource = CONVERT(datetime, '2023-12-18 00:00:00.000', 102)) 
order by InventTranceKey


select  sum(PaymentSource),AmountAfterTaxSource from  _DWFactSales
where    ( OrderDateSource = CONVERT(datetime, '2023-12-18 00:00:00.000', 102)) and SalesOrderNumber='10004397_SO'
--order by InventTranceKey



