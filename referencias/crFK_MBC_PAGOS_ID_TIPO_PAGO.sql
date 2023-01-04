/************************************************************************************
Descripci�n: Objeto encargado de crear la referencia "FK_MBC_PAGOS_ID_TIPO_PAGO"
Autor:       Marlon P�rez R�os
Fecha:       13-12-2022
IdGesti�n:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_PAGOS
	ADD CONSTRAINT FK_MBC_PAGOS_ID_TIPO_PAGO
	FOREIGN KEY (ID_TIPO_PAGO)
	REFERENCES MBC_TIPOS_PAGOS (ID_TIPO_PAGO);