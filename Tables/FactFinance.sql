CREATE TABLE [dbo].[FactFinance]
(
	Id INT NOT NULL PRIMARY KEY,

	CompanyKey tinyint not null,
	FinancialDateAlternativeKey int NOT NULL,
	AccountKey int not null,


	FinancialDate date not null,
	Amount float not null,

	LastupdateDate datetime not null,

	CONSTRAINT [PF_FinCompany] FOREIGN KEY (CompanyKey) REFERENCES DimCompany(CompanyKey),
	CONSTRAINT [PF_FinDate] FOREIGN KEY (FinancialDateAlternativeKey) REFERENCES Dimdate(DateKey),
	CONSTRAINT [PF_FinAccount] FOREIGN KEY (AccountKey,CompanyKey) REFERENCES DimAccount(AccountKey,CompanyKey),
)
