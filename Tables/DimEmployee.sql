﻿CREATE TABLE [dbo].[DimEmployee]
(
	CompanyKey tinyint NOT NULL,
	EmployeeKey int identity (1,1),
	EmployeeAlternativeKey nvarchar(10) NOT NULL,
	EmployeeName nvarchar(50) NOT NULL,
	Job nvarchar(50) NOT NULL,
	DepartmenName nvarchar(50) NOT NULL,
	Birthdate Date,
	Hiredate Date,
	Insurancedate Date,
	WorkeStatus nvarchar(20) NOT NULL,
	UpdatLasteTime datetime default getdate(),

CONSTRAINT [PK_DimEmployee_1] PRIMARY KEY CLUSTERED 
(
	EmployeeKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]

