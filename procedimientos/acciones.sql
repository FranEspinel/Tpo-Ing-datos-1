create procedure cargar_acciones (
    @Nombre varchar(50),
    @Nombre_front varchar(50),
    @Descripcion varchar(100)
) AS BEGIN
    INSERT INTO acciones(Nombre, Nombre_front, Descripcion) VALUES (@Nombre, @Nombre_front, @Descripcion)
END;


exec cargar_acciones 'Mover','Mover Flota','Mueve la flota seleccionada hacia las coordenadas u objetivo indicado'
exec cargar_acciones 'Atacar','Atacar','Selecciona una flota enemiga para atacarla'
--exec cargar_acciones '','',''
--exec cargar_acciones '','',''
--exec cargar_acciones '','',''
