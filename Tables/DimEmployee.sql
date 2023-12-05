CREATE TABLE [dbo].[DimEmployee]
(
	CompanyKey tinyint NOT NULL,
	EmployeeKey int identity (1,1),
	EmployeeAlternativeKey nvarchar(50) NOT NULL,
	EmployeeName nvarchar(420) NOT NULL,
	Job nvarchar(100) NOT NULL,
	DepartmenName nvarchar(100) NOT NULL,
	DivisionName  nvarchar(100) default 'UnKown' ,
	Gender nvarchar(15)  default 'UnKown'  ,
	ContractType  nvarchar(40) default 'UnKown' ,
    ContractDate Date default '1900-01-01' ,
    ContractEndDate Date default '1900-01-01',
	BirthDate Date default '1900-01-01',
	HireDate Date default '1900-01-01',
	InsuranceDate Date default '1900-01-01',
	WorkeStatus nvarchar(30)  default 'UnKown' ,
	UpdatLasteTime datetime default getdate() NOT NULL,


CONSTRAINT [PK_DimEmployee_1] PRIMARY KEY CLUSTERED 
(
	EmployeeKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]

