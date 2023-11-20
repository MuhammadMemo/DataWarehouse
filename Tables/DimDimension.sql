CREATE TABLE [dbo].[DimDimension]
(
	CompanyKey tinyint NOT NULL,
	DimensionKey  int identity (1,1),
	DimensionAlternativeKey nvarchar(10) NOT NULL,
	WarehouseName nvarchar(30) NOT NULL,
	ColorName nvarchar(30),
	SizeName nvarchar(30) ,
	ConfigrationName  nvarchar(30),

	Onhand int,
	
	UpdatLasteTime datetime NOT NULL,
	CONSTRAINT [PK_DimDimension] PRIMARY KEY CLUSTERED 
(
	DimensionKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
