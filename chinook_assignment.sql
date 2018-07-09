--Write SQL Queries that inserts 5 records into the Employee table
INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) 
VALUES (9, 'Corbus', 'Dylan', 'IT Staff', 2, TO_DATE('1995-4-23 05:26:30','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2018-7-2 00:00:00','yyyy-mm-dd hh24:mi:ss'), '4741 Canela Way', 'San Jose', 'CA', 'USA', 'T2P 5M5', '+1 (408) 722-7387', '+1 (408) 722-7381', 'Dylan@chinookcorp.com');

INSERT INTO EMPLOYEE (EmployeeID, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email)
VALUES (10, 'Smith', 'John', 'IT Staff', 2, TO_DATE('1995-4-25 00:00:00', 'yyyy-mm-dd hh24:mi:ss'), TO_DATE('2018-7-2 00:00:00', 'yyyy-mm-dd hh24:mi:ss'), '14792 Excaliber Driver', 'Morgan Hill', 'CA', 'USA', 'T2P 5M5', '+1 (408) 722-7382', '+1 (408) 722-7384', 'John@chinookcorp.com');

INSERT INTO EMPLOYEE (EmployeeID, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email)
VALUES (11, 'Smith', 'Jen', 'IT Staff', 2, TO_DATE('1995-5-25 00:00:00', 'yyyy-mm-dd hh24:mi:ss'), TO_DATE('2018-7-2 00:00:00', 'yyyy-mm-dd hh24:mi:ss'), '14794 Excaliber Driver', 'Morgan Hill', 'CA', 'USA', 'T2P 535', '+1 (408) 722-7322', '+1 (408) 722-7184', 'Jen@chinookcorp.com');

INSERT INTO EMPLOYEE (EmployeeID, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email)
VALUES (12, 'Smith', 'Jan', 'IT Staff', 2, TO_DATE('1995-9-25 00:00:00', 'yyyy-mm-dd hh24:mi:ss'), TO_DATE('2018-7-2 00:00:00', 'yyyy-mm-dd hh24:mi:ss'), '13792 Excaliber Driver', 'Morgan Hill', 'CA', 'USA', 'T2P 5M5', '+1 (408) 721-7382', '+1 (408) 722-7324', 'Jan@chinookcorp.com');

INSERT INTO EMPLOYEE (EmployeeID, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email)
VALUES (13, 'Johnson', 'Rob', 'IT Staff', 6, TO_DATE('1995-1-25 00:00:00', 'yyyy-mm-dd hh24:mi:ss'), TO_DATE('2018-7-2 00:00:00', 'yyyy-mm-dd hh24:mi:ss'), '13752 Excaliber Driver', 'Morgan Hill', 'CA', 'USA', 'T2P 5M5', '+1 (408) 741-7382', '+1 (408) 729-7324', 'Rob@chinookcorp.com');
--Write SQL Queries that inserts 10 records into the Customer table
INSERT INTO CUSTOMER (CustomerID, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepID)
VALUES (62, 'Jon', 'Rith', 'Google', '42771 Canela Way', 'San Jose', 'CA', 'USA', '95136', '+420 2 4472 5555', '+420 2 7172 5555', 'Jonsmith11@gmail.com', 4);

INSERT INTO CUSTOMER (CustomerID, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepID)
VALUES (63, 'Jon', 'Smithson', 'Google', '72 Canela Way', 'San Jose', 'CA', 'USA', '95136', '+420 2 4472 5555', '+420 2 7172 5555', 'Jonsmi22th@gmail.com', 4);

INSERT INTO CUSTOMER (CustomerID, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepID)
VALUES (64, 'Jon', 'Seith', 'Google', '4778241 Canela Way', 'San Jose', 'CA', 'USA', '95136', '+420 2 4472 5555', '+420 2 7172 5555', 'Jonsm33ith@gmail.com', 4);

INSERT INTO CUSTOMER (CustomerID, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepID)
VALUES (65, 'Jon', 'Welch', 'Google', '472841 Canela Way', 'San Jose', 'CA', 'USA', '95136', '+420 2 4472 5555', '+420 2 7172 5555', 'Jonsmith@44gmail.com', 4);

