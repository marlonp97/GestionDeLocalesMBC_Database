/************************************************************************************
Descripci�n: Objeto encargado de crear el �ndice "PK_MBC_EMPRESAS"
Autor:       Marlon P�rez R�os
Fecha:       13-12-2022
IdGesti�n:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_EMPRESAS
	ADD CONSTRAINT PK_MBC_EMPRESAS
	PRIMARY KEY (ID_EMPRESA);