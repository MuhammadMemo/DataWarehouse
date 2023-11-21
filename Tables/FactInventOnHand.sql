CREATE TABLE [dbo].[FactInventOnHand]
(
	CompanyKey tinyint not null,
	DimensionKey INT NOT NULL  identity (1,1),
	ProductKey  int NOT NULL,
	UnitKey int NOT NULL,

	OnHand decimal(18,0),
	--Trace :
	--IsDeleted bit DEFAULT 0 NOT NULL,
	LastupdateDate datetime DEFAULT getDate()

 CONSTRAINT [PK_FactInventOnHand] PRIMARY KEY (CompanyKey,ProductKey,DimensionKey) NOT NULL,


    CONSTRAINT [PF_InvOnDimension] FOREIGN KEY  (DimensionKey,CompanyKey) REFERENCES DimDimension(DimensionKey,CompanyKey),
	CONSTRAINT [PF_InvOnProduct] FOREIGN KEY  (ProductKey,CompanyKey) REFERENCES DimProduct(ProductKey,CompanyKey),
    CONSTRAINT [PF_InvOnUnit] FOREIGN KEY  (UnitKey,CompanyKey) REFERENCES DimUnit(UnitKey,CompanyKey),
    CONSTRAINT [PF_InvOnCompany] FOREIGN KEY (CompanyKey) REFERENCES DimCompany(CompanyKey),
)
