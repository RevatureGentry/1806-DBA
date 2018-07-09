-- DROP statements for first 4 sections, assuming original database state from Chinook script

DELETE FROM album WHERE albumid >= 348;
DELETE FROM genre WHERE genreid >= 26;
DELETE FROM customer WHERE customerid >= 60;
DELETE FROM employee WHERE employeeid >= 9;


-- Write SQL Queries that inserts 5 records into the Employee table

INSERT INTO Employee
(EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email)
VALUES
(9,'Franklin','Dustin','Sales Support Agent','2',TO_DATE('1973-8-29 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2002-4-1 00:00:00','yyyy-mm-dd hh24:mi:ss'),'118-3052 Interdum Ave','Calgary','AB','Canada','E8B 6M3','(506) 721-1525','(506) 474-0742','dustin@chinookcorp.com');

INSERT INTO Employee
(EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email)
VALUES
(10,'Trevino','Porter','Sales Support Agent','2',TO_DATE('1973-8-29 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2002-4-1 00:00:00','yyyy-mm-dd hh24:mi:ss'),'P.O. Box 339, 4024 Posuere Rd.','Calgary','AB','Canada','X0X 1X4','(867) 125-2566','(867) 287-5697','porter@chinookcorp.com');

INSERT INTO Employee
(EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email)
VALUES
(11,'Moon','Lana','Sales Support Agent','2',TO_DATE('1973-8-29 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2002-4-1 00:00:00','yyyy-mm-dd hh24:mi:ss'),'Ap #226-2086 Mi Street','Calgary','AB','Canada','N1H 0Z6','(226) 729-1672','(613) 915-2369','lana@chinookcorp.com');

INSERT INTO Employee
(EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email)
VALUES
(12,'Ryan','Brianna','Sales Support Agent','2',TO_DATE('1973-8-29 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2002-4-1 00:00:00','yyyy-mm-dd hh24:mi:ss'),'9799 Nunc Ave','Calgary','AB','Canada','V0N 9E7','(778) 549-5807','(205) 224-1826','brianna@chinookcorp.com');

INSERT INTO Employee
(EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email)
VALUES
(13,'Fox','Alfonso','Sales Support Agent','2',TO_DATE('1973-8-29 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2002-4-1 00:00:00','yyyy-mm-dd hh24:mi:ss'),'6457 Neque. Rd.','Calgary','AB','Canada','L2N 4Y4','(365) 493-0272','(249) 837-0085','alfonso@chinookcorp.com');

INSERT INTO Employee
(EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email)
VALUES
(14,'Camacho','Yoshi','Sales Support Agent','2',TO_DATE('1973-8-29 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2002-4-1 00:00:00','yyyy-mm-dd hh24:mi:ss'),'2817 Velit. St.','Calgary','AB','Canada','V9R 5V8','(604) 940-3855','(604) 876-4235','yoshi@chinookcorp.com');


-- Write SQL Queries that inserts 10 records into the Customer table

INSERT INTO customer
(customerid,firstname,lastname,address,city,state,country,postalcode,phone,fax,email,supportrepid)
VALUES
(60,'Delilah','Skinner','P.O. Box 298, 749 Nec St.','Auburn','ME','US','36264','(291) 707-6833','(494) 956-0612','aliquam@lectusum.ca',3);

INSERT INTO customer
(customerid,firstname,lastname,address,city,state,country,postalcode,phone,fax,email,supportrepid)
VALUES
(61,'Jacob','Bird','500-6287 Eu Rd.','Des Moines','IA','US','43366','(222) 739-2491','(650) 383-3861','facilisis.vitae@odiosempercursus.co.uk',2);

INSERT INTO customer
(customerid,firstname,lastname,address,city,state,country,postalcode,phone,fax,email,supportrepid)
VALUES
(62,'Vincent','Wilkinson','877-5273 Arcu. Avenue','Fort Wayne','Indiana','US','85555','(674) 674-4531','(918) 474-8268','amet@ullamcorper.org',1);

INSERT INTO customer
(customerid,firstname,lastname,address,city,state,country,postalcode,phone,fax,email,supportrepid)
VALUES
(63,'Francesca','Boone','Ap #292-9675 Molestie Rd.','Saint Paul','MN','US','14300','(914) 578-2711','(513) 131-3807','fringilla@dapibusgravidaAliquam.ca',6);

INSERT INTO customer
(customerid,firstname,lastname,address,city,state,country,postalcode,phone,fax,email,supportrepid)
VALUES
(64,'Amaya','Todd','P.O. Box 400, 1484 Felis Ave','Owensboro','KY','US','48040','(592) 831-6612','(998) 970-5319','vel.vulputate.eu@egettinciduntdui.net',4);

