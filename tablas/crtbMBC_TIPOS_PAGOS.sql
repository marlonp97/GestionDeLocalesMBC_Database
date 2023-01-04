/************************************************************************************
Descripción: Objeto encargado de crear la tabla "MBC_TIPOS_PAGOS"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

CREATE TABLE APP_GEST_LOCALES.MBC_TIPOS_PAGOS
(
	ID_TIPO_PAGO			NUMBER(2),
	TIPO					VARCHAR2(10)	NOT NULL,
	CONSTRAINT MBC_TIPOS_PAGOS_UNIQUE UNIQUE (TIPO)
)
TABLESPACE TS_APP_GEST_LOCALES;

COMMENT ON TABLE APP_GEST_LOCALES.MBC_TIPOS_PAGOS IS 'TIPOS DE PAGOS';

COMMENT ON COLUMN APP_GEST_LOCALES.MBC_TIPOS_PAGOS.ID_TIPO_PAGO IS 'LLAVE PRIMARIA';
COMMENT ON COLUMN APP_GEST_LOCALES.MBC_TIPOS_PAGOS.TIPO IS 'TIPO DE PAGO';