Create database Bolsa_De_Empleo_Para_Discapacitados;
use Bolsa_De_Empleo_Para_Discapacitados;
show databases;
drop database Bolsa_De_Empleo_Para_Discapacitados;

-- ID POSTULANTE --

-- id nacionalidad --
create table nacionalidades(
	id int primary key not null auto_increment,
	abreviatura varchar(2),
	descripcion varchar(15)
);

-- id Tipos Documentos --
create table tiposDocumentos(
	id int primary key not null auto_increment,
    abreviatura varchar(5),
    descripcion varchar(50)
);

-- id Generos 
create table generos(
	id int primary key not null auto_increment,
    abreviatura varchar(10),
    descripcion varchar(20)
);

-- id Etnias
create table etnias(
	id int primary key not null auto_increment,
    abreviatura varchar(10),
    descripcion varchar(20)
);

-- id fecha nacimiento
create table fechaNacimiento(
	id int primary key not null auto_increment,
    abreviatura varchar(10),
    descripcion varchar(20)
);

-- id localidades 
create table localidades(
	id int primary key not null auto_increment,
    descripcion varchar(20)
);

-- id Rh Grupo Sanguineo
create table rhGrupos(
	id int primary key not null auto_increment,
	grupos varchar(2),
    rhPositivo varchar(1),
    rhNegativo varchar(1)
);

-- id Estado Civil
create table estadoCivil(
	id int primary key not null auto_increment,
    abreviatura varchar(4),
    descripcion varchar(20)
);

-- TABLA PRINCIPAL POSTULANTES --
create table DATOS_BASICOS_POSTULANTES(
id int primary key not null auto_increment,
nombres varchar(60),
apellidos varchar(65),
id_nacionalidad int,
celular bigint,
celularAlterno bigint,
id_tipoDocumento int,
numeroDocumento bigint,
id_genero int,
id_etnia int,
id_fechaNacimiento int,
id_localidad int,
email varchar(70),
direccion varchar(20),
id_RhGrupoSanguineo int,
id_estadoCivil int,
usuarioPostulante varchar(20),
contraseñaPostualnte varchar(20),
foreign key (id_nacionalidad) references nacionalidades (id),
foreign key (id_tipoDocumento) references tiposDocumentos (id),
foreign key (id_genero) references generos (id),
foreign key (id_etnia) references etnias (id),
foreign key (id_fechaNacimiento) references fechaNacimiento (id),
foreign key (id_localidad) references localidades (id),
foreign key (id_RhGrupoSanguineo) references rhGrupos (id),
foreign key (id_estadoCivil) references estadoCivil (id)
);
show tables from Bolsa_De_Empleo_Para_Discapacitados;
select * from DATOS_BASICOS_POSTULANTES;

-- AGREGAR COLUMNA A LA TABLA PRINCIPAL - USUARIO Y CONTRASEÑA POSTULANTE 
alter table DATOS_BASICOS_POSTULANTES add column usuarioPostulante varchar(20);
alter table DATOS_BASICOS_POSTULANTES add column contraseñaPostulante varchar(20);


-- INSERT INTO valores abreviatura y descripcion de las tablas id datos basicos postulante --
-- insert into abreviatura y descripcion NACIONALIDADES 
insert into nacionalidades (abreviatura, descripcion)
	values ('C','Colombiano');
insert into nacionalidades (abreviatura, descripcion)
	values ('E','Extranjero');
    
select * from nacionalidades;

-- insert into abreviatura y descripcion DOCUMENTO
insert into tiposDocumentos(abreviatura, descripcion)
	values ('CC', 'Cédula de Ciudadanía');
insert into tiposDocumentos(abreviatura, descripcion)
	values ('TI', 'Tarjeta de Identidad');
insert into tiposDocumentos(abreviatura, descripcion)
	values ('RC', 'Registro Civil');
insert into tiposDocumentos(abreviatura, descripcion)
	values ('CE', 'Cédula de Extranjería');
insert into tiposDocumentos(abreviatura, descripcion)
	values ('PS', 'Pasaporte');
insert into tiposDocumentos(abreviatura, descripcion)
	values ('PEP', 'Permiso Especial de Permanencia');
insert into tiposDocumentos(abreviatura, descripcion)
	values ('PPT', 'Permiso por Protección Temporal');
    
select * from tiposDocumentos;

-- insert into abreviatura y descripcion GENERO
insert into generos(abreviatura, descripcion)
	values('M','Masculino');
insert into generos(abreviatura, descripcion)
	values('F','Femenino');
insert into generos(abreviatura, descripcion)
	values('TRNSG','Transgénero');
insert into generos(abreviatura, descripcion)
	values('TRNS','Transexual');
