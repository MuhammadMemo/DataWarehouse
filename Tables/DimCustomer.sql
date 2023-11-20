Create table DimCustomer (
CustomerKey  int identity (1,1)  ,
CustomerAlternativeKey nvarchar(50) NOT NULL,
CustomerName nvarchar(70) NOT NULL,
CustomerGroup nvarchar(30) NOT NULL,
CustomerType nvarchar(50) NOT NULL,
CustomerClassification  nvarchar(50) NOT NULL,
Birthday date NOT NULL,
CompanyKey tinyint NOT NULL,
IsDeleted bit NOT NULL,
UpdatLasteTime datetime NOT NULL,
CONSTRAINT [PK_DimCustomers_1] PRIMARY KEY CLUSTERED 
(
	CustomerKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
