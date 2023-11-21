--FactInventory : (Type:Transaction,Loading:Every Day, Granularity:Product,Daily:DatePhysical)
CREATE TABLE [dbo].[FactInventoryTrance]
(
	ID   bigint identity (1,1)   ,
--Foreign Keys :
	CompanyKey tinyint not null,
	FinancialDateAlternativeKey int NOT NULL,
	PhysicalDateAlternativeKey int NOT NULL,
	ProductKey  int NOT NULL,
	DimensionKey int NOT NULL,
	UnitKey int NOT NULL,

	StatusIssueKey tinyint NOT NULL,
	StatusReceiptKey tinyint NOT NULL,
	TransTypeKey tinyint NOT NULL,

	--Degenerate Dim :
	InventTranceKey nvarchar(20) NOT NULL,
	TransRefkey  nvarchar(10) NOT NULL,
	DateFinancial date NOT NULL,
	DatePhysical date NOT NULL,
	--Measures :
	Qty decimal(18,0) NOT NULL,
	--Trace :
	IsDeleted bit DEFAULT 0 NOT NULL,
	LastupdateDate datetime DEFAULT getDate()

 CONSTRAINT [PK_FactInventory] PRIMARY KEY (CompanyKey,InventTranceKey,DimensionKey,ID) NOT NULL,
 
    CONSTRAINT [PF_InvProduct] FOREIGN KEY  (ProductKey,CompanyKey) REFERENCES DimProduct(ProductKey,CompanyKey),
    CONSTRAINT [PF_InvDimension] FOREIGN KEY  (DimensionKey,CompanyKey) REFERENCES DimDimension(DimensionKey,CompanyKey),
    CONSTRAINT [PF_InvUnit] FOREIGN KEY  (UnitKey,CompanyKey) REFERENCES DimUnit(UnitKey,CompanyKey),
    CONSTRAINT [PF_InvStatusIssue] FOREIGN KEY (StatusIssueKey) REFERENCES DimStatusIssue(StatusIssueKey),
	CONSTRAINT [PF_InvStatusReceipt] FOREIGN KEY (StatusReceiptKey) REFERENCES DimStatusReceipt(StatusReceiptKey),
	CONSTRAINT [PF_InvTransType] FOREIGN KEY (TransTypeKey) REFERENCES DimInventTransType(TransTypeKey),
    CONSTRAINT [PF_InvCompany] FOREIGN KEY (CompanyKey) REFERENCES DimCompany(CompanyKey),
    CONSTRAINT [PF_InvFinancialDate] FOREIGN KEY (FinancialDateAlternativeKey) REFERENCES DimDate(DateKey),
    CONSTRAINT [PF_InvProductionDate] FOREIGN KEY (PhysicalDateAlternativeKey) REFERENCES DimDate(DateKey),

 )
