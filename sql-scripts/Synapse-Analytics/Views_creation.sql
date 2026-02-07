USE gold_db
GO

CREATE OR ALTER PROC CreateSQLServerView_gold @ViewName NVARCHAR(100)
AS
BEGIN
	DECLARE @statement VARCHAR(MAX)
	SET @statement = N'create or alter view ' + @ViewName +' as
		select
		*
		from
			openrowset (
				bulk ''https://adworksadlsjc.dfs.core.windows.net/gold/' + @ViewName + '/'',
				format = ''DELTA''
			) as [result]'
	EXEC (@statement)
END
GO