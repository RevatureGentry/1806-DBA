-- Write SQL Queries that inserts 5 records into the Employee table

INSERT INTO Employee (EMPLOYEEID, LASTNAME, FIRSTNAME, CITY, STATE)
VALUES ( 9, 'Khan' , 'Imran' , 'Houston' , 'TX' );

INSERT INTO Employee (EMPLOYEEID, LASTNAME, FIRSTNAME, CITY, STATE)
VALUES ( 10, 'Jalil' , 'Harris' , 'Dallas' , 'TX' );

INSERT INTO Employee (EMPLOYEEID, LASTNAME, FIRSTNAME, CITY, STATE)
VALUES ( 11, 'Corbus' , 'Dylan' , 'San Jose' , 'CA' );

INSERT INTO Employee (EMPLOYEEID, LASTNAME, FIRSTNAME, CITY, STATE)
VALUES ( 12, 'Hui' , 'Kevin' , 'Reston' , 'VA' );

INSERT INTO Employee (EMPLOYEEID, LASTNAME, FIRSTNAME, CITY, STATE)
VALUES ( 13, 'Babikir' , 'Ahmed' , 'Reston' , 'VA' );



-- Write SQL Queries that inserts 10 records into the Customer table

INSERT INTO Customer (CUSTOMERID, LASTNAME, FIRSTNAME, EMAIL, PHONE)
VALUES ( 60, 'Khan' , 'Imran' , 'imran@revature.com' , '999-999-9999' );

INSERT INTO Customer (CUSTOMERID, LASTNAME, FIRSTNAME, EMAIL , PHONE)

VALUES ( 61, 'Jalil' , 'Harris' , 'harris@revature.com' , '999-999-9999' );

INSERT INTO Customer (CUSTOMERID, LASTNAME, FIRSTNAME, EMAIL, PHONE)
VALUES ( 62, 'Corbus' , 'Dylan' , 'dylan@revature.com' , '999-999-9999' );

INSERT INTO Customer (CUSTOMERID, LASTNAME, FIRSTNAME, EMAIL, PHONE)
VALUES ( 63, 'Hui' , 'Kevin' , 'kevin@revature.com' , '999-999-9999' );

INSERT INTO Customer (CUSTOMERID, LASTNAME, FIRSTNAME, EMAIL, PHONE)
VALUES ( 64, 'Babikir' , 'Ahmed' , 'ahmed@revature.com' , '999-999-9999' );

INSERT INTO Customer (CUSTOMERID, LASTNAME, FIRSTNAME, EMAIL, PHONE)
VALUES ( 65, 'Barnawi' , 'Aliah' , 'aliah@revature.com' , '999-999-9999' );

INSERT INTO Customer (CUSTOMERID, LASTNAME, FIRSTNAME, EMAIL , PHONE)
VALUES ( 66, 'Martin' , 'Benjamin' , 'benjamin@revature.com' , '999-999-9999' );

INSERT INTO Customer (CUSTOMERID, LASTNAME, FIRSTNAME, EMAIL, PHONE)
VALUES ( 67, 'Zhong' , 'Jeffrey' , 'jeffrey@revature.com' , '999-999-9999' );

INSERT INTO Customer (CUSTOMERID, LASTNAME, FIRSTNAME, EMAIL, PHONE)
VALUES ( 68, 'Hibbs' , 'Keith' , 'keith@revature.com' , '999-999-9999' );

INSERT INTO Customer (CUSTOMERID, LASTNAME, FIRSTNAME, EMAIL, PHONE)
VALUES ( 69, 'Hacker' , 'Augustine' , 'augustine@revature.com' , '999-999-9999' );


--Write SQL Queries that inserts 2 new genres

INSERT INTO Genre ( GENREID, NAME ) VALUES ( 26, 'Memes' );
INSERT INTO Genre ( GENREID, NAME ) VALUES ( 27, 'Vlog' );

--Write SQL Queries that insert 3 of your favorite albums

INSERT INTO ARTIST ( ARTISTID, NAME ) VALUES ( '276', 'Drake1' );
INSERT INTO ARTIST ( ARTISTID, NAME ) VALUES ( '277', 'Drake2' );
INSERT INTO ARTIST ( ARTISTID, NAME ) VALUES ( '278', 'Drake3' );


INSERT INTO ALBUM ( ALBUMID, TITLE, ARTISTID ) VALUES ( '348', 'Scorpion' , '276' );
INSERT INTO Album ( ALBUMID, TITLE, ARTISTID ) VALUES ( 349, 'More Life' , 277 );
INSERT INTO Album ( ALBUMID, TITLE, ARTISTID ) VALUES ( 350, 'Take Care' , 278 );


-- Write a SQL Query that contains the names of all tracks that are longer than 6 minutes

SELECT * FROM Track
WHERE MILLISECONDS > 360000;

--Write a SQL Query to find the biggest song (which takes up the most space)

select trackid, name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, bytes as biggestSong, Unitprice
from track
where bytes = (select max(bytes) from track);


--Write a SQL Query that contains the titles of all albums with tracks longer than 6 minutes in them

SELECT a.title, t.milliseconds FROM Album a
INNER JOIN track t ON a.albumid=t.albumid
WHERE MILLISECONDS > 360000;

-- Write a SQL Query that contains the albumId and number of songs in the album

