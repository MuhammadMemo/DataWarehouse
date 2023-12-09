CREATE TABLE [dbo].[DimMethodDelivery]
(
	CompanyKey tinyint NOT NULL,
	MethodDeliveryKey tinyint identity (1,1),
	MethodDeliveryAlternativeKey bigint NOT NULL,
	NameMethodDelivery Nvarchar(100) not null,
	UpdatLasteTime datetime default getdate(),
	CONSTRAINT [PK_MeansOfDelivery_1] PRIMARY KEY CLUSTERED 
(
	MethodDeliveryKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
