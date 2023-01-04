/************************************************************************************
Descripción: Objeto encargado de crear la referencia "FK_MBC_PAGOS_ID_LOCAL"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_PAGOS
	ADD CONSTRAINT FK_MBC_PAGOS_ID_LOCAL
	FOREIGN KEY (ID_LOCAL)
	REFERENCES MBC_LOCALES (ID_LOCAL);