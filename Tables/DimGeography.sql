CREATE TABLE [dbo].[DimGeography]
(
CompanyKey tinyint NOT NULL,
GeographyKey int identity (1,1) ,
GeographyAlternativeKey nvarchar(50) NOT NULL,
RegionName nvarchar(50) ,
StateName nvarchar(50) ,
CityName nvarchar(100),
UpdatLasteTime datetime default GetDate(),
CONSTRAINT [PK_DimRegion] PRIMARY KEY CLUSTERED 
(
	GeographyKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]

