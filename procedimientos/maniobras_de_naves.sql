create procedure cargar_maniobras_de_naves (
    @ID_maniobra int,
    @ID_nave int
) AS BEGIN
    INSERT INTO maniobras_de_naves(ID_maniobra, ID_nave) VALUES (@ID_maniobra, @ID_nave)
END;