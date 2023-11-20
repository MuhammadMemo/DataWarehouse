CREATE TABLE [dbo].[DimSalesType]
(
	TypeKey  [tinyint] identity (1,1)  PRIMARY KEY,
	TypeName nvarchar(30) not null
)
