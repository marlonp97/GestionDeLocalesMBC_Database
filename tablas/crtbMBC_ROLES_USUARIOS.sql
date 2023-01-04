/************************************************************************************
Descripción: Objeto encargado de crear la tabla "MBC_ROLES_USUARIOS"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

CREATE TABLE APP_GEST_LOCALES.MBC_ROLES_USUARIOS
(
	ID_ROL_USUARIO			NUMBER(2),
	ROL						VARCHAR2(10)	NOT NULL,
	CONSTRAINT MBC_ROLES_USUARIOS_UNIQUE UNIQUE (ROL)
)
TABLESPACE TS_APP_GEST_LOCALES;

COMMENT ON TABLE APP_GEST_LOCALES.MBC_ROLES_USUARIOS IS 'ROLES DE LOS USUARIOS';

COMMENT ON COLUMN APP_GEST_LOCALES.MBC_ROLES_USUARIOS.ID_ROL_USUARIO  IS 'LLAVE PRIMARIA';
COMMENT ON COLUMN APP_GEST_LOCALES.MBC_ROLES_USUARIOS.ROL  IS 'ROL DEL USUARIO';