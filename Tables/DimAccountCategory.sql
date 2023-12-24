CREATE TABLE [dbo].[DimAccountCategory]
(
	CompanyKey tinyint not null,
	AccountCategoryKey int  identity (1,1)  not null  ,
    AccountCategoryAlternativeKey int NOT NULL,
	AccountCategoryName nvarchar (60) not null ,
	DescriptionGroup nvarchar (150)  null ,
	[SortGroup] [int] NULL,
	UpdatLasteTime datetime default getdate(),

CONSTRAINT [PK_DimAccountCategory_1] PRIMARY KEY CLUSTERED 
(
	AccountCategoryKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
