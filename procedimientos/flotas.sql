create procedure cargar_flotas(
    @Nombre varchar(50),
    @ID_imperio int,
    @Ultima_accion int,
    @coordenadas int
)
as begin
    insert into Flotas(Nombre,ID_imperio,Ultima_accion, coordenadas) values (@Nombre,@id_imperio,@Ultima_accion,@coordenadas)
end;

exec cargar_flotas 'Flota FUP 1','1','-','Tierra'
exec cargar_flotas 'Flota Romulana 1','2','-','Romulo'
exec cargar_flotas 'Flota Klingon 1','3','-','Klingon'