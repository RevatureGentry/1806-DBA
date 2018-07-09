-- Write SQL Queries that inserts 5 records into the Employee table
INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) VALUES (9, 'Neutron', 'Jimmy', 'Sales Support Agent', 2, TO_DATE('1962-2-18 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2002-8-14 00:00:00','yyyy-mm-dd hh24:mi:ss'), '11120 JRetro Ave NW', 'Retroville', 'CO', 'United States', '80011', '+1 (780) 428-9483', '+1 (780) 438-3457', 'jimmyn@chinookcorp.com');
INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) VALUES (10, 'Squarepants', 'Spongebob', 'Sales Support Agent', 2, TO_DATE('1958-12-8 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2002-5-1 00:00:00','yyyy-mm-dd hh24:mi:ss'), '825 8 Ave SW', 'Bikini Bottom', 'FL', 'United States', '32803', '+1 (403) 262-3444', '+1 (443) 262-3322', 'spongebobs@chinookcorp.com');
INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) VALUES (11, 'Doo', 'Scooby', 'Sales Support Agent', 2, TO_DATE('1973-8-29 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2002-4-1 00:00:00','yyyy-mm-dd hh24:mi:ss'), '1111 6 Ave SW', 'Bikini Bottom', 'FL', 'United States', '32803', '+1 (403) 262-3443', '+1 (413) 282-6712', 'scoobyd@chinookcorp.com');
INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) VALUES (12, 'Doo', 'Scrappy', 'Sales Support Agent', 2, TO_DATE('1947-9-19 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2003-5-3 00:00:00','yyyy-mm-dd hh24:mi:ss'), '683 10 Street SW', 'Reston', 'VA', 'United States', '20120', '+1 (403) 263-4423', '+1 (4113) 263-4299', 'scrappyd@chinookcorp.com');
INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) VALUES (13, 'Tentacles', 'Squidward', 'Sales Support Agent', 2, TO_DATE('1965-3-3 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2003-10-17 00:00:00','yyyy-mm-dd hh24:mi:ss'), '7727B 41 Ave', 'Bikini Bottom', 'FL', 'United States', '32803', '1 (780) 846-9987', '1 (780) 836-9553', 'squidwardt@chinookcorp.com');

-- Write SQL Queries that inserts 10 records into the Customer table
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
INSERT INTO Genre (GENREID, NAME) VALUES (26, 'Mumble Rap');
INSERT INTO Genre (GENREID, NAME) VALUES (27, 'Trip-Hop');

--Write SQL Queries that insert 3 of your favorite albums
INSERT INTO Artist (ArtistID, Name) VALUES (276, 'Nas');
INSERT INTO Artist (ArtistID, Name) VALUES (277, 'Boogie');
INSERT INTO Artist (ArtistID, Name) VALUES (278, 'Dave East');
INSERT INTO Album (AlbumID, Title, ArtistID) VALUES (348, 'Illmatic', 276);
INSERT INTO Album (AlbumID, Title, ArtistID) VALUES (349, 'The Climb', 277);
INSERT INTO Album (AlbumID, Title, ArtistID) VALUES (350, 'Paranoia', 278);

--Write a SQL Query that contains the names of all tracks that are longer than 6 minutes
SELECT Name, Milliseconds
FROM Track
WHERE Milliseconds > 360000;

--Write a SQL Query to find the biggest song (which takes up the most space)
SELECT *
FROM Track
WHERE(
    SELECT MAX(BYTES)
    FROM Track
    )= BYTES;

--Write a SQL Query that contains the titles of all albums with tracks longer than 6 minutes in them
SELECT Title
FROM Album a
INNER JOIN Track t
ON a.albumid = t.ALBUMID
WHERE Milliseconds > 360000;

--Write a SQL Query that contains the albumId and number of songs in the album
SELECT AlbumID, Count(AlbumID) as NumberOfSongs
FROM Track
GROUP BY AlbumID;

--Write a SQL query that contains artist's names and the number of tracks they have produced (assume an artist produced a track if it appears in one of their albums)
SELECT ar.Name, COUNT(t.name)
FROM Artist ar
INNER JOIN Album al
ON ar.artistid = al.artistid
INNER JOIN Track t
ON al.albumid = t.albumid
GROUP BY ar.Name;

