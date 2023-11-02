create procedure cargar_maniobras(
    @Nombre varchar(50),
    @Nombre_front varchar(50),
    @Descripcion varchar(100),
    @EnergiaManiobra float
) as begin 
    insert into maniobras(Nombre, Nombre_front, Descripcion, EnergiaManiobra) values (@Nombre, @Nombre_front, @Descripcion, @EnergiaManiobra)
end;