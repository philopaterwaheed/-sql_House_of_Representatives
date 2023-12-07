create Table bills
(
    sponser_id number (3) not null primary key  , 
    bill_name char (420)  not null  ,
    vote_date DATE DEFAULT SYSDATE NOT NULL ,
    passed char(3) CHECK (passed IN ('yes','no')) not null
    
    
);
