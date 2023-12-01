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
INSERT [dbo].[DimFixInventTransType] ([TransTypeKey], [TransTypeName]) VALUES (0, N'Sales order')
--INSERT [dbo].[DimFixInventTransType] ([TransTypeKey], [TransTypeName]) VALUES (1, N' ')
INSERT [dbo].[DimFixInventTransType] ([TransTypeKey], [TransTypeName]) VALUES (2, N'Production')
INSERT [dbo].[DimFixInventTransType] ([TransTypeKey], [TransTypeName]) VALUES (3, N'Purchase order')
INSERT [dbo].[DimFixInventTransType] ([TransTypeKey], [TransTypeName]) VALUES (4, N'Transaction')
INSERT [dbo].[DimFixInventTransType] ([TransTypeKey], [TransTypeName]) VALUES (5, N'Profit/Loss')
INSERT [dbo].[DimFixInventTransType] ([TransTypeKey], [TransTypeName]) VALUES (6, N'Transfer')
INSERT [dbo].[DimFixInventTransType] ([TransTypeKey], [TransTypeName]) VALUES (8, N'Production line')
INSERT [dbo].[DimFixInventTransType] ([TransTypeKey], [TransTypeName]) VALUES (12, N'Project')
INSERT [dbo].[DimFixInventTransType] ([TransTypeKey], [TransTypeName]) VALUES (13, N'Counting')
INSERT [dbo].[DimFixInventTransType] ([TransTypeKey], [TransTypeName]) VALUES (15, N'Quarantine order')
INSERT [dbo].[DimFixInventTransType] ([TransTypeKey], [TransTypeName]) VALUES (24, N'Quotation')
INSERT [dbo].[DimFixInventTransType] ([TransTypeKey], [TransTypeName]) VALUES (100, N'Production co/by')
GO
INSERT [dbo].[DimFixPurchaseType] ([TypeKey], [TypeName]) VALUES (0, N'Journal')
INSERT [dbo].[DimFixPurchaseType] ([TypeKey], [TypeName]) VALUES (2, N'Subscription')
INSERT [dbo].[DimFixPurchaseType] ([TypeKey], [TypeName]) VALUES (3, N'Purchase order')
GO

INSERT [dbo].[DimFixSalesType] ([TypeKey], [TypeName]) VALUES (0, N'Journal')
INSERT [dbo].[DimFixSalesType] ([TypeKey], [TypeName]) VALUES (1, N'Quotation')
INSERT [dbo].[DimFixSalesType] ([TypeKey], [TypeName]) VALUES (2, N'Subscription')
INSERT [dbo].[DimFixSalesType] ([TypeKey], [TypeName]) VALUES (3, N'Sales order')
INSERT [dbo].[DimFixSalesType] ([TypeKey], [TypeName]) VALUES (5, N'Blanket order')
INSERT [dbo].[DimFixSalesType] ([TypeKey], [TypeName]) VALUES (6, N'SItem requirements')
go
INSERT [dbo].[DimGendr]   ([GendrKey], [GendrName]) VALUES (1, N'Male')
INSERT [dbo].[DimGendr]   ([GendrKey], [GendrName]) VALUES (2, N'Female')


INSERT INTO [dbo].[DimEmployee]
           ([CompanyKey],[EmployeeAlternativeKey],[EmployeeName],[Job],[DepartmenName],[DivisionName],[Gender],[ContractType],[ContractDate],[ContractEndDate],[BirthDate],[HireDate],[InsuranceDate],[WorkeStatus]) VALUES
           (3,19440,'UnKown','UnKown','UnKown','UnKown','UnKown','UnKown','1900/01/01','1900/01/01','1900/01/01','1900/01/01','1900/01/01','UnKown'
)
GO



