CREATE TABLE [dbo].[DimMethodAcquisition]
(
	CompanyKey tinyint Not null,
	MethodAcquisitionKey INT identity (1,1),
	MethodAcquisitionAlternativeKey bigint,
	NameMethodAcquisition nvarchar(100) not null,
	UpdatLasteTime datetime default getdate(),
CONSTRAINT [PK_ethodAcquisition_1] PRIMARY KEY CLUSTERED 
(
	MethodAcquisitionKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]
