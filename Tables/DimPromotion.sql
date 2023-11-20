CREATE TABLE [dbo].[DimPromotion]
(
	PromotionKey [int] identity (1,1) NOT NULL ,
	PromotionsAlternativeKey nvarchar(30) NOT NULL,
	PromotionName nvarchar(30) NOT NULL,
	PromotionValue [int] NOT NULL,
	PromotionPrec [int] NOT NULL,
	Location nvarchar(30) NOT NULL,
	PromotionType nvarchar(30) NOT NULL,
	CompanyKey tinyint NOT NULL,
	IsDeleted bit NOT NULL,
	UpdatLasteTime datetime NOT NULL,
CONSTRAINT [PK_DimPromotion_1] PRIMARY KEY CLUSTERED 
(
	PromotionKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]

