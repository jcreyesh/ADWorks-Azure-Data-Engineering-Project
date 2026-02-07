update dbo.FactInternetSalesAdded
set 
	OrderDate = dateadd(month, 1, OrderDate),
	DueDate = dateadd(month, 1, DueDate),
	ShipDate = dateadd(month, 1, ShipDate)