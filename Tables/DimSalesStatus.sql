CREATE TABLE [dbo].[DimSalesStatus]
(
	StatusKey  [tinyint] identity (1,1)  PRIMARY KEY,
	StatusName nvarchar(30) not null

)
