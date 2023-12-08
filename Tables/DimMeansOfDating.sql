CREATE TABLE [dbo].[DimMeansOfDating]
(
	CompanyKey tinyint Not null,
	MeansOfDatingKey INT identity (1,1),
	MeansOfDatingAlternativeKey bigint,
	NameMeansOfDating nvarchar(100) not null,
	UpdatLasteTime datetime default getdate(),
CONSTRAINT [PK_MeansOfDating_1] PRIMARY KEY CLUSTERED 
(
	MeansOfDatingKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
