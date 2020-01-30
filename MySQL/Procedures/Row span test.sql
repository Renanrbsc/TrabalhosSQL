--procedure row span
CREATE PROCEDURE Add_loop_in_RenanBerti()
BEGIN
    DECLARE i int DEFAULT 1;
    WHILE i <= 50 DO
   		insert into RenanBerti (nome,sobrenome,idade) values ('Renan','Berti',21 ); 
        SET i = i + 1;
    END WHILE;
END

call Add_loop_in_RenanBerti()
--

--Procedure delete span   
CREATE PROCEDURE Delete_loop()
BEGIN
   		Delete from RenanBerti where nome = 'Renan'; 
END

CALL Delete_loop();
--
