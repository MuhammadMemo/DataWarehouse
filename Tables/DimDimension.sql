CREATE TABLE [dbo].[DimDimension]
(
	CompanyKey tinyint NOT NULL,
	DimensionKey  int identity (1,1),
	DimensionAlternativeKey nvarchar(30) NOT NULL,
	InventLocationId nvarchar(50) ,
	WarehouseName nvarchar(150) ,
	SiteName nvarchar(150) ,
	ColorName nvarchar(100),
	SizeName nvarchar(100) ,
	ConfigrationName  nvarchar(100),
	
	UpdatLasteTime datetime default getdate(),
	CONSTRAINT [PK_DimDimension] PRIMARY KEY CLUSTERED 
(
	DimensionKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
