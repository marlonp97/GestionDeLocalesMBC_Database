/************************************************************************************
Descripci�n: Objeto encargado de crear el �ndice "PK_MBC_ROLES_USUARIOS"
Autor:       Marlon P�rez R�os
Fecha:       13-12-2022
IdGesti�n:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_ROLES_USUARIOS
	ADD CONSTRAINT PK_MBC_ROLES_USUARIOS
	PRIMARY KEY (ID_ROL_USUARIO);