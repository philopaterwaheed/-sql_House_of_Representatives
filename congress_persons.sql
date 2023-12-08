CREATE TABLE congress_persons (
	room_number INT NOT NULL Primary key,
	full_name VARCHAR(100) NOT NULL,
	district VARCHAR(5) NOT Null,
	start_date DATE DEFAULT SYSDATE NOT NULL,
	party VARCHAR(1) DEFAULT 'O' CHECK (party IN ('D', 'R', 'L', 'O')),
	state_represented VARCHAR(50),
	FOREIGN KEY (state_represented) REFERENCES us_states(us_state)
);
