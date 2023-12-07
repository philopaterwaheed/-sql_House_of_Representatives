CREATE TABLE congress_persons (
    office_room varchar(10) NOT NULL Primary key,
	name char(20) NOT NULL,
    district_represented char(5) NOT Null,
    start_date DATE DEFAULT SYSDATE NOT NULL,
    political_party varchar(1) CHECK (political_party IN ('D', 'R', 'L', 'O')),
    state_represented varchar(20),
    FOREIGN KEY (state_represented) REFERENCES us_states(us_state)
);
