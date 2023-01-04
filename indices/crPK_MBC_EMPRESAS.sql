/************************************************************************************
Descripción: Objeto encargado de crear el índice "PK_MBC_EMPRESAS"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_EMPRESAS
	ADD CONSTRAINT PK_MBC_EMPRESAS
	PRIMARY KEY (ID_EMPRESA);