/************************************************************************************
Descripci�n: Objeto encargado de crear el �ndice "PK_MBC_USUARIOS"
Autor:       Marlon P�rez R�os
Fecha:       13-12-2022
IdGesti�n:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_USUARIOS
	ADD CONSTRAINT PK_MBC_USUARIOS
	PRIMARY KEY (ID_USUARIO);