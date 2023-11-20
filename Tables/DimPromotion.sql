CREATE TABLE [dbo].[DimPromotion]
(
	CompanyKey tinyint NOT NULL,
	PromotionKey [int] identity (1,1) NOT NULL ,
	PromotionsAlternativeKey nvarchar(30) NOT NULL,
	PromotionName nvarchar(30) NOT NULL,
	PromotionType nvarchar(30) NOT NULL,
	Amount [int] NOT NULL,
	Prec [int] NOT NULL,
	Location nvarchar(30) NOT NULL,
	UpdatLasteTime datetime NOT NULL,
CONSTRAINT [PK_DimPromotion_1] PRIMARY KEY CLUSTERED 
(
	PromotionKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]

