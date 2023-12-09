CREATE TABLE us_states (
    us_state varchar(50) PRIMARY KEY,
    region varchar(20) CHECK (region IN ('Northeast', 'Midwest', 'Southeast', 'Southwest', 'West')) NOT NULL
);
