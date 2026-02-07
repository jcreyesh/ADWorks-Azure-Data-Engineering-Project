-- Cleansed FACT_InternetSales Table --
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [SalesOrderNumber], 
  [OrderDate],
  [DueDate],
  [ShipDate],
  [SalesAmount] 
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales]
ORDER BY
  OrderDateKey ASC