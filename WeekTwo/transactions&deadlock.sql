/* Transaction & Deadlock Example */
-- Transaction A
update genre
set name = 'Thrash Metal'
where genreid = 25;
/
update genre
set name = 'Dan'
where genreid = 22;
/
rollback;
/
select * from genre;
/
--------------------------------------------------------------------
/* Transaction & Deadlock Example */
-- Transaction B
update genre
set name = 'Pickles'
where genreid = 22;
/
update genre
set name = 'Deathcore'
where genreid = 25;
/
commit;
/
-------------------------------------------------------------------