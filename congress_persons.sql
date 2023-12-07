create Table congress_persons
(id number(3) NOT NULL Primary key,
	full_name char(20) Not NULL,
    district_represented char(20) Not Null,
    start_date DATE DEFAULT SYSDATE NOT NULL ,
    political_party char(20) CHECK (political_party IN ('Democratic', 'Republican', 'Libertarian','other')),
    state_represented char(20) NOT NULL
)
