--FactSalary(Type:Transaction ,Loading:Every month, Granularity: monthly)
CREATE TABLE [dbo].[FactSalary]
(
	Id INT NOT NULL identity (1,1),
	--Foreign Keys :
	CompanyKey tinyint not null,
	EmployeeKey  int not null,
	SalaryDateAlternativeKey  int not null,
	
	--Degenerate Dim :
	SalaryDate  date not null,

	--Measures :


	LastupdateDate datetime DEFAULT getDate(),

    CONSTRAINT [PK_FactSalary] PRIMARY KEY (CompanyKey,id) ,
	CONSTRAINT [PF_EmployeeSalary] FOREIGN KEY  (EmployeeKey,CompanyKey) REFERENCES DimEmployee(EmployeeKey,CompanyKey),
	CONSTRAINT [PF_SalaryDate] FOREIGN KEY  (SalaryDateAlternativeKey) REFERENCES DimDate(DateKey),

)
