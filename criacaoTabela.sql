use bd201701;

create tablespace tbs1
add datafile 'C:/Banco/arq1.ibd'
engine = innodb;
create tablespace tbs2
add datafile 'C:/Banco/arq2.ibd'
engine = innodb;
CREATE TABLE usuario(
	usucpf char(14),
    usunome varchar(60) not null,
    usulogin varchar(20) not null,
    ususenha varchar(100),
    PRIMARY KEY(usucpf))
TABLESPACE tbs2
-- ROW_FORMAT = COMPRESSED 
ENGINE = INNODB;
drop table usuario; 

insert into usuario values ('111.111.111-11', 'USUARIO 1', 'LOGIN1', 'SENHA1');

select * from usuario;

drop table usuario;