--Jeffrey Zhong
--Write SQL Queries that inserts 5 records into the Employee table
INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) VALUES (6, 'Adams', 'Andrew', 'General Manager', TO_DATE('1962-2-18 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2002-8-14 00:00:00','yyyy-mm-dd hh24:mi:ss'), '11120 Jasper Ave NW', 'Edmonton', 'AB', 'Canada', 'T5K 2N1', '+1 (780) 428-9482', '+1 (780) 428-3457', 'andrew@chinookcorp.com');
INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) VALUES (7, 'Edwards', 'Nancy', 'Sales Manager', 1, TO_DATE('1958-12-8 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2002-5-1 00:00:00','yyyy-mm-dd hh24:mi:ss'), '825 8 Ave SW', 'Calgary', 'AB', 'Canada', 'T2P 2T3', '+1 (403) 262-3443', '+1 (403) 262-3322', 'nancy@chinookcorp.com');
INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) VALUES (8, 'Peacock', 'Jane', 'Sales Support Agent', 2, TO_DATE('1973-8-29 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2002-4-1 00:00:00','yyyy-mm-dd hh24:mi:ss'), '1111 6 Ave SW', 'Calgary', 'AB', 'Canada', 'T2P 5M5', '+1 (403) 262-3443', '+1 (403) 262-6712', 'jane@chinookcorp.com');
INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) VALUES (9, 'Park', 'Margaret', 'Sales Support Agent', 2, TO_DATE('1947-9-19 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2003-5-3 00:00:00','yyyy-mm-dd hh24:mi:ss'), '683 10 Street SW', 'Calgary', 'AB', 'Canada', 'T2P 5G3', '+1 (403) 263-4423', '+1 (403) 263-4289', 'margaret@chinookcorp.com');
INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) VALUES (10, 'Johnson', 'Steve', 'Sales Support Agent', 2, TO_DATE('1965-3-3 00:00:00','yyyy-mm-dd hh24:mi:ss'), TO_DATE('2003-10-17 00:00:00','yyyy-mm-dd hh24:mi:ss'), '7727B 41 Ave', 'Calgary', 'AB', 'Canada', 'T3B 1Y7', '1 (780) 836-9987', '1 (780) 836-9543', 'steve@chinookcorp.com');

--Write SQL Queries that inserts 10 records into the Customer table
INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId) VALUES (10000, 'Luís', 'Gonçalves', 'Embraer - Empresa Brasileira de Aeronáutica S.A.', 'Av. Brigadeiro Faria Lima, 2170', 'São José dos Campos', 'SP', 'Brazil', '12227-000', '+55 (12) 3923-5555', '+55 (12) 3923-5566', 'luisg@embraer.com.br', 3);
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, SupportRepId) VALUES (10001, 'Leonie', 'Köhler', 'Theodor-Heuss-Straße 34', 'Stuttgart', 'Germany', '70174', '+49 0711 2842222', 'leonekohler@surfeu.de', 5);
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, SupportRepId) VALUES (10002, 'François', 'Tremblay', '1498 rue Bélanger', 'Montréal', 'QC', 'Canada', 'H2G 1A7', '+1 (514) 721-4711', 'ftremblay@gmail.com', 3);
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, SupportRepId) VALUES (100003, 'Bjørn', 'Hansen', 'Ullevålsveien 14', 'Oslo', 'Norway', '0171', '+47 22 44 22 22', 'bjorn.hansen@yahoo.no', 4);
INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, Country, PostalCode, Phone, Fax, Email, SupportRepId) VALUES (10004, 'František', 'Wichterlová', 'JetBrains s.r.o.', 'Klanova 9/506', 'Prague', 'Czech Republic', '14700', '+420 2 4172 5555', '+420 2 4172 5555', 'frantisekw@jetbrains.com', 4);
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, SupportRepId) VALUES (10005, 'Helena', 'Holý', 'Rilská 3174/6', 'Prague', 'Czech Republic', '14300', '+420 2 4177 0449', 'hholy@gmail.com', 5);
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, SupportRepId) VALUES (10006, 'Astrid', 'Gruber', 'Rotenturmstraße 4, 1010 Innere Stadt', 'Vienne', 'Austria', '1010', '+43 01 5134505', 'astrid.gruber@apple.at', 5);
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, SupportRepId) VALUES (10007, 'Daan', 'Peeters', 'Grétrystraat 63', 'Brussels', 'Belgium', '1000', '+32 02 219 03 03', 'daan_peeters@apple.be', 4);
INSERT INTO Customer (CustomerId, FirstName, LastName, Address, City, Country, PostalCode, Phone, Email, SupportRepId) VALUES (10008, 'Kara', 'Nielsen', 'Sønder Boulevard 51', 'Copenhagen', 'Denmark', '1720', '+453 3331 9991', 'kara.nielsen@jubii.dk', 4);
INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId) VALUES (10009, 'Eduardo', 'Martins', 'Woodstock Discos', 'Rua Dr. Falcão Filho, 155', 'São Paulo', 'SP', 'Brazil', '01007-010', '+55 (11) 3033-5446', '+55 (11) 3033-4564', 'eduardo@woodstock.com.br', 4);

