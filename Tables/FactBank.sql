CREATE TABLE [dbo].[FactBank]
(
	 		
	Id bigINT NOT NULL ,
	CompanyKey tinyint not null,
	AccountKey int not null,
	OffsetAccount int not null,
	PaymentDateAlternativeKey int NOT NULL,
	AccountType int NOT NULL,
	OffsetAccountTypeKey int NOT NULL,
	PaymentDate datetime not null,
	JournalNum nvarchar (20) null,
	AmountDebit numeric(18, 0) not null,
	AmountCredit numeric(18, 0) not null,
	SalesId nvarchar (40) null,
	Voucher nvarchar (40) null,
	txt nvarchar (200) null,

	LastupdateDate datetime DEFAULT getDate(),
	CONSTRAINT [PK_FactBank] PRIMARY KEY (CompanyKey,id),
	CONSTRAINT [PF_BankCompany_1] FOREIGN KEY (CompanyKey) REFERENCES DimCompany(CompanyKey),
	CONSTRAINT [PF_BankDate] FOREIGN KEY (PaymentDateAlternativeKey) REFERENCES DimDate(DateKey),

	CONSTRAINT [PF_BankBank] FOREIGN KEY (AccountKey,CompanyKey) REFERENCES DimBank(BankKey,CompanyKey),
	CONSTRAINT [PF_BankCustomer] FOREIGN KEY (AccountKey,CompanyKey) REFERENCES DimCustomer(CustomerKey,CompanyKey),
	CONSTRAINT [PF_BankAccount] FOREIGN KEY (AccountKey,CompanyKey) REFERENCES DimAccount(AccountKey,CompanyKey),
	CONSTRAINT [PF_BankVendor] FOREIGN KEY (AccountKey,CompanyKey) REFERENCES DimVendor(VendorKey,CompanyKey),

	CONSTRAINT [PF_BankBank_1] FOREIGN KEY (OffsetAccount,CompanyKey) REFERENCES DimBank(BankKey,CompanyKey),
	CONSTRAINT [PF_BankCustomer_1] FOREIGN KEY (OffsetAccount,CompanyKey) REFERENCES DimCustomer(CustomerKey,CompanyKey),
	CONSTRAINT [PF_BankAccount_1] FOREIGN KEY (OffsetAccount,CompanyKey) REFERENCES DimAccount(AccountKey,CompanyKey),
	CONSTRAINT [PF_BankVendor_1] FOREIGN KEY (OffsetAccount,CompanyKey) REFERENCES DimVendor(VendorKey,CompanyKey),

	CONSTRAINT [PF_BankOffsetType] FOREIGN KEY (OffsetAccountTypeKey) REFERENCES DimFixFinOffsetAccountType(OffsetAccountTypeKey),

)
