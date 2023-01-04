/************************************************************************************
Descripción: Objeto encargado de dar los permisos a "APP_GEST_LOCALES_CLIENTE"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

-- Permisos para sesiones
GRANT CREATE SESSION TO APP_GEST_LOCALES_CLIENTE;
GRANT ALTER SESSION TO APP_GEST_LOCALES_CLIENTE;

-- Permisos para tablespaces
GRANT UNLIMITED TABLESPACE TO APP_GEST_LOCALES_CLIENTE;

-- Permisos para tablas
GRANT CREATE TABLE TO APP_GEST_LOCALES_CLIENTE;
GRANT SELECT ANY TABLE TO APP_GEST_LOCALES_CLIENTE;

-- Permisos para índices
GRANT CREATE ANY INDEX TO APP_GEST_LOCALES_CLIENTE;