create procedure cargar_razas(
    @nombre varchar(50),
    @HabilidadPrincipal varchar(100),
    @HabilidadDefensa float,
    @HabilidadAtaque float
)
as begin
    insert into Razas(Nombre,HabilidadPrincipal,HabilidadDefensa,HabilidadAtaque)
    values(@nombre, @HabilidadPrincipal,@HabilidadDefensa,@HabilidadAtaque)
end;

exec cargar_razas 'Humanos','Resiliencia',70.0,70.0
exec cargar_razas 'Romulanos','Inteligencia',60.0,80.0
exec cargar_razas 'Klingones','Pelear',50.0,90.0
exec cargar_razas 'Ferengi','Robar',50.0,90.0