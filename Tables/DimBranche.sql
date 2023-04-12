
/*
DimBranche (Type:Conformed ,Loading:Every Hour)
Fact Sheard:FactSales 
 */

CREATE TABLE [dbo].[DimBranche](
	BrancheKey int NOT NULL,
	BrancheAlternativeKey tinyint NOT NULL,
	BrancheName nvarchar(10) NOT NULL,
	CompanyID tinyint NOT NULL,
 CONSTRAINT [PK_DimBranc_1] PRIMARY KEY CLUSTERED 
(
	BrancheKey ASC,
	CompanyID ASC

)
WITH (DATA_COMPRESSION = PAGE) ON [PRIMARY]
) ON [PRIMARY]
GO


