CREATE TABLE [dbo].[DimPaymentMethods]
(
	CompanyKey tinyint Not null,
	PaymentMethodsKey bigINT  identity (1,1) NOT NULL ,
	PaymentMethodsAlternativeKey INT NOT NULL,
	NamePaymentMethods nvarchar(100) not null,
	UpdatLasteTime datetime default getdate(),
CONSTRAINT [PK_PaymentMethods_1] PRIMARY KEY CLUSTERED 
(
	PaymentMethodsKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
