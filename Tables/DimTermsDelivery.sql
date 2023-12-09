CREATE TABLE [dbo].[DimTermsDelivery]
(
	CompanyKey tinyint Not null,
	TermsDeliveryKey INT  identity (1,1),
	TermsDeliveryAlternativeKey bigint,
	NameTermsDelivery nvarchar(100) not null,
	UpdatLasteTime datetime default getdate(),
CONSTRAINT [PK_TermsOfDelivery_1] PRIMARY KEY CLUSTERED 
(
	TermsDeliveryKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
