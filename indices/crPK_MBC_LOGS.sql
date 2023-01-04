/************************************************************************************
Descripción: Objeto encargado de crear el índice "PK_MBC_LOGS"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES_CLIENTE.MBC_LOGS
	ADD CONSTRAINT PK_MBC_LOGS
	PRIMARY KEY (ID_LOG);