CREATE TABLE [dbo].[DimTargetLevel]
(
	CompanyKey tinyint,
	TargetLevelKey  int   NOT NULL ,
	DgreeName  Nvarchar(100) not null ,
	UpdatLasteTime datetime default getdate(),
CONSTRAINT [PK_DimTargetLevel_1] PRIMARY KEY CLUSTERED 
(
	TargetLevelKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]

