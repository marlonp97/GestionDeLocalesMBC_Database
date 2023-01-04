/************************************************************************************
Descripción: Objeto encargado de crear el índice "PK_MBC_PAGOS"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_PAGOS
	ADD CONSTRAINT PK_MBC_PAGOS
	PRIMARY KEY (ID_PAGO);