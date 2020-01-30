--PROCEDURES DE SOMA


create or replace PROCEDURE SOCORRO(V1 NUMBER, V2 NUMBER) is
nomevariavel number(9);
begin
    NOMEVARIAVEL := V1 + V2;
    RETURN;
end;

CALL SOCORRO(45,69);


--===================================================================


create or replace PROCEDURE MEUDEUS is
nomevariavel number(9);
begin
    SELECT SALARY + SALARY INTO NOMEVARIAVEL
    FROM EMPLOYEES WHERE EMPLOYEE_ID = 120;

end;

CALL MEUDEUS();

