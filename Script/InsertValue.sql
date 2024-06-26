﻿use DataWarehouse
go
--INSERT INTO [dbo].[DimCompany] ([CompanyAlternativeKey],[CompanyName]) VALUES ('1','mfco')
--INSERT INTO [dbo].[DimCompany] ([CompanyAlternativeKey],[CompanyName]) VALUES ('2','mt')        
GO

INSERT INTO [dbo].[DimBranche] ([CompanyKey],[BrancheAlternativeKey],[BrancheName]) VALUES(3,'None', 'None' )
INSERT INTO [dbo].[DimBranche] ([CompanyKey],[BrancheAlternativeKey],[BrancheName]) VALUES(4,'None', 'None' )

USE [DataWarehouse]
GO
INSERT [dbo].[DimFixFinTransType] ([TransTypeKey], [TransTypeName]) VALUES (0, N'None')
INSERT [dbo].[DimFixFinTransType] ([TransTypeKey], [TransTypeName]) VALUES (1, N'UnKown')
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
INSERT [dbo].DimFixFinOffsetAccountType ([OffsetAccountTypeKey], [OffsetAccountTypeName]) VALUES (0, N'Ledger')
INSERT [dbo].DimFixFinOffsetAccountType ([OffsetAccountTypeKey], [OffsetAccountTypeName]) VALUES (1, N'Cust')
INSERT [dbo].DimFixFinOffsetAccountType ([OffsetAccountTypeKey], [OffsetAccountTypeName]) VALUES (2, N'Vend')
INSERT [dbo].DimFixFinOffsetAccountType ([OffsetAccountTypeKey], [OffsetAccountTypeName]) VALUES (3, N'Project')
INSERT [dbo].DimFixFinOffsetAccountType ([OffsetAccountTypeKey], [OffsetAccountTypeName]) VALUES (5, N'FixedAssets')
INSERT [dbo].DimFixFinOffsetAccountType ([OffsetAccountTypeKey], [OffsetAccountTypeName]) VALUES (6, N'Bank')
INSERT [dbo].DimFixFinOffsetAccountType ([OffsetAccountTypeKey], [OffsetAccountTypeName]) VALUES (7, N'DEL_CostAcc')


INSERT INTO [dbo].[DimAccountCategory]([CompanyKey],[AccountCategoryAlternativeKey],[AccountCategoryName],[DescriptionGroup],[SortGroup])VALUES(3,0,'UnKown','UnKown',0)
INSERT INTO [dbo].[DimAccountCategory]([CompanyKey],[AccountCategoryAlternativeKey],[AccountCategoryName],[DescriptionGroup],[SortGroup])VALUES(4,0,'UnKown','UnKown',0)



INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (0,N'None')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (1,N'ExchRateGain')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (2,N'ExchRateLoss')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (3,N'InterCompany')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (4,N'Tax')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (5,N'VATRoundOff')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (6,N'Allocation')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (7,N'InvestmentDuty')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (8,N'Liquidity')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (9,N'MSTDiffSecond')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (10,N'ErrorAccount')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (11,N'MSTDiff')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (12,N'YearResult')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (13,N'Closing')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (14,N'LedgerJournal')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (15,N'CashDiscount')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (16,N'ConsolidateDiffBalance')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (17,N'PaymentFee')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (18,N'TaxReport')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (19,N'TransferOpeningClosing')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (20,N'Bank')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (21,N'ConversionProfit')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (22,N'ConversionLoss')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (23,N'TaxWithhold')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (221,N'ProdIndirectWIPIssue')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (25,N'ProdIndirectWIPOffset')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (26,N'ProdIndirectAbsorption')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (27,N'ProdIndirectAbsorptionOffset')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (31,N'CustBalance')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (32,N'CustRevenue')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (33,N'CustInterest')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (34,N'CustCashDisc')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (35,N'CustCollectionLetterFee')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (36,N'CustInterestFee')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (37,N'CustInvoiceDisc')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (38,N'CustPayment')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (39,N'CustReimbursement')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (40,N'CustSettlement')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (41,N'VendBalance')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (42,N'VendPurchLedger')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (43,N'VendOffsetAccount')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (44,N'VendInterest')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (45,N'VendCashDisc')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (46,N'VendPayment')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (47,N'VendInvoiceDisc')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (48,N'VendSettlement')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (51,N'SalesRevenue')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (52,N'SalesConsump')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (53,N'SalesDisc')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (54,N'SalesCash')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (55,N'SalesFreight')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (56,N'SalesFee')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (57,N'SalesPostage')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (58,N'SalesRoundOff')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (59,N'SalesPackingSlip')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (60,N'SalesOffsetAccountPackingSlip')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (61,N'SalesIssue')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (62,N'SalesCommission')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (63,N'SalesOffsetAccountCommission')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (64,N'SalesPckSlipRevenue')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (65,N'SalesPckSlipRevenueOffsetAccount')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (206,N'SalesPackingslipTax')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (71,N'PurchConsump')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (72,N'PurchDisc')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (73,N'PurchCash')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (74,N'PurchFreight')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (75,N'PurchFee')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (76,N'PurchPostage')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (77,N'PurchOffsetAccount')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (78,N'PurchaseInvoiceRoundOff')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (79,N'PurchMarkupFreight')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (80,N'PurchMarkupCustoms')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (81,N'PurchMarkupInsurance')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (82,N'PurchPckSlp')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (83,N'PurchOffsetAccountPckSlp')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (84,N'PurchReceipt')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (85,N'PurchStdProfit')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (86,N'PurchStdLoss')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (87,N'PurchStdOffsetAccount')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (201,N'PurchCharge')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (202,N'PurchStockVariation')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (205,N'PurchPckSlpPurchase')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (203,N'PurchPckSlpPurchaseOffsetAccount')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (204,N'PurchPckSlpTax')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (91,N'InventReceipt')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (92,N'InventIssue')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (93,N'InventProfit')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (94,N'InventLoss')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (95,N'InventStdProfit')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (96,N'InventStdLoss')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (105,N'ProdReportFinished')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (106,N'ProdReportFinishedOffsetAccount')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (107,N'ProdIssue')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (108,N'ProdIssueOffsetAccount')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (109,N'ProdReceipt')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (110,N'ProdReceiptOffsetAccount')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (111,N'ProdPicklistOffsetAccount')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (112,N'ProdPicklist')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (113,N'ProdWIPValuation')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (114,N'ProdWIPIssue')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (115,N'ProdWrkCtrIssue')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (116,N'ProdScrap')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (117,N'ProdWrkCtrIssueOffsetAccount')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (118,N'ProdScrapOffsetAccount')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (121,N'ProjCost')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (122,N'ProjPayrollAllocation')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (123,N'ProjWIPCostvalue')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (124,N'ProjOffsetAccountItem')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (125,N'ProjStatusAccountItem')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (126,N'ProjTurnover')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (127,N'ProjOnAccount')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (128,N'ProjSalesvalue')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (129,N'ProjSalesvalueOffset')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (130,N'ProjAccruedTurnoverProd')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (131,N'ProjWIPProduction')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (132,N'ProJAccruedTurnoverProfit')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (133,N'ProjWIPProfit')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (134,N'ProjNeverLedger')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (135,N'ProjAccruedCost')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (136,N'ProjWIPCost')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (137,N'ProjAccruedRevenueOnAccount')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (138,N'ProjWIPInvoicedOnAccount')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (139,N'ProjNoLedger')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (207,N'ProjAccruedRevenueSubscription')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (208,N'ProjWIPSubscription')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (141,N'PayrollDebitAccount')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (142,N'PayrollCreditAccount')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (161,N'FixedAssetsDebit')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (162,N'FixedAssetsCredit')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (163,N'CACLedgerJournalNoOff')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (24,N'ConsolidateDiffProfitLoss')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (235,N'InventStdCostRevaluation')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (210,N'InventStdCostChangeVariance')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (211,N'InventSystemRounding')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (213,N'PurchStdCostPurchasePriceVariance')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (216,N'ProdStdCostProductionVariance')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (222,N'ProdStdCostLotSizeVariance')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (223,N'ProdStdCostQuantityVariance')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (224,N'ProdStdCostSubstitutionVariance')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (219,N'InventInterUnitPayable')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (220,N'InventInterUnitReceivable')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (49,N'CrossCompanySettlement')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (50,N'InventIssueFixedAsset')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (226,N'PurchReceiptFixedAsset')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (225,N'InventStdCostRoundingVariance')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (250,N'Rebate')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (249,N'PdsCWLoss')
INSERT [dbo].[DimFixFinPostingType] ([PostingTypeKey], [PostingTypeName]) VALUES (248,N'PdsCWProfit')


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
--INSERT [dbo].[DimFixInventTransType] ([TransTypeKey], [PostingTypeName]) VALUES (1, N' ')
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
INSERT [dbo].[DimFixSalesType] ([TypeKey], [TypeName]) VALUES (3, N'Sales Order')
INSERT [dbo].[DimFixSalesType] ([TypeKey], [TypeName]) VALUES (4, N'Return Order')
INSERT [dbo].[DimFixSalesType] ([TypeKey], [TypeName]) VALUES (5, N'Blanket order')
INSERT [dbo].[DimFixSalesType] ([TypeKey], [TypeName]) VALUES (6, N'SItem requirements')

