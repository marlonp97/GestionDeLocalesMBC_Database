/************************************************************************************
Descripci�n: Objeto encargado de crear el �ndice "PK_MBC_CASOS"
Autor:       Marlon P�rez R�os
Fecha:       13-12-2022
IdGesti�n:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_CASOS
	ADD CONSTRAINT PK_MBC_CASOS
	PRIMARY KEY (ID_CASO);