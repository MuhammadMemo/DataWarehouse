CREATE TABLE [dbo].[DimUnit]
(
	CompanyKey tinyint NOT NULL,
	UnitKey  int  IDENTITY (1,1) ,
	UnitAlternativeKey  int not null ,
	UnitName nvarchar(30) not null ,
	

CONSTRAINT [PK_DimUnit_1] PRIMARY KEY CLUSTERED 
(
	UnitKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
