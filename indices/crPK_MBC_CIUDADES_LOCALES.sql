/************************************************************************************
Descripci�n: Objeto encargado de crear el �ndice "PK_MBC_CIUDADES_LOCALES"
Autor:       Marlon P�rez R�os
Fecha:       13-12-2022
IdGesti�n:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_CIUDADES_LOCALES
	ADD CONSTRAINT PK_MBC_CIUDADES_LOCALES
	PRIMARY KEY (ID_CIUDAD_LOCAL);