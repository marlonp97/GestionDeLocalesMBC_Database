/************************************************************************************
Descripci�n: Objeto encargado de crear el �ndice "PK_MBC_LOGS"
Autor:       Marlon P�rez R�os
Fecha:       13-12-2022
IdGesti�n:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES_CLIENTE.MBC_LOGS
	ADD CONSTRAINT PK_MBC_LOGS
	PRIMARY KEY (ID_LOG);