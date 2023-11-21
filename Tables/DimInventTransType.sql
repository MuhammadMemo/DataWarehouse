CREATE TABLE [dbo].[DimTransType]
(
	TransTypeKey tinyint NOT NULL identity (1,1) PRIMARY KEY,
	TransTypeName nvarchar(50) Not null
)
