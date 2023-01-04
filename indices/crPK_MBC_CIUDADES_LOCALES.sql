/************************************************************************************
Descripción: Objeto encargado de crear el índice "PK_MBC_CIUDADES_LOCALES"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_CIUDADES_LOCALES
	ADD CONSTRAINT PK_MBC_CIUDADES_LOCALES
	PRIMARY KEY (ID_CIUDAD_LOCAL);