--Write a SQL Query that returns the most purchased media type
SELECT m.Name, COUNT(m.Name) AS TOTAL_PURCHASED
FROM Mediatype m
INNER JOIN Track t
ON m.Mediatypeid = t.mediatypeid
INNER JOIN Invoiceline i
ON t.trackid = i.trackid
GROUP BY m.Name
HAVING COUNT(m.name)=(
    SELECT MAX(total)
    FROM (
        SELECT m.name, COUNT(m.Name) total
        FROM Mediatype m
        INNER JOIN Track t
        ON m.Mediatypeid = t.mediatypeid
        INNER JOIN Invoiceline i
        ON t.trackid = i.trackid
        GROUP BY m.Name));

--Write a SQL Query showing customers not in the US
SELECT *
FROM Customer
WHERE Country <> 'USA';

--Write a SQL Query showing a unique list of billing countries on the Invoice table
SELECT DISTINCT BillingCountry
FROM Invoice;

--Write a SQL Query that shows the Invoice Total, Customer Name, Country, and Sales agent for all invoices and customers
SELECT i.Total, c.FirstName||' '||c.LastName as CustomerName, c.Country, c.SupportRepID
FROM Customer c
INNER JOIN Invoice i
ON c.CustomerID = i.CustomerID;

--Write a SQL Query that shows all Tracks, but displays no IDs. Should also include the Album name, Media Type, and Genre
SELECT t.name, al.title, mt.name, g.name
FROM Track t
INNER JOIN Album al
ON t.albumid = al.albumid
INNER JOIN MediaType mt
ON t.MediaTypeID = mt.MediaTypeID
INNER JOIN Genre g
ON t.genreid = g.genreid;

--Write a SQL Query that returns the Top 40 Songs for 2013
SELECT *
FROM (
    SELECT t.name, COUNT(il.invoiceid) AS Popularity
    FROM track t
    INNER JOIN invoiceline il
    ON t.trackid = il.trackid
    INNER JOIN invoice i
    ON il.invoiceid = i.invoiceid
    WHERE '31-DEC-2012' < i.invoicedate AND i.invoicedate < '01-JAN-2014'
    GROUP BY t.name, il.invoiceid
    ORDER BY COUNT(il.invoiceid) desc)
WHERE ROWNUM < 41;

-- Write a SQL Query that shows which sales agent made the most in sales overall
SELECT e.firstname||' '||e.lastname AS FULL_NAME, SUM(il.unitprice) AS TOTAL_SALES
FROM employee e
INNER JOIN customer c ON e.employeeid = c.supportrepid
INNER JOIN invoice i ON c.customerid = i.customerid
INNER JOIN invoiceline il ON i.invoiceid = il.invoiceid
GROUP BY e.firstname, e.lastname
HAVING SUM(il.unitprice) = (
    SELECT MAX(sales)
    FROM(
        SELECT e.employeeid, SUM(il.unitprice) sales
        FROM employee e
        INNER JOIN customer c ON e.employeeid = c.supportrepid
        INNER JOIN invoice i ON c.customerid = i.customerid
        INNER JOIN invoiceline il ON i.invoiceid = il.invoiceid
        GROUP BY e.employeeid));

-- Write a SQL Query that shows the top 3 best selling artists
SELECT * FROM (
SELECT ar.name, SUM(il.unitprice) AS TOTALSALES
FROM artist ar
INNER JOIN album al ON ar.artistid = al.artistid
INNER JOIN track t ON al.albumid = t.albumid
INNER JOIN invoiceline il ON t.trackid = il.trackid
GROUP BY ar.name
ORDER BY SUM(il.unitprice) DESC)
WHERE ROWNUM < 4;

--Write a SQL Query that returns which albums have no Heavy Metal tracks
SELECT al.title, g.name
FROM album al
INNER JOIN track t ON al.albumid = t.trackid
INNER JOIN genre g ON t.genreid = g.genreid
WHERE g.name <> 'Metal';

--Write a SQL Query to find the the managers of employees supporting Brazilian customers
SELECT DISTINCT e.firstname||' '||e.lastname as FULL_NAME
FROM employee e, (
    SELECT DISTINCT emp.employeeid, emp.firstname, emp.lastname, emp.reportsto, c.country
    FROM employee emp
    INNER JOIN customer c
    ON emp.employeeid = c.supportrepid
    WHERE c.country = 'Brazil') emp
WHERE e.employeeid = emp.reportsto;

--Write a SQL Query that determines which artist has the most songs in each playlist
--Write a SQL Query that determines what song(s) appear in the most playlists
--Write a SQL Query that determines the 5th highest grossing song in 2009, 2010, 2011, 2012, and 2013
--Write a SQL Query that determines the most downloaded genre by country
--Write a SQL Query that determines the genres each salesperson contributes to most
