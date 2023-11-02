create procedure cargar_capitanes(
    @Nombre varchar(50),
    @id_imperio int,
    @id_nave int,
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
exec cargar_capitanes 'Jean Luc Picard','1','NCC-1701-D','1','Tierra','95','80'
exec cargar_capitanes 'James Tiberius Kirk','1',null,'1','Tierra','75','85'
exec cargar_capitanes 'William Riker','1',null,'1','Tierra','70','85'
exec cargar_capitanes 'Tomalak','2','D deidex','2','Romulo','90','75'
exec cargar_capitanes 'Rekar','2','NX-59650','2','Romulo','65','85'
exec cargar_capitanes 'K temoc','3','IKS TOng','3','Klingon','60','90'