create procedure cargar_planetas(
    @Nombre varchar(100),
    @nombrevulgar varchar(100),
    @id_imperio int,
    @coordenadas int,
    @nombremontania varchar (50),
    @alturamontania float
)
as begin
    insert into Planetas(Nombre,NombreVulgar,ID_imperio,Coordenadas,NombreMontania,AlturaMontania) 
    values(@Nombre,@nombrevulgar,@id_imperio,@coordenadas,@nombremontania,@alturamontania)
end;

exec cargar_planetas 'FUP001','Tierra',1,'','Aconcagua',6961.0
exec cargar_planetas 'FUP002','Betazed',1,'','Aconcagua',6961.0
exec cargar_planetas 'FUP003','Trill',1,'','Aconcagua',6961.0
exec cargar_planetas 'FUP004','Janus IV',1,'','Aconcagua',6961.0


exec cargar_planetas 'IR001','Romulo',2,'','Everest',8849.0


exec cargar_planetas 'IK001','Qo nos',3,'','Makalu',8481.0
exec cargar_planetas 'IK002','Khitomer',3,'','Makalu',8481.0


exec cargar_planetas 'AF001','Ferenginar',4,'','Aconcagua',6961.0