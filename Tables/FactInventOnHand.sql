CREATE TABLE [dbo].[FactInventOnHand]
(
	CompanyKey tinyint not null,
	DimensionKey INT NOT NULL  identity (1,1),
	DimensionlAlternativeKey nvarchar(10) NOT NULL,
	ProductsKey  nvarchar(50) NOT NULL,

	OnHand decimal(18,0),
	--Trace :
	--IsDeleted bit DEFAULT 0 NOT NULL,
	LastupdateDate datetime DEFAULT getDate()

 CONSTRAINT [PK_FactInventOnHand] PRIMARY KEY (CompanyKey,ProductsKey,DimensionKey) NOT NULL
)
