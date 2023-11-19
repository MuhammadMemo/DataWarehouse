﻿CREATE TABLE [dbo].[DimCars]
(
	CarKey [int] identity (1,1),
	CarAlternativeKey nvarchar(30) NOT NULL,
	CarName nvarchar(30) NOT NULL,
	Description nvarchar(30) NOT NULL,
	CompanyKey tinyint NOT NULL,
	UpdatLasteTime datetime NOT NULL,

CONSTRAINT [PK_DimCars_1] PRIMARY KEY CLUSTERED 
(
	CarKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
