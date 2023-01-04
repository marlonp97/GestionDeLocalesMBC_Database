/************************************************************************************
Descripción: Objeto encargado de crear el usuario "APP_GEST_LOCALES"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

CREATE USER APP_GEST_LOCALES
	IDENTIFIED BY "admin"
	DEFAULT TABLESPACE TS_APP_GEST_LOCALES
	QUOTA UNLIMITED ON TS_APP_GEST_LOCALES;