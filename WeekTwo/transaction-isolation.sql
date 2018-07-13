/** Transaction Isolation Level **/

-- only one (1) transaction only
set transaction isolation level READ COMMITTED;
-- a bunch of DML statements: INSERT, UPDATE, DELETE
/
commit;
/

/* Phantom Read Example : Terminal A */
set transaction isolation level READ COMMITTED; --ignores any new records 'phantom'
select count(genreid) from genre; --27
commit;
/

/* Phantom Read Example : Terminal B */
insert into genre values (28, 'Extremely Hard Rock');
/
commit;
/
select count(genreid) from genre;
/

/* NRR Example : Terminal A */
set transaction isolation level SERIALIZABLE;
select avg(total) from invoice; -- $5.65
select sum(total) from INVOICE; -- $2328.60
/
commit;
/

/* NRR Example : Terminal B */
update invoice
set total = 1000
where INVOICEID = 412;
commit;
/