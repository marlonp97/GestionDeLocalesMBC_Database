/************************************************************************************
Descripción: Objeto encargado de crear la referencia "FK_MBC_PAGOS_ID_USUARIO"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

ALTER TABLE APP_GEST_LOCALES.MBC_PAGOS
	ADD CONSTRAINT FK_MBC_PAGOS_ID_USUARIO
	FOREIGN KEY (ID_USUARIO)
	REFERENCES MBC_USUARIOS (ID_USUARIO);