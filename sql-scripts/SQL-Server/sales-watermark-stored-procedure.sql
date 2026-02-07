create procedure usp_write_watermark @LastModifiedtime datetime, @TableName varchar(50)
as
begin
update dbo.sales_watermarktable
set WatermarkValue = @LastModifiedtime
where TableName = @TableName
end