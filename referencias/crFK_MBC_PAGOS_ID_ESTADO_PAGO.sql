/************************************************************************************
Descripción: Objeto encargado de crear la referencia "FK_MBC_PAGOS_ID_ESTADO_PAGO"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_PAGOS
	ADD CONSTRAINT FK_MBC_PAGOS_ID_ESTADO_PAGO
	FOREIGN KEY (ID_ESTADO_PAGO)
	REFERENCES MBC_ESTADOS_PAGOS (ID_ESTADO_PAGO);