insert into generos(abreviatura, descripcion)
	values('NB','No Binario');
insert into generos(abreviatura, descripcion)
	values('CG','Cis género');
    
select * from generos;

-- insert into abreviatura y descripcion ETNIA
insert into etnias(abreviatura, descripcion)
	values('I','Indígena');
insert into etnias(abreviatura, descripcion)
	values('G','Gitano');
insert into etnias(abreviatura, descripcion)
	values('P','Palenquero');
insert into etnias(abreviatura, descripcion)
	values('AF','Afrodescendiente');
insert into etnias(abreviatura, descripcion)
	values('R','Raizal');
    
select * from etnias;

-- insert into abreviatura y descripcion FECHA NACIMIENTO
insert into fechaNacimiento(abreviatura, descripcion)
	values('D', 'Día');
insert into fechaNacimiento(abreviatura, descripcion)
	values('M', 'Mes');
insert into fechaNacimiento(abreviatura, descripcion)
	values('A', 'Año');
    
select * from fechaNacimiento;

-- insert into abreviatura y descripcion LOCALIDAD
insert into localidades(descripcion)
	values('Antonio Nariño');
insert into localidades(descripcion)
	values('Barrios Unidos');
insert into localidades(descripcion)
	values('Bosa');
insert into localidades(descripcion)
	values('Chapinero');
insert into localidades(descripcion)
	values('Ciudad Bolivar');
insert into localidades(descripcion)
	values('Engativá');
insert into localidades(descripcion)
	values('Fontibon');
insert into localidades(descripcion)
	values('Kennedy');
insert into localidades(descripcion)
	values('La Candelaria');
insert into localidades(descripcion)
	values('Los Mártires');
insert into localidades(descripcion)
	values('Puente Aranda');
insert into localidades(descripcion)
	values('Rafael Uribe Uribe');
insert into localidades(descripcion)
	values('San Cristóbal');
insert into localidades(descripcion)
	values('Santa Fe');
insert into localidades(descripcion)
	values('Suba');
insert into localidades(descripcion)
	values('Sumapaz');
insert into localidades(descripcion)
	values('Teusaquillo');
insert into localidades(descripcion)
	values('Tunjuelito');
insert into localidades(descripcion)
	values('Usaquén');
insert into localidades(descripcion)
	values('Usme');
    
select * from localidades;

-- insert into Grupo RhPositivo RhNegativo - GRUPO SANQUINEO RH
insert into rhGrupos(grupos, rhPositivo, rhNegativo)
	values('A', '+', '-');
insert into rhGrupos(grupos, rhPositivo, rhNegativo)
	values('B', '+', '-');
insert into rhGrupos(grupos, rhPositivo, rhNegativo)
	values('AB', '+', '-');
insert into rhGrupos(grupos, rhPositivo, rhNegativo)
	values('O', '+', '-');

select * from rhGrupos;

-- insert into abreviatura y descripcion ESTADO CIVIL
insert into estadoCivil(abreviatura, descripcion)
	values('SOL','Soltero');
insert into estadoCivil(abreviatura, descripcion)
	values('CAS','Casado');
insert into estadoCivil(abreviatura, descripcion)
	values('DIV','Divorciado');
insert into estadoCivil(abreviatura, descripcion)
	values('VID','Viudo');
    
select * from estadoCivil;


-- SUBTABLAS VINCULADAS A LA TABLA PRINCIPAL O ID --

-- EXPERIENCIA LABORAL
create table fechaInicio(
id int primary key not null auto_increment,
Dia int, 
Mes int,
Año int
);

-- id fecha fin
create table fechaFin(
id int primary key not null auto_increment,
Dia int, 
Mes int,
Año int
);

create table experienciaLaboral(
id int primary key not null auto_increment,
empresa varchar (30),
cargo varchar (30),
id_fechaInicio int,
id_fechaFin int,
foreign key(id_fechaInicio) references fechaInicio(id),
foreign key(id_fechaFin) references fechaFin(id)
);

select * from experienciaLaboral;
drop table experienciaLaboral;
alter table DATOS_BASICOS_POSTULANTES add id_experienciaLaboral int not null;
alter table DATOS_BASICOS_POSTULANTES add foreign key (id_experienciaLaboral) references experienciaLaboral(id);


-- DISCAPACIDAD
create table tipoDiscapacidad(
id int primary key not null auto_increment,
tipo varchar (15)
);

insert into tipoDiscapacidad(tipo)
	values('Física');
insert into tipoDiscapacidad(tipo)
	values('Mental');
insert into tipoDiscapacidad(tipo)
	values('Sensorial');
    
select * from tipoDiscapacidad;

create table gradoDiscapacidad(
id int primary key not null auto_increment,
abreviatura varchar(3),
descripcion varchar(25)
);

