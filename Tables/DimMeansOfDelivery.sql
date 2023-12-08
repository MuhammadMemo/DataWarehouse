CREATE TABLE [dbo].[DimMeansOfDelivery]
(
	CompanyKey tinyint NOT NULL,
	MeansOfDeliveryKey tinyint identity (1,1),
	MeansOfDeliveryAlternativeKey bigint NOT NULL,
	NameMeansOfDelivery Nvarchar(100) not null,
	UpdatLasteTime datetime default getdate(),
	CONSTRAINT [PK_MeansOfDelivery_1] PRIMARY KEY CLUSTERED 
(
	MeansOfDeliveryKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
