CREATE TABLE [dbo].[DimEmpDeductionAllowance]
(
	 CompanyKey tinyint not null,
 	 CodeKey int identity (1,1),
     CodeAlternativeKey int not null,
     DeductionAllowanceName nvarchar(200),
     DeductionAllowanceType tinyint not null ,
     PayType nvarchar(20),
     UpdatLasteTime datetime default getdate(),

CONSTRAINT [PK_DimDecAllow_1] PRIMARY KEY CLUSTERED 
(
	CodeKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
