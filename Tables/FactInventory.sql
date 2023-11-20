--FactInventory : (Type:Transaction,Loading:Every Day, Granularity:Product,Daily:DatePhysical)
CREATE TABLE [dbo].[FactInventory]
(
--Foreign Keys :
	Id INT NOT NULL  identity (1,1),
	CompanyKey tinyint not null,
	DateFinancialAlternativeKey nvarchar(10) NOT NULL,
	DatePhysicalAlternativeKey nvarchar(10) NOT NULL,
	ProductsKey  nvarchar(50) NOT NULL,
	inventDimKey nvarchar(50) NOT NULL,

	StatusIssueKey tinyint NOT NULL,
	StatusReceiptKey tinyint NOT NULL,
	TransTypeKey tinyint NOT NULL,

	--Degenerate Dim :
	TransRefkey  nvarchar(10) NOT NULL,
	DateFinancial date NOT NULL,
	DatePhysical date NOT NULL,
	--Measures :
	Qty decimal(18,0) NOT NULL,
	--Trace :
	IsDeleted bit DEFAULT 0 NOT NULL,
	LastupdateDate datetime DEFAULT getDate()

 CONSTRAINT [PK_FactInventory] PRIMARY KEY (CompanyKey,TransRefkey,ProductsKey,inventDimKey) NOT NULL
 )
