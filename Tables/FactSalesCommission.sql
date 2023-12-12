CREATE TABLE [dbo].[FactSalesCommission]
(
	  CompanyKey tinyint NOT NULL,
	  SalesCommissionKey tinyint identity (1,1) NOT NULL ,
	  SalesCommissionAlternativeKey bigint NOT NULL,
	  
	  
	  TargetLevelkey tinyint NOT NULL,
	  EmpTypeKey tinyint NOT NULL, 
	  EmployeeKey int NOT NULL,
	  TargetDateAlternativeKey int NOT NULL,
	  
	  TargetDateKey  date NOT NULL, 
	  CountSo int NOT NULL, 
	  Precent decimal(28,12) NOT NULL, 
	  AmountFrom decimal(28,12) NOT NULL ,  
	  AmountTo decimal(28,12) NOT NULL, 
      Amount decimal(28,12) NOT NULL,
      TotalSales decimal(28,12) NOT NULL,

	--Trace
		IsDeleted bit DEFAULT 0 NOT NULL,
		LastupdateDate datetime DEFAULT getDate()

    CONSTRAINT [PK_FactSalesCommission] PRIMARY KEY (CompanyKey,SalesCommissionKey) ,
	CONSTRAINT [PF_TargetLevel] FOREIGN KEY  (TargetLevelkey,CompanyKey) REFERENCES DimTargetLevel(TargetLevelkey,CompanyKey),
	CONSTRAINT [PF_EmployeeTarget] FOREIGN KEY  (EmployeeKey,CompanyKey) REFERENCES DimEmployee(EmployeeKey,CompanyKey),
    CONSTRAINT [PF_CompanyTarget] FOREIGN KEY (CompanyKey) REFERENCES DimCompany(CompanyKey),
    CONSTRAINT [PF_DateTarget] FOREIGN KEY (TargetDateAlternativeKey) REFERENCES DimDate(DateKey),

)

