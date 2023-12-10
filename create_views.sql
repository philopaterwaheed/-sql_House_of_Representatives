CREATE VIEW sponsored_bills AS
SELECT c.cosponsor_name "CONGRESS PERSON", cp.room_number "CONGRESS PERSON ROOM NUMBER",
    b.bill_name "BILL SPONSORED", cp.party "CONGRESS PERSON PARTY"
FROM bills b INNER JOIN cosponsors c
ON b.bill_name = c.bill_name
INNER JOIN congress_persons cp
ON c.cosponsor_name = cp.full_name;

-- Access management
GRANT SELECT ON employee_view TO test;
REVOKE INSERT, UPDATE, DELETE ON my_table FROM test;