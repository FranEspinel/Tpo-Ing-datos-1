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

exec cargar_flotas 'Flota FUP 1','1','-','Tierra'
exec cargar_flotas 'Flota Romulana 1','2','-','Romulo'
exec cargar_flotas 'Flota Klingon 1','3','-','Klingon'

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



exec cargar_planetas 'FUP001','Tierra','1','','Aconcagua','6961'
exec cargar_planetas 'IR001','Romulo','2','','Everest','8849'
exec cargar_planetas 'IK001','Klingon','3','','Makalu','8481'

----------------------------------------------------------------------------------------
create procedure cargar_razas(
@nombre varchar(50),
@nombrePlaneta varchar(100),
@PorcentajeEnPlaneta float check(PorcntajeEnPlaneta <=100 and PorcentajeEnPlaneta >=0),
@HabilidadPrincipal varchar (100),
@HabilidadDefensa float,
@HabilidadAtaque float
)
as begin
insert into Razas(Nombre,NombrePlaneta,PorcentajeEnPlaneta,HabilidadPrincipal,HabilidadDefensa,HabilidadAtaque)
values(@nombre,@nombrePlaneta,@PorcentajeEnPlaneta,@HabilidadPrincipal,@HabilidadDefensa,@HabilidadAtaque)
end;

exec cargar_razas 'Humanos','Tierra','100','Resiliencia','70','70'
exec cargar_razas 'Romulanos','Romulo','100','Inteligencia','60','80'
exec cargar_razas 'Klingones','Klingon','100','Pelear','50','90'
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
exec cargar_capitanes 'Jean Luc Picard','1','NCC-1701-D','1','Tierra','95','80'
exec cargar_capitanes 'James Tiberius Kirk','1',null,'1','Tierra','75','85'
exec cargar_capitanes 'William Riker','1',null,'1','Tierra','70','85'
exec cargar_capitanes 'Tomalak','2','D deidex','2','Romulo','90','75'
exec cargar_capitanes 'Rekar','2','NX-59650','2','Romulo','65','85'
exec cargar_capitanes 'K temoc','3','IKS TOng','3','Klingon','60','90'
--exec cargar_capitanes '','','','','','',''
----------------------------------------------------------------------------------------
create procedure cargar_naves(
@id_nave varchar(50),
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

exec cargar_naves 'NCC-1701-D','USS-Enterprise','1','1','1','100','-','-','-','-','-','-','-','-'
exec cargar_naves 'D deidex','D deidex','2','2','4','100','-','-','-','-','-','-','-','-'
exec cargar_naves 'NX-59650','Prometheus','2','2','5','100','-','-','-','-','-','-','-','-'
exec cargar_naves 'IKS TOng','IKS TOng','3','3','6','100','-','-','-','-','-','-','-','-'
