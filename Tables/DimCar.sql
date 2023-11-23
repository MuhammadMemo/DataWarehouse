CREATE TABLE [dbo].[DimCar]
(
	CompanyKey tinyint NOT NULL,
	CarKey smallint identity (1,1),
	CarAlternativeKey nvarchar(30) NOT NULL,
	CarNumber nvarchar(20) NOT NULL,
	CarName nvarchar(150) NOT NULL,
	CarType tinyint NOT NULL,
	Description nvarchar(150) NOT NULL,
	UpdatLasteTime datetime default getdate(),

CONSTRAINT [PK_DimCar_1] PRIMARY KEY CLUSTERED 
(
	CarKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]

