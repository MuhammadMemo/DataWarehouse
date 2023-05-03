
/*
DimBranche (Type:Conformed ,Loading:Every Hour)
Fact Sheard:FactSales 
 */

CREATE TABLE [dbo].[DimBranche](
	BrancheKey  TINYINT NOT NULL IDENTITY ,
	BrancheAlternativeKey nvarchar(30) NOT NULL,
	BrancheName nvarchar(20) NOT NULL,
	CompanyID tinyint NOT NULL,
 CONSTRAINT [PK_DimBranc_1] PRIMARY KEY CLUSTERED 
(
	BrancheKey ASC,
	CompanyID ASC

)
WITH (DATA_COMPRESSION = PAGE) ON [PRIMARY]
) ON [PRIMARY]
GO


