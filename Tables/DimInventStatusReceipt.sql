CREATE TABLE [dbo].[DimInventStatusReceipt]
(
	StatusReceiptKey tinyint NOT NULL identity (1,1) PRIMARY KEY,
	StatusReceiptName nvarchar(50) Not null
)
