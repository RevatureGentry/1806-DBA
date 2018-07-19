-- Hello World 
-- PL/SQL 
-- Procedural Language extension to SQL
DECLARE 
    hello NUMBER(2);
    goodbye VARCHAR(15) DEFAULT 'Goodbye'; --variable assignment
BEGIN
    hello := 5 + 7; -- assignment
    IF hello = 12 THEN
        dbms_output.put_line('Hello is 12');
    ELSIF hello = 5 THEN
        dbms_output.put_line('Hello is not 12, it''s 5');
    ELSE
        dbms_output.put_line('Idk what the hello is');
    END IF;
END;
/
--- Procedures
declare
    width number := 5;
    pickles number; -- store the area OUT
begin
    GET_AREA(5, width, pickles, 'Rectangle');
    DBMS_OUTPUT.PUT_LINE(pickles);
    DBMS_OUTPUT.PUT_LINE(width);
end;
/
create or replace PROCEDURE 
    get_area(len IN NUMBER, width IN OUT NUMBER, area OUT NUMBER, shape 
IN VARCHAR)
AS
BEGIN
    CASE shape
        WHEN 'Square' THEN
            area := len * len;
        WHEN 'Rectangle' THEN
            area := len * width;
    END CASE;
    width := 100;
END;
/
--- Function
create or replace FUNCTION full_name(first_name VARCHAR, last_name 
VARCHAR) 
   RETURN VARCHAR IS full_name VARCHAR(150);
BEGIN 
    select concat(last_name, concat(', ', first_name) )
        into full_name from dual;
    return full_name;
END;
/
select FULL_NAME(lastname, firstname) from employee;
/
