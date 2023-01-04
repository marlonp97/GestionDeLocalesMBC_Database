/************************************************************************************
Descripción: Objeto encargado de crear la tabla "MBC_CIUDADES_LOCALES"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

CREATE TABLE APP_GEST_LOCALES.MBC_CIUDADES_LOCALES
(
	ID_CIUDAD_LOCAL			NUMBER(5),
	CIUDAD                  VARCHAR2(30)	NOT NULL,
	CONSTRAINT MBC_CIUDADES_LOCALES_UNIQUE UNIQUE (CIUDAD)
)
TABLESPACE TS_APP_GEST_LOCALES;

COMMENT ON TABLE APP_GEST_LOCALES.MBC_CIUDADES_LOCALES IS 'CIUDADES DE LOS LOCALES';

COMMENT ON COLUMN APP_GEST_LOCALES.MBC_CIUDADES_LOCALES.ID_CIUDAD_LOCAL IS 'LLAVE PRIMARIA';
COMMENT ON COLUMN APP_GEST_LOCALES.MBC_CIUDADES_LOCALES.CIUDAD  IS 'CIUDAD DEL LOCAL';