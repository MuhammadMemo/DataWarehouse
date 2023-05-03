/*
DimCompany (Type:Static ,Loading:Initial Only)
Three Company (Mfco-MT-ME-DAT:test)
*/
CREATE TABLE [dbo].[DimCompany]
(
	CompanyId tinyint NOT NULL IDENTITY PRIMARY KEY,
	CompanyAlternativeKey nvarchar(5) NOT NULL,
	CompanyName   nvarchar(10) NOT NULL 
)
WITH(DATA_COMPRESSION = PAGE)
GO

CREATE INDEX [IX_DimCompany_Column] ON [dbo].[DimCompany] ([CompanyId])
