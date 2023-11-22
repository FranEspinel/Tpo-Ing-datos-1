create procedure cargar_acciones_de_flotas (
    @ID_accion int,
    @ID_flota int
) AS BEGIN
    INSERT INTO acciones_de_flotas(ID_accion, ID_flota) VALUES (@ID_accion, @ID_flota)
END;

exec cargar_acciones_de_flotas 1,1
exec cargar_acciones_de_flotas 1,2
exec cargar_acciones_de_flotas 1,3
exec cargar_acciones_de_flotas 1,4
exec cargar_acciones_de_flotas 1,5
exec cargar_acciones_de_flotas 1,6
exec cargar_acciones_de_flotas 1,7
exec cargar_acciones_de_flotas 1,8
exec cargar_acciones_de_flotas 1,9

exec cargar_acciones_de_flotas 2,1
exec cargar_acciones_de_flotas 2,2
exec cargar_acciones_de_flotas 2,3
exec cargar_acciones_de_flotas 2,4
exec cargar_acciones_de_flotas 2,5
exec cargar_acciones_de_flotas 2,6
exec cargar_acciones_de_flotas 2,7
exec cargar_acciones_de_flotas 2,8
exec cargar_acciones_de_flotas 2,9