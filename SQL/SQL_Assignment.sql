SQL Assignment:

--Write SQL Queries that inserts 5 records into the Employee table
INSERT ALL
    INTO Employee ( EMPLOYEEID, LASTNAME, FIRSTNAME ) VALUES ('100001', 'Martin', 'Benjamin')
    INTO Employee ( EMPLOYEEID, LASTNAME, FIRSTNAME ) VALUES ('100002', 'Doe', 'Joe')
    INTO Employee ( EMPLOYEEID, LASTNAME, FIRSTNAME ) VALUES ('100003', 'Doe', 'John')
    INTO Employee ( EMPLOYEEID, LASTNAME, FIRSTNAME ) VALUES ('100004', 'Bryant', 'Kobey')
    INTO Employee ( EMPLOYEEID, LASTNAME, FIRSTNAME ) VALUES ('100005', 'Jordan', 'Michael')
SELECT * FROM dual;

--Write SQL Queries that inserts 10 records into the Customer table
INSERT ALL
    INTO Customer ( CUSTOMERID, FIRSTNAME, LASTNAME, EMAIL ) VALUES ('100001', 'Martin', 'Benjamin', 'EMAIL1@EMAIL.COM')
    INTO Customer ( CUSTOMERID, FIRSTNAME, LASTNAME, EMAIL ) VALUES ('100002', 'Doe', 'John', 'EMAIL2@EMAIL.COM')
    INTO Customer ( CUSTOMERID, FIRSTNAME, LASTNAME, EMAIL ) VALUES ('100003', 'Doe', 'Joe', 'EMAIL3@EMAIL.COM')
    INTO Customer ( CUSTOMERID, FIRSTNAME, LASTNAME, EMAIL ) VALUES ('100004', 'Bryant', 'Kobey', 'EMAIL4@EMAIL.COM')
    INTO Customer ( CUSTOMERID, FIRSTNAME, LASTNAME, EMAIL ) VALUES ('100005', 'Jordan', 'Michael', 'EMAIL5@EMAIL.COM')
    INTO Customer ( CUSTOMERID, FIRSTNAME, LASTNAME, EMAIL ) VALUES ('100006', 'Iwata', 'Satora', 'EMAIL6@EMAIL.COM')
    INTO Customer ( CUSTOMERID, FIRSTNAME, LASTNAME, EMAIL ) VALUES ('100007', 'Imatsu', 'Nomuo', 'EMAIL7@EMAIL.COM')
    INTO Customer ( CUSTOMERID, FIRSTNAME, LASTNAME, EMAIL ) VALUES ('100008', 'Aran', 'Samas', 'EMAIL8@EMAIL.COM')
    INTO Customer ( CUSTOMERID, FIRSTNAME, LASTNAME, EMAIL ) VALUES ('100009', 'Mario', 'Mario', 'EMAIL9@EMAIL.COM')
    INTO Customer ( CUSTOMERID, FIRSTNAME, LASTNAME, EMAIL ) VALUES ('100010', 'Mario'', 'Mario', 'EMAIL10@EMAIL.COM')
SELECT * FROM dual;

--Write SQL Queries that inserts 2 new genres
INSERT ALL
    INTO Genre ( GENREID, NAME ) VALUES ('26', 'Death Metal')
    INTO Genre ( GENREID, NAME ) VALUES ('27', 'Thrash Metal')
SELECT * FROM dual;

--Write SQL Queries that insert 3 of your favorite albums
INSERT ALL
    INTO Album (ALBUMID, TITLE, ARTISTID) VALUES ('348', 'Peace Sells', '276')
    INTO Album (ALBUMID, TITLE, ARTISTID) VALUES ('349', 'Holy Wars...The Punishment Due', '276')
    INTO Album (ALBUMID, TITLE, ARTISTID) VALUES ('350', 'Symphony of Destruction', '276')
SELECT * FROM dual; 

--Write a SQL Query that contains the names of all tracks that are longer than 6 minutes
SELECT NAME, MAX(MILLISECONDS)
FROM track
GROUP BY NAME
HAVING MAX(MILLISECONDS)>360000;

--Write a SQL Query to find the biggest song (which takes up the most space)
SELECT * FROM (
SELECT NAME, MAX(BYTES) as LargestSize
FROM track
GROUP BY NAME
ORDER BY LargestSize DESC)
WHERE ROWNUM = 1;

--Write a SQL Query that contains the titles of all albums with tracks longer than 6 minutes in them
SELECT DISTINCT TITLE FROM (
SELECT DISTINCT ALBUM.TITLE, TRACK.MILLISECONDS
FROM ALBUM, TRACK
WHERE ALBUM.ALBUMID=TRACK.ALBUMID AND TRACK.MILLISECONDS > 360000)
ORDER BY TITLE;

--Write a SQL Query that contains the albumId and number of songs in the album
SELECT ALBUM.ALUMBID, COUNT(TRACK.TACKID) AS Total_Songs
FROM ALBUM
INNER JOIN TRACK ON ALBUM.ALBUMID=TRACK.ALBUMID
GROUP BY ALBUM.ALBUMID;

--Write a SQL query that contains artist's names and the number of tracks they have produced (assume an artist produced a track if it appears in one of their albums)
SELECT 
    ar.name as Artist,
    count(t.trackid) as Tracks
FROM artist ar 
INNER JOIN album al 
ON ar.artistid = al.artistid
INNER JOIN track t 
ON al.albumid = t.albumid 
GROUP BY ar.name
ORDER BY ar.name;

--Write a SQL Query that returns the most purchased media type
SELECT
    m.name as Media_Type,
    SUM(inv.quantity) as Total
FROM invoiceline inv
INNER JOIN track tr
ON inv.trackid = tr.trackid
INNER JOIN mediatype m
ON tr.mediatypeid = m.mediatypeid
GROUP BY m.name;

--Write a SQL Query showing customers not in the US
SELECT *
FROM CUSTOMER
WHERE COUNTRY <> USA;

--Write a SQL Query showing a unique list of billing countries on the Invoice table
SELECT DISTINCT i.billingcountry
FROM invoice i;

--Write a SQL Query that shows the Invoice Total, Customer Name, Country, and Sales agent for all invoices and customers
SELECT i.total, c.firstname, c.lastname, c.country, c.supportrepid 
FROM invoice i
INNER JOIN customer c
ON i.customerid = c.customerid
ORDER BY c.lastname;

--Write a SQL Query that shows all Tracks, but displays no IDs. Should also include the Album name, Media Type, and Genre
SELECT t.name as Track_Name, a.title AS Album_Name, m.name AS Mediatype_Name, g.name AS Genre_Name
FROM track t
INNER JOIN album a
ON t.albumid = a.albumid
INNER JOIN mediatype m
ON t.mediatypeid = m.mediatypeid
INNER JOIN genre g
ON t.genreid = g.genreid;

--Write a SQL Query that returns the Top 40 Songs for 2013
SELECT *
FROM (
    SELECT t.name, COUNT(i.invoiceid)
    FROM track t
    INNER JOIN invoiceline i
    ON t.trackid = i.trackid
    INNER JOIN invoice v
    ON i.invoiceid = v.invoiceid
    WHERE v.invoicedate BETWEEN '31-DEC-2012' AND '01-JAN-2014'
    GROUP BY t.name, i.invoiceid
    ORDER BY COUNT(i.invoiceid) desc)
WHERE ROWNUM <=40;
--This one is close, but I am unsure as to what to modify to return the proper count...

--Write a SQL Query that shows which sales agent made the most in sales overall
SELECT e.firstname || ' ' || e.lastname AS SALES_REP, SUM(i.total) as Total_Sales
FROM employee e
INNER JOIN customer c
ON e.employeeid = c.supportrepid
INNER JOIN invoice i
ON c.customerid = i.customerid
GROUP BY e.firstname || ' ' || e.lastname
ORDER BY SUM(i.total) DESC;

--Write a SQL Query that shows the top 3 best selling artists
SELECT ar.name as NAME, SUM(i.total) as Total_Sales
FROM artist ar
INNER JOIN album al
ON ar.artistid = al.artistid
INNER JOIN track t
ON al.albumid = t.albumid
INNER JOIN invoiceline inv
ON t.trackid = inv.trackid
INNER JOIN invoice i
ON inv.invoiceid = i.invoiceid
GROUP BY ar.name
ORDER BY SUM(i.total) DESC;

--Write a SQL Query that returns which albums have no Heavy Metal tracks
SELECT al.title, g.name
FROM album al
INNER JOIN track t
ON al.albumid = t.trackid
INNER JOIN genre g
ON t.genreid = g.genreid
WHERE g.name <> '%Heavy Metal%'
ORDER BY al.title;

--Write a SQL Query to find the the managers of employees supporting Brazilian customers
SELECT DISTINCT emp.employeeid, emp.firstname AS FirstName, emp.lastname as LastName
FROM employee emp, (
    SELECT DISTINCT em.employeeid, em.firstname, em.lastname, em.reportsto, c.country
    FROM employee em
    INNER JOIN customer c
    ON em.employeeid = c.supportrepid
    WHERE c.country = 'Brazil') e
WHERE emp.employeeid = e.reportsto;

--Write a SQL Query that determines which artist has the most songs in each playlist
--I am not sorry for this monster that I unleashed into this world
SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
    WHERE PLAYLISTID = 1 AND ROWNUM = 1
    UNION
    SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
    WHERE PLAYLISTID = 2 AND ROWNUM = 1
    UNION
    SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
    WHERE PLAYLISTID = 3 AND ROWNUM = 1
    UNION
    SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
    WHERE PLAYLISTID = 3 AND ROWNUM = 1
    UNION
    SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
    WHERE PLAYLISTID = 4 AND ROWNUM = 1
    UNION
    SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
    WHERE PLAYLISTID = 5 AND ROWNUM = 1
    UNION
    SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
    WHERE PLAYLISTID = 6 AND ROWNUM = 1
    UNION
    SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
    WHERE PLAYLISTID = 7 AND ROWNUM = 1
    UNION
    SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
    WHERE PLAYLISTID = 8 AND ROWNUM = 1
    UNION
    SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
    WHERE PLAYLISTID = 9 AND ROWNUM = 1
    UNION
    SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
    WHERE PLAYLISTID = 10 AND ROWNUM = 1
    UNION
    SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
    WHERE PLAYLISTID = 11 AND ROWNUM = 1
    UNION
    SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
    WHERE PLAYLISTID = 12 AND ROWNUM = 1
    UNION
    SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
    WHERE PLAYLISTID = 13 AND ROWNUM = 1
    UNION
    SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
    WHERE PLAYLISTID = 14 AND ROWNUM = 1
    UNION
    SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
    WHERE PLAYLISTID = 15 AND ROWNUM = 1
    UNION
    SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
    WHERE PLAYLISTID = 16 AND ROWNUM = 1
    UNION
    SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
    WHERE PLAYLISTID = 17 AND ROWNUM = 1
    UNION
    SELECT *
    FROM (
        SELECT ARTIST_NAME, PLAYLISTID, COUNT(TRACK_NAME)
        FROM (
            SELECT ar.name as Artist_Name, pl.playlistid as PlaylistID, t.name as Track_Name
            FROM artist ar
            INNER JOIN album al
            ON ar.artistid = al.artistid
            INNER JOIN track t
            ON al.albumid = t.albumid
            INNER JOIN playlisttrack plt
            ON t.trackid = plt.trackid
            INNER JOIN playlist pl
            ON plt.playlistid = pl.playlistid)
        GROUP BY ARTIST_NAME, PLAYLISTID
        ORDER BY COUNT(TRACK_NAME)DESC)
        WHERE PLAYLISTID = 18 AND ROWNUM = 1;

--Write a SQL Query that determines what song(s) appear in the most playlists
--Write a SQL Query that determines the 5th highest grossing song in 2009, 2010, 2011, 2012, and 2013
--Write a SQL Query that determines the most downloaded genre by country
--Write a SQL Query that determines the genres each salesperson contributes to most
