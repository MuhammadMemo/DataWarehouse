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
	DayOfWeek char(1) NULL,
	DayOfWeekInMonth varchar(2) NULL,
	DayOfWeekInYear varchar(2) NULL,
	DayOfQuarter varchar(3) NULL,
	DayOfYear varchar(3) NULL,
	WeekOfMonth varchar(1) NULL,
	WeekOfQuarter varchar(2) NULL,
	WeekOfYear varchar(2) NULL,
	Month varchar(2) NULL,
	MonthName nvarchar(20) NULL,
	MonthOfQuarter varchar(2) NULL ,
	Quarter char(1) NULL,
	QuarterName varchar(9) NULL,
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
