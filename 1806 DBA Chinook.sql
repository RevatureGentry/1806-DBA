--Write SQL Queries that inserts 5 records into the Employee table
INSERT all
INTO employee VALUES (9, 'Preist', 'Beverley', 'Janitor', 1, '02-FEB-90', '16-OCT-16', 'Canmore', '8008 30th St.','AB', 'Canada', 'T4C 123', '+1 (574)400-9117',NULL, 'beanp@chinookcorp.com') 
INTO employee VALUES (10,'Morgan', 'Scott', 'Receiving', 1, '04-APR-93', '20-JAN-18', '1632 1st St.', 'Canmore', 'AB', 'Canada', 'T6A 015', '1 (403)867-53049',NULL, 'scottm@chinookcorp.com')
INTO employee VALUES (11,'Franks', 'Nealon', 'IT Staff', 6, '06-FEB-93', '21-DEC-12', '7331 Palmer Dr.', 'Canmore', 'AB', 'Canada', 'T6A 013', '1 (403)298-2252',NULL, 'youngneal@chinookcorp.com')
INTO employee VALUES (12,'Cwidak', 'Michael', 'Clerk', 1, '09-OCT-93', '18-AUG-15', '135 Quaker St.', 'Canmore', 'AB', 'Canada', 'T6A 018', '1 (568)135-1894',NULL, 'CwidakM@chinookcorp.com')
INTO employee VALUES (13,'Miller', 'Fred', 'Clerk', 1, '11-Sep-1991', '09-OCT-16', '808 White St.', 'Canmore', 'AB', 'Canada', 'T6A 007', '1 (879)138-1499',NULL, 'MillerFr@chinookcorp.com')
SELECT * FROM dual;

-- Write SQL Queries that inserts 10 records into the Customer table
 desc customer;
