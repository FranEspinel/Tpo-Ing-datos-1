create procedure cargar_flotas(
    @Nombre varchar(50),
    @ID_imperio int,
    @Ultima_accion int = null,
    @coordenadas int = null
)
as begin
    insert into Flotas(Nombre,ID_imperio,Ultima_accion, coordenadas) values (@Nombre,@id_imperio,@Ultima_accion,@coordenadas)
end;

exec cargar_flotas 'Flota FUP 1',1
exec cargar_flotas 'Flota FUP 2',1
exec cargar_flotas 'Flota FUP 3',1

exec cargar_flotas 'Flota Romulana 1',2
exec cargar_flotas 'Flota Romulana 2',2

exec cargar_flotas 'Flota Klingon 1',3

exec cargar_flotas 'Flota Ferengi 1',4

exec cargar_flotas 'Flota Borg 1',5

exec cargar_flotas 'Flota Cardassiana 1',6