INSERT INTO customer
(customerid,firstname,lastname,address,city,state,country,postalcode,phone,fax,email,supportrepid)
VALUES
(65,'Todd','Harrison','P.O. Box 804, 8256 Malesuada St.','Bellevue','WA','US','58982','(659) 120-1611','(904) 203-7556','lobortis@magnaDuis.net',1);

INSERT INTO customer
(customerid,firstname,lastname,address,city,state,country,postalcode,phone,fax,email,supportrepid)
VALUES
(66,'Abel','Middleton','1156 Lectus Road','New Orleans','LA','US','68070','(812) 674-0782','(272) 691-7796','dolor.Fusce.mi@elit.edu',4);

INSERT INTO customer
(customerid,firstname,lastname,address,city,state,country,postalcode,phone,fax,email,supportrepid)
VALUES
(67,'Brock','West','P.O. Box 554, 1198 Purus Rd.','Springfield','Illinois','US','33759','(969) 833-6465','(976) 959-7207','Quisque.porttitor@sagittissemperNam.co.uk',2);

INSERT INTO customer
(customerid,firstname,lastname,address,city,state,country,postalcode,phone,fax,email,supportrepid)
VALUES
(68,'Catherine','Hogan','5687 Hendrerit Road','Boise','Idaho','US','61293','(285) 730-6034','(915) 194-8304','ipsum.Suspendisse.sagittis@congueelitsed.co.uk',2);

INSERT INTO customer
(customerid,firstname,lastname,address,city,state,country,postalcode,phone,fax,email,supportrepid)
VALUES
(69,'Sylvia','Roman','Ap #726-2840 Ac Rd.','Carson City','Nevada','US','31348','(853) 612-1117','(298) 790-3972','ac@sed.net',1);


-- Write SQL Queries that inserts 2 new genres

INSERT INTO genre (genreid,name) VALUES (26,'Country');

INSERT INTO genre (genreid,name) VALUES (27,'Instrumental');


-- Write SQL Queries that insert 3 of your favorite albums

INSERT INTO album (albumid,title,artistid) VALUES (348,'I Ran Out of Ideas',76);

INSERT INTO album (albumid,title,artistid) VALUES (349,'Random Track',274);

INSERT INTO album (albumid,title,artistid) VALUES (350,'R.I.P. Brain',234);


-- Write a SQL Query that contains the names of all tracks that are longer than 6 minutes

SELECT name FROM track WHERE milliseconds > 360000;


-- Write a SQL Query to find the biggest song (which takes up the most space)

SELECT name FROM track WHERE bytes = (SELECT MAX(bytes) FROM track);


-- Write a SQL Query that contains the titles of all albums with tracks longer than 6 minutes in them

SELECT title FROM album WHERE albumid IN (SELECT albumid FROM track WHERE milliseconds > 360000);


-- Write a SQL Query that contains the albumId and number of songs in the album

SELECT albumid,COUNT(albumid) as SongCount FROM track GROUP BY albumid ORDER BY albumid;


-- Write a SQL query that contains artist's names and the number of tracks they have produced (assume an artist produced a track if it appears in one of their albums)

SELECT ar.name,COUNT(tr.trackid) as NumOfTracks
FROM artist ar
INNER JOIN album al ON ar.artistid = al.artistid
INNER JOIN track tr ON tr.albumid = al.albumid
GROUP BY ar.name;


-- Write a SQL Query that returns the most purchased media type

SELECT mt.name
FROM track tr
INNER JOIN mediatype mt ON tr.mediatypeid = mt.mediatypeid
GROUP BY mt.name
HAVING COUNT(mt.name) = (SELECT MAX(TypeCount)
    FROM ( 
        SELECT mt.name,COUNT(tr.name) as TypeCount
        FROM track tr
        INNER JOIN mediatype mt ON tr.mediatypeid = mt.mediatypeid
        GROUP BY mt.name));


-- Write a SQL Query showing customers not in the US

SELECT firstname,lastname,country FROM customer WHERE NOT country LIKE 'USA' AND NOT country LIKE 'US';


-- Write a SQL Query showing a unique list of billing countries on the Invoice table

SELECT DISTINCT billingcountry FROM invoice;


-- Write a SQL Query that shows the Invoice Total, Customer Name, Country, and Sales agent for all invoices and customers

SELECT iv.total as InvoiceTotal,
    cs.firstname || ' ' || cs.lastname AS CustomerName,
    cs.country,
    ep.firstname || ' ' || ep.lastname AS SalesAgent
FROM invoice iv
FULL OUTER JOIN customer cs ON iv.customerid = cs.customerid
INNER JOIN employee ep ON cs.supportrepid = ep.employeeid;


-- Write a SQL Query that shows all Tracks, but displays no IDs. Should also include the Album name, Media Type, and Genre

SELECT tr.name,al.title AS Album,mt.name AS MediaType,gn.name AS Genre,tr.composer,tr.milliseconds,tr.bytes,tr.unitprice
FROM track tr
INNER JOIN album al ON tr.albumid = al.albumid
INNER JOIN genre gn ON tr.genreid = gn.genreid
INNER JOIN mediatype mt ON tr.mediatypeid = mt.mediatypeid;


-- Write a SQL Query that returns the Top 40 Songs for 2013

SELECT tr.name, SUM(il.quantity) AS TotalQuntity FROM track tr
INNER JOIN invoiceline il ON tr.trackid = il.trackid
INNER JOIN invoice iv ON il.invoiceid = iv.invoiceid
WHERE iv.invoicedate >= TO_DATE('2013-01-01','yyyy-mm-dd') AND iv.invoicedate <= TO_DATE('2013-12-31','yyyy-mm-dd')
GROUP BY tr.name
ORDER BY SUM(il.quantity) DESC
FETCH NEXT 40 ROWS ONLY;  --Oracle 12c R1 functionality


-- Write a SQL Query that shows which sales agent made the most in sales overall
SELECT * FROM (
    SELECT ep.firstname || ' ' || ep.lastname AS EmployeeName, SUM(iv.total) AS TotalSales FROM employee ep
    RIGHT OUTER JOIN customer cs ON ep.employeeid = cs.supportrepid
    RIGHT OUTER JOIN invoice iv ON cs.customerid = iv.customerid
    GROUP BY ep.firstname || ' ' || ep.lastname
    ORDER BY SUM(iv.total) DESC)
WHERE ROWNUM = 1;


-- Write a SQL Query that shows the top 3 best selling artists

SELECT * FROM (
    SELECT ar.name, count(il.trackid) as Count
    FROM artist ar INNER JOIN album al on ar.artistid = al.artistid
    INNER JOIN track tr on al.albumid = tr.albumid
    INNER JOIN invoiceline il on tr.trackid = il.trackid
    GROUP BY ar.name
    ORDER BY count(il.trackid) DESC)
WHERE ROWNUM <=3;


-- Write a SQL Query that returns which albums have no Heavy Metal tracks

SELECT DISTINCT al.title FROM album al
INNER JOIN track tr ON al.albumid = tr.albumid
INNER JOIN genre gr ON tr.genreid = gr.genreid
WHERE NOT gr.name LIKE 'Heavy Metal';


-- Write a SQL Query to find the the managers of employees supporting Brazilian customers

SELECT DISTINCT me.firstname || ' ' || me.lastname AS Manager FROM employee me
INNER JOIN employee ee ON me.employeeid = ee.reportsto
INNER JOIN customer cs ON ee.employeeid = cs.supportrepid
WHERE cs.country LIKE 'Brazil';





/* SOME IFFY/INCOMPLETE IMPLEMNTATIONS */


-- Write a SQL Query that determines which artist has the most songs in each playlist

SELECT * FROM artist ar
INNER JOIN album al ON ar.artistid = al.artistid
INNER JOIN track tr ON al.albumid = tr.albumid
INNER JOIN playlisttrack pt ON tr.trackid = pt.trackid
INNER JOIN playlist pl ON pt.playlistid = pl.playlistid;

-- Write a SQL Query that determines what song(s) appear in the most playlists


-- Write a SQL Query that determines the 5th highest grossing song in 2009, 2010, 2011, 2012, and 2013
-- Write a SQL Query that determines the most downloaded genre by country
-- Write a SQL Query that determines the genres each salesperson contributes to most

SELECT DISTINCT ep.firstname AS EmployeeFirst, gr.name AS Genre, SUM(il.quantity) as Contribution
from employee ep
INNER JOIN customer cs ON ep.employeeid = cs.supportrepid
INNER JOIN invoice iv ON cs.customerid = iv.customerid
INNER JOIN invoiceline il ON iv.invoiceid = il.invoiceid
INNER JOIN track tr ON il.trackid = tr.trackid
INNER JOIN genre gr ON tr.genreid = gr.genreid
GROUP BY ep.firstname, gr.name
ORDER BY SUM(il.quantity) DESC;