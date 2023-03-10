/************************************************************************************
Descripci?n: Objeto encargado de crear la tabla "MBC_LOGS"
Autor:       Marlon P?rez R?os
Fecha:       13-12-2022
IdGesti?n:   
@copyright:  TechCamp
************************************************************************************/

CREATE TABLE APP_GEST_LOCALES_CLIENTE.MBC_LOGS
(
	ID_LOG				    NUMBER(15),
	LIMITE_INFERIOR         NUMBER(15)	    NOT NULL,
	LIMITE_SUPERIOR         NUMBER(15)	    NOT NULL,
	A?O					    NUMBER(4)	    NOT NULL,
	ESTADO					VARCHAR2(10)    NOT NULL
)
TABLESPACE TS_APP_GEST_LOCALES_CLIENTE;

COMMENT ON TABLE APP_GEST_LOCALES_CLIENTE.MBC_LOGS IS 'LOGS';

COMMENT ON COLUMN APP_GEST_LOCALES_CLIENTE.MBC_LOGS.ID_LOG IS 'LLAVE PRIMARIA';
COMMENT ON COLUMN APP_GEST_LOCALES_CLIENTE.MBC_LOGS.LIMITE_INFERIOR IS 'L?MITE INFERIOR';
COMMENT ON COLUMN APP_GEST_LOCALES_CLIENTE.MBC_LOGS.LIMITE_SUPERIOR IS 'L?MITE SUPERIOR';
COMMENT ON COLUMN APP_GEST_LOCALES_CLIENTE.MBC_LOGS.A?O IS 'A?O';
COMMENT ON COLUMN APP_GEST_LOCALES_CLIENTE.MBC_LOGS.ESTADO IS 'ESTADO';