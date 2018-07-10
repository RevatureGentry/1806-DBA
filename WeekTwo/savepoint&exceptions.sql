/* SAVEPOINT Example */
-- 1st run, customerid 60 does not exist. Revature is not set. phone is
-- 2nd, customerid 60 exists. insert causes ORA000001 (PK) -> WHEN OTHERS
BEGIN
    set transaction isolation level read committed;
    insert into customer(customerid, firstname, lastname, email)
        values(60, 'Dan', 'Pickles', 'dan.pickles@gmail.com');
    SAVEPOINT new_customer;
    DBMS_OUTPUT.PUT_LINE('set savepoint new_customer');
	update customer set company = 'Revature' where customerid = 60;
    update customer set supportrepid = 'abcd' where customerid = 60;
    exception
        when INVALID_NUMBER then
            DBMS_OUTPUT.PUT_LINE('invalid_number occurred');
            ROLLBACK TO new_customer;
        when OTHERS then
            DBMS_OUTPUT.PUT_LINE('some other exception occurred');
    update customer set phone = '+1 (931) 675-9977' where customerid = 60;
    COMMIT;
END;
/
delete from customer where customerid = 60;
commit;
/