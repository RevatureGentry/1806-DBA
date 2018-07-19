/* SEQUENCE */
CREATE SEQUENCE genre_sequence START WITH 29 INCREMENT BY 1; 

/* pre Oracle 12c -- sequence & trigger to make 'auto increment' primary keys */
CREATE OR REPLACE TRIGGER genre_sequence_pk 
    BEFORE INSERT ON genre
    FOR EACH ROW
BEGIN
    -- SELECT value INTO variable from table
    select genre_sequence.NEXTVAL into :NEW.genreid from dual;
END;
/
select * from genre;
/
-- test trigger
INSERT INTO GENRE(NAME) VALUES('Deephouse');
commit;
/
