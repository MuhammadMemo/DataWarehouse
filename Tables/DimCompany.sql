/*
DimCompany (Type:Static ,Loading:Initial Only)
Three Company (Mfco-MT-ME-DAT:test)
*/
CREATE TABLE [dbo].[DimCompany]
(
	Companykey tinyint NOT NULL IDENTITY PRIMARY KEY,
	CompanyAlternativeKey nvarchar(5) NOT NULL,
	CompanyName   nvarchar(10) NOT NULL ,
	[Desc]  nvarchar(max) NULL
)