--Write SQL Queries that inserts 2 new genres
INSERT INTO Genre (GenreId, Name) VALUES (26, 'HipNewMusic');
INSERT INTO Genre (GenreId, Name) VALUES (27, 'Rock2');

--Write SQL Queries that insert 3 of your favorite albums
INSERT INTO Album (AlbumId, Title, ArtistId) VALUES (500, 'abc', 126);
INSERT INTO Album (AlbumId, Title, ArtistId) VALUES (602, 'efg', 127);
INSERT INTO Album (AlbumId, Title, ArtistId) VALUES (700, 'hij', 127);

--Write a SQL Query that contains the names of all tracks that are longer than 6 minutes
Select Name, Milliseconds From Track Where Milliseconds > 360000

--Write a SQL Query to find the biggest song (which takes up the most space)
Select Name, Bytes From track Where Bytes = (select Max(Bytes) From track)

--Write a SQL Query that contains the titles of all albums with tracks longer than 6 minutes in them
Select Distinct Title FROM(Select Distinct Title ,TRACK.MILLISECONDS From Album Inner join Track ON Album.AlbumID = TRACK.AlbumID Where ( TRACK.MILLISECONDS > 360000))

--Write a SQL Query that contains the albumId and number of songs in the album
Select album.albumID, count(Track.TrackID)as NumberOfSongs From Album Inner join Track ON Album.AlbumID = TRACK.AlbumID Group by Album.AlbumID

--Write a SQL query that contains artist's names and the number of tracks they have produced (assume an artist produced a track if it appears in one of their albums)
Select artist.name, count(Track.TrackID) as NumberOfSongs From Artist Inner join Album ON Artist.ArtistID = Album.ArtistID Inner join Track ON Album.AlbumID = TRACK.AlbumID Group by Artist.name

--Write a SQL Query showing customers not in the US
Select CustomerID, FirstName, LastName, Country From Customer Where Country not like 'US' and Country not like 'United States' and Country not like 'USA'

--Write a SQL Query showing a unique list of billing countries on the Invoice table
Select Distinct BillingCountry FROM Invoice

--Write a SQL Query that shows the Invoice Total, Customer Name, Country, and Sales agent for all invoices and customers
Select Invoice.Total, Customer.FirstName || ' ' || Customer.Lastname as CustomerName, Customer.Country, Employee.FirstName || ' ' || Employee.Lastname as SalesAgent 
FROM INVOICE INNER JOIN Customer ON Invoice.customerid = Customer.customerid Inner Join Employee ON Customer.Supportrepid = Employee.Employeeid 

--Write a SQL Query that shows all Tracks, but displays no IDs. Should also include the Album name, Media Type, and Genre
Select Track.Name, Album.Title as AlbumTitle, Mediatype.Name as MediaType, Genre.Name as Genre FROM Track Inner join album ON Track.albumid = album.albumid 
Inner join Genre ON TRACK.GENREID = GENRE.GENREID Inner join MEDIATYPE ON track.mediatypeid = mediatype.mediatypeid


