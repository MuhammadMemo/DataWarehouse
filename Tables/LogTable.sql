CREATE TABLE [dbo].[LogTable](
	[Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Pakage] [nvarchar](50) NULL,
	[MachineName] [nvarchar](50) NULL,
	[TableName] [nvarchar](50) NULL,
	[IsInserted] [int] NULL,
	[IsUpdated] [int] NULL,
	[IsDeleted] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[StartPakage] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
	[ScondsDiff]  AS (datediff(minute,[StartPakage],[ModifiedDate]))
	)
