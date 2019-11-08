show databases;
use bd201701;
show tables;
desc bairro;
select * from bairro;
delete from  bairro
where baicodigo = 15;

select *
from information_schema.tables;

select * 
from information_schema.columns;

call sp_consulta_cli('centro');