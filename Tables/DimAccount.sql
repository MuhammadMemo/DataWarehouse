CREATE TABLE [dbo].[DimAccount]
(
	CompanyKey tinyint not null,
	AccountKey int  identity (1,1)  not null  ,
    AccountAlternativeKey nvarchar(30) NOT NULL,
	AccountName nvarchar (60) not null ,
	AccountType nvarchar (30) not null ,
	AccountGroup nvarchar (50) not null ,
	UpdatLasteTime datetime NOT NULL,

CONSTRAINT [PK_DimAccount_1] PRIMARY KEY CLUSTERED 
(
	AccountKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
