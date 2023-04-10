
-- DimCompany (Type:Static ,Loading:Initial Only)
-- Three Company (Mfco-MT-ME-DAT:test)

CREATE TABLE [dbo].[DimCompany]
(
	[Id] tinyint NOT NULL PRIMARY KEY,
	CompanyName   nvarchar(10) NOT NULL 
)
