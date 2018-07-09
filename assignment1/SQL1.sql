-- Write SQL Queries that inserts 5 records into the Employee table
DESC employee; 
INSERT INTO employee (EMPLOYEEID, LASTNAME, FIRSTNAME, TITLE, REPORTSTO, 
BIRTHDATE, HIREDATE, ADDRESS, CITY, STATE, COUNTRY, POSTALCODE, PHONE, FAX, 
EMAIL) VALUES (9, 'Smith', 'Alex', 'IT Staff', '6',(TO_DATE('30-NOV-88', 
'dd-mm-yy')), (TO_DATE('12-NOV-02', 'dd-mm-yy')), '1234 6th St', 'Calgary', 
'AB', 'Canada', 'T5D 6T1', '+1 (780) 267-7856', '+1 (780) 267-7888', 
'alex@chinookcorp.com');
INSERT INTO employee (EMPLOYEEID, LASTNAME, FIRSTNAME, TITLE, REPORTSTO, 
BIRTHDATE, HIREDATE, ADDRESS, CITY, STATE, COUNTRY, POSTALCODE, PHONE, FAX, 
EMAIL) VALUES (10, 'Simmons', 'Ben', 'IT Staff', '6',(TO_DATE('20-JUL-96', 
'dd-mm-yy')), (TO_DATE('23-JAN-03', 'dd-mm-yy')), '2525 25th St', 'Calgary', 
'AB', 'Canada', 'T6S 7H4', '+1 (780) 432-7118', '+1 (780) 432-7176', 
'ben@chinookcorp.com');
INSERT INTO employee (EMPLOYEEID, LASTNAME, FIRSTNAME, TITLE, REPORTSTO, 
BIRTHDATE, HIREDATE, ADDRESS, CITY, STATE, COUNTRY, POSTALCODE, PHONE, FAX, 
EMAIL) VALUES (11, 'Embiid', 'Joel', 'IT Staff', '6',(TO_DATE('16-MAR-94', 
'dd-mm-yy')), (TO_DATE('11-DEC-02', 'dd-mm-yy')), '2121 21st St', 
'Edmonton', 'AB', 'Canada', 'T2E 1J5', '+1 (403) 648-8352', '+1 (403) 
648-8390', 'joel@chinookcorp.com');
INSERT INTO employee (EMPLOYEEID, LASTNAME, FIRSTNAME, TITLE, REPORTSTO, 
BIRTHDATE, HIREDATE, ADDRESS, CITY, STATE, COUNTRY, POSTALCODE, PHONE, FAX, 
EMAIL) VALUES (12, 'Redick', 'JJ', 'IT Staff', '6',(TO_DATE('24-JUN-84', 
'dd-mm-yy')), (TO_DATE('04-JUN-03', 'dd-mm-yy')), '1717 17th St', 
'Edmonton', 'AB', 'Canada', 'T1S 7J1', '+1 (403) 845-8250', '+1 (403) 
845-8288', 'jj@chinookcorp.com');
INSERT INTO employee (EMPLOYEEID, LASTNAME, FIRSTNAME, TITLE, REPORTSTO, 
BIRTHDATE, HIREDATE, ADDRESS, CITY, STATE, COUNTRY, POSTALCODE, PHONE, FAX, 
EMAIL) VALUES (13, 'Lebron', 'James', 'IT Staff', '6',(TO_DATE('30-DEC-84', 
'dd-mm-yy')), (TO_DATE('09-APR-02', 'dd-mm-yy')), '2323 23rd St', 'Calgary', 
'AB', 'Canada', 'T2L 3J1', '+1 (780) 431-3530', '+1 (780) 431-3500', 
'lebron@chinookcorp.com');

-- Write SQL Queries that inserts 10 records into the Customer table
DESC customer;
INSERT INTO customer (CUSTOMERID, FIRSTNAME, LASTNAME, COMPANY, ADDRESS, 
CITY, STATE, COUNTRY, POSTALCODE, PHONE, FAX, EMAIL, SUPPORTREPID) VALUES 
(60, 'Carson', 'Wentz', 'null', '583 Lakeview Rd', 'Philadelphia', 'PA', 
'USA', '19148', '+1 (215) 424-5280', '(null)', 'carson@yahoo.com', 4);
INSERT INTO customer (CUSTOMERID, FIRSTNAME, LASTNAME, COMPANY, ADDRESS, 
CITY, STATE, COUNTRY, POSTALCODE, PHONE, FAX, EMAIL, SUPPORTREPID) VALUES 
(61, 'Nick', 'Foles', 'null', '4309 Spring St', 'Philadelphia', 'PA', 'USA', 
'19148', '+1 (215) 523-4032', '(null)', 'nick@gmail.com', 3);
INSERT INTO customer (CUSTOMERID, FIRSTNAME, LASTNAME, COMPANY, ADDRESS, 
CITY, STATE, COUNTRY, POSTALCODE, PHONE, FAX, EMAIL, SUPPORTREPID) VALUES 
(62, 'Tom', 'Brady', 'null', '5555 Summer Lane', 'Boston', 'MA', 'USA', 
'12389', '+1 (754) 743-9679', '(null)', 'tom@yahoo.com', 4);
INSERT INTO customer (CUSTOMERID, FIRSTNAME, LASTNAME, COMPANY, ADDRESS, 
CITY, STATE, COUNTRY, POSTALCODE, PHONE, FAX, EMAIL, SUPPORTREPID) VALUES 
(63, 'Matt', 'Ryan', 'null', '397 Darien St', 'Atlanta', 'GA', 'USA', 
'17503', '+1 (538) 053-6267', '(null)', 'matt@gmail.com', 5);
INSERT INTO customer (CUSTOMERID, FIRSTNAME, LASTNAME, COMPANY, ADDRESS, 
CITY, STATE, COUNTRY, POSTALCODE, PHONE, FAX, EMAIL, SUPPORTREPID) VALUES 
(64, 'Cam', 'Newton', 'null', '6378 Wolf St', 'Charlotte', 'NC', 'USA', 
'15795', '+1 (490) 745-2681', '(null)', 'cam@yahoo.com', 5);
INSERT INTO customer (CUSTOMERID, FIRSTNAME, LASTNAME, COMPANY, ADDRESS, 
CITY, STATE, COUNTRY, POSTALCODE, PHONE, FAX, EMAIL, SUPPORTREPID) VALUES 
(65, 'Russell', 'Wilson', 'null', '390 Broad Rd', 'Seattle', 'WA', 'USA', 
'13405', '+1 (521) 513-8563', '(null)', 'russell@gmail.com', 3);
INSERT INTO customer (CUSTOMERID, FIRSTNAME, LASTNAME, COMPANY, ADDRESS, 
CITY, STATE, COUNTRY, POSTALCODE, PHONE, FAX, EMAIL, SUPPORTREPID) VALUES 
(66, 'Aaron', 'Rodgers', 'null', '3481 Ritner Blvd', 'Green Bay', 'WI', 
'USA', '10937', '+1 (853) 520-8674', '(null)', 'aaron@yahoo.com', 4);
INSERT INTO customer (CUSTOMERID, FIRSTNAME, LASTNAME, COMPANY, ADDRESS, 
CITY, STATE, COUNTRY, POSTALCODE, PHONE, FAX, EMAIL, SUPPORTREPID) VALUES 
(67, 'Drew', 'Brees', 'null', '249 2nd St', 'New Orleans', 'LA', 'USA', 
'10258', '+1 (702) 532-5932', '(null)', 'drew@gmail.com', 5);
INSERT INTO customer (CUSTOMERID, FIRSTNAME, LASTNAME, COMPANY, ADDRESS, 
CITY, STATE, COUNTRY, POSTALCODE, PHONE, FAX, EMAIL, SUPPORTREPID) VALUES 
(68, 'Joe', 'Flacco', 'null', '1820 Aramingo Ave', 'Baltimore', 'MD' , 
'USA', '12538', '+1 (740) 515-7302', '(null)', 'joe@yahoo.com', 5);
INSERT INTO customer (CUSTOMERID, FIRSTNAME, LASTNAME, COMPANY, ADDRESS, 
CITY, STATE, COUNTRY, POSTALCODE, PHONE, FAX, EMAIL, SUPPORTREPID) VALUES 
(69, 'Matthew', 'Stafford', 'null', '007 Jackson Blvd', 'Detroit', 'MI', 
'USA', '15253', '+1 (831) 525-9564', '(null)', 'matt@gmail.com', 3);

--Write SQL Queries that inserts 2 new genres
DESC genre;
INSERT INTO genre (GENREID, NAME) VALUES (26, 'Grime');
INSERT INTO genre (GENREID, NAME) VALUES (27, 'Videogames');

-- Write SQL Queries that insert 3 of your favorite albums
DESC album;
INSERT INTO album (ALBUMID, TITLE, ARTISTID) VALUES (348, '2014: Forest 
Hills Drive', 267);
INSERT INTO album (ALBUMID, TITLE, ARTISTID) VALUES (349, 'DAMN', 268);
INSERT INTO album (ALBUMID, TITLE, ARTISTID) VALUES (350, 'Illmatic', 269);

-- Write a SQL Query that contains the names of all tracks that are longer 
than 6 minutes
DESC track;
SELECT NAME, MILLISECONDS
FROM track
WHERE MILLISECONDS > 360000;

-- Write a SQL Query to find the biggest song (which takes up the most 
space)
DESC track;
SELECT *
FROM track
WHERE 
    (SELECT MAX(BYTES)
    FROM track)
    =BYTES;
    
-- Write a SQL Query that contains the titles of all albums with tracks 
longer than 6 minutes in them
DESC album;
SELECT album.title, track.milliseconds as Length
FROM album
INNER JOIN track
ON album.albumid = track.albumid 
WHERE track.milliseconds > 360000;

-- Write a SQL Query that contains the albumId and number of songs in the 
album
DESC album;
SELECT albumid, COUNT (albumid)
FROM track
GROUP BY albumid;

-- Write a SQL query that contains artist's names and the number of tracks 
they have produced (assume an artist produced a track if it appears in one 
of their albums)
SELECT artist.name, COUNT(trackid) 
FROM artist
INNER JOIN album ON artist.artistid = album.artistid
INNER JOIN track ON album.albumid = track.albumid
GROUP BY artist.name;

--Write a SQL Query that returns the most purchased media type
SELECT mediatype.name, MAX(mediatype.name) AS MostPurchased 
FROM invoiceline
INNER JOIN track ON invoiceline.trackid = track.trackid
INNER JOIN mediatype ON track.mediatypeid = mediatype.mediatypeid
GROUP BY mediatype.name
HAVING COUNT(mediatype.name)=(SELECT MAX(total)
FROM(
(SELECT mediatype.name, COUNT(mediatype.name) total 
FROM invoiceline
INNER JOIN track ON invoiceline.trackid = track.trackid
INNER JOIN mediatype ON track.mediatypeid = mediatype.mediatypeid
GROUP BY mediatype.name)));    
    
-- Write a SQL Query showing customers not in the US
SELECT *
FROM customer
WHERE country <> 'USA';

-- Write a SQL Query showing a unique list of billing countries on the 
Invoice table
SELECT DISTINCT billingcountry
FROM invoice;

-- Write a SQL Query that shows the Invoice Total, Customer Name, Country, 
and Sales agent for all invoices and customers
SELECT invoice.total AS INVOICETOTAL, customer.firstname, customer.lastname, 
customer.country, customer.supportrepid
FROM customer
INNER JOIN invoice ON customer.customerid = invoice.customerid;

-- Write a SQL Query that shows all Tracks, but displays no IDs. Should also 
include the Album name, Media Type, and Genre
SELECT track.name, album.title, mediatype.name AS MediaType, genre.name AS 
Genre
FROM track
INNER JOIN album ON album.albumid = track.albumid
INNER JOIN mediatype ON mediatype.mediatypeid = track.mediatypeid
INNER JOIN genre ON genre.genreid = track.genreid;

-- Write a SQL Query that returns the Top 40 Songs for 2013
SELECT track.name
FROM
    (SELECT track.name, COUNT(invoiceline.trackid)
    FROM track
    INNER JOIN invoiceline ON track.trackid = invoiceline.trackid
    INNER JOIN invoice ON invoiceline.invoiceid = invoice.invoiceid
    WHERE invoice.date BETWEEN TO_DATE ('01-JAN-13', 'dd-mm-yy') AND TO_DATE 
('01-JAN-14', 'dd-mm-yy')
    GROUP BY track.name);


-- Write a SQL Query that shows which sales agent made the most in sales 
overall
SELECT employee.employeeid, employee.lastname, employee.firstname, 
SUM(invoiceline.unitprice)
FROM employee
INNER JOIN customer ON employee.employeeid = customer.supportrepid
INNER JOIN invoice ON customer.customerid = invoice.customerid
INNER JOIN invoiceline ON invoice.invoiceid = invoiceline.invoiceid
GROUP BY employee.employeeid, employee.lastname, employee.firstname
HAVING SUM(invoiceline.unitprice) = (SELECT MAX(sale)
    FROM(SELECT employee.employeeid, SUM(invoiceline.unitprice) sale
        FROM employee
        INNER JOIN customer ON employee.employeeid = customer.supportrepid
        INNER JOIN invoice ON customer.customerid = invoice.customerid
        INNER JOIN invoiceline ON invoice.invoiceid = invoiceline.invoiceid
        GROUP BY employee.employeeid));


-- Write a SQL Query that shows the top 3 best selling artists
SELECT * FROM (
SELECT artist.name, SUM(invoiceline.unitprice) AS AMOUNTSOLD
FROM artist
INNER JOIN album ON artist.artistid = album.artistid
INNER JOIN track ON album.albumid = track.albumid
INNER JOIN invoiceline ON track.trackid = invoiceline.trackid
GROUP BY artist.name
ORDER BY SUM(invoiceline.unitprice) DESC)
WHERE ROWNUM < 4;

-- Write a SQL Query that returns which albums have no Heavy Metal tracks
SELECT album.title, genre.name
FROM album
INNER JOIN track ON album.albumid = track.albumid
INNER JOIN genre ON genre.genreid = track.genreid
WHERE genre.name <> 'Metal';

-- Write a SQL Query to find the the managers of employees supporting 
Brazilian customers
SELECT employee.title
FROM 

-- Write a SQL Query that determines which artist has the most songs in each 
playlist
SELECT artist.name AS ArtistNAME, playlist.name AS PlaylistName, 
COUNT(playlisttrack.trackid)
FROM playlist
INNER JOIN playlisttrack
ON playlist.playlistid = playlisttrack.playlistid
INNER JOIN track
ON playlisttrack.trackid = track.trackid
INNER JOIN album 
ON track.albumid = album.albumid
INNER JOIN artist
ON album.artistid = artist.artistid
GROUP BY artist.name, playlist.name;


-- Write a SQL Query that determines what song(s) appear in the most 
playlists



-- Write a SQL Query that determines the 5th highest grossing song in 2009, 
2010, 2011, 2012, and 2013



-- Write a SQL Query that determines the most downloaded genre by country



-- Write a SQL Query that determines the genres each salesperson contributes 
to most

