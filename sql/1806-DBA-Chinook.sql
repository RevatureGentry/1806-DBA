--Select all records from the Employee table where
--first name is Andrew and REPORTSTO is NULL.

DESC employee;

SELECT * 
FROM EMPLOYEE
WHERE FIRSTNAME = 'Andrew' AND REPORTSTO IS NULL;

--Select all albums in Album table and sort result set in descending order by title.

DESC album;

SELECT *
FROM ALBUM
ORDER BY TITLE DESC;

--Update Aaron Mitchell in Customer table to Robert Walter 

DESC customer;

UPDATE CUSTOMER SET FIRSTNAME = 'Robert', LASTNAME = 'Walter'
WHERE FIRSTNAME = 'Aaron' AND LASTNAME = 'Mitchell';

--Select all employees hired between 1st of June 2003 and 1st of March 2004

SELECT
    firstname || ' ' || lastname AS Employee,
    title,
    hiredate
FROM EMPLOYEE
WHERE HIREDATE BETWEEN TO_DATE('06-01-2003', 'mm-dd-yyyy') AND TO_DATE('01/03/04', 'DD/MM/YY');

--Delete a record in Customer table where the name is Robert Walter (There may be constraints 
--that rely on this, find out how to resolve them).

DELETE FROM INVOICELINE WHERE INVOICEID IN (
    SELECT INVOICEID 
    FROM INVOICE
    WHERE CUSTOMERID = 32);

DELETE FROM INVOICE WHERE CUSTOMERID = 32;

DELETE FROM CUSTOMER WHERE CUSTOMERID = 32;

--6

SELECT
    c.firstname || ' ' || c.lastname as Customer,
    i.invoiceid
from customer c
inner join invoice i
on c.customerid = i.customerid;

--7

select
    c.customerid,
    c.firstname,c.lastname,
    i.invoiceid,
    i.total
        from customer c
        full outer join invoice i
        on c.customerid = i.invoiceid;
        
--8

select
    count(*)
    from customer c
    inner join invoice i
    on c.customerid = i.invoiceid;
    
select
    count(*)
from customer c
full outer join invoice i
on c.customerid = i.customerid;

--how many songs appear on each playlist

select
    ar.name as artist,
    count(t.trackid) as tracks,
    pl.name as playlist
from artist ar
inner join album al
on ar.artistid = al.artistid
inner join track t
on al.albumid = t.albumid
inner join playlisttrack pt
on pt.trackid = t.trackid
inner join playlist pl
on pt.playlistid = pl.playlistid
group by ar.name, pl.name
order by ar.name;




select
    count(t.trackid) as Tracks
from artist ar
inner join album al
on ar.artistid = al.artistid
inner join track t
on al.albumid = t.albumid
inner join playlisttrack pt
on t.trackid = pt.trackid
inner join playlist pl
on pt.playlistid = pl.playlistid
where ar.name = 'Aerosmith' and pl.name = 'Music';




create or replace view customer_information as
    select 
    c.customerid,
    c.firstname as customerfirst,
    c.lastname as customerlast,
    c.country,
    e.firstname as employeefirst,
    e.lastname as employeelast
    from
    customer c
    inner join employee e
    on c.supportrepid = e.employeeid;
    
    
select * from CUSTOMER_INFORMATION;



select
    to_char(avg(i.total), '$9.99') as avgvtotal,
    c.customerfirst,
    c.customerlast
    from invoice i
    inner join CUSTOMER_INFORMATION c
    on i.customerid = c.customerid
    group by c.customerfirst, c.customerlast;
    
    
    
select
    to_char(avg(i.total), '$99.99') as avgtotalinvoice,
    to_char(stddev(i.total), '$99.99') as stddevtotalinvoice,
    percentile_cont(0.73) within group (order by i.total) as percentilecont,
    percentile_disc(0.73) within group (order by i.total) as percentiledisc,
    c.country
from invoice i
inner join customer c
on i.customerid = c.customerid
group by c.country
order by c.country;