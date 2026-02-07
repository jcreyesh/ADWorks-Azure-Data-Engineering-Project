create procedure usp_write_watermark_cust @LastCustomer int, @TableName varchar(50)
as
begin
update dbo.customer_watermarktable
set WatermarkValue = @LastCustomer
where TableName = @TableName
end