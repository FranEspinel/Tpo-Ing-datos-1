create procedure cargar_razas(
    @nombre varchar(50),
    @nombrePlaneta varchar(100),
    @PorcentajeEnPlaneta float,
    @HabilidadPrincipal varchar(100),
    @HabilidadDefensa float,
    @HabilidadAtaque float
)
as begin
    insert into Razas(Nombre,HabilidadPrincipal,HabilidadDefensa,HabilidadAtaque)
    values(@nombre, @HabilidadPrincipal,@HabilidadDefensa,@HabilidadAtaque)
end;

exec cargar_razas 'Humanos','Tierra','100','Resiliencia','70','70'
exec cargar_razas 'Romulanos','Romulo','100','Inteligencia','60','80'
exec cargar_razas 'Klingones','Klingon','100','Pelear','50','90'