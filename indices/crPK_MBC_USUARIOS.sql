/************************************************************************************
Descripción: Objeto encargado de crear el índice "PK_MBC_USUARIOS"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_USUARIOS
	ADD CONSTRAINT PK_MBC_USUARIOS
	PRIMARY KEY (ID_USUARIO);