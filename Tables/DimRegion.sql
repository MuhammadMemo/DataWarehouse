CREATE TABLE [dbo].[DimRegion]
(
RegionKey int identity (1,1) ,
CountryAlternativeKey nvarchar(20) NOT NULL,
State nvarchar(50) NOT NULL,
City nvarchar(50) NOT NULL,
CompanyKey tinyint NOT NULL,
IsDeleted bit NOT NULL,
UpdatLasteTime datetime NOT NULL,
CONSTRAINT [PK_DimRegion] PRIMARY KEY CLUSTERED 
(
	RegionKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]

