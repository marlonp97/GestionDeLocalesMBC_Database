/************************************************************************************
Descripci�n: Objeto encargado de crear la referencia "FK_MBC_PAGOS_ID_LOCAL"
Autor:       Marlon P�rez R�os
Fecha:       13-12-2022
IdGesti�n:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_PAGOS
	ADD CONSTRAINT FK_MBC_PAGOS_ID_LOCAL
	FOREIGN KEY (ID_LOCAL)
	REFERENCES MBC_LOCALES (ID_LOCAL);