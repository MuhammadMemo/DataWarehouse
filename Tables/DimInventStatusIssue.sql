CREATE TABLE [dbo].[DimInventStatusIssue]
(
	StatusIssueKey tinyint NOT NULL identity (1,1) PRIMARY KEY,
	StatusIssueName nvarchar(50) Not null
)
