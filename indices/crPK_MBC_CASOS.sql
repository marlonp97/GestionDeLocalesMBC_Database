/************************************************************************************
Descripción: Objeto encargado de crear el índice "PK_MBC_CASOS"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_CASOS
	ADD CONSTRAINT PK_MBC_CASOS
	PRIMARY KEY (ID_CASO);