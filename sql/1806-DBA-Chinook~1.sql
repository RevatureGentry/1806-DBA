--Write SQL Queries that inserts 5 records into the Employee table
INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) VALUES (9, 'Neutron', 'Jimmy', 'Sales Support Agent', 2, TO_DATE('1962-2-18 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2002-8-14 00:00:00','yyyy-mm-dd hh24:mi:ss'), '11120 JRetro Ave NW', 'Retroville', 'CO', 'United States', '80011', '+1 (780) 428-9483', '+1 (780) 438-3457', 'jimmyn@chinookcorp.com');
INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) VALUES (10, 'Squarepants', 'Spongebob', 'Sales Support Agent', 2, TO_DATE('1958-12-8 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2002-5-1 00:00:00','yyyy-mm-dd hh24:mi:ss'), '825 8 Ave SW', 'Bikini Bottom', 'FL', 'United States', '32803', '+1 (403) 262-3444', '+1 (443) 262-3322', 'spongebobs@chinookcorp.com');
INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) VALUES (11, 'Doo', 'Scooby', 'Sales Support Agent', 2, TO_DATE('1973-8-29 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2002-4-1 00:00:00','yyyy-mm-dd hh24:mi:ss'), '1111 6 Ave SW', 'Bikini Bottom', 'FL', 'United States', '32803', '+1 (403) 262-3443', '+1 (413) 282-6712', 'scoobyd@chinookcorp.com');
INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) VALUES (12, 'Doo', 'Scrappy', 'Sales Support Agent', 2, TO_DATE('1947-9-19 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2003-5-3 00:00:00','yyyy-mm-dd hh24:mi:ss'), '683 10 Street SW', 'Reston', 'VA', 'United States', '20120', '+1 (403) 263-4423', '+1 (4113) 263-4299', 'scrappyd@chinookcorp.com');
INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) VALUES (13, 'Tentacles', 'Squidward', 'Sales Support Agent', 2, TO_DATE('1965-3-3 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2003-10-17 00:00:00','yyyy-mm-dd hh24:mi:ss'), '7727B 41 Ave', 'Bikini Bottom', 'FL', 'United States', '32803', '1 (780) 846-9987', '1 (780) 836-9553', 'squidwardt@chinookcorp.com');

--Write SQL Queries that inserts 10 records into the Customer table
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, SupportRepId) VALUES (60, 'Tommy', 'Pickles', '541 Del Medio Avenue', 'Rugrats', 'CA', 'USA', '94040-111', '+1 (680) 644-3358', 'tpickles@comcast.com', 4);
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, SupportRepId) VALUES (61, 'Patrick', 'Star', '801 W 4th Street', 'Bikini Bottom', 'NV', 'USA', '89503', '+1 (775) 223-7775', 'pstar@hotmail.com', 5);
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, SupportRepId) VALUES (62, 'Amanda', 'Jones', '120 S Orange Ave', 'Orlando', 'FL', 'USA', '32801', '+1 (407) 999-7878', 'ajones@gmail.com', 4);
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, SupportRepId) VALUES (63, 'Calvin', 'Klein', '69 Salem Street', 'Boston', 'MA', 'USA', '2113', '+1 (617) 522-1123', 'ck@yahoo.com', 4);
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, SupportRepId) VALUES (64, 'John', 'Doe', '162 E Superior Street', 'Chicago', 'IL', 'USA', '60611', '+1 (312) 342-3232', 'johnd@gmail.com', 3);
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, SupportRepId) VALUES (65, 'Frank', 'Sinatra', '319 N. Frances Street', 'Madison', 'WI', 'USA', '53703', '+1 (650) 257-0597', 'sinatraf@yahoo.com', 5);
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, SupportRepId) VALUES (66, 'Bruce', 'Lee', '2211 W Berry Street', 'Fort Worth', 'TX', 'USA', '76110', '+1 (817) 994-7272', 'blee@hotmail.com', 4);
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, SupportRepId) VALUES (67, 'Jackie', 'Chan', '1033 N Park Ave', 'Tucson', 'AZ', 'USA', '85719', '+1 (520) 622-4230', 'chanj@aol.com', 4);
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, SupportRepId) VALUES (68, 'Will', 'Smith', '302 S 700 E', 'Salt Lake City', 'UT', 'USA', '84102', '+1 (801) 431-7272', 'wsmith@gmail.com', 5);
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, SupportRepId) VALUES (69, 'Antonio', 'Brown', '796 Dundas Street West', 'Toronto', 'ON', 'Canada', 'M6J 1V1', '+1 (416) 363-8118', 'abrown@shaw.ca', 3);

--Write SQL Queries that inserts 2 new genres
INSERT INTO Genre
(GENREID, NAME)
VALUES
(26, 'Mumble Rap');

INSERT INTO Genre
(GENREID, NAME)
VALUES
(27, 'Trip-Hop);




SELECT * FROM chinook.album;