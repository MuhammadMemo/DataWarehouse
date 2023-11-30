CREATE TABLE [dbo].[DimEmpVacation]
(
	CompanyKey tinyint not null,
	VacationKey INT  identity (1,1) NOT NULL  ,
	VacationAlternativeKey int NOT NULL,
	VacationName nvarchar(200) not null ,
	MAX_DAYS_PER_YEAR smallint,
	MAX_TIMES_PER_YEAR smallint,
	UpdatLasteTime datetime   default getdate(),
CONSTRAINT [PK_DimVacation_1] PRIMARY KEY CLUSTERED 
(
	VacationKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
