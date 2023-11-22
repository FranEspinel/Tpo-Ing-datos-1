create procedure cargar_maniobras_de_naves (
    @ID_maniobra int,
    @ID_nave int
) AS BEGIN
    INSERT INTO maniobras_de_naves(ID_maniobra, ID_nave) VALUES (@ID_maniobra, @ID_nave)
END;
exec cargar_maniobras_de_naves 1,1
exec cargar_maniobras_de_naves 1,2
exec cargar_maniobras_de_naves 1,3
exec cargar_maniobras_de_naves 1,7
exec cargar_maniobras_de_naves 1,8
exec cargar_maniobras_de_naves 1,9
exec cargar_maniobras_de_naves 1,10
exec cargar_maniobras_de_naves 1,11
exec cargar_maniobras_de_naves 1,12
exec cargar_maniobras_de_naves 1,14

exec cargar_maniobras_de_naves 2,1
exec cargar_maniobras_de_naves 2,2
exec cargar_maniobras_de_naves 2,3
exec cargar_maniobras_de_naves 2,4
exec cargar_maniobras_de_naves 2,5
exec cargar_maniobras_de_naves 2,6
exec cargar_maniobras_de_naves 2,7
exec cargar_maniobras_de_naves 2,8
exec cargar_maniobras_de_naves 2,9
exec cargar_maniobras_de_naves 2,10
exec cargar_maniobras_de_naves 2,11
exec cargar_maniobras_de_naves 2,12
exec cargar_maniobras_de_naves 2,13
exec cargar_maniobras_de_naves 2,14
exec cargar_maniobras_de_naves 2,15
exec cargar_maniobras_de_naves 2,16

exec cargar_maniobras_de_naves 3,1
exec cargar_maniobras_de_naves 3,3
exec cargar_maniobras_de_naves 3,7
exec cargar_maniobras_de_naves 3,9
exec cargar_maniobras_de_naves 3,10
exec cargar_maniobras_de_naves 3,11
exec cargar_maniobras_de_naves 3,12
exec cargar_maniobras_de_naves 3,15