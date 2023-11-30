CREATE TABLE [dbo].[DimEmployee]
(
	CompanyKey tinyint NOT NULL,
	EmployeeKey int identity (1,1),
	EmployeeAlternativeKey nvarchar(50) NOT NULL,
	EmployeeName nvarchar(420) NOT NULL,
	Job nvarchar(100) NOT NULL,
	DepartmenName nvarchar(100) NOT NULL,
	DivisionName  nvarchar(100)  NULL,
	Gender nvarchar(15) ,
	ContractType  nvarchar(40),
    ContractDate Date,
    ContractEndDate Date,
	BirthDate Date,
	HireDate Date,
	InsuranceDate Date,
	WorkeStatus nvarchar(30)  NULL,
	UpdatLasteTime datetime default getdate(),

CONSTRAINT [PK_DimEmployee_1] PRIMARY KEY CLUSTERED 
(
	EmployeeKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]

