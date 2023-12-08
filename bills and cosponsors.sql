CREATE TABLE bills (
    bill_name char (10)  NOT NULL PRIMARY KEY,
    vote_date DATE NOT NULL,
    passed char(3) CHECK (passed IN ('yes','no')) NOT NULL
);

CREATE TABLE cosponsors (
	cosponsor_number INT PRIMARY KEY,
    bill_name char (10)  NOT NULL,
    cosponsor_name VARCHAR(100),
    FOREIGN KEY (bill_name) REFERENCES bills(bill_name)
);
