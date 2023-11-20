
CREATE TABLE [dbo].[DimBranche](
	BrancheKey tinyint identity (1,1) NOT NULL,
	BrancheAlternativeKey nvarchar(100) NOT NULL,
	BrancheName nvarchar(150) NOT NULL,
	CompanyKey tinyint NOT NULL,
	IsDeleted bit NOT NULL,
	UpdatLasteTime datetime NOT NULL,
 CONSTRAINT [PK_DimBranche] PRIMARY KEY CLUSTERED 
(
	BrancheKey ASC,
	CompanyKey ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
