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
exec cargar_capitanes 'Jean Luc Picard', 1, 1,'FUP001', 95.0, 70.0
exec cargar_capitanes 'James Tiberius Kirk', 1, 1,'FUP001', 75.0, 75.0
exec cargar_capitanes 'William Riker', 1, 1,'FUP001', 74.0, 75.0
exec cargar_capitanes 'Jorgito', 1, 6,'FUP004', 70.0, 70.0
exec cargar_capitanes 'Roman', 1, 3,'IK002', 70.0, 70.0
exec cargar_capitanes 'Claudia', 1, 1,'FUP003', 70.0, 70.0
exec cargar_capitanes 'Sabrina', 1, 6,'FUP004', 70.0, 70.0
exec cargar_capitanes 'Romina', 1, 7,'FUP002', 70.0, 70.0

exec cargar_capitanes 'Tomalak', 2, 2,'IR001', 73.0, 65.0
exec cargar_capitanes 'Rekar',2,2,'IR001', 65, 75.0
exec cargar_capitanes 'Sela',2,1,'FUP001', 80.0, 75.0
exec cargar_capitanes 'Nero',2,2,'IR001', 65.0, 78.0
exec cargar_capitanes 'Mirta',2,2,'IR001', 70.0, 70.0
exec cargar_capitanes 'Javier',2,2,'IR001', 70.0, 70.0
exec cargar_capitanes 'Sergio',2,2,'IR001', 70.0, 70.0
exec cargar_capitanes 'Mauricio',2,2,'IR001', 70.0, 70.0

exec cargar_capitanes 'K temoc',3,3,'IK001',65.0,90.0
exec cargar_capitanes 'Chang',3,3,'IK001',70.0,90.0
exec cargar_capitanes 'Martok',3,3,'IK001',55.0,90.0
exec cargar_capitanes 'Yi',3,3,'IK001',70.0,70.0
exec cargar_capitanes 'Rammus',3,3,'IK001',70.0,70.0
exec cargar_capitanes 'Shivanna',3,3,'IK001',70.0,70.0
exec cargar_capitanes 'Nocturne',3,3,'IK001',70.0,70.0

exec cargar_capitanes 'Nog',4,4,'AF001',55.0,80.0
exec cargar_capitanes 'Zek',4,4,'AF001',50.0,82.0

exec cargar_capitanes 'Borg',5,5,'Borg',70.0,70.0


