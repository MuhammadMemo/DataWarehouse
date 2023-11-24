CREATE TABLE [dbo].[DimUnit]
(
	CompanyKey tinyint NOT NULL,
	UnitKey  int  IDENTITY (1,1) ,
	UnitAlternativeKey  nvarchar(50)  not null ,
	UnitName nvarchar(150) not null ,
	UpdatLasteTime datetime Default Getdate(),
	
CONSTRAINT [PK_DimUnit_1] PRIMARY KEY CLUSTERED 
(
	UnitKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
