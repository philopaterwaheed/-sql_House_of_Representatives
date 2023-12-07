create Table votes
(
    vote_id number (4) not null primary key  , 
    status char(3) CHECK (status IN ('yes','no')) not null,
    bill char (420)  not null  
    
);