insert into gradoDiscapacidad(abreviatura, descripcion)
	values('G1','Nula');
insert into gradoDiscapacidad(abreviatura, descripcion)
	values('G2','Moderada');
insert into gradoDiscapacidad(abreviatura, descripcion)
	values('G3','Moderada con secuelas');
insert into gradoDiscapacidad(abreviatura, descripcion)
	values('G4','Grave');
insert into gradoDiscapacidad(abreviatura, descripcion)
	values('G5','Permanente');
    
select * from gradoDiscapacidad;

-- TABLA PRINCIPAL
create table discapacidad(
id int primary key not null auto_increment,
id_tipoDiscapacidad int,
descripcionDiscapacidad varchar (30),
id_gradoDiscapacidad int,
historialMedico varchar(100),
certificado varchar(100),
foreign key(id_tipoDiscapacidad) references tipoDiscapacidad(id),
foreign key(id_gradoDiscapacidad) references gradoDiscapacidad(id)
);

select * from discapacidad;
alter table DATOS_BASICOS_POSTULANTES add id_discapacidad int not null;
alter table DATOS_BASICOS_POSTULANTES add foreign key (id_discapacidad) references discapacidad(id);


-- ESTUDIOS
create table fechaInicioEstudios(
id int primary key not null auto_increment,
dia int, 
mes int, 
año int
);

create table fechaFinEstudios(
id int primary key not null auto_increment,
dia int, 
mes int, 
año int
);

-- TABLA PRINCIPAL
create table estudios(
id int primary key not null auto_increment,
institucion varchar(50),
titulo varchar(50),
id_fechaInicioEstudios int,
id_fechaFinEstudios int,
foreign key (id_fechaInicioEstudios) references fechaInicioEstudios(id),
foreign key (id_fechaFinEstudios) references fechaFinEstudios(id)
);

select * from estudios;
alter table DATOS_BASICOS_POSTULANTES add id_estudios int not null;
alter table DATOS_BASICOS_POSTULANTES add foreign key (id_estudios) references estudios(id);


-- HABILIDADES
create table nivelHabilidad(
id int primary key not null auto_increment,
niveles varchar(20)
);

insert into nivelHabilidad(niveles)
	values('Principiante');
insert into nivelHabilidad(niveles)
	values('Capaz');
insert into nivelHabilidad(niveles)
	values('Intermedio');
insert into nivelHabilidad(niveles)
	values('Eficaz');
insert into nivelHabilidad(niveles)
	values('Experimentado');
insert into nivelHabilidad(niveles)
	values('Avanzado');
insert into nivelHabilidad(niveles)
	values('Experto');

select * from nivelHabilidad;

-- TABLA PRINCIPAL --
create table habilidades(
id int primary key not null auto_increment,
habilidades varchar(50),
descripcion varchar(50),
id_nivel int,
foreign key (id_nivel) references nivelHabilidad(id)  
);

select * from habilidades;
alter table DATOS_BASICOS_POSTULANTES add id_habilidades int not null;
alter table DATOS_BASICOS_POSTULANTES add foreign key (id_habilidades) references habilidades(id);


-- IDIOMAS
create table nivelIdioma(
id int primary key not null auto_increment,
nivel varchar (30),
abreviatura varchar (15)
);

insert into nivelIdioma(nivel, abreviatura)
	values('Principiante','A0');
insert into nivelIdioma(nivel, abreviatura)
	values('Básico','A1-A2');
insert into nivelIdioma(nivel, abreviatura)
	values('Pre-intermedio','A2-B1');
insert into nivelIdioma(nivel, abreviatura)
	values('Intermedio','B1');
insert into nivelIdioma(nivel, abreviatura)
	values('Intermedio-alto','B2-C1');
insert into nivelIdioma(nivel, abreviatura)
	values('Avanzado','C2');
    
select * from nivelIdioma;
    
create table nivelHabla(
id int primary key not null auto_increment,
nivel varchar(15),
abreviatura varchar(2)
);

insert into nivelHabla(nivel, abreviatura)
	values('Malo','M');
insert into nivelHabla(nivel, abreviatura)
	values('Regular','R');
insert into nivelHabla(nivel, abreviatura)
	values('Bueno','B');
insert into nivelHabla(nivel, abreviatura)
	values('Excelente','E');
    
select * from nivelHabla; 

create table nivelLectura(
id int primary key not null auto_increment,
nivel varchar(15),
abreviatura varchar(2)
);

insert into nivelLectura(nivel, abreviatura)
	values('Malo','M');
insert into nivelLectura(nivel, abreviatura)
	values('Regular','R');
insert into nivelLectura(nivel, abreviatura)
	values('Bueno','B');