INSERT INTO CUSTOMER (CustomerID, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepID)
VALUES (66, 'Jon', 'Lith', 'Google', '472741 Canela Way', 'San Jose', 'CA', 'USA', '95136', '+420 2 4472 5555', '+420 2 7172 5555', 'Jonsmith445@gmail.com', 4);

INSERT INTO CUSTOMER (CustomerID, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepID)
VALUES (67, 'Jon', 'Sith', 'Google', '477841 Canela Way', 'San Jose', 'CA', 'USA', '95136', '+420 2 4472 5555', '+420 2 7172 5555', 'Jonsm56ith@gmail.com', 4);

INSERT INTO CUSTOMER (CustomerID, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepID)
VALUES (68, 'Jon', 'Juarez', 'Google', '477241 Canela Way', 'San Jose', 'CA', 'USA', '95136', '+420 2 4472 5555', '+420 2 7172 5555', 'Jonsmi572th@gmail.com', 4);

INSERT INTO CUSTOMER (CustomerID, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepID)
VALUES (69, 'Jon', 'Gonzales', 'Google', '4778241 Canela Way', 'San Jose', 'CA', 'USA', '95136', '+420 2 4472 5555', '+420 2 7172 5555', 'Jonsmith8752@gmail.com', 4);
--Write SQL Queries that inserts 2 new genres
INSERT INTO GENRE (GENREID, NAME)
Values (26, 'Genre2');

INSERT INTO GENRE (GENREID, NAME)
Values (27, 'Genre1');
--Write SQL Queries that insert 3 of your favorite albums
INSERT INTO Album (ALbumID, Title, ArtistID)
values (348, 'My Album', 1);

insert into album (AlbumID, Title, ArtistID)
Values (349, 'My Album 2', 1);

insert into album (AlbumID, Title, ArtistID)
Values (350, 'My Album 2', 1);
--Write a SQL Query that contains the names of all tracks that are longer than 6 minutes
Select NAME, MILLISECONDS
From TRACK
Where (MILLISECONDS/1000)/60 > 6;
--Write a SQL Query to find the biggest song (which takes up the most space)
select name, bytes
from Track
where bytes=(select Max(bytes) as Tracksize
from track);
--Write a SQL Query that contains the titles of all albums with tracks longer than 6 minutes in them
Select distinct album.TITLE
    From album inner join track on TRACK.ALBUMID=album.ALBUMID 
    Where (track.MILLISECONDS/1000)/60 > 6;
--Write a SQL Query that contains the albumId and number of songs in the album
select album.Albumid, count(track.trackid) as Count
from album inner join track on album.albumid=track.albumid
group by album.ALBUMID;
--Write a SQL query that contains artist's names and the number of tracks they have produced (assume an artist produced a track if it appears in one of their albums)
select artist.name, count(track.trackid) as count
from track inner join album on TRACK.ALBUMID=album.ALBUMID
inner join artist on artist.artistid=album.ARTISTID
group by artist.name;
--Write a SQL Query that returns the most purchased media type
select MEDIATYPE.name, count(invoiceline.trackid) as timespurchased
from MEDIATYPE inner join track on MEDIATYPE.MEDIATYPEID=track.MEDIATYPEID
inner join INVOICELINE on track.TRACKID=INVOICELINE.TRACKID
group by mediatype.name
order by timespurchased desc;
--Write a SQL Query showing customers not in the US
select firstname ||'  ' || lastname, country
from customer
where country <> 'US';