go
INSERT INTO [dbo].[DimFixTradType] ([TradTypeKey], [TradTypeName], [TradTypeNameEnglish]) VALUES (0, N'غير معروف',N'UnKown')
INSERT INTO [dbo].[DimFixTradType] ([TradTypeKey], [TradTypeName], [TradTypeNameEnglish]) VALUES (1, N'الغرامة المالية',N'Financial Penalty')
INSERT INTO [dbo].[DimFixTradType] ([TradTypeKey], [TradTypeName], [TradTypeNameEnglish]) VALUES (2, N'الخصومات المالية',N'Financial Deductions')
INSERT INTO [dbo].[DimFixTradType] ([TradTypeKey], [TradTypeName], [TradTypeNameEnglish]) VALUES (3, N'الفاتورة المالية',N'financial Invoice')

go
INSERT [dbo].[DimGendr]   ([GendrKey], [GendrName]) VALUES (1, N'Male')
INSERT [dbo].[DimGendr]   ([GendrKey], [GendrName]) VALUES (2, N'Female')
go
INSERT    [dbo].[DimEmpType]   ([TypeKey], [TypeName]) VALUES (0, N'Manager')
INSERT    [dbo].[DimEmpType]  ([TypeKey], [TypeName] ) VALUES (1, N'Employee')
INSERT    [dbo].[DimEmpType]   ([TypeKey], [TypeName]) VALUES (2, N'Kitchen')



--INSERT INTO [dbo].[DimEmployee]
--           ([CompanyKey],[EmployeeAlternativeKey],[EmployeeName],[Job],[DepartmenName],[DivisionName],[Gender],[ContractType],[ContractDate],[ContractEndDate],[BirthDate],[HireDate],[InsuranceDate],[WorkeStatus]) VALUES
--           (2,19440,'UnKown','UnKown','UnKown','UnKown','UnKown','UnKown','1900/01/01','1900/01/01','1900/01/01','1900/01/01','1900/01/01','UnKown'
--)
--INSERT INTO [dbo].[DimEmployee]
--           ([CompanyKey],[EmployeeAlternativeKey],[EmployeeName],[Job],[DepartmenName],[DivisionName],[Gender],[ContractType],[ContractDate],[ContractEndDate],[BirthDate],[HireDate],[InsuranceDate],[WorkeStatus]) VALUES
--           (3,19440,'UnKown','UnKown','UnKown','UnKown','UnKown','UnKown','1900/01/01','1900/01/01','1900/01/01','1900/01/01','1900/01/01','UnKown'
--)
--INSERT INTO [dbo].[DimEmployee]
--           ([CompanyKey],[EmployeeAlternativeKey],[EmployeeName],[Job],[DepartmenName],[DivisionName],[Gender],[ContractType],[ContractDate],[ContractEndDate],[BirthDate],[HireDate],[InsuranceDate],[WorkeStatus]) VALUES
--           (4,19440,'UnKown','UnKown','UnKown','UnKown','UnKown','UnKown','1900/01/01','1900/01/01','1900/01/01','1900/01/01','1900/01/01','UnKown'
GO
INSERT [dbo].[DimPromotion] ([CompanyKey], [PromotionAlternativeKey], [STATUS], [FROMDATE], [TODATE], [DELIVERYDATE], [DESCRIPTION], [ITEMGROUP], [DESCACTIVE], [SORTDISC], [PRICEDISCOUNT], [DISCOUNT], [QUANTITY], [Location], [UpdatLasteTime]) VALUES 
(3, 0, 1, CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), N'UnKown', N'UnKown', 0, 0, 0.0000, CAST(18 AS Decimal(18, 0)), 4, N'UnKown', CAST(N'2023-12-02T13:07:25.793' AS DateTime))

