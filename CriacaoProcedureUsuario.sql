delimiter #
create procedure sp_criauser(pusuario varchar(100))
begin
	declare variavel varchar(150);
    set @variavel = concat('create user ',pusuario,'@localhost');
    PREPARE execucao FROM @variavel;
    EXECUTE execucao;
    DEALLOCATE PREPARE execucao;
end#
delimiter ;
call sp_criauser('teste4');

select * from mysql.user;