--DimTime (Type:Static ,Loading:Initial Only)
--Hierarchies ShiftName > Hourly
--Fact Sheard:FactSales 
CREATE TABLE [dbo].[DimTime]
(
TimeKey tinyint PRIMARY KEY,
HourlyAlternativeKey tinyint,
SalesShiftName  nvarchar(10),
SalesDescription nvarchar(30)
)
WITH (DATA_COMPRESSION = PAGE)
GO
CREATE INDEX [IX_DimTime_TimeKey] ON [dbo].[DimTime] ([TimeKey])

