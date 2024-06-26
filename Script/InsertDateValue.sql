﻿



USE [DataWarehouse]
GO

--/****** Object:  Table [dbo].[DimDate]    Script Date: 09-12-2023 11:38:31 PM ******/
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimDate]') AND type in (N'U'))
--DROP TABLE [dbo].[DimDate]
GO

--/****** Object:  Table [dbo].[DimDate]    Script Date: 09-12-2023 11:38:31 PM ******/
--SET ANSI_NULLS ON
--GO

--SET QUOTED_IDENTIFIER ON
--GO

--CREATE TABLE [dbo].[DimDate](
--	[DateKey] [int] NOT NULL,
--	[Date] [datetime] NULL,
--	[FullDate] [char](10) NULL,
--	[DayOfMonth] [varchar](2) NULL,
--	[DaySuffix] [varchar](4) NULL,
--	[DayName] [varchar](9) NULL,
--	[DayOfWeek] [char](1) NULL,
--	[DayOfWeekInMonth] [varchar](2) NULL,
--	[DayOfWeekInYear] [varchar](2) NULL,
--	[DayOfQuarter] [varchar](3) NULL,
--	[DayOfYear] [varchar](3) NULL,
--	[WeekOfMonth] [varchar](1) NULL,
--	[WeekOfQuarter] [varchar](2) NULL,
--	[WeekOfYear] [varchar](2) NULL,
--	[Month] [varchar](2) NULL,
--	[MonthName] [nvarchar](20) NULL,
--	[MonthOfQuarter] [varchar](2) NULL,
--	[Quarter] [char](1) NULL,
--	[QuarterName] [nvarchar](20) NULL,
--	[Year] [char](4) NULL,
--	[YearName] [char](7) NULL,
--	[MonthYear] [char](10) NULL,
--	[MMYYYY] [char](6) NULL,
--	[FirstDayOfMonth] [date] NULL,
--	[LastDayOfMonth] [date] NULL,
--	[FirstDayOfQuarter] [date] NULL,
--	[LastDayOfQuarter] [date] NULL,
--	[FirstDayOfYear] [date] NULL,
--	[LastDayOfYear] [date] NULL,
--	[Season] [nvarchar](50) NULL,
--	[Semester] [nvarchar](50) NULL,
--	[IsHoliday] [bit] NULL,
--	[HolidayName] [nvarchar](50) NULL,
-- CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
--(
--	[DateKey] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF, DATA_COMPRESSION = PAGE) ON [PRIMARY]
--) ON [PRIMARY]
--GO


--truncate table [dbo].[DimDate]
--Value of Start Date Must be Less than Your End Date 

