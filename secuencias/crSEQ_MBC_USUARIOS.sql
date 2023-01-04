/************************************************************************************
Descripción: Objeto encargado de crear la secuencia "SEQ_MBC_USUARIOS"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

CREATE SEQUENCE APP_GEST_LOCALES.SEQ_MBC_USUARIOS
	START WITH 1
	MINVALUE 1
	MAXVALUE 999999999999999
	NOCYCLE
	CACHE 20
	NOORDER;