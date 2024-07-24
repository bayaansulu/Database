create or replace trigger "PRODUCT_INFO_T1" 
AFTER 
update on "PRODUCT_INFO" 
for each row 
declare  
pragma autonomous_transaction; 
begin 
if(:NEW.PRODUCT_ID = 400 ) then 
UPDATE PRODUCT_INFO SET PR_PRICE = PR_PRICE 
(:OLD.PR_PRICE - :NEW.PR_PRICE) WHERE PRODUCT_ID = 405; 
commit; 
end if; 
end;