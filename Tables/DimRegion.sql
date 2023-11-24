CREATE TABLE [dbo].[DimRegion]
(
CompanyKey tinyint NOT NULL,
RegionKey int identity (1,1) ,
CountryAlternativeKey nvarchar(50) NOT NULL,
State nvarchar(50)  ,
City nvarchar(100)  ,
UpdatLasteTime datetime default GetDate(),
CONSTRAINT [PK_DimRegion] PRIMARY KEY CLUSTERED 
(
	RegionKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]

