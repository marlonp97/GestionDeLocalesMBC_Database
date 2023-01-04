/************************************************************************************
Descripci�n: Objeto encargado de crear la referencia "FK_MBC_USUARIOS_ID_ROL_USUARIO"
Autor:       Marlon P�rez R�os
Fecha:       13-12-2022
IdGesti�n:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_USUARIOS
	ADD CONSTRAINT FK_MBC_USUARIOS_ID_ROL_USUARIO
	FOREIGN KEY (ID_ROL_USUARIO)
	REFERENCES MBC_ROLES_USUARIOS (ID_ROL_USUARIO);