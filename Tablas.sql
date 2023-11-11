create procedure cargar_acciones (
    @Nombre varchar(50),
    @Nombre_front varchar(50),
    @Descripcion varchar(100)
) AS BEGIN
    INSERT INTO acciones(Nombre, Nombre_front, Descripcion) VALUES (@Nombre, @Nombre_front, @Descripcion)
END;