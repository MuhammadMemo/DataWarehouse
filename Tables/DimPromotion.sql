CREATE TABLE [dbo].[DimPromotion]
(
	CompanyKey tinyint NOT NULL,
	PromotionKey int identity (1,1) NOT NULL ,
	PromotionAlternativeKey bigint NOT NULL,
	STATUS tinyint NOT NULL,
	FROMDATE date NOT NULL,
	TODATE date NOT NULL,
	DELIVERYDATE date  NULL,
	DESCRIPTION nvarchar(100) NOT NULL,
	ITEMGROUP nvarchar(50) NOT NULL,
	DESCACTIVE int NOT NULL,
	SORTDISC bigint NOT NULL,
	PRICEDISCOUNT MONEY default 0.0,
	DISCOUNT DECIMAL default 0.0,
	QUANTITY int NOT NULL,
	Location nvarchar(150) NOT NULL,
	UpdatLasteTime datetime default getdate(),
CONSTRAINT [PK_DimPromotion_1] PRIMARY KEY CLUSTERED 
(
	PromotionKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]

