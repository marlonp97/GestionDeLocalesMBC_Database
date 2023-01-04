/************************************************************************************
Descripción: Objeto encargado de crear la referencia "FK_MBC_PAGOS_ID_EMPRESA"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_PAGOS
	ADD CONSTRAINT FK_MBC_PAGOS_ID_EMPRESA
	FOREIGN KEY (ID_EMPRESA)
	REFERENCES MBC_EMPRESAS (ID_EMPRESA);