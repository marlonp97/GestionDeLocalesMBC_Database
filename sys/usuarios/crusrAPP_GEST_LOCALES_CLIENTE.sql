/************************************************************************************
Descripci�n: Objeto encargado de crear el usuario "APP_GEST_LOCALES_CLIENTE"
Autor:       Marlon P�rez R�os
Fecha:       13-12-2022
IdGesti�n:   
@copyright:  TechCamp
************************************************************************************/

CREATE USER APP_GEST_LOCALES_CLIENTE
	IDENTIFIED BY "cliente"
	DEFAULT TABLESPACE TS_APP_GEST_LOCALES_CLIENTE
	QUOTA UNLIMITED ON TS_APP_GEST_LOCALES_CLIENTE;