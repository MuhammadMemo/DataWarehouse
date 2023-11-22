
CREATE TABLE [dbo].[DimBranche](
	CompanyKey tinyint NOT NULL,
	BrancheKey tinyint identity (1,1) NOT NULL,
	BrancheAlternativeKey nvarchar(100) NOT NULL,
	BrancheName nvarchar(150) NOT NULL,
	UpdatLasteTime datetime default getdate(),
 CONSTRAINT [PK_DimBranche] PRIMARY KEY CLUSTERED 
(
	BrancheKey ASC,
	CompanyKey ASC
)) ON [PRIMARY]

