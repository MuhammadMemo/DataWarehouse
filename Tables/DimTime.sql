/*
DimTime (Type:Static ,Loading:Initial Only)
Hierarchies ShiftName > Hourly
Fact Sheard:FactSales 
 */
	CREATE TABLE [dbo].[DimTime]
	(
	TimeKey tinyint NOT NULL PRIMARY KEY,
	SalesShiftName  nvarchar(20)  NULL ,
	SalesDescription  nvarchar(30)  NULL
	)
	WITH (DATA_COMPRESSION = PAGE)
	GO
	CREATE INDEX [IX_DimTime_TimeKey] ON [dbo].[DimTime] ([TimeKey])

