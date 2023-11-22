create procedure cargar_maniobras(
    @Nombre varchar(50),
    @Nombre_front varchar(50),
    @Descripcion varchar(100),
    @EnergiaManiobra float
) as begin 
    insert into maniobras(Nombre, Nombre_front, Descripcion, EnergiaManiobra) values (@Nombre, @Nombre_front, @Descripcion, @EnergiaManiobra)
end;

exec cargar_maniobras 'Cobra de Pugachov','Cobra de Pugachov','La cobra de Pugachev es una acrobacia aérea consistente en levantar el morro de la nave hasta formar un ángulo de 120° reduciendo drásticamente la velocidad en pocos segundos pero sin perder altura, incluso puede levantarse para luego volver a su trayectoria original.',25.0
exec cargar_maniobras 'Reabastecimiento en vuelo','Reabastecimiento en vuelo', 'El reabastecimiento en vuelo, es un medio versátil para aumentar el alcance y la autonomía en vuelo',0.0
exec cargar_maniobras 'Adaptado al perfil del terreno','Adaptado al perfil del terreno','Es un tipo de vuelo que se realiza a muy bajo nivel para evitar ser detectado y atacado por el enemigo en un ambiente de gran amenaza.',15.0
