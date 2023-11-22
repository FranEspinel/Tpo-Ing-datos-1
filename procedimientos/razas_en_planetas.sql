create procedure cargar_razas_en_planetas (
    @ID_raza int,
    @ID_planeta varchar(100),
    @Porcentaje_planeta float
) AS BEGIN
    INSERT INTO razas_en_planetas(ID_raza, ID_planeta, Porcentaje_planeta) VALUES (@ID_raza, @ID_planeta, @Porcentaje_planeta)
END;

exec cargar_razas_en_planetas 1,'FUP001',80.0
exec cargar_razas_en_planetas 3,'FUP001',5.0
exec cargar_razas_en_planetas 4,'FUP001',5.0
exec cargar_razas_en_planetas 6,'FUP001',5.0
exec cargar_razas_en_planetas 7,'FUP001',5.0

exec cargar_razas_en_planetas 1,'FUP002',15.0
exec cargar_razas_en_planetas 6,'FUP002',2.5
exec cargar_razas_en_planetas 7,'FUP002',82.5

exec cargar_razas_en_planetas 1,'FUP003',25.0
exec cargar_razas_en_planetas 2,'FUP003',25.0
exec cargar_razas_en_planetas 3,'FUP003',25.0
exec cargar_razas_en_planetas 4,'FUP003',25.0

exec cargar_razas_en_planetas 1,'FUP004',25.0
exec cargar_razas_en_planetas 2,'FUP004',25.0
exec cargar_razas_en_planetas 3,'FUP004',25.0
exec cargar_razas_en_planetas 4,'FUP004',25.0

exec cargar_razas_en_planetas 1,'IR001',1.0
exec cargar_razas_en_planetas 2,'IR001',98.0
exec cargar_razas_en_planetas 3,'IR001',1.0

exec cargar_razas_en_planetas 1,'IK001',10.0
exec cargar_razas_en_planetas 3,'IK001',85.0
exec cargar_razas_en_planetas 4,'IK001',5.0

exec cargar_razas_en_planetas 1,'IK002',7.5
exec cargar_razas_en_planetas 3,'IK002',90.0
exec cargar_razas_en_planetas 4,'IK002',2.5

exec cargar_razas_en_planetas 1,'AF001',7.5
exec cargar_razas_en_planetas 2,'AF001',1.0
exec cargar_razas_en_planetas 3,'AF001',1.5
exec cargar_razas_en_planetas 4,'AF001',80
exec cargar_razas_en_planetas 6,'AF001',8.0
exec cargar_razas_en_planetas 7,'AF001',2.0
