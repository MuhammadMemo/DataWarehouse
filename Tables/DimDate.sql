/*
--DimDate (Type:role-playing ,Loading:Initial Only)
--Hierarchies : Year > Quarter > Month > Day.
--Fact Sheard:FactSales,FactInventory,FactFinance,FactPurchase,FactProductions ,FactSalary,FactAttendance ,FactCar
*/
CREATE tABLE [dbo].[DimDate]
(
    DateKey int NOT NULL PRIMARY kEY,
	Date datetime NULL,
	FullDate char(10) NULL,
	DayOfMonth varchar(2) NULL,
	DaySuffix varchar(4) NULL,
	DayName varchar(9) NULL,
	DayOfWeek [tinyint] NULL,
	DayOfWeekInMonth [smallint] NULL,
	DayOfWeekInYear [smallint] NULL,
	DayOfQuarter [smallint] NULL,
	DayOfYear [smallint] NULL,
	WeekOfMonth [tinyint] NULL,
	WeekOfQuarter [smallint] NULL,
	WeekOfYear [smallint] NULL,
	Month [tinyint] NULL,
	MonthName nvarchar(20) NULL,
	MonthOfQuarter varchar(2) NULL ,
	Quarter [tinyint] NULL,
	QuarterName nvarchar(20) NULL,
	Year char(4) NULL,
	YearName char(7) NULL,
	MonthYear char(10) NULL,
	MMYYYY char(6) NULL,
	FirstDayOfMonth date NULL,
	LastDayOfMonth date NULL,
	FirstDayOfQuarter date NULL,
	LastDayOfQuarter date NULL,
	FirstDayOfYear date NULL,
	LastDayOfYear date NULL,
	Season nvarchar(50) Null,
	Semester nvarchar(50) Null,
	IsHoliday bit,
	HolidayName  nvarchar(50)
	)
	WITH(DATA_COMPRESSION = PAGE)
	GO
	CREATE INDEX [IX_DimDate_DateKey] ON [dbo].[DimDate] ([DateKey])