INSERT [dbo].[DimPromotion] ([CompanyKey], [PromotionAlternativeKey], [STATUS], [FROMDATE], [TODATE], [DELIVERYDATE], [DESCRIPTION], [ITEMGROUP], [DESCACTIVE], [SORTDISC], [PRICEDISCOUNT], [DISCOUNT], [QUANTITY], [Location], [UpdatLasteTime]) VALUES 
(4, 0, 1, CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), N'UnKown', N'UnKown', 0, 0, 0.0000, CAST(18 AS Decimal(18, 0)), 4, N'UnKown', CAST(N'2023-12-02T13:07:25.793' AS DateTime))

INSERT [dbo].[DimCar] ([CompanyKey],  [CarAlternativeKey], [CarNumber], [CarName], [CarType], [Description], [UpdatLasteTime]) VALUES (4,  N'بدون', N'', N'بدون رقم', 1, N'بدون رقم', CAST(N'2023-12-02T13:07:11.313' AS DateTime))
--INSERT [dbo].[DimPromotion] ([CompanyKey],  [PromotionAlternativeKey], [STATUS], [FROMDATE], [TODATE], [DELIVERYDATE], [DESCRIPTION], [ITEMGROUP], [DESCACTIVE], [SORTDISC], [PRICEDISCOUNT], [DISCOUNT], [QUANTITY], [Location], [UpdatLasteTime]) VALUES (4,   5637156079, 0, CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), N'غير معروف', N'غرف نوم رئيسية', 0, 0, 0.0000, CAST(0 AS Decimal(18, 0)), 0, N'الكل', CAST(N'2023-12-02T13:07:25.793' AS DateTime))

INSERT INTO [dbo].[DimMethodAcquisition] ([CompanyKey],  [MethodAcquisitionAlternativeKey], [NameMethodAcquisition], [UpdatLasteTime]) VALUES (3, 1, N'UnKown', N'2023-12-09 20:10:19')
INSERT INTO [dbo].[DimMethodAcquisition] ([CompanyKey], [MethodAcquisitionAlternativeKey], [NameMethodAcquisition], [UpdatLasteTime]) VALUES (4, 1,  N'UnKown', N'2023-12-09 20:10:19')

INSERT INTO [dbo].[DimMethodDelivery] ([CompanyKey], [MethodDeliveryAlternativeKey], [NameMethodDelivery], [UpdatLasteTime]) VALUES (3, 1,  N'UnKown', N'2023-12-09 20:10:21')
INSERT INTO [dbo].[DimMethodDelivery] ([CompanyKey],  [MethodDeliveryAlternativeKey], [NameMethodDelivery], [UpdatLasteTime]) VALUES (4, 1, N'UnKown', N'2023-12-09 20:10:21')

INSERT INTO [dbo].[DimMethodPayment] ([CompanyKey], [MethodPaymentAlternativeKey], [NameMethodsPayment], [UpdatLasteTime]) VALUES (3, 1, N'UnKown', N'2023-12-09 20:10:23')
INSERT INTO [dbo].[DimMethodPayment] ([CompanyKey], [MethodPaymentAlternativeKey], [NameMethodsPayment], [UpdatLasteTime]) VALUES (4, 1, N'UnKown', N'2023-12-09 20:10:23')