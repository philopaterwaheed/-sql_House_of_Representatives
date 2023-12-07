CREATE TABLE us_states (
    us_state varchar(20) PRIMARY KEY,
    region varchar(20) CHECK (region IN ('Northeast', 'Midwest', 'Southeast', 'west')))
) 
