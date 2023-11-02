USE master;
GO
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Star_Trek')
BEGIN
    DROP DATABASE Star_Trek;
END;
GO


create database Star_Trek
go
use Star_Trek
go
 
--diagrama de entidades relacional: https://lucid.app/lucidchart/8535c51d-d25d-4c1a-acd9-3943b116422b/edit?invitationId=inv_b7797475-bed9-4ffb-ad5d-e5c9e250f8c2&page=0_0#

create table Imperios (
ID_imperio int identity not null,
nombre varchar(50) not null,
TempPromedio float not null check (temppromedio > 0),

primary key(id_imperio)
); 

create table maniobras (
    ID_maniobra int identity not null,
    Nombre varchar(50) not null,
    Nombre_front varchar(50) not null,
    Descripcion varchar(100),
    EnergiaManiobra float not null,

    primary key(id_maniobra)
);

create table acciones(
    ID_accion int identity not null,
    Nombre varchar(50) not null,
    Nombre_front varchar(50) not null,
    Descripcion varchar(100),

    primary key(ID_accion)
);

create table Flotas (
ID_flota int identity not null,
Nombre varchar (50) not null,
ID_imperio int not null,
Ultima_accion int not null,
coordenadas int not null check (coordenadas>=0 and coordenadas<128),

primary key (ID_flota),
foreign key (ID_imperio) references imperios(ID_imperio),
foreign key (Ultima_accion) references acciones(ID_accion)
);


create table Planetas (
Nombre varchar (100) not null,
NombreVulgar varchar (100) not null,
ID_imperio int not null,
Coordenadas int not null check (coordenadas>=0 and coordenadas<128),
NombreMontania varchar(50) not null,
AlturaMontania float not null,

primary key (Nombre),
foreign key (ID_imperio) references imperios(ID_imperio)
);


create table Razas (
ID_raza int identity not null,
Nombre varchar(50) not null,
HabilidadPrincipal varchar(100) not null,
HabilidadDefensa float not null,
HabilidadAtaque float not null,

primary key(ID_Raza),
);

create table Capitanes (
ID_capitan int identity not null,
Nombre varchar(50) not null,
ID_imperio int not null,
ID_raza int not null,
PlanetaNacimiento varchar(100) not null,
Inteligencia float not null,
Coraje float not null,

primary key (id_capitan),
foreign key (id_imperio) references imperios(id_imperio),
foreign key (id_raza) references razas(id_raza),
foreign key (PlanetaNacimiento) references planetas(nombre)
);


create table Naves (
ID_nave int identity not null,
Modelo varchar(50) not null,
Nombre varchar(50) not null,
ID_flota int not null,
ID_imperio int not null,
ID_capitan int not null,
Vida float not null,
Ultima_maniobra int not null,
CapacidadDefensa float not null,
CapacidAdatque float not null,
EnergiaMax float not null check (energiamax > 0),
EnergiaAcumulada float not null,
VelMax float not null,

primary key (id_nave),
foreign key (id_flota) references flotas (id_flota),
foreign key (id_imperio) references imperios (id_imperio),
foreign key (id_capitan) references capitanes (id_capitan),
foreign key (ultima_maniobra) references maniobras (id_maniobra),

check (EnergiaAcumulada <= EnergiaMax)
);


create table razas_en_planetas (
    ID_raza int not null,
    ID_planeta varchar(100) not null,
    Porcentaje_planeta float not null default 0.0,

    foreign key(id_raza) references razas(id_raza),
    foreign key(id_planeta) references planetas(nombre)    
);

create table maniobras_de_naves(
    ID_maniobra int not null,
    ID_nave int not null,
    
    foreign key(id_maniobra) references maniobras(id_maniobra),
    foreign key(id_nave) references naves(id_nave)
)

create table acciones_de_flotas(
    ID_accion int not null,
    ID_flota int not null,

    foreign key(ID_accion) references acciones(ID_accion),
    foreign key(ID_flota) references flotas(ID_flota)
);