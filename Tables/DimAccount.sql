CREATE TABLE [dbo].[DimAccount]
(
	CompanyKey tinyint not null,
	AccountKey int  identity (1,1)  not null  ,
    AccountAlternativeKey nvarchar(30) NOT NULL,
	AccountName nvarchar (60) not null ,
	AccountType  tinyint  not null,
	AccountGroup nvarchar (150)   null ,
	UpdatLasteTime datetime default getdate(),

CONSTRAINT [PK_DimAccount_1] PRIMARY KEY CLUSTERED 
(
	AccountKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
