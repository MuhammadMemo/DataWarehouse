use DataWarehouse
go
--INSERT INTO [dbo].[DimCompany] ([CompanyAlternativeKey],[CompanyName]) VALUES ('1','mfco')
--INSERT INTO [dbo].[DimCompany] ([CompanyAlternativeKey],[CompanyName]) VALUES ('2','mt')        
GO
USE [DataWarehouse]
GO
INSERT [dbo].[DimFixFinTransType] ([TransTypeKey], [TransTypeName]) VALUES (0, N'''''')
INSERT [dbo].[DimFixFinTransType] ([TransTypeKey], [TransTypeName]) VALUES (1, N'U')
INSERT [dbo].[DimFixFinTransType] ([TransTypeKey], [TransTypeName]) VALUES (2, N'Sales order')
INSERT [dbo].[DimFixFinTransType] ([TransTypeKey], [TransTypeName]) VALUES (3, N'Purchase order')
INSERT [dbo].[DimFixFinTransType] ([TransTypeKey], [TransTypeName]) VALUES (4, N'Inventory')
INSERT [dbo].[DimFixFinTransType] ([TransTypeKey], [TransTypeName]) VALUES (5, N'U')
INSERT [dbo].[DimFixFinTransType] ([TransTypeKey], [TransTypeName]) VALUES (6, N'Project')
INSERT [dbo].[DimFixFinTransType] ([TransTypeKey], [TransTypeName]) VALUES (8, N'Customer')
INSERT [dbo].[DimFixFinTransType] ([TransTypeKey], [TransTypeName]) VALUES (12, N'Fixed assets')
INSERT [dbo].[DimFixFinTransType] ([TransTypeKey], [TransTypeName]) VALUES (15, N'Payment')
INSERT [dbo].[DimFixFinTransType] ([TransTypeKey], [TransTypeName]) VALUES (24, N'Settlement')
GO
INSERT [dbo].[DimFixOrderStatus] ([StatusKey], [StatusName]) VALUES (1, N'Open order')
INSERT [dbo].[DimFixOrderStatus] ([StatusKey], [StatusName]) VALUES (2, N'Delivered')
INSERT [dbo].[DimFixOrderStatus] ([StatusKey], [StatusName]) VALUES (3, N'Invoiced')
INSERT [dbo].[DimFixOrderStatus] ([StatusKey], [StatusName]) VALUES (4, N'Canceled')
GO