CREATE TABLE [dbo].[FactFinance]
(
	Id bigINT NOT NULL PRIMARY KEY,

	CompanyKey tinyint not null,
	AccountKey int not null,
	FinancialDateAlternativeKey int NOT NULL,
	TransTypeKey tinyint NOT NULL,

	FinancialDate date not null,
	Amount numeric(18, 0) not null,

	LastupdateDate datetime not null,

	CONSTRAINT [PF_FinCompany] FOREIGN KEY (CompanyKey) REFERENCES DimCompany(CompanyKey),
	CONSTRAINT [PF_FinDate] FOREIGN KEY (FinancialDateAlternativeKey) REFERENCES DimDate(DateKey),
	CONSTRAINT [PF_FinAccount] FOREIGN KEY (AccountKey,CompanyKey) REFERENCES DimAccount(AccountKey,CompanyKey),
	CONSTRAINT [PF_FinTransType] FOREIGN KEY (TransTypeKey) REFERENCES DimFixFinTransType(TransTypeKey),
)
