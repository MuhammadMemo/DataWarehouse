CREATE TABLE [dbo].[DimFixInventStatusIssue]
(
	StatusIssueKey tinyint NOT NULL identity (1,1) PRIMARY KEY,
	StatusIssueName nvarchar(50) Not null
)
