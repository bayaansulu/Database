START TRANSACTION; 
SELECT @Product_ID:=MAX(Product_ID) FROM product; 
Delete from product_info where Product_ID = @Product_ID; 
Delete from product where Product_ID = @Product_ID; 
COMMIT; 
select * from product 
select * from product_info 