insert into nivelLectura(nivel, abreviatura)
	values('Excelente','E');
    
select * from nivelLectura;

create table nivelEscritura(
id int primary key not null auto_increment,
nivel varchar(15),
abreviatura varchar(2)
);

insert into nivelEscritura(nivel, abreviatura)
	values('Malo','M');
insert into nivelEscritura(nivel, abreviatura)
	values('Regular','R');
insert into nivelEscritura(nivel, abreviatura)
	values('Bueno','B');
insert into nivelEscritura(nivel, abreviatura)
	values('Excelente','E');
    
select * from nivelEscritura;

-- TABLA PRINCIPAL
create table idiomas(
id int primary key not null auto_increment,
idioma varchar(30),
id_nivel int,
id_habla int,
id_lectura int, 
id_escritura int,
foreign key(id_nivel) references nivelIdioma(id),
foreign key(id_habla) references nivelHabla(id),
foreign key(id_lectura) references nivelLectura(id),
foreign key(id_escritura) references nivelEscritura(id)
);

select * from idiomas;
alter table DATOS_BASICOS_POSTULANTES add id_idiomas int not null;
alter table DATOS_BASICOS_POSTULANTES add foreign key (id_idiomas) references idiomas(id);


-- REFERENCIAs LABORALES
-- TABLA PRINCIPAL
create table referenciasLaborales(
id int primary key not null auto_increment,
nombreEmpresa varchar(30),
puesto varchar(40),
telefono bigint,
direccion varchar(50),
correo varchar(50)
);

select * from referenciasLaborales;
alter table DATOS_BASICOS_POSTULANTES add id_referenciasLaborales int not null;
alter table DATOS_BASICOS_POSTULANTES add foreign key (id_referenciasLaborales) references referenciasLaborales(id);

-- REFERENCIAS PERSONALES
-- TABLA PRINCIPAL
create table referenciasPersonales(
id int primary key not null auto_increment,
nombres varchar(60),
apellidos varchar(60),
direccion varchar(50),
celular bigint,
correo varchar(60)
);

select * from referenciasPersonales;
alter table DATOS_BASICOS_POSTULANTES add id_referenciasPersonales int not null;
alter table DATOS_BASICOS_POSTULANTES add foreign key (id_referenciasPersonales) references referenciasPersonales(id);

-- ANTECEDENTES
-- TABLA PRINCIPAL
create table antecedentes(
id int primary key not null auto_increment,
policiales varchar(70),
procuraduria varchar(70),
contraloria varchar(70),
delitosSexuales varchar(70),
disciplinarios varchar(70)
);

select * from antecedentes;
alter table DATOS_BASICOS_POSTULANTES add id_antecedentes int not null;
alter table DATOS_BASICOS_POSTULANTES add foreign key (id_antecedentes) references antecedentes(id);


-- TABLA PRINCIPAL EMPRESA --
create table industria(
id int primary key not null auto_increment,
abreviatura varchar(2),
descripcion varchar(10)
);

create table sector(
id int primary key not null auto_increment,
abreviatura varchar(3),
descripcion varchar(20)
);

create table actividadEconomica(
id int primary key not null auto_increment,
descripcion varchar(30)
);

create table tipoEmpresa(
id int primary key not null auto_increment,
abreviatura varchar(2),
descripcion varchar(20)
);

create table tamaño(
id int primary key not null auto_increment,
descripcion varchar(20)
);


create table DATOS_BASICOS_EMPRESA(
id int primary key not null auto_increment,
razonSocial varchar(50),
direccion varchar(50),
email varchar(50),
id_industria int,
id_sector int,
rut bigint,
id_actividadEconomica int,
id_tipoEmpresa int,
nit varchar(30),
id_tamaño int,
contraseñaEmpresa varchar(20),
foreign key(id_industria) references industria(id),
foreign key(id_sector) references sector(id),
foreign key(id_actividadEconomica) references actividadEconomica(id),
foreign key(id_tipoEmpresa) references tipoEmpresa(id),
foreign key(id_tamaño) references tamaño(id)
);
select * from DATOS_BASICOS_EMPRESA;

-- AGREGAR COLUMNA A LA TABLA PRINCIPAL - CONTRASEÑA EMPRESA
alter table DATOS_BASICOS_EMPRESA add column contraseñaEmpresa varchar(20);

-- RECURSOS HUMANOS
create table recursosHumanos(
id int primary key not null auto_increment,
nombre varchar(50),
numeroContacto bigint,
correoElectronico varchar(50)
);

alter table DATOS_BASICOS_EMPRESA add id_recursosHumanos int not null;
alter table DATOS_BASICOS_EMPRESA add foreign key (id_recursosHumanos) references recursosHumanos(id);