INSERT all
INTO CUSTOMER Values (60, 'Rob', 'Thompson',NULL,'13 Knobb Ln', 'South Bend', 'In', 'USA', 46613, '1 (146) 245-6423', NULL, 'bob.thom@yahoo.com',1)
INTO CUSTOMER Values (61, 'Susan', 'Peterson',NULL,'654 Elm St','Chicago', 'Il', 'USA', 43262, '1 (256) 235-1689', NULL, 'supeters@gmail.com',2)
INTO CUSTOMER Values (62, 'Rocko', 'Botte', NULL, '1360 Grove St','Sacramento', 'Ca', 'USA', 36489, '1 (165) 468-2365', NULL, 'mega64@hotmail.com',3)
INTO CUSTOMER Values (63, 'Shawn', 'Chatfield', NULL, '249 Naymor Blvd','Los Angeles', 'Ca', 'USA', 16549, '1 (404) 135-5461', NULL, 'shownchat@aol.com',4)
INTO CUSTOMER Values (64, 'Derick', 'Accosta', NULL, '2424 Yeet St','Burbank', 'Ca', 'USA', 46876, '1 (345) 876-5852',NULL, 'derrik524@yahoo.com',5)
INTO CUSTOMER Values (65, 'Jill', 'Simmins', NULL, '246 Twine St','Cawker City', 'Ka', 'USA', 65125, '1 (485-6083',NULL, 'jjameson@yahoo.com',1)
INTO CUSTOMER Values (66, 'Brian', 'Newton',NULL,'560 Egg St','Mentone', 'In', 'USA', 65213, '1 (482) 325-9855',NULL, 'briannew@hotmail.com',2)
INTO CUSTOMER Values (67, 'Greg', 'Ochimusha',NULL, '240 Pickle St','Kumamoto City', 'Kumamoto', 'Japan', 182-4956, '1 (135)332-4625',NULL, 'onepie@gmail.com',3)
INTO CUSTOMER Values (68, 'Jessica', 'Leapmen',NULL, '475 Lame Dr','Dover', 'Dalaware', 'USA', 98762, '1 (456)2356',NULL, 'jessip@gmail.com',4)
INTO CUSTOMER Values (69, 'Doug', 'Kockinowski',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dougk@yahoo.com',5)
select * from DUAL;

--Write SQL Queries that inserts 2 new genres
INSERT all
into GENRE values (26,'Country Rap')
into GENRE values (27,'Dark Wave')
select * from DUAL;

--Write SQL Queries that insert 3 of your favorite albums
INSERT ALL
into artist values (276,'The Birthday Massacre')
into artist values (277, 'The Beach Boys')
into artist values (278, 'Gorillaz')
Select * From DUAL;
INSERT ALL
into album values (348,'Pins and Needles',276)
into album values (349,'Pet Sounds',277)
into album values (350,'The Now Now',278)
select * from DUAL;

--Write a SQL Query that contains the names of all tracks that are longer than 6 minutes
Select * From track where MILLISECONDS > 300000;

--Write a SQL Query to find the biggest song (which takes up the most space)
select * from track order by bytes desc;

--Write a SQL Query that contains the titles of all albums with tracks longer than 6 minutes in them
select a.albumid, a.TITLE, a.artistid
from album a
inner join track t
on t.albumid = a.albumid
where t.MILLISECONDS > 300000;

--Write a SQL Query that contains the albumId and number of songs in the album
SELECT ALBUMID, COUNT(ALBUMID) FROM TRACK GROUP BY ALBUMID;

--Write a SQL query that contains artist's names and the number of tracks they have produced (assume an artist produced a track if it appears in one of their albums)
SELECT
ar.name as Artist, COUNT(t.trackid)
FROM artist ar
INNER JOIN album al
ON ar.artistid = al.artistid
INNER JOIN track t
ON al.albumid = t.albumid
GROUP BY ar.name;

--Write a SQL Query that returns the most purchased media type
SELECT mt.name, COUNT(t.mediatypeid)
FROM mediatype mt
INNER JOIN track t
ON t.mediatypeid = mt.mediatypeid
INNER JOIN invoiceline il
ON il.trackid = t.trackid
GROUP BY mt.name;

--Write a SQL Query showing customers not in the US
SELECT firstname, lastname, country FROM customer WHERE country <> 'USA';

--Write a SQL Query showing a unique list of billing countries on the Invoice table
SELECT DISTINCT billingcountry from invoice;

--Write a SQL Query that shows the Invoice Total, Customer Name, Country, and Sales agent for all invoices and customers
SELECT c.firstname, c.lastname, billingcountry, SUM(total), c.supportrepid FROM invoice i
INNER JOIN customer c
ON i.customerid = c.customerid
GROUP BY c.firstname, c.lastname, billingcountry, c.supportrepid;

--Write a SQL Query that shows all Tracks, but displays no IDs. Should also include the Album name, Media Type, and Genre
SELECT t.name, a.title, mt.name, g.name From track t
INNER JOIN album a
ON a.albumid = t.albumid
INNER JOIN mediatype mt
ON mt.mediatypeid = t.mediatypeid
INNER JOIN genre g
ON t.genreid = g.genreid
GROUP BY t.name, a.title, mt.name, g.name;

--Write a SQL Query that returns the Top 40 Songs for 2013
SELECT * FROM(
SELECT t.name, count(i.invoiceid) From track t
INNER JOIN invoiceline il
ON il.trackid = t.trackid
INNER JOIN invoice i
ON i.invoiceid = il.invoiceid
where i.invoicedate between '31-DEC-12' and '01-JAN-14'
GROUP BY t.name
ORDER BY COUNT(i.invoiceid) desc)
WHERE ROWNUM <=40;

--Write a SQL Query that shows which sales agent made the most in sales overall
SELECT e.employeeid, e.firstname, e.lastname, sum(i.total) from employee e
INNER JOIN customer c
ON e.employeeid = c.supportrepid
INNER JOIN invoice i
ON i.customerid = c.customerid
GROUP BY e.employeeid, e.firstname, e.lastname
ORDER BY sum(i.total) desc;

--Write a SQL Query that shows the top 3 best selling artists
SELECT ar.artistid, ar.name, sum(i.total) from artist ar
INNER JOIN album al
ON al.artistid = ar.artistid
INNER JOIN track t
ON al.albumid = t.albumid
inner join invoiceline il
on il.trackid = t.trackid
INNER JOIN invoice i
ON il.invoiceid = i.invoiceid
GROUP BY ar.artistid, ar.name
ORDER BY sum(i.total) desc
FETCH FIRST 3 ROWS ONLY;

--Write a SQL Query that returns which albums have no Heavy Metal tracks
SELECT al.albumid, al.title, g.name FROM album al
INNER JOIN TRACK t
ON al.albumid = t.albumid
INNER JOIN genre g
ON t.genreid = g.genreid
WHERE g.genreid <> 13
GROUP BY al.albumid, al.title, g.name;

--Write a SQL Query to find the the managers of employees supporting Brazilian customers
SELECT e.employeeid, e.firstname, e.lastname, c.country from employee e
INNER JOIN customer c
ON e.employeeid = c.SUPPORTREPID
where c.country = 'Brazil'
GROUP BY e.employeeid, e.firstname, e.lastname, c.country;

--Write a SQL Query that determines which artist has the most songs in each playlist
SELECT ar.artistid, ar.name, p.playlistid, COUNT(pt.trackid) FROM artist ar
INNER JOIN album al
ON al.artistid = ar.artistid
INNER JOIN track t
On t.albumid = al.albumid
INNER JOIN PLAYLISTTRACK pt
ON  pt.trackid = t.trackid
INNER JOIN playlist p
ON p.playlistid = pt.playlistid
GROUP BY pt.trackid, ar.artistid, ar.name, p.playlistid;

--Write a SQL Query that determines what song(s) appear in the most playlists
SELECT count(pt.trackid), t.name  from track t
INNER JOIN PLAYLISTTRACK pt
ON pt.TRACKID = t.trackid
INNER JOIN PLAYLIST p
ON p.playlistid = pt.PLAYLISTID
group by pt.trackid, t.name
order by count(pt.trackid) desc;

--Write a SQL Query that determines the 5th highest grossing song in 2009, 2010, 2011, 2012, and 2013
SELECT al.albumid, al.title count(il.trackid where i.invoicedate between '31-DEC-08' and '01-JAN-10' ) from album a
INNER JOIN track t
ON al.albumid = t.albumid
INNER JOIN invoideline il
ON t.trackid = il.trackid
INNER JOIN invoice i
ON i.invoiceid = il.invoiceid

--Write a SQL Query that determines the most downloaded genre by country
SELECT c.country,  g.name, COUNT(il.trackid) FROM customer c
INNER JOIN invoice i
ON c.customerid = i.customerid
INNER JOIN invoiceline il
ON i.invoiceid = il.invoiceid
INNER JOIN track t
ON t.trackid = il.trackid
INNER JOIN genre g
ON g.genreid = t.genreid
GROUP BY c.country, g.name;

--Write a SQL Query that determines the genres each salesperson contributes to most
SELECT *FROM (
SELECT DISTINCT e.firstname, g.name, sum(il.quantity) as contributions FROM employee e
INNER JOIN customer c
ON c.supportrepid = e.employeeid
INNER JOIN invoice i
ON i.customerid = c.customerid
INNER JOIN invoiceline il
ON il.invoiceid = i.invoiceid
INNER JOIN  track t
ON t.trackid = il.trackid
INNER JOIN genre g
ON g.genreid = t.genreid
GROUP BY e.firstname, g.name);


