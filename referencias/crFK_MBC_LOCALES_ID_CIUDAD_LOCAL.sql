/************************************************************************************
Descripción: Objeto encargado de crear la referencia "FK_MBC_LOCALES_ID_CIUDAD_LOCAL"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_LOCALES
	ADD CONSTRAINT FK_MBC_LOCALES_ID_CIUDAD_LOCAL
	FOREIGN KEY (ID_CIUDAD_LOCAL)
	REFERENCES MBC_CIUDADES_LOCALES (ID_CIUDAD_LOCAL);