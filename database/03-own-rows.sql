USE SliceDB;

INSERT INTO tblCustomer (CID, FirstName, LastName, Email, City, DateJoined)
VALUES (1, 'Rishabh', 'Bhutani', 'a00244270@mycambrian.ca', 'Sudbury', '2026-10-14');

INSERT INTO tblRating (RID, CID, PID, Stars, RatedOn, Remark)
VALUES (3025, 1, 1, 5, '2026-10-14', 'Delicious pizza');