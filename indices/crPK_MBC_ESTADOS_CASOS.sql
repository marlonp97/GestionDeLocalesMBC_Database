/************************************************************************************
Descripción: Objeto encargado de crear el índice "PK_MBC_ESTADOS_CASOS"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_ESTADOS_CASOS
	ADD CONSTRAINT PK_MBC_ESTADOS_CASOS
	PRIMARY KEY (ID_ESTADO_CASO);