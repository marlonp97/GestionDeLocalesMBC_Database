/************************************************************************************
Descripción: Objeto encargado de crear la tabla "MBC_ESTADOS_PAGOS"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

CREATE TABLE APP_GEST_LOCALES.MBC_ESTADOS_PAGOS
(
	ID_ESTADO_PAGO			NUMBER(2),
	ESTADO                  VARCHAR2(10)	NOT NULL,
	CONSTRAINT MBC_ESTADOS_PAGOS_UNIQUE UNIQUE (ESTADO)
)
TABLESPACE TS_APP_GEST_LOCALES;

COMMENT ON TABLE APP_GEST_LOCALES.MBC_ESTADOS_PAGOS IS 'ESTADOS DE LOS PAGOS';

COMMENT ON COLUMN APP_GEST_LOCALES.MBC_ESTADOS_PAGOS.ID_ESTADO_PAGO IS 'LLAVE PRIMARIA';
COMMENT ON COLUMN APP_GEST_LOCALES.MBC_ESTADOS_PAGOS.ESTADO IS 'ESTADO DEL PAGO';