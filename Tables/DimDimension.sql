CREATE TABLE [dbo].[DimDimension]
(
	DimensionKey  int identity (1,1),
	DimensionAlternativeKey nvarchar(10) NOT NULL,
	WarehouseName nvarchar(30) NOT NULL,
	ColorName nvarchar(30),
	SizeName nvarchar(30) ,
	ConfigrationName  nvarchar(30),
	ProductsKey int,
	Onhand int,
	CompanyKey tinyint NOT NULL,
	UpdatLasteTime datetime NOT NULL,
	CONSTRAINT [PK_DimDimension] PRIMARY KEY CLUSTERED 
(
	DimensionKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
