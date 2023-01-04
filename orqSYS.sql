/************************************************************************************
Descripción: Objeto encargado de orquestar los scripts que ejecuta "SYS"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

PROMPT orqSYS.sql;

ALTER SESSION SET CURRENT_SCHEMA = SYS;

PROMPT ------------------------- Objetos: tablespaces -------------------------;

PROMPT Crear tablespaces;

PROMPT Aplicando objeto @..\DB\sys\tablespaces\crTS_APP_GEST_LOCALES.sql;
@..\DB\sys\tablespaces\crTS_APP_GEST_LOCALES.sql;

PROMPT Aplicando objeto @..\DB\sys\tablespaces\crTS_APP_GEST_LOCALES_CLIENTE.sql;
@..\DB\sys\tablespaces\crTS_APP_GEST_LOCALES_CLIENTE.sql;

PROMPT ------------------------- Objetos: usuarios -------------------------;

PROMPT Crear usuarios;

PROMPT Aplicando objeto @..\DB\sys\usuarios\crusrAPP_GEST_LOCALES.sql;
@..\DB\sys\usuarios\crusrAPP_GEST_LOCALES.sql;

PROMPT Aplicando objeto @..\DB\sys\usuarios\crusrAPP_GEST_LOCALES_CLIENTE.sql;
@..\DB\sys\usuarios\crusrAPP_GEST_LOCALES_CLIENTE.sql;

PROMPT ------------------------- Objetos: permisos -------------------------;

PROMPT Dar permisos;

PROMPT Aplicando objeto @..\DB\sys\permisos\crGrantAPP_GEST_LOCALES.sql;
@..\DB\sys\permisos\crGrantAPP_GEST_LOCALES.sql;

PROMPT Aplicando objeto @..\DB\sys\permisos\crGrantAPP_GEST_LOCALES_CLIENTE.sql;
@..\DB\sys\permisos\crGrantAPP_GEST_LOCALES_CLIENTE.sql;

PROMPT Fin de orqSYS.sql;