create procedure cargar_flotas(
    @Nombre varchar(50),
    @ID_imperio int,
    @Ultima_accion int,
    @coordenadas int
)
as begin
    insert into Flotas(Nombre,ID_imperio,Ultima_accion, coordenadas) values (@Nombre,@id_imperio,@Ultima_accion,@coordenadas)
end;

exec cargar_flotas 'Flota FUP 1','1','-','-'
exec cargar_flotas 'Flota FUP 2','1','-','-'
exec cargar_flotas 'Flota FUP 3','1','-','-'


exec cargar_flotas 'Flota Romulana 1','2','-','-'
exec cargar_flotas 'Flota Romulana 2','2','-','-'
exec cargar_flotas 'Flota Romulana 3','2','-','-'


exec cargar_flotas 'Flota Klingon 1','3','-','-'
exec cargar_flotas 'Flota Klingon 2','3','-','-'
exec cargar_flotas 'Flota Klingon 3','3','-','-'


exec cargar_flotas 'Flota Ferengi 1','4','-','-'
exec cargar_flotas 'Flota Ferengi 2','4','-','-'
exec cargar_flotas 'Flota Ferengi 3','4','-','-'


exec cargar_flotas 'Flota Borg 1','5','-','-'
exec cargar_flotas 'Flota Borg 2','5','-','-'
exec cargar_flotas 'Flota Borg 3','5','-','-'


exec cargar_flotas 'Flota Cardassiana 1','6','-','-'
exec cargar_flotas 'Flota Cardassiana 2','6','-','-'
exec cargar_flotas 'Flota Cardassiana 3','6','-','-'