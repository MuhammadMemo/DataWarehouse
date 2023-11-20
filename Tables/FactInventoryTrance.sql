--FactInventory : (Type:Transaction,Loading:Every Day, Granularity:Product,Daily:DatePhysical)
CREATE TABLE [dbo].[FactInventoryTrance]
(
	ID   bigint identity (1,1)   ,
--Foreign Keys :
	CompanyKey tinyint not null,
	DateFinancialAlternativeKey nvarchar(10) NOT NULL,
	DatePhysicalAlternativeKey nvarchar(10) NOT NULL,
	ProductsKey  nvarchar(50) NOT NULL,
	DimensionKey nvarchar(50) NOT NULL,

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

 CONSTRAINT [PK_FactInventory] PRIMARY KEY (CompanyKey,InventTranceKey,DimensionKey,ID) NOT NULL
 )
