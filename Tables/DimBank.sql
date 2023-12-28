CREATE TABLE [dbo].[DimBank]
( 	 

	CompanyKey tinyint not null,
	BankKey int  identity (1,1)  not null  ,
    BankAlternativeKey  nvarchar (10) NOT NULL,
	BnakName nvarchar (150) not null ,
	BankGroupName nvarchar (100)  null ,
	BrancheKey tinyint    null,
	AccountKey  int   null,
	CurrencyCode  nvarchar (20)  null ,
	UpdatLasteTime datetime default getdate(),

CONSTRAINT [PK_DimBank_1] PRIMARY KEY CLUSTERED (BankKey ,CompanyKey),
--CONSTRAINT [PF_DimBankBranche_2] FOREIGN KEY (CompanyKey,BrancheKey) REFERENCES DimBranche(CompanyKey,BrancheKey)
--CONSTRAINT [PF_DimBankAccount_3] FOREIGN KEY (CompanyKey,AccountKey) REFERENCES DimAccount(CompanyKey,AccountKey))

)