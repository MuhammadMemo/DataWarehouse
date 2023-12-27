CREATE TABLE [dbo].[FactFinance]
(
	Id bigINT NOT NULL ,

	CompanyKey tinyint not null,
	AccountKey int not null,
	FinancialDateAlternativeKey int NOT NULL,
	TransTypeKey tinyint NOT NULL,
	PostingType int not null,
	FinancialDate date not null,
	Amount numeric(18, 0) not null,

	LastupdateDate datetime DEFAULT getDate(),
	CONSTRAINT [PK_FactFinance] PRIMARY KEY (CompanyKey,id),
	CONSTRAINT [PF_FinCompany] FOREIGN KEY (CompanyKey) REFERENCES DimCompany(CompanyKey),
	CONSTRAINT [PF_FinDate] FOREIGN KEY (FinancialDateAlternativeKey) REFERENCES DimDate(DateKey),
	CONSTRAINT [PF_FinAccount] FOREIGN KEY (AccountKey,CompanyKey) REFERENCES DimAccount(AccountKey,CompanyKey),
	CONSTRAINT [PF_FinTransType] FOREIGN KEY (TransTypeKey) REFERENCES DimFixFinTransType(TransTypeKey),
	CONSTRAINT [PF_PostingType] FOREIGN KEY (PostingType) REFERENCES DimFixFinPostingType(PostingTypeKey)
)
