create procedure cargar_naves(
    @Modelo varchar(50),
    @Nombre varchar(50),
    @ID_flota int,
    @ID_imperio int,
    @ID_capitan int,
    @Vida float,
    @Ultima_maniobra int,
    @CapacidadDefensa float,
    @CapacidadAtaque float,
    @EnergiaMax float ,
    @EnergiaAcumulada float, 
    @EnergiaManiobra float,
    @velmax float
)
as begin
    insert into naves(modelo,nombre,id_flota,id_imperio,id_capitan,vida,Ultima_maniobra,capacidaddefensa,CapacidAdatque,energiamax,energiaacumulada,energiamaniobra,velmax)
    values(@modelo,@nombre,@id_flota,@id_imperio,@id_capitan,@vida,@Ultima_maniobra,@capacidaddefensa,@capacidadataque,@energiamax,@energiaacumulada,@energiamaniobra,@velmax)
end;

exec cargar_naves 'NCC-1701-D','USS-Enterprise','1','1','1','100','-','-','-','-','-','-','-'


exec cargar_naves 'D deidex','D deidex','4','2','4','100','-','-','-','-','-','-','-'
exec cargar_naves 'NX-59650','Prometheus','5','2','5','100','-','-','-','-','-','-','-'


exec cargar_naves 'IKS TOng','IKS TOng','7','3','8','100','-','-','-','-','-','-','-'


exec cargar_naves 'NaveFerengi1','NaveFerengi1','10','4','11','100','-','-','-','-','-','-','-'