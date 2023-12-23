CREATE TABLE [dbo].[DimAccountCategory]
(
	CompanyKey tinyint not null,
	AccountCategoryKey int  identity (1,1)  not null  ,
    AccountCategoryAlternativeKey nvarchar(30) NOT NULL,
	AccountCategoryName nvarchar (60) not null ,
	UpdatLasteTime datetime default getdate(),

CONSTRAINT [PK_DimAccountCategory_1] PRIMARY KEY CLUSTERED 
(
	AccountCategoryKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
