CREATE TABLE [dbo].[DimFixTradType]
(
	TradTypeKey  tinyint  not null primary key,
	TradTypeName nvarchar(40)  not null,
	TradTypeNameEnglish nvarchar(40)  not null,
)
