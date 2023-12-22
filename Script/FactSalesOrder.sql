﻿USE [DataWarehouse]
GO
Create view FactSalesOrder as
SELECT
--[InventTranceKey]
[SalesOrderNumber] ,
      [CompanyKey]
      --,[ProductKey]
      ,[BrancheKey]
      ,[GeographyKey]
      ,[CustomerKey]
      --,[PromotionKey]
      --,[DimensionKey]
      --,[UnitKey]
      ,[EmployeeKey]
      , [StatusOrderKey]
      ,[TypeKey]
      ,[CarKey]
      ,[MethodAcquisitionKey]
      ,[MethodDeliverykey]
      ,[PaymentMethodKey]
      ,max([OrderDateAlternativeKey] ) as	[OrderDateAlternativeKey]
      ,max([ProductionDateAlternativeKey] )	as  [ProductionDateAlternativeKey]
      ,max([ShippingDateAlternativeKey]	)	as  [ShippingDateAlternativeKey]
      
      ,max([OrderDate])	 as [OrderDate]
      ,max([ProductionDate])   as [ProductionDate]
      ,max([ShippingDate] )	   as [ShippingDate]
      --,sum([UnitPrice]
      --,[SalesQty]
      ,sum([DiscountPercent]  ) as [DiscountPercent]
      ,sum([DiscountAmount]	)  as [DiscountAmount]
      ,sum([LineAmount]	  )	  as  [LineAmount]
      ,sum([AmountAfterTax])	as [AmountAfterTax]
      ,sum([TaxAmount]	)	as	 [TaxAmount]
      ,sum([Payment]  )		as	[Payment]
      --,[IsDeleted]
      --,[LastupdateDate]
      ,max([CreateDateTime]	)   as [CreateDateTime]
  FROM [dbo].[FactSales]	   where 	IsDeleted =0   
  --and SalesOrderNumber='00089098_SO'
	  group by 
		  [SalesOrderNumber] ,
      [CompanyKey]
      --,[ProductKey]
      ,[BrancheKey]
      ,[GeographyKey]
      ,[CustomerKey]
      --,[PromotionKey]
      --,[DimensionKey]
      --,[UnitKey]
      ,[EmployeeKey]
      ,[StatusKey]
      ,[TypeKey]
      ,[CarKey]
      ,[MethodAcquisitionKey]
      ,[MethodDeliverykey]
      ,[PaymentMethodKey]


