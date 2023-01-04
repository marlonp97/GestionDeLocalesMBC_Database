/************************************************************************************
Descripci�n: Objeto encargado de crear la secuencia "SEQ_MBC_CIUDADES_LOCALES"
Autor:       Marlon P�rez R�os
Fecha:       13-12-2022
IdGesti�n:   
@copyright:  TechCamp
************************************************************************************/

CREATE SEQUENCE APP_GEST_LOCALES.SEQ_MBC_CIUDADES_LOCALES
	START WITH 1
	MINVALUE 1
	MAXVALUE 99999
	NOCYCLE
	CACHE 20
	NOORDER;