SELECT AlbumId, COUNT(Albumid) as NumberOfSongs  FROM track
Group By AlbumId
Order By AlbumId;


-- Write a SQL query that contains artist's names and the number of tracks they have produced (assume an artist produced a track if it appears in one of their albums)

SELECT a.name, COUNT(t.albumid) as NumberOfTracks FROM artist a 
INNER JOIN album b ON a.artistid=b.artistid
INNER JOIN track t ON b.albumId=t.albumId
GROUP BY a.name;

--Write a SQL Query that returns the most purchased media type

SELECT MAX(TotalSales)
FROM
  (SELECT MediaTypeid,
    SUM(n.total) as TotalSales
    FROM Track t 
    INNER JOIN InvoiceLine il on il.TrackId = t.TrackId
    INNER JOIN Invoice n ON n.invoiceid = il.invoiceid
    GROUP BY MediaTypeid);

--Write a SQL Query showing customers not in the US

SELECT FirstName, LastName, CustomerID, Country 
FROM Customer 
WHERE NOT Country = 'US';

--Write a SQL Query showing a unique list of billing countries on the Invoice table

SELECT DISTINCT Billingcountry From Invoice;

-- Write a SQL Query that shows the Invoice Total, Customer Name, Country, and Sales agent for all invoices and customers

SELECT i.total, c.firstname, c.lastname, c.country, e.firstname, e.lastname FROM invoice i
INNER JOIN CUSTOMER C ON i.customerid=c.customerid
INNER JOIN Employee E ON e.employeeid=c.supportrepid;


-- Write a SQL Query that shows all Tracks, but displays no IDs. Should also include the Album name, Media Type, and Genre

SELECT
t.Name as TrackName,
al.Title as AlbumName,
mt.Name as MediaType,
g.Name as Genre
FROM Track t
INNER JOIN Album al on al.AlbumId = t.AlbumId
INNER JOIN Genre g on g.GenreId  = t.GenreId
INNER JOIN MediaType mt on mt.MediaTypeId = t.MediaTypeId;


--Write a SQL Query that returns the Top 40 Songs for 2013

SELECT totInvoice,year, sum(totInvoice) as totSumInvoice
from (
SELECT EXTRACT (year from i.invoicedate)as Year, i.invoiceid as totInvoice , i.total, t.trackid, t.name as songName   FROM Track t 
INNER JOIN Invoiceline il ON t.trackid = il.trackid
INNER JOIN Invoice i ON il.invoiceid = i.invoiceid
 where EXTRACT (year from i.invoicedate) = 2013)
Group By totInvoice, year
order by totSumInvoice desc
FETCH First 40 Rows Only;

--Write a SQL Query that shows which sales agent made the most in sales overall


 SELECT
 e.firstname, e.lastname as EmployeeName, SUM(i.Total) as Sales FROM Employee e
 INNER JOIN  customer c on c.SupportRepId = e.EmployeeId
 INNER JOIN Invoice i on  c.CustomerId = i.CustomerId
 GROUP BY e.firstname, e.lastname
 Order By Sales;
	  
--Write a SQL Query that shows the top 3 best selling artists

SELECT a.Name, COUNT(il.TRACKID), SUM(il.UnitPrice) FROM Album al
INNER JOIN Artist a ON a.ArtistId = al.ArtistId
INNER JOIN Track t ON t.AlbumId = al.ALBUMID
INNER JOIN InvoiceLine il ON il.TrackId = t.TrackId
GROUP BY a.Name
ORDER BY a.name DESC
FETCH FIRST 3 ROWS ONLY;
	  	  
--Write a SQL Query that returns which albums have no Heavy Metal tracks

SELECT DISTINCT(a.title) From Track t
INNER JOIN Genre G ON G.GenreId = T.GenreId
INNER JOIN Album a ON T.AlbumId = a.AlbumId
WHERE NOT G.Name = 'Heavy Metal';
	
--Write a SQL Query to find the the managers of employees supporting Brazilian customers
    
SELECT DISTINCT mana.firstname, mana.lastname
from employee mana inner join employee emp on mana.employeeid=emp.REPORTSTO
inner join customer cust on emp.employeeid=cust.supportrepid
where cust.country like '%Brazil%';
   
   
--Write a SQL Query that determines which artist has the most songs in each playlist

SELECT DISTINCT(ar.Name), Count(t.TrackId), pl.Name From Artist ar 
INNER JOIN Album al ON ar.ArtistId = al.ArtistId
INNER JOIN Track t ON al.AlbumId = t.AlbumId
INNER JOIN PlayListTrack pt ON pt.trackid = t.trackId 
INNER JOIN Playlist pl ON pl.playlistId = pt.playlistId 
Group By ar.Name, t.TrackId, pl.Name
Order By ar.Name DESC;
	
--Write a SQL Query that determines the 5th highest grossing song in 2009, 2010, 2011, 2012, and 2013
	
SELECT * FROM (
SELECT t.name, sum(il.unitprice) as TotalPrice  FROM track t
INNER JOIN InvoiceLine il ON t.trackId = il.trackId
INNER JOIN Invoice i ON i.InvoiceId = il.invoiceId
WHERE i.invoicedate between '01-jan-09' and '12-dec-13'
Group By t.name
Order By TotalPrice Desc)
WHERE ROWNUM = 1;

