/************************************************************************************
Descripci�n: Objeto encargado de crear el usuario "APP_GEST_LOCALES"
Autor:       Marlon P�rez R�os
Fecha:       13-12-2022
IdGesti�n:   
@copyright:  TechCamp
************************************************************************************/

CREATE USER APP_GEST_LOCALES
	IDENTIFIED BY "admin"
	DEFAULT TABLESPACE TS_APP_GEST_LOCALES
	QUOTA UNLIMITED ON TS_APP_GEST_LOCALES;