create procedure cargar_razas_en_planetas (
    @ID_raza int,
    @ID_planeta int,
    @Porcentaje_planeta float
) AS BEGIN
    INSERT INTO razas_en_planetas(ID_raza, ID_planeta, Porcentaje_planeta) VALUES (@ID_raza, @ID_planeta, @Porcentaje_planeta)
END;
