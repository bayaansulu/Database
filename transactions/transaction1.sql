START TRANSACTION; 
SELECT  
@Product_ID:=MAX(Product_ID) + 1 
FROM product; 
INSERT INTO product (Product_ID, Product_name, Company_ID, 
Seller_ID) 
VALUES (@Product_ID, 'Iphone7', 2 , 205); 
INSERT INTO product_info (Product_ID, Pr_quantity, Pr_price) 
VALUES (@Product_ID, 200, 120000); 
COMMIT; 
SELECT a.Product_ID, Product_name, 
Company_ID, Seller_ID, 
Pr_quantity, Pr_price 
FROM product a 
INNER JOIN 
product_info b ON a.Product_ID = b.Product_ID 
WHERE 
a.Product_ID = 430; 