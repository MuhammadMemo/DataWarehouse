CREATE TABLE [dbo].[DimDepartment]
(
	DepartmentKey int identity (1,1),
	DepartmentAlternativeKey nvarchar(30)NOT NULL,
	DepartmenName nvarchar(50) NOT NULL,
	CompanyKey tinyint NOT NULL,
	UpdatLasteTime datetime NOT NULL,
CONSTRAINT [PK_DimDepartments_1] PRIMARY KEY CLUSTERED 
(
	DepartmentKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]

