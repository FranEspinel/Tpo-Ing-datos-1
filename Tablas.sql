create database Star_Trek
go
use Star_Trek
go

drop database Star_Trek
 
--diagrama de entidades relacional: https://lucid.app/lucidchart/8535c51d-d25d-4c1a-acd9-3943b116422b/edit?invitationId=inv_b7797475-bed9-4ffb-ad5d-e5c9e250f8c2&page=0_0#
 

--no se si a las columnas con nombres compuestos (nombremontania,nombrevulgar, etc) lo prefieren dejar como lo hice o si les gusta mas separado por _. Atte: Fran

create table Imperios (
ID_imperio int identity not null,
nombre varchar(50) not null,
TempPromedio float not null check (temppromedio >0),

primary key(id_imperio)
);
--la temperatura la medioms en Kelvin, uso el check por que la temperatura promedio no puede ser menor al 0 absoluto. Atte: Fran
 

create table Flotas (
ID_flota int identity not null,
Nombre varchar (50) not null,
ID_imperio int not null,
Mision varchar(100) not null, --tal vez crear una talbla con todas las misiones posibles e ir asignandolas x id? Atte: Fran
coordenadas varchar(100) not null check (coordenadas>=0 and coordenadas<128),

primary key (ID_flota),
foreign key (ID_imperio) references imperios(ID_imperio)
foreign key (Mision) references Misiones(mision)
);


create table Planetas (
Nombre varchar (100) not null,
NombreVulgar varchar (100) not null,
ID_imperio int not null,
Coordenadas varchar(50) not null check (coordenadas>=0 and coordenadas<128),
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
foreign key (NombrePlaneta) references planetas(Nombre)
);

create table Capitanes (
ID_capitan int identity not null,
Nombre varchar(50) not null,
ID_imperio int not null,
ID_nave varchar(50),
ID_raza int not null,
PlanetaNacimiento varchar(100) not null,
Inteligencia float not null,
Coraje float not null,

primary key (id_capitan),
foreign key (id_imperio) references imperios(id_imperio),
foreign key (id_nave) references naves(id_nave), temita con estas dos foreign, no me deja pq no son primarias en sus respectivas tablas. Atte: Fran
foreign key (id_raza) references razas(id_raza),

);


create table Naves (--ver el tema de la primary key. Atte: Fran
ID_nave varchar(50) not null,
Nombre varchar(50) not null,
ID_flota int not null,
ID_imperio int not null,
ID_capitan int not null,
Vida float not null,
Maniobras varchar(100) not null,--pasar a tabla especifica 
CapacidadDefensa float not null,
CapacidAdatque float not null,
EnergiaMax float not null check (energiamax > 0),
EnergiaAcumulada float not null, --aca le quiero agregar un check: check (energiaacumulada <= energiamax), pero me tira error AYUDA!! :( Atte: Fran
EnergiaManiobra float not null, --creo q seria mejor crear una tabla con todas la maniobras. Atte: Fran
VelMax float not null, --se mide en warps (warp 1 = velocidad de la luz,  warp n = vel luz x n)

foreign key (id_flota) references flotas (id_flota),
foreign key (id_imperio) references imperios (id_imperio),
foreign key (id_capitan) references capitanes (id_capitan)
);


create table razas_en_planetas ();

create table maniobras ();

create table accioens ();

create table naves_y_maniobras ();