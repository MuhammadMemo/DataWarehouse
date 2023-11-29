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
INSERT [dbo].[DimFixInventStatusIssue] ([StatusIssueKey], [StatusIssueName]) VALUES (0, N' ')
INSERT [dbo].[DimFixInventStatusIssue] ([StatusIssueKey], [StatusIssueName]) VALUES (1, N'Sold')
INSERT [dbo].[DimFixInventStatusIssue] ([StatusIssueKey], [StatusIssueName]) VALUES (2, N'Deducted')
INSERT [dbo].[DimFixInventStatusIssue] ([StatusIssueKey], [StatusIssueName]) VALUES (3, N'Picked')
INSERT [dbo].[DimFixInventStatusIssue] ([StatusIssueKey], [StatusIssueName]) VALUES (4, N'Reserved physical')
INSERT [dbo].[DimFixInventStatusIssue] ([StatusIssueKey], [StatusIssueName]) VALUES (5, N'Reserved ordered')
INSERT [dbo].[DimFixInventStatusIssue] ([StatusIssueKey], [StatusIssueName]) VALUES (6, N'On order')
INSERT [dbo].[DimFixInventStatusIssue] ([StatusIssueKey], [StatusIssueName]) VALUES (7, N'Quotation issue')

GO
INSERT [dbo].[DimFixInventStatusReceipt] ([StatusReceiptKey], [StatusReceiptName]) VALUES (0, N'Purchased')
INSERT [dbo].[DimFixInventStatusReceipt] ([StatusReceiptKey], [StatusReceiptName]) VALUES (1, N'Purchased')
INSERT [dbo].[DimFixInventStatusReceipt] ([StatusReceiptKey], [StatusReceiptName]) VALUES (2, N'Received')
INSERT [dbo].[DimFixInventStatusReceipt] ([StatusReceiptKey], [StatusReceiptName]) VALUES (3, N'Registered')
INSERT [dbo].[DimFixInventStatusReceipt] ([StatusReceiptKey], [StatusReceiptName]) VALUES (5, N'Ordered')
INSERT [dbo].[DimFixInventStatusReceipt] ([StatusReceiptKey], [StatusReceiptName]) VALUES (6, N'Quotation receipt')

GO