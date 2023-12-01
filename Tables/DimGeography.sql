CREATE TABLE [dbo].[DimGeography]
(
CompanyKey tinyint NOT NULL,
GeographyKey  int identity (1,1) ,
GeographyAlternativeKey bigint NOT NULL,
RegionName nvarchar(50) ,
StateName nvarchar(50) ,
CityName nvarchar(100),
UpdatLasteTime datetime default GetDate(),
CONSTRAINT [PK_DimGeography] PRIMARY KEY CLUSTERED 
(
	GeographyKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]

