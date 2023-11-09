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

exec cargar_razas 'Humanos','Tierra',100.0,'Resiliencia',70.0,70.0
exec cargar_razas 'Romulanos','Romulo',100.0,'Inteligencia',60.0,80.0
exec cargar_razas 'Klingones','Klingon',100.0,'Pelear',50.0,90.0