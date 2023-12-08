CREATE TABLE [dbo].[DimTermsOfDelivery]
(
	CompanyKey tinyint Not null,
	TermsOfDeliveryKey INT NOT NULL,
	TermsOfDeliveryAlternativeKey bigint,
	NameTermsOfDelivery nvarchar(100) not null,
	UpdatLasteTime datetime default getdate(),
CONSTRAINT [PK_TermsOfDelivery_1] PRIMARY KEY CLUSTERED 
(
	TermsOfDeliveryKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
