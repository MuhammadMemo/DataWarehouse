CREATE TABLE [dbo].[LogTable](
	[Id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[TableNo] tinyint not null ,
	[Batch] [int]  NULL,
	[Pakage] [nvarchar](50) NULL,
	[MachineName] [nvarchar](50) NULL,
	[TableName] [nvarchar](50) NULL,
	[IsSelect] [int] NULL,
	[IsInserted] [int] NULL,
	[IsUpdated] [int] NULL,
	[IsDeleted] [int] NULL,
	[Note] [nvarchar](max) NULL,
	[Status] nvarchar (30) not null,
	[StartPakage] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[SecondDiff]  AS (datediff(second,[StartPakage],[ModifiedDate])),
	[MinuteDiff]  AS (datediff(minute,[StartPakage],[ModifiedDate]))
	)
