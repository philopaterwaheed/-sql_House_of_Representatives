create Table congress_persons
(office_room varchar(10) NOT NULL Primary key UNIQUE,
	name char(20) NOT NULL,
    district_represented char(5) NOT Null,
    start_date DATE DEFAULT SYSDATE NOT NULL ,
    political_party varchar(1) CHECK (political_party IN ('D', 'R', 'L', 'O')),
    state_represented char(20) NOT NULL
)
