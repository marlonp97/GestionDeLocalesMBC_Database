/************************************************************************************
Descripci�n: Objeto encargado de orquestar los scripts para hacer rollback
Autor:       Marlon P�rez R�os
Fecha:       13-12-2022
IdGesti�n:   
@copyright:  TechCamp
************************************************************************************/

PROMPT orqROLLBACK.sql;

ALTER SESSION SET CURRENT_SCHEMA = APP_GEST_LOCALES;

PROMPT ------------------------- Objetos: sin�nimos -------------------------;

PROMPT Eliminar sin�nimos;

PROMPT Aplicando objeto @..\..\DB\rollback\sinonimos\dropSinonimos.sql;
@..\..\DB\rollback\sinonimos\dropSinonimos.sql;

PROMPT ------------------------- Objetos: paquetes -------------------------;

PROMPT Eliminar paquetes;

PROMPT Aplicando objeto @..\..\DB\rollback\paquetes\dropPaquetes.sql;
@..\..\DB\rollback\paquetes\dropPaquetes.sql;

PROMPT ------------------------- Objetos: secuencias -------------------------;

PROMPT Eliminar secuencias;

PROMPT Aplicando objeto @..\..\DB\rollback\secuencias\dropSecuencias.sql;
@..\..\DB\rollback\secuencias\dropSecuencias.sql;

PROMPT ------------------------- Objetos: tablas -------------------------;

PROMPT Eliminar tablas;

PROMPT Aplicando objeto @..\..\DB\rollback\tablas\dropTablas.sql;
@..\..\DB\rollback\tablas\dropTablas.sql;

PROMPT Fin de orqSYS.sql;