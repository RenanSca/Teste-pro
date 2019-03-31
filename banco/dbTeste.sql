create database testePro;
use testePro;
create table tab_consulta(
cd_consulta int not null auto_increment,
nm_paciente varchar(200),
nm_email varchar(200),
telefone varchar(11),
nm_especialidade varchar(100),
dataConsulta date,
periodoConsulta varchar(20),
constraint pk_empresa
		primary key (cd_consulta));
/*------------------------------------------------------------------------------------*/
/*PROCEDURE DE INSERIR E ALTERAR CONSULTA*/
USE `testepro`;
DROP procedure IF EXISTS `sp_ins_consulta`;
DELIMITER $$
USE `testepro`$$
CREATE PROCEDURE `sp_ins_consulta`(
in codigo int,
in nome varchar(200),
in email varchar(200),
in telefone varchar(11),
in especialidade varchar(200),
in dataConsulta date,
in periodo varchar(20))
BEGIN
	if exists(select cd_consulta from tab_consulta where cd_consulta = codigo) then
		update tab_consulta
			set nm_especialidade = especialidade
            where cd_consulta = codigo;
	else
		insert into tab_consulta (cd_consulta, nm_paciente, nm_email, telefone, nm_especialidade, dataConsulta, periodoConsulta)
        values(codigo, nome, email, telefone, especialidade, dataConsulta, periodo);       
    end if;
END$$
DELIMITER ;
