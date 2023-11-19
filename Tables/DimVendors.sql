CREATE TABLE [dbo].[DimVendors]
(
	VendorKey  [int] identity (1,1) ,
	VendorAlternativeKey nvarchar(50) NOT NULL,
	VendorName nvarchar(60) NOT NULL,
	VendorGroup nvarchar(30) NOT NULL,
	CompanyKey tinyint NOT NULL,
	IsDeleted bit NOT NULL,
	UpdatLasteTime datetime NOT NULL,
	CONSTRAINT [PK_DimVendors] PRIMARY KEY CLUSTERED 
(
	VendorKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]


