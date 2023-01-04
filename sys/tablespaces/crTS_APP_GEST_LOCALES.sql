/************************************************************************************
Descripción: Objeto encargado de crear el tablespace "TS_APP_GEST_LOCALES"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

CREATE TABLESPACE TS_APP_GEST_LOCALES
	DATAFILE 'C:\ORACLE21XE\ORADATA\XE\XEPDB1\TS_APP_GEST_LOCALES.DBF'
	size 100M AUTOEXTEND ON NEXT 100M MAXSIZE UNLIMITED;