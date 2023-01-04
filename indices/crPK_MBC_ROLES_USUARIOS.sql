/************************************************************************************
Descripción: Objeto encargado de crear el índice "PK_MBC_ROLES_USUARIOS"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_ROLES_USUARIOS
	ADD CONSTRAINT PK_MBC_ROLES_USUARIOS
	PRIMARY KEY (ID_ROL_USUARIO);