/************************************************************************************
Descripción: Objeto encargado de crear la tabla "MBC_ESTADOS_CASOS"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

CREATE TABLE APP_GEST_LOCALES.MBC_ESTADOS_CASOS
(
	ID_ESTADO_CASO			NUMBER(2),
	ESTADO                  VARCHAR2(10)	NOT NULL,
	CONSTRAINT MBC_ESTADOS_CASOS_UNIQUE UNIQUE (ESTADO)
)
TABLESPACE TS_APP_GEST_LOCALES;

COMMENT ON TABLE APP_GEST_LOCALES.MBC_ESTADOS_CASOS IS 'ESTADOS DE LOS CASOS';

COMMENT ON COLUMN APP_GEST_LOCALES.MBC_ESTADOS_CASOS.ID_ESTADO_CASO IS 'LLAVE PRIMARIA';
COMMENT ON COLUMN APP_GEST_LOCALES.MBC_ESTADOS_CASOS.ESTADO IS 'ESTADO DEL CASO';