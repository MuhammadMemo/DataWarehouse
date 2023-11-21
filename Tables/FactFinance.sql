CREATE TABLE [dbo].[FactFinance]
(
	Id INT NOT NULL PRIMARY KEY,

	CompanyKey tinyint not null,
	FinancialDateAlternativeKey int NOT NULL,
	AccountKey int not null,
	TransTypeKey tinyint NOT NULL,

	FinancialDate date not null,
	Amount float not null,

	LastupdateDate datetime not null,

	CONSTRAINT [PF_FinCompany] FOREIGN KEY (CompanyKey) REFERENCES DimCompany(CompanyKey),
	CONSTRAINT [PF_FinDate] FOREIGN KEY (FinancialDateAlternativeKey) REFERENCES Dimdate(DateKey),
	CONSTRAINT [PF_FinAccount] FOREIGN KEY (AccountKey,CompanyKey) REFERENCES DimAccount(AccountKey,CompanyKey),
	CONSTRAINT [PF_FinTransType] FOREIGN KEY (TransTypeKey) REFERENCES DimFinTransType(TransTypeKey),
)