--CREATE TABLE [dbo].[DimDate](
--	[DateKey] [int] NOT NULL,
--	[Date] [datetime] NULL,
--	[FullDate] [char](10) NULL,
--	[DayOfMonth] [tinyint] NULL,
--	[DaySuffix] [varchar](4) NULL,
--	[DayName] [varchar](9) NULL,
--	[DayOfWeek] [tinyint] NULL,
--	[DayOfWeekInMonth] [smallint] NULL,
--	[DayOfWeekInYear] [smallint] NULL,
--	[DayOfQuarter] [smallint] NULL,
--	[DayOfYear] [smallint] NULL,
--	[WeekOfMonth] [smallint] NULL,
--	[WeekOfQuarter] [smallint] NULL,
--	[WeekOfYear] [smallint] NULL,
--	[Month] [tinyint] NULL,
--	[MonthName] [nvarchar](20) NULL,
--	[MonthOfQuarter] [varchar](2) NULL,
--	[Quarter] [tinyint] NULL,
--	[QuarterName] [nvarchar](20) NULL,
--	[Year] [smallint] NULL,
--	[YearName] [char](7) NULL,
--	[MonthYear] [char](10) NULL,
--	[MMYYYY] [char](6) NULL,
--	[FirstDayOfMonth] [date] NULL,
--	[LastDayOfMonth] [date] NULL,
--	[FirstDayOfQuarter] [date] NULL,
--	[LastDayOfQuarter] [date] NULL,
--	[FirstDayOfYear] [date] NULL,
--	[LastDayOfYear] [date] NULL,
--	[Season] [nvarchar](50) NULL,
--	[Semester] [nvarchar](50) NULL,
--	[IsHoliday] [bit] NULL,
--	[HolidayName] [nvarchar](50) NULL,
-- CONSTRAINT [PK__DimDate__40DF45E3C1A7FFAC] PRIMARY KEY CLUSTERED 
--(
--	[DateKey] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]
--GO




INSERT [dbo].[DimDate] ([DateKey], [Date], [FullDate], [DayOfMonth], [DaySuffix], [DayName], [DayOfWeek], [DayOfWeekInMonth], [DayOfWeekInYear], [DayOfQuarter], [DayOfYear], [WeekOfMonth], [WeekOfQuarter], [WeekOfYear], [Month], [MonthName], [MonthOfQuarter], [Quarter], [QuarterName], [Year], [YearName], [MonthYear], [MMYYYY], [FirstDayOfMonth], [LastDayOfMonth], [FirstDayOfQuarter], [LastDayOfQuarter], [FirstDayOfYear], [LastDayOfYear], [Season], [Semester], [IsHoliday], [HolidayName]) VALUES 
(19000101, CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'01/01/1900', N'1', N'1st', N'Sunday', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'January', N'1', N'1', N'Quarter 1', N'2012', N'CY 1900', N'Jan-1900  ', N'012012', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-31' AS Date), CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), N'Summer Season:From September To February', N'First Semester:From January To June', NULL, N'0')

DECLARE @StartDate DATETIME = '01/01/2000' --Starting value of Date Range
DECLARE @EndDate DATETIME = '12/31/2035' --End Value of Date Range

--Temporary Variables To Hold the Values During Processing of Each Date of Year
DECLARE
    @DayOfWeekInMonth INT,
    @DayOfWeekInYear INT,
    @DayOfQuarter INT,
    @WeekOfMonth INT,
    @CurrentYear INT,
    @CurrentMonth INT,
    @CurrentQuarter INT

/*Table Data type to store the day of week count for the month and year*/
DECLARE @DayOfWeek TABLE
(
    DOW INT,
    MonthCount INT,
    QuarterCount INT,
    YearCount INT
)

INSERT INTO @DayOfWeek VALUES (1, 0, 0, 0)
INSERT INTO @DayOfWeek VALUES (2, 0, 0, 0)
INSERT INTO @DayOfWeek VALUES (3, 0, 0, 0)
INSERT INTO @DayOfWeek VALUES (4, 0, 0, 0)
INSERT INTO @DayOfWeek VALUES (5, 0, 0, 0)
INSERT INTO @DayOfWeek VALUES (6, 0, 0, 0)
INSERT INTO @DayOfWeek VALUES (7, 0, 0, 0)

--Extract and assign various parts of Values from Current Date to Variable

DECLARE @CurrentDate AS DATETIME = @StartDate
SET @CurrentMonth = DATEPART(MM, @CurrentDate)
SET @CurrentYear = DATEPART(YY, @CurrentDate)
SET @CurrentQuarter = DATEPART(QQ, @CurrentDate)

/********************************************************************************************/
--Proceed only if Start Date(Current date) is less than End date you specified above

WHILE @CurrentDate < @EndDate
/*Begin day of week logic*/
BEGIN
    /*Check for Change in Month of the Current date if Month changed then 
    Change variable value*/
    IF @CurrentMonth != DATEPART(MM, @CurrentDate) 
    BEGIN
        UPDATE @DayOfWeek
        SET [MonthCount] = 0
        SET @CurrentMonth = DATEPART(MM, @CurrentDate)
    END

    /* Check for Change in Quarter of the Current date if Quarter changed then change 
        Variable value*/
    IF @CurrentQuarter != DATEPART(QQ, @CurrentDate)
    BEGIN
        UPDATE @DayOfWeek
        SET [QuarterCount] = 0
        SET @CurrentQuarter = DATEPART(QQ, @CurrentDate)
    END

    /* Check for Change in Year of the Current date if Year changed then change 
        Variable value*/
    IF @CurrentYear != DATEPART(YY, @CurrentDate)
    BEGIN
        UPDATE @DayOfWeek
        SET YearCount = 0
        SET @CurrentYear = DATEPART(YY, @CurrentDate)
    END

     --Set values in table data type created above from variables
    UPDATE @DayOfWeek
    SET 
        MonthCount = MonthCount + 1,
        QuarterCount = QuarterCount + 1,
        YearCount = YearCount + 1
    WHERE DOW = DATEPART(DW, @CurrentDate)

    SELECT
        @DayOfWeekInMonth = MonthCount,
        @DayOfQuarter = QuarterCount,
        @DayOfWeekInYear = YearCount
    FROM @DayOfWeek
    WHERE DOW = DATEPART(DW, @CurrentDate)
    
/*End day of week logic*/


/* Populate Your Dimension Table with values*/
    
    INSERT INTO DimDate
    SELECT
        
        CONVERT (char(8),@CurrentDate,112) as 'DateKey',
        @CurrentDate AS 'Date',
        CONVERT (char(10),@CurrentDate,101) as 'FullDate',
        DATEPART(DD, @CurrentDate) AS 'DayOfMonth',
        --Apply Suffix values like 1st, 2nd 3rd etc..
        CASE 
            WHEN DATEPART(DD,@CurrentDate) IN (11,12,13) THEN CAST(DATEPART(DD,@CurrentDate) AS VARCHAR) + 'th'
            WHEN RIGHT(DATEPART(DD,@CurrentDate),1) = 1 THEN CAST(DATEPART(DD,@CurrentDate) AS VARCHAR) + 'st'
            WHEN RIGHT(DATEPART(DD,@CurrentDate),1) = 2 THEN CAST(DATEPART(DD,@CurrentDate) AS VARCHAR) + 'nd'
            WHEN RIGHT(DATEPART(DD,@CurrentDate),1) = 3 THEN CAST(DATEPART(DD,@CurrentDate) AS VARCHAR) + 'rd'
            ELSE CAST(DATEPART(DD,@CurrentDate) AS VARCHAR) + 'th' 
        END AS 'DaySuffix',
        
        DATENAME(DW, @CurrentDate) AS 'DayName',
        DATEPART(DW, @CurrentDate) AS 'DayOfWeek',
        @DayOfWeekInMonth AS 'DayOfWeekInMonth',
        @DayOfWeekInYear AS 'DayOfWeekInYear',
        @DayOfQuarter AS 'DayOfQuarter',
        DATEPART(DY, @CurrentDate) AS 'DayOfYear',
        DATEPART(WW, @CurrentDate) + 1 - DATEPART(WW, CONVERT(VARCHAR, DATEPART(MM, @CurrentDate)) + '/1/' + CONVERT(VARCHAR, DATEPART(YY, @CurrentDate))) AS 'WeekOfMonth',
        (DATEDIFF(DD, DATEADD(QQ, DATEDIFF(QQ, 0, @CurrentDate), 0), @CurrentDate) / 7) + 1 AS 'WeekOfQuarter',
        DATEPART(WW, @CurrentDate) AS 'WeekOfYear',
        DATEPART(MM, @CurrentDate) AS 'Month',
        DATENAME(MM, @CurrentDate) AS 'MonthName',
        CASE
            WHEN DATEPART(MM, @CurrentDate) IN (1, 4, 7, 10) THEN 1
            WHEN DATEPART(MM, @CurrentDate) IN (2, 5, 8, 11) THEN 2
            WHEN DATEPART(MM, @CurrentDate) IN (3, 6, 9, 12) THEN 3
        END AS 'MonthOfQuarter',
        DATEPART(QQ, @CurrentDate) AS 'Quarter',
        CASE DATEPART(QQ, @CurrentDate)
            WHEN 1 THEN N'Quarter 1'
            WHEN 2 THEN N'Quarter 2'
            WHEN 3 THEN N'Quarter 3'
            WHEN 4 THEN N'Quarter 4'
        END AS 'QuarterName',
        DATEPART(YEAR, @CurrentDate) AS 'Year',
        'CY ' + CONVERT(VARCHAR, DATEPART(YEAR, @CurrentDate)) AS 'YearName',
        LEFT(DATENAME(MM, @CurrentDate), 3) + '-' + CONVERT(VARCHAR, DATEPART(YY, @CurrentDate)) AS 'MonthYear',
        RIGHT('0' + CONVERT(VARCHAR, DATEPART(MM, @CurrentDate)),2) + CONVERT(VARCHAR, DATEPART(YY, @CurrentDate)) AS 'MMYYYY',
        CONVERT(DATETIME, CONVERT(DATE, DATEADD(DD, - (DATEPART(DD, @CurrentDate) - 1), @CurrentDate))) AS 'FirstDayOfMonth',
        CONVERT(DATETIME, CONVERT(DATE, DATEADD(DD, - (DATEPART(DD, (DATEADD(MM, 1, @CurrentDate)))), DATEADD(MM, 1, @CurrentDate)))) AS 'LastDayOfMonth',
        DATEADD(QQ, DATEDIFF(QQ, 0, @CurrentDate), 0) AS 'FirstDayOfQuarter',
        DATEADD(QQ, DATEDIFF(QQ, -1, @CurrentDate), -1) AS 'LastDayOfQuarter',
        CONVERT(DATETIME, '01/01/' + CONVERT(VARCHAR, DATEPART(YY, @CurrentDate))) AS 'FirstDayOfYear',
        CONVERT(DATETIME, '12/31/' + CONVERT(VARCHAR, DATEPART(YY, @CurrentDate))) AS 'LastDayOfYear',
		CASE
            WHEN DATEPART(MM, @CurrentDate) IN (3, 4, 5, 6, 7, 8) THEN 'Winter Season:From March To August'
            WHEN DATEPART(MM, @CurrentDate) IN (9,10,11,12, 1, 2) THEN 'Summer Season:From September To February'

        END AS 'Season',
		CASE
            WHEN DATEPART(MM, @CurrentDate) IN (1,2,3, 4, 5, 6) THEN 'First Semester:From January To June'
            WHEN DATEPART(MM, @CurrentDate) IN (7,8,9,10,11,12) THEN 'Second Semester:From July To December'

        END AS 'Semester',
        NULL AS 'IsHoliday',
        CASE DATEPART(DW, @CurrentDate)
            WHEN 1 THEN 0
            WHEN 2 THEN 1
            WHEN 3 THEN 1
            WHEN 4 THEN 1
            WHEN 5 THEN 1
            WHEN 6 THEN 1
            WHEN 7 THEN 0
        END AS 'IsWeekday'
      --  NULL AS 'HolidayName'

    SET @CurrentDate = DATEADD(DD, 1, @CurrentDate)
END
        
----============================================================================
---- Step 3.
---- Update Values of Holiday as per USA Govt. Declaration for National Holiday.
----============================================================================

--/*Update HOLIDAY Field of USA In dimension*/
--    /* New Years Day - January 1 */
--    UPDATE DimDate
--        SET HolidayName = 'New Year''s Day'
--    WHERE [Month] = 1 AND [DayOfMonth] = 1

--    /* Martin Luther King, Jr. Day - Third Monday in January starting in 1983 */
--    UPDATE DimDate
--        SET HolidayName = 'Martin Luther King, Jr. Day'
--    WHERE
--        [Month] = 1 AND
--        [DayOfWeek] = 'Monday' AND
--        [Year] >= 1983 AND
--        DayOfWeekInMonth = 3

--    /* Valentine's Day - February 14 */
--    UPDATE DimDate
--        SET HolidayName = 'Valentine''s Day'
--    WHERE
--        [Month] = 2 AND
--        [DayOfMonth] = 14

--    /* President's Day - Third Monday in February */
--    UPDATE DimDate
--        SET HolidayName = 'President''s Day'
--    WHERE
--        [Month] = 2 AND
--        [DayOfWeek] = 'Monday' AND
--        [DayOfWeekInMonth] = 3

--    /* Saint Patrick's Day */
--    UPDATE DimDate
--        SET HolidayName = 'Saint Patrick''s Day'
--    WHERE
--        [Month] = 3 AND
--        [DayOfMonth] = 17

--    /* Memorial Day - Last Monday in May */
--    UPDATE DimDate
--        SET HolidayName = 'Memorial Day'
--    FROM DimDate
--    WHERE DateKey IN 
--    (
--        SELECT
--            MAX(DateKey)
--        FROM DimDate
--        WHERE
--            [MonthName] = 'May' AND
--            [DayOfWeek] = 'Monday'
--        GROUP BY
--            [Year],
--            [Month]
--    )

--    /* Mother's Day - Second Sunday of May */
--    UPDATE DimDate
--        SET HolidayName = 'Mother''s Day'
--    WHERE
--        [Month] = 5 AND
--        [DayOfWeek] = 'Sunday' AND
--        [DayOfWeekInMonth] = 2

--    /* Father's Day - Third Sunday of June */
--    UPDATE DimDate
--        SET HolidayName = 'Father''s Day'
--    WHERE
--        [Month] = 6 AND
--        [DayOfWeek] = 'Sunday' AND
--        [DayOfWeekInMonth] = 3

--    /* Independence Day */
--    UPDATE DimDate
--        SET HolidayName = 'Independance Day'
--    WHERE [Month] = 7 AND [DayOfMonth] = 4

--    /* Labor Day - First Monday in September */
--    UPDATE DimDate
--        SET HolidayName = 'Labor Day'
--    FROM DimDate
--    WHERE DateKey IN 
--    (
--        SELECT
--            MIN(DateKey)
--        FROM DimDate
--        WHERE
--            [MonthName] = 'September' AND
--            [DayOfWeek] = 'Monday'
--        GROUP BY
--            [Year],
--            [Month]
--    )

--    /* Columbus Day - Second MONDAY in October */
--    UPDATE DimDate
--        SET HolidayName = 'Columbus Day'
--    WHERE
--        [Month] = 10 AND
--        [DayOfWeek] = 'Monday' AND
--        [DayOfWeekInMonth] = 2

--    /* Halloween - 10/31 */
--    UPDATE DimDate
--        SET HolidayName = 'Halloween'
--    WHERE
--        [Month] = 10 AND
--        [DayOfMonth] = 31

--    /* Veterans Day - November 11 */
--    UPDATE DimDate
--        SET HolidayName = 'Veterans Day'
--    WHERE
--        [Month] = 11 AND
--        [DayOfMonth] = 11
    
--    /* Thanksgiving - Fourth THURSDAY in November */
--    UPDATE DimDate
--        SET HolidayName = 'Thanksgiving Day'
--    WHERE
--        [Month] = 11 AND
--        [DayOfWeek] = 'Thursday' AND
--        [DayOfWeekInMonth] = 4

--    /* Christmas */
--    UPDATE DimDate
--        SET HolidayName = 'Christmas Day'
--    WHERE [Month] = 12 AND
--          [DayOfMonth]  = 25
    
--    /* Election Day - The first Tuesday after the first Monday in November */
--    BEGIN
--    DECLARE @Holidays TABLE
--    (
--        [ID] INT IDENTITY(1,1),
--        [DateID] INT,
--        [Week] TINYINT,
--        [Year] CHAR(4),
--        [Day] CHAR(2)
--    )

--        INSERT INTO @Holidays([DateID], [Year], [Day])
--            SELECT
--                [DateKey],
--                [Year],
--                [DayOfMonth] 
--            FROM DimDate
--            WHERE
--                [Month] = 11 AND 
--                [DayOfWeek] = 'Monday'
--            ORDER BY
--                [Year],
--                [DayOfMonth]

--        DECLARE @CNTR INT,
--                @POS INT,
--                @STARTYEAR INT,
--                @ENDYEAR INT,
--                @MINDAY INT

--        SELECT @CURRENTYEAR = MIN([Year])
--             , @STARTYEAR = MIN([Year])
--             , @ENDYEAR = MAX([Year])
--        FROM @Holidays

--        WHILE @CURRENTYEAR <= @ENDYEAR
--        BEGIN
--            SELECT @CNTR = COUNT([Year])
--            FROM @Holidays
--            WHERE [Year] = @CURRENTYEAR

--            SET @POS = 1

--            WHILE @POS <= @CNTR
--            BEGIN
--                SELECT @MINDAY = MIN(DAY)
--                FROM @Holidays
--                WHERE
--                    [Year] = @CURRENTYEAR AND
--                    [Week] IS NULL

--                UPDATE @Holidays
--                    SET [Week] = @POS
--                WHERE
--                    [Year] = @CURRENTYEAR AND
--                    [Day] = @MINDAY

--                SELECT @POS = @POS + 1
--            END

--            SELECT @CURRENTYEAR = @CURRENTYEAR + 1
--        END

--        UPDATE DimDate
--            SET HolidayName  = 'Election Day'
--        FROM DimDate DT
--            JOIN @Holidays HL ON (HL.DateID + 1) = DT.DateKey
--        WHERE
--            [Week] = 1
--    END
--    --set flag for USA holidays in Dimension
--    UPDATE DimDate
--        SET IsHoliday = CASE WHEN HolidayName IS NULL THEN 0
--                                WHEN HolidayName IS NOT NULL THEN 1 END