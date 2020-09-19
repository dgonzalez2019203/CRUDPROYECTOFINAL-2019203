drop database if exists DBRegistroProyecto;

create database DBRegistroProyecto;

use DBRegistroProyecto;

create table Persona(
	codigoPersona int not null auto_increment,
    DPI varchar(15) not null,
    nombrePersona varchar(125) not null,
    primary key PK_codigoPersona (codigoPersona)
);

-- INSERTS
insert into Persona(DPI, nombrePersona) values ('1706402621547','Lionel Messi');
insert into Persona(DPI, nombrePersona) values ('2326369966678','Cristiano Ronaldo');
insert into Persona(DPI, nombrePersona) values ('4898476516528','Juan Benitez');
insert into Persona(DPI, nombrePersona) values ('1996871313645','Agustin Ocaña');
insert into Persona(DPI, nombrePersona) values ('9215213357798','Raul Alvarado');

