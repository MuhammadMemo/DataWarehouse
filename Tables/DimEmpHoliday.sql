CREATE TABLE [dbo].[DimEmpHoliday]
(
	CompanyKey tinyint NOT NULL,
	HolidayKey int identity (1,1),
	HolidayName nvarchar(100) not null,
    YEARS int not null,
	HolidayDate date not null,
	UpdatLasteTime datetime default getdate(),

CONSTRAINT [PK_DimHoliday_1] PRIMARY KEY CLUSTERED 
(
	HolidayKey ASC,
    CompanyKey ASC)
)ON [PRIMARY]

