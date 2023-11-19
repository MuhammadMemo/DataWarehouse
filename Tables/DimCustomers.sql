Create table DimCustomers (
CustomersKey  [int] identity (1,1)  ,
CustomersAlternativeKey nvarchar(50) NOT NULL,
CustomerName nvarchar(70) NOT NULL,
CustomersGroup nvarchar(30) NOT NULL,
CustomerType nvarchar(50) NOT NULL,
CustomerClassification  nvarchar(50) NOT NULL,
Birthday date NOT NULL,
CompanyKey tinyint NOT NULL,
CONSTRAINT [PK_DimCustomers_1] PRIMARY KEY CLUSTERED 
(
	CustomersKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
