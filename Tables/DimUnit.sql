CREATE TABLE [dbo].[DimUnit]
(
	UnitKey  int  IDENTITY (1,1) ,
	UnitAlternativeKey  int not null ,
	UnitName nvarchar(30) not null ,
	CompanyKey tinyint NOT NULL,

CONSTRAINT [PK_DimUnit_1] PRIMARY KEY CLUSTERED 
(
	UnitKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
