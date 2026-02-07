use gold_db
go

create or alter proc CreateSQLServerView_gold @ViewName nvarchar(100)
as
begin
	declare @statement varchar(MAX)
	set @statement = N'create or alter view ' + @ViewName +' as
		select
		*
		from
			openrowset (
				bulk ''https://adworksadlsjc.dfs.core.windows.net/gold/' + @ViewName + '/'',
				format = ''DELTA''
			) AS [result]'
	exec (@statement)
end
go