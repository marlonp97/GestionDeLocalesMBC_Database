/************************************************************************************
Descripción: Objeto encargado de crear el usuario "APP_GEST_LOCALES_CLIENTE"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

CREATE USER APP_GEST_LOCALES_CLIENTE
	IDENTIFIED BY "cliente"
	DEFAULT TABLESPACE TS_APP_GEST_LOCALES_CLIENTE
	QUOTA UNLIMITED ON TS_APP_GEST_LOCALES_CLIENTE;