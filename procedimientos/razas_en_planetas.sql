create procedure cargar_razas_en_planetas (
    @ID_raza int,
    @ID_planeta int,
    @Porcentaje_planeta float
) AS BEGIN
    INSERT INTO razas_en_planetas(ID_raza, ID_planeta, Porcentaje_planeta) VALUES (@ID_raza, @ID_planeta, @Porcentaje_planeta)
END;

exec cargar_razas_en_planetas '1','1',80.0
exec cargar_razas_en_planetas '3','1',5.0
exec cargar_razas_en_planetas '4','1',5.0
exec cargar_razas_en_planetas '6','1',5.0
exec cargar_razas_en_planetas '7','1',5.0

exec cargar_razas_en_planetas '1','2',15.0
exec cargar_razas_en_planetas '6','2',2.5
exec cargar_razas_en_planetas '7','2',82.5

exec cargar_razas_en_planetas '1','3',25.0
exec cargar_razas_en_planetas '2','3',25.0
exec cargar_razas_en_planetas '3','3',25.0
exec cargar_razas_en_planetas '4','3',25.0

exec cargar_razas_en_planetas '1','4',25.0
exec cargar_razas_en_planetas '2','4',25.0
exec cargar_razas_en_planetas '3','4',25.0
exec cargar_razas_en_planetas '4','4',25.0

exec cargar_razas_en_planetas '1','5',1.0
exec cargar_razas_en_planetas '2','5',98.0
exec cargar_razas_en_planetas '3','5',1.0

exec cargar_razas_en_planetas '1','6',10.0
exec cargar_razas_en_planetas '3','6',85.0
exec cargar_razas_en_planetas '4','6',5.0

exec cargar_razas_en_planetas '1','7',7.5
exec cargar_razas_en_planetas '3','7',90.0
exec cargar_razas_en_planetas '4','7',2.5

exec cargar_razas_en_planetas '1','8',7.5
exec cargar_razas_en_planetas '2','8',1.0
exec cargar_razas_en_planetas '3','8',1.5
exec cargar_razas_en_planetas '4','8',80
exec cargar_razas_en_planetas '6','8',8.0
exec cargar_razas_en_planetas '7','8',2.0
