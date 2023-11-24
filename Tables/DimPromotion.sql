CREATE TABLE [dbo].[DimPromotion]
(
	CompanyKey tinyint NOT NULL,
	PromotionKey [int] identity (1,1) NOT NULL ,
	PromotionsAlternativeKey nvarchar(40) NOT NULL,
	PromotionName nvarchar(200) NOT NULL,
	PromotionType tinyint NOT NULL,
	Amount MONEY default 0.0,
	Prec DECIMAL default 0.0,
	Location nvarchar(30) NOT NULL,
	UpdatLasteTime datetime default getdate(),
CONSTRAINT [PK_DimPromotion_1] PRIMARY KEY CLUSTERED 
(
	PromotionKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]

