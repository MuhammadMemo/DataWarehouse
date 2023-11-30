Create table DimCustomer (
CompanyKey tinyint NOT NULL,
CustomerKey  int identity (1,1)  ,
CustomerAlternativeKey nvarchar(50) NOT NULL,
CustomerName nvarchar(150) NOT NULL,
CustomerGroup nvarchar(60),
CustomerType nvarchar(50) NOT NULL,
CustomerClassification  nvarchar(100) ,
Birthday date NOT NULL,
Gender nvarchar(8) ,
UpdatLasteTime datetime   default getdate(),
CONSTRAINT [PK_DimCustomers_1] PRIMARY KEY CLUSTERED 
(
	CustomerKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