--Write a SQL Query that returns the Top 40 Songs for 2013
Select * FROM (Select  Track.Name , Count(Invoiceline.TrackID) as amount_of_times_bought 
FROM Track inner join Invoiceline ON Track.Trackid = invoiceline.trackid Inner join invoice on invoiceline.invoiceid = invoice.invoiceid Where Invoice.invoicedate between TO_DATE('2013-01-1 00:00:00','yyyy-mm-dd hh24:mi:ss') and TO_DATE('2013-12-31 23:59:59','yyyy-mm-dd hh24:mi:ss')
Group by Track.trackID, track.name Order by  Count( Invoiceline.TrackID) desc)
Where rownum <= 40 

--Write a SQL Query that shows which sales agent made the most in sales overall
Select * FROM(Select Employee.EmployeeID , Employee.FirstName || ' ' || Employee.Lastname as SalesAgent, count(employee.employeeID) as TotalSales
FROM INVOICE INNER JOIN Customer ON Invoice.customerid = Customer.customerid Inner Join Employee ON Customer.Supportrepid = Employee.Employeeid 
Group by employee.employeeID, Employee.FirstName || ' ' || Employee.Lastname) Where rownum = 1

--Write a SQL Query that shows the top 3 best selling artists
Select * FROM (Select Artist.ArtistID, Artist.Name, Count(INVOICELINE.INVOICELINEID) as TotalPurchases From Artist Inner join Album On Artist.ArtistID = Album.ArtistID Inner join Track
ON album.albumID = track.albumid Inner join InvoiceLine ON track.trackID = invoiceline.trackID Group by Artist.ArtistID, Artist.Name  Order BY Count(INVOICELINE.INVOICELINEID) DESC ) Where ROWNUM <=3

--Write a SQL Query to find the the managers of employees supporting Brazilian customers
Select Distinct t2.FirstName || ' ' || t2.LastName as ManagerName, t2.employeeID 
FROM Employee T1 inner join Employee T2 on t1.reportsto = t2.employeeID inner join customer on t1.employeeID = customer.supportrepid where customer.country = 'Brazil'

--Write a SQL Query that determines which artist has the most songs in each playlist

Select Distinct ID, Name, Max(numsong) FROM (  Select PLAYLISTTRACK.PLAYLISTID as ID, ARTIST.NAME as Name, Count (Playlisttrack.trackID) as numsong FROM Artist Inner join Album ON Artist.ArtistID = Album.ArtistID Inner join Track
ON Album.AlbumID = Track.AlbumID Inner join Playlisttrack ON Track.TrackID = Playlisttrack.TrackID Group by PlaylistTrack.PlaylistID, Artist.name)Group by ID, name Order by Name
--Write a SQL Query that determines what song(s) appear in the most playlists
Select Track.Name,Track.Trackid ,count(playlisttrack.trackid) as frequency FROM Track Inner join playlisttrack on Track.TrackID = playlisttrack.trackid group by TRACK.trackid, Track.name Order by frequency desc

--Write a SQL Query that determines the 5th highest grossing song in 2009, 2010, 2011, 2012, and 2013

--Write a SQL Query that determines the most downloaded genre by country


--Write a SQL Query that determines the genres each salesperson contributes to most
Select * FROM 
(Select Distinct Employee.EmployeeID, Employee.FirstName || ' ' || Employee.Lastname as SalesAgent, Count(Genre.GenreID) totalsales , Genre.Name
FROM Employee Inner join Customer on Employee.employeeid = Customer.Supportrepid
Inner join Invoice on Customer.CustomerID = Invoice.customerID
Inner join Invoiceline on Invoice.invoiceid = invoiceline.invoiceid
Inner join Track on Invoiceline.trackid = Track.Trackid
Inner join Genre on Track.genreid = Genre.Genreid  
Group by Employee.employeeid,Employee.FirstName || ' ' || Employee.Lastname, Genre.name Order BY totalsales desc)
Where rownum <=3