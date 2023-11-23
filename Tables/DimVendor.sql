CREATE TABLE [dbo].[DimVendor]
(
	CompanyKey tinyint NOT NULL,
	VendorKey  int identity (1,1) ,
	VendorAlternativeKey nvarchar(50) NOT NULL,
	VendorName nvarchar(150) NOT NULL,
	VendorGroup nvarchar(150)  NULL,
	VendorType tinyint,
	UpdatLasteTime datetime  default getdate(),
	CONSTRAINT [PK_DimVendors] PRIMARY KEY CLUSTERED 
(
	VendorKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]


