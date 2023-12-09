CREATE TABLE [dbo].[DimMethodPayment]
(
	CompanyKey tinyint Not null,
	MethodPaymentKey  tinyint identity (1,1) NOT NULL ,
	MethodPaymentAlternativeKey bigINT NOT NULL,
	NameMethodsPayment nvarchar(100) not null,
	UpdatLasteTime datetime default getdate(),
CONSTRAINT [PK_PaymentMethods_1] PRIMARY KEY CLUSTERED 
(
	MethodPaymentKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
