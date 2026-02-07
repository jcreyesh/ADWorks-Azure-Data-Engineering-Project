-- Cleansed Dim_Date_Table --
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  [EnglishDayNameOfWeek] AS Day, 
  [WeekNumberOfYear] AS WeekNumber, 
  [EnglishMonthName] AS Month, 
  LEFT([EnglishMonthName], 3) AS MonthShort,	-- Take 3 characters from the left side of [EnglishMonthName] 
  [MonthNumberOfYear] AS MonthNumber, 
  [CalendarQuarter] AS Quater, 
  [CalendarYear] AS Year --,[CalendarSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
--WHERE CalendarYear >= 2019;