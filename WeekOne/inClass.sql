-- Create an inner join that joins customers and orders and 
-- specifies the name of the customer and the invoiceId
SELECT
--    c.firstname || ' ' || c.lastname as Customer,
    c.firstname, c.lastname,
    i.invoiceid
FROM customer c
INNER JOIN invoice i
ON c.customerid = i.customerid;


-- Create an outer join that joins the customer and invoice table, specifying the 
--CustomerId, firstname, lastname, invoiceId, and total
SELECT
    c.customerid,
    c.firstname, c.lastname,
    i.invoiceid,
    i.total
FROM customer c
FULL OUTER JOIN invoice i
ON c.customerid = i.customerid;

-- Example of Inner Join => 405 records
SELECT 
    count(*)
FROM customer c
INNER JOIN invoice i
ON c.customerid = i.customerid;

-- Example of Full Outer Join => 405
SELECT
    COUNT(*)
FROM customer c
FULL OUTER JOIN invoice i
ON c.customerid = i.customerid;

-- Example using WHERE
SELECT
    COUNT(*)
FROM customer c, invoice i
WHERE c.customerid = i.customerid;

-- Write a query that returns the number of songs each artist has in each playlist
SELECT 
    ar.name as Artist,
    count(t.trackid) as Tracks,
    pl.name as Playlist
FROM artist ar 
INNER JOIN album al 
ON ar.artistid = al.artistid
INNER JOIN track t 
ON al.albumid = t.albumid
INNER JOIN playlisttrack pt
ON pt.trackid = t.trackid 
INNER JOIN playlist pl
ON pt.playlistid = pl.playlistid 
GROUP BY ar.name, pl.name
ORDER BY ar.name;


SELECT 
    count(t.trackid) as Tracks
FROM artist ar
INNER JOIN album al
ON ar.artistid = al.artistid
INNER JOIN track t
ON al.albumid = t.albumid
INNER JOIN playlisttrack pt
ON t.trackid = pt.trackid
INNER JOIN playlist pl
ON pt.playlistid = pl.playlistid
WHERE ar.name = 'Aerosmith' AND pl.name = 'Music';


CREATE OR REPLACE VIEW customer_information AS
    SELECT
        c.customerid,
        c.firstname as CustomerFirst,
        c.lastname as CustomerLast,
        c.country,
        e.firstname as EmployeeFirst,
        e.lastname as EmployeeLast
    FROM customer c 
    INNER JOIN employee e
    ON c.supportrepid = e.employeeid;

SELECT * FROM customer_information;

SELECT
    TO_CHAR(AVG(i.total), '$99.99') as AvgTotal,
    c.customerfirst,
    c.customerlast
FROM invoice i
INNER JOIN customer_information c
ON i.customerid = c.customerid
GROUP BY c.customerfirst, c.customerlast;


SELECT
    TO_CHAR(AVG(i.total), '$99.99') as AvgTotalInvoice,
    TO_CHAR(STDDEV(i.total), '$99.99') as StdDevTotalInvoice,
    PERCENTILE_CONT(0.73) WITHIN GROUP (ORDER BY i.total) as PercentileCont,
    PERCENTILE_DISC(0.73) WITHIN GROUP (ORDER BY i.total) AS PercentileDisc,
    c.country
FROM invoice i
INNER JOIN customer c
ON i.customerid = c.customerid 
GROUP BY c.country
ORDER BY c.country;


SELECT
    COUNT(t.trackid) as Tracks,
    c.firstname as Firstname,
    c.lastname as Lastname
FROM track t
INNER JOIN invoiceline il
ON t.trackid = il.trackid
INNER JOIN invoice i
ON il.invoiceid = i.invoiceid
INNER JOIN customer c
ON i.customerid = c.customerid
WHERE c.firstname = 'ROBERT' and c.lastname = 'WALTER'
GROUP BY c.firstname, c.lastname; 


CREATE INDEX ix_customer_country
    ON customer (country);


SELECT
    *
FROM customer
WHERE country = 'Brazil';