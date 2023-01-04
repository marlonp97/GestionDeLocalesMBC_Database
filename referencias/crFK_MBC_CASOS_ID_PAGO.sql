/************************************************************************************
Descripción: Objeto encargado de crear la referencia "FK_MBC_CASOS_ID_PAGO"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_CASOS
	ADD CONSTRAINT FK_MBC_CASOS_ID_PAGO
	FOREIGN KEY (ID_PAGO)
	REFERENCES MBC_PAGOS (ID_PAGO);