--Write a SQL Query showing a unique list of billing countries on the Invoice table
Select distinct customer.country
from customer inner join INVOICE on customer.customerid=INVOICE.CUSTOMERID;
--Write a SQL Query that shows the Invoice Total, Customer Name, Country, and Sales agent for all invoices and customers
Select invoice.total, customer.firstname || '  ' || customer.lastname, customer.country, employee.firstname || '  ' || employee.lastname
from invoice inner join customer on customer.customerid=INVOICE.CUSTOMERID
inner join employee on customer.supportrepid=employee.employeeid;
--Write a SQL Query that shows all Tracks, but displays no IDs. Should also include the Album name, Media Type, and Genre
select Track.name, genre.name, album.title, mediatype.name 
from track left join genre on track.GENREID=genre.GENREID
left join album on track.albumid=album.ALBUMID
left join MEDIATYPE on MEDIATYPE.MEDIATYPEID=track.mediatypeid;
--Write a SQL Query that returns the Top 40 Songs for 2013
Select *
from (select track.name, count(invoiceline.trackid) as count
from track inner join INVOICELINE on track.TRACKID=INVOICELINE.TRACKID
inner join invoice on invoice.INVOICEID=INVOICELINE.INVOICEID
where invoice.INVOICEDATE between '01-JAN-13' and '31-DEC-13'
group by track.name
order by count desc)
where rownum <= 40;
--Write a SQL Query that shows which sales agent made the most in sales overall
select employee.firstname || '  ' || employee.lastname, count(invoice.invoiceid) as sales
from EMPLOYEE inner join CUSTOMER on CUSTOMER.SUPPORTREPID=EMPLOYEE.EMPLOYEEID
inner join INVOICE on customer.customerid=INVOICE.CUSTOMERID
group by employee.firstname || '  ' || employee.lastname
order by sales desc;
--Write a SQL Query that shows the top 3 best selling artists
Select *
From (select Artist.name, count(invoiceline.trackid) as count
from Artist inner join album on Artist.ARTISTID=album.ARTISTID
inner join track on album.ALBUMID=track.ALBUMID
inner join invoiceline on track.TRACKID=INVOICELINE.TRACKID
group by artist.NAME
order by count desc)
where rownum <=3;

--Write a SQL Query that returns which albums that have no Heavy Metal tracks
select distinct album.title
from album inner join track on track.ALBUMID=album.ALBUMID
inner join genre on track.GENREID=genre.GENREID
where genre.NAME <> 'Heavy metal';
--Write a SQL Query to find the managers of employees supporting Brazilian customers
select distinct concat(Concat(m.firstname, ' '), m.lastname) as man
from employee m inner join employee e on e.REPORTSTO=m.EMPLOYEEID
inner join customer c on e.EMPLOYEEID=c.SUPPORTREPID
where c.country like 'Brazil';
--Write a SQL Query that determines which artist has the most songs in each playlist
Select * 
from (select artist.name, count(playlisttrack.trackid) as tracks
from artist inner join album on artist.artistid = album.ARTISTID
inner join track on track.albumid = album.ALBUMID
inner join PLAYLISTTRACK on track.trackid=PLAYLISTTRACK.TRACKID
group by artist.name
order by tracks desc)
where rownum = 1;
--Write a SQL Query that determines what song(s) appear in the most playlists
Select * 
from (select track.name, count(playlisttrack.trackid) as tracks_in_playlists
from track inner join PLAYLISTTRACK on track.trackid=PLAYLISTTRACK.TRACKID
group by track.NAME
order by tracks_in_playlists desc)
where rownum <= 10;
--Write a SQL Query that determines the 5th highest grossing song in 2009, 2010, 2011, 2012, and 2013
select *
from (select track.name, sum(invoiceline.unitprice) as dollars
from track inner join INVOICELINE on track.trackid=INVOICELINE.TRACKID
inner join INVOICE on INVOICE.INVOICEID=INVOICELINE.INVOICEID
where INVOICE.INVOICEDATE between '01-JAN-2009' and '12-DEC-2013'
group by track.name
order by dollars Desc)
where rownum = 1;
--Write a SQL Query that determines the most downloaded genre by country
select customer.country, genre.name, count(invoiceline.trackid)as count
from customer inner join INVOICE on customer.customerid=INVOICE.CUSTOMERID
inner join invoiceline on invoice.invoiceid=invoiceline.INVOICEID
inner join track on invoiceline.TRACKID=track.TRACKID
inner join genre on track.genreid=genre.GENREID
group by customer.country, genre.name
order by customer.country, count desc;
--Write a SQL Query that determines the genres each salesperson contributes to most
Select *
from (select employee.firstname, genre.name, count(invoiceline.quantity) as Timescontributed
from employee inner join customer on employee.EMPLOYEEID=customer.SUPPORTREPID
inner join invoice on customer.customerid=invoice.customerid
inner join invoiceline on invoice.invoiceid=invoiceline.INVOICEID
inner join track on invoiceline.TRACKID=track.trackid
inner join genre on track.genreid=genre.GENREID
group by employee.firstname, genre.name
order BY timescontributed desc)
where rownum <=3;

