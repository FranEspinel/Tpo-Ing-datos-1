create procedure cargar_capitanes(
    @Nombre varchar(50),
    @id_imperio int,
    @id_raza int,
    @planetanacimiento varchar(100),
    @inteligencia float,
    @coraje float
)
as begin
    insert into Capitanes(Nombre,ID_imperio,id_raza,planetanacimiento,inteligencia,coraje)
    values (@nombre,@id_imperio, @id_raza, @planetanacimiento,@inteligencia,@coraje)
end
;
exec cargar_capitanes 'Jean Luc Picard', 1, 1,'Tierra', 95.0, 70.0
exec cargar_capitanes 'James Tiberius Kirk', 1, 1,'Tierra', 75.0, 75.0
exec cargar_capitanes 'William Riker', 1, 1,'Tierra', 74.0, 75.0


exec cargar_capitanes 'Tomalak', 2, 2,'Romulo', 73.0, 65.0
exec cargar_capitanes 'Rekar',2,2,'Romulo', 65, 75.0
exec cargar_capitanes 'Sela',2,2,'Tierra', 80.0, 75.0
exec cargar_capitanes 'Nero',2,2,'Romulo', 65.0, 78.0



exec cargar_capitanes 'K temoc',3,3,'Qo noS',65.0,90.0
exec cargar_capitanes 'Chang',3,3,'Qo noS',70.0,90.0
exec cargar_capitanes 'Martok',3,3,'Qo noS',55.0,90.0


exec cargar_capitanes 'Nog',4,4,'Ferenginar',55.0,80.0
exec cargar_capitanes 'Zek',4,4,'Ferenginar',50.0,82.0