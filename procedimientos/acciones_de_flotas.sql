create procedure cargar_acciones_de_flotas (
    @ID_accion int,
    @ID_flota int
) AS BEGIN
    INSERT INTO acciones_de_flotas(ID_accion, ID_flota) VALUES (@ID_accion, @ID_flota)
END;