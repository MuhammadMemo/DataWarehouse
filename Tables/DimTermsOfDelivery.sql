CREATE TABLE [dbo].[DimTermsOfDelivery]
(
	CompanyKey tinyint Not null,
	TermsOfDeliveryKey INT  identity (1,1),
	TermsOfDeliveryAlternativeKey bigint,
	NameTermsOfDelivery nvarchar(100) not null,
	UpdatLasteTime datetime default getdate(),
CONSTRAINT [PK_TermsOfDelivery_1] PRIMARY KEY CLUSTERED 
(
	TermsOfDeliveryKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
