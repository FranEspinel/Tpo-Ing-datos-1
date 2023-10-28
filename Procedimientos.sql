create procedure cargar_imperios(
@Nombre varchar(50),
@TempPromedio float)
as begin
insert into Imperios(nombre,TempPromedio) values (@Nombre, @TempPromedio)
end;
 
exec cargar_imperios 'Federacion unida de planetas','60'
exec cargar_imperios 'Imperio estelar romulano','58'
exec cargar_imperios 'Imperio Klingon','63'
--exec cargar_imperios 'Alianza ferengi','64'
--exec cargar_imperios 'Colectividad borg','55'
--exec cargar_imperios 'Union cardassiana','61'
;
----------------------------------------------------------------------------------------
create procedure cargar_flotas(
@Nombre varchar(50),
@id_imperio int,
@mision varchar(100),
@destino varchar(100))

as begin
insert into Flotas(Nombre,ID_imperio,Mision,Destino) values (@Nombre,@id_imperio,@mision,@destino)
end;

exec cargar_flotas '','','',''

----------------------------------------------------------------------------------------
create procedure cargar_planetas(
@Nombre varchar(100),
@nombrevulgar varchar(100),
@id_imperio int,
@coordenadas varchar(50),
@nombremontania varchar (50),
@alturamontania varchar(50)
)
as begin
insert into Planetas(Nombre,NombreVulgar,ID_imperio,Coordenadas,NombreMontania,AlturaMontania) 
values(@Nombre,@nombrevulgar,@id_imperio,@coordenadas,@nombremontania,@alturamontania)
end;

exec cargar_planetas '','','','','',''

----------------------------------------------------------------------------------------
create procedure cargar_razas(
@nombre varchar(50),
@nombrePlaneta varchar(100),
@PorcentajeEnPlaneta float,
@HabilidadPrincipal varchar (100),
@HabilidadDefensa float,
@HabilidadAtaque float
)
as begin
insert into Razas(Nombre,NombrePlaneta,PorcentajeEnPlaneta,HabilidadPrincipal,HabilidadDefensa,HabilidadAtaque)
values(@nombre,@nombrePlaneta,@PorcentajeEnPlaneta,@HabilidadPrincipal,@HabilidadDefensa,@HabilidadAtaque)
end;

exec cargar_razas '','','','','',''
----------------------------------------------------------------------------------------
create procedure cargar_capitanes(
@Nombre varchar(50),
@id_imperio int,
@id_nave int,
@id_raza int,
@planetanacimiento varchar(100),
@inteligencia float,
@coraje float
)
as begin
insert into Capitanes(Nombre,ID_imperio,id_nave,id_raza,planetanacimiento,inteligencia,coraje)
values (@nombre,@id_imperio,@id_nave, @id_raza, @planetanacimiento,@inteligencia,@coraje)

end
;

----------------------------------------------------------------------------------------
create procedure cargar_naves(
@id_nave int,
@Nombre varchar(50),
@ID_flota int,
@ID_imperio int,
@ID_capitan int,
@Vida float,
@Maniobras varchar(100),
@CapacidadDefensa float,
@CapacidadAtque float,
@EnergiaMax float ,
@EnergiaAcumulada float, 
@EnergiaManiobra float,
@velmax float
)
as begin

insert into naves(id_nave,nombre,id_flota,id_imperio,id_capitan,vida,maniobras,capacidaddefensa,capacidadataque,energiamax,energiaacumulada,energiamaniobra,velmax)
values(@id_nave,@nombre,@id_flota,@id_imperio,@id_capitan,@vida,@maniobras,@capacidaddefensa,@capacidadataque,@energiamax,@energiaacumulada,@energiamaniobra,@velmax)

end
;