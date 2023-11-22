CREATE TABLE [dbo].[DimDimension]
(
	CompanyKey tinyint NOT NULL,
	DimensionKey  int identity (1,1),
	DimensionAlternativeKey nvarchar(20) NOT NULL,
	WarehouseName nvarchar(30) NOT NULL,
	ColorName nvarchar(30),
	SizeName nvarchar(30) ,
	ConfigrationName  nvarchar(30),
	
	UpdatLasteTime datetime default getdate(),
	CONSTRAINT [PK_DimDimension] PRIMARY KEY CLUSTERED 
(
	DimensionKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
