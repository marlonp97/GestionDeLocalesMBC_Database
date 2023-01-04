/************************************************************************************
Descripci�n: Objeto encargado de crear la referencia "FK_MBC_LOCALES_ID_CIUDAD_LOCAL"
Autor:       Marlon P�rez R�os
Fecha:       13-12-2022
IdGesti�n:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_LOCALES
	ADD CONSTRAINT FK_MBC_LOCALES_ID_CIUDAD_LOCAL
	FOREIGN KEY (ID_CIUDAD_LOCAL)
	REFERENCES MBC_CIUDADES_LOCALES (ID_CIUDAD_LOCAL);