create procedure cargar_imperios(
    @Nombre varchar(50),
    @TempPromedio float)
as begin
    insert into Imperios(nombre,TempPromedio) values (@Nombre, @TempPromedio)
end;
 
exec cargar_imperios 'Federacion unida de planetas',60.0
exec cargar_imperios 'Imperio estelar romulano',58.0
exec cargar_imperios 'Imperio Klingon',63.0
exec cargar_imperios 'Alianza ferengi',64.0
exec cargar_imperios 'Colectividad borg',55.0
exec cargar_imperios 'Union cardassiana',61.0
;