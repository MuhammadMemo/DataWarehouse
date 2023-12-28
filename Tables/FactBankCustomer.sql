CREATE TABLE [dbo].[FactBankCustomer]
(
	 		
	Id bigINT NOT NULL ,
	CompanyKey tinyint not null,
	CustomerKey int not null,
	OffsetAccount int not null,
	PaymentDateAlternativeKey int NOT NULL,
	OffsetAccountTypeKey int NOT NULL,
	PaymentDate date not null,
	JournalNum int not null,
	AmountDebit numeric(18, 0) not null,
	AmountCredit numeric(18, 0) not null,
	SalesId nvarchar (40) null,
	Voucher nvarchar (40) null,
	txt nvarchar (200) null,

	LastupdateDate datetime DEFAULT getDate(),
	CONSTRAINT [PK_FactBank] PRIMARY KEY (CompanyKey,id),
	CONSTRAINT [PF_BankCompany_1] FOREIGN KEY (CompanyKey) REFERENCES DimCompany(CompanyKey),
	CONSTRAINT [PF_BankDate] FOREIGN KEY (PaymentDateAlternativeKey) REFERENCES DimDate(DateKey),
	CONSTRAINT [PF_BankBank] FOREIGN KEY (OffsetAccount,CompanyKey) REFERENCES DimBank(BankKey,CompanyKey),
	CONSTRAINT [PF_BankCustomer] FOREIGN KEY (CustomerKey,CompanyKey) REFERENCES DimCustomer(CustomerKey,CompanyKey),
	CONSTRAINT [PF_BankOffsetType] FOREIGN KEY (OffsetAccountTypeKey) REFERENCES DimFixFinOffsetAccountType(OffsetAccountTypeKey),

)
