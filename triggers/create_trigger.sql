create or replace trigger "COMMENTS_T1" 
AFTER  
insert on "COMMENTS" 
for each row  
declare pragma autonomous_transaction;  
begin  
if :new.COMMENT_ID = 1701 then  
insert into COMMENTS(COMMENT_ID, PRODUCT_ID, RATING) 
values (1702, :new.PRODUCT_ID + 1, :new.Rating - 1); 
commit; 
END if; 
end; 