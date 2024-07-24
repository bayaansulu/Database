create or replace trigger "PRODUCT_T1" 
AFTER 
delete on "PRODUCT" 
for each row 
declare  
pragma autonomous_transaction; 
begin 
if(:old.PRODUCT_NAME = 'Samsung j5' ) then 
Insert into PRODUCT(PRODUCT_ID, PRODUCT_NAME, 
COMPANY_ID, SELLER_ID) values (:old.PRODUCT_ID + 1, 
:old.PRODUCT_NAME, :old.COMPANY_ID, :old.SELLER_ID + 1); 
commit; 
end if; 
end; 