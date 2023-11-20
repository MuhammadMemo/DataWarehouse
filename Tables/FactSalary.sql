--FactSalary(Type:Transaction ,Loading:Every month, Granularity: monthly)
CREATE TABLE [dbo].[FactSalary]
(
	Id INT NOT NULL identity (1,1),
	CompanyKey int not null,
	EmployeeKey  int not null,
	SalaryDateAlternativeKey  int not null,

	SalaryDateKey  date not null,


	

)
