create procedure cargar_imperios(
    @Nombre varchar(50),
    @TempPromedio float)
as begin
    insert into Imperios(nombre,TempPromedio) values (@Nombre, @TempPromedio)
end;
 
exec cargar_imperios 'Federacion unida de planetas','60'
exec cargar_imperios 'Imperio estelar romulano','58'
exec cargar_imperios 'Imperio Klingon','63'
exec cargar_imperios 'Alianza ferengi','64'
exec cargar_imperios 'Colectividad borg','55'
exec cargar_imperios 'Union cardassiana','61'
;