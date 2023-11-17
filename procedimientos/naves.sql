create procedure cargar_naves(
    @Modelo varchar(50),
    @Nombre varchar(50),
    @ID_flota int,
    @ID_imperio int,
    @ID_capitan int,
    @Vida float,
    @Ultima_maniobra int = null,
    @CapacidadDefensa float = null,
    @CapacidadAtaque float = null,
    @EnergiaMax float = null ,
    @EnergiaAcumulada float = null, 
    @velmax float = null
)
as begin
    insert into naves(modelo,nombre,id_flota,id_imperio,id_capitan,vida,Ultima_maniobra,capacidaddefensa,capacidadataque,energiamax,energiaacumulada,velmax)
    values(@modelo,@nombre,@id_flota,@id_imperio,@id_capitan,@vida,@Ultima_maniobra,@capacidaddefensa,@capacidadataque,@energiamax,@energiaacumulada,@velmax)
end;

exec cargar_naves 'NCC-1701-D','USS-Enterprise',1,1,1,100.0
exec cargar_naves 'NaveFUP1','NaveFUP1',1,1,2,100.0
exec cargar_naves 'NCC-1701-A','USS-Enterprise-A',1,1,3,100.0
exec cargar_naves 'NaveFUP2','NaveFUP2',2,1,4,100.0
exec cargar_naves 'NaveFUP3','NaveFUP3',2,1,5,100.0
exec cargar_naves 'NaveFUP4','NaveFUP4',3,1,6,100.0

exec cargar_naves 'D deidex','D deidex',4,2,9,100.0
exec cargar_naves 'NaveIR1','NaveIR1',4,2,11,100.0
exec cargar_naves 'NX-59650','Prometheus',5,2,12,100.0
exec cargar_naves 'NaveIR2','NaveIR2',5,2,13,100.0

exec cargar_naves 'IKS TOng','IKS TOng',6,3,17,100.0
exec cargar_naves 'NaveIK1','NaveIK1',6,3,18,100.0

exec cargar_naves 'NaveFerengi1','NaveFerengi1',7,4,24,100.0
exec cargar_naves 'NaveFerengi2','NaveFerengi2',7,4,28,100.0

exec cargar_naves 'Borg','Borg',8,5,26,100.0

exec cargar_naves 'NaveCardasiana1','NaveCardasiana1',9,6,11,100.0

