-- States tables
CREATE TABLE us_states (
    us_state varchar(50) PRIMARY KEY,
    region varchar(20) CHECK (region IN ('Northeast', 'Midwest', 'Southeast', 'Southwest', 'West')) NOT NULL
);

-- Congress persons table
CREATE TABLE congress_persons (
	room_number INT NOT NULL Primary key,
	full_name VARCHAR(100) NOT NULL,
	district VARCHAR(5) NOT Null,
	start_date DATE DEFAULT SYSDATE NOT NULL,
	party VARCHAR(1) DEFAULT 'O' CHECK (party IN ('D', 'R', 'L', 'O')),
	state_represented VARCHAR(50),
	FOREIGN KEY (state_represented) REFERENCES us_states(us_state)
);

-- Bills table
CREATE TABLE bills (
    bill_name char (10)  NOT NULL PRIMARY KEY,
    vote_date DATE NOT NULL,
    passed char(3) CHECK (passed IN ('yes','no')) NOT NULL
);

-- Votes table to resolve the many-to-many relationship between congress_persons and bills
CREATE TABLE votes (
    room_number INT,
    bill_name CHAR(10),
    PRIMARY KEY (room_number, bill_name),
    FOREIGN KEY (room_number) REFERENCES congress_persons(room_number),
    FOREIGN KEY (bill_name) REFERENCES bills(bill_name)
);

-- Table that resolves the multivalued attribute cosponsors for bills
CREATE TABLE cosponsors (
	cosponsor_number INT PRIMARY KEY,
    bill_name char (10)  NOT NULL,
    cosponsor_name VARCHAR(100),
    FOREIGN KEY (bill_name) REFERENCES bills(bill_name)
);
