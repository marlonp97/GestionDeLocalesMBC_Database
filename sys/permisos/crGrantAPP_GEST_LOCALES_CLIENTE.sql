/************************************************************************************
Descripci�n: Objeto encargado de dar los permisos a "APP_GEST_LOCALES_CLIENTE"
Autor:       Marlon P�rez R�os
Fecha:       13-12-2022
IdGesti�n:   
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

-- Permisos para �ndices
GRANT CREATE ANY INDEX TO APP_GEST_LOCALES_CLIENTE;