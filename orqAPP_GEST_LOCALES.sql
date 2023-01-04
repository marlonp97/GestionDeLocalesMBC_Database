/************************************************************************************
Descripción: Objeto encargado de orquestar los scripts que ejecuta "APP_GEST_LOCALES"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

PROMPT orqAPP_GEST_LOCALES.sql;

ALTER SESSION SET CURRENT_SCHEMA = APP_GEST_LOCALES;

PROMPT ------------------------- Objetos: tablas -------------------------;

PROMPT Crear tablas;

PROMPT Aplicando objeto @..\DB\tablas\crtbMBC_TIPOS_PAGOS.sql;
@..\DB\tablas\crtbMBC_TIPOS_PAGOS.sql;

PROMPT Aplicando objeto @..\DB\tablas\crtbMBC_ESTADOS_PAGOS.sql;
@..\DB\tablas\crtbMBC_ESTADOS_PAGOS.sql;

PROMPT Aplicando objeto @..\DB\tablas\crtbMBC_ESTADOS_CASOS.sql;
@..\DB\tablas\crtbMBC_ESTADOS_CASOS.sql;

PROMPT Aplicando objeto @..\DB\tablas\crtbMBC_ROLES_USUARIOS.sql;
@..\DB\tablas\crtbMBC_ROLES_USUARIOS.sql;

PROMPT Aplicando objeto @..\DB\tablas\crtbMBC_CIUDADES_LOCALES.sql;
@..\DB\tablas\crtbMBC_CIUDADES_LOCALES.sql;

PROMPT Aplicando objeto @..\DB\tablas\crtbMBC_EMPRESAS.sql;
@..\DB\tablas\crtbMBC_EMPRESAS.sql;

PROMPT Aplicando objeto @..\DB\tablas\crtbMBC_LOCALES.sql;
@..\DB\tablas\crtbMBC_LOCALES.sql;

PROMPT Aplicando objeto @..\DB\tablas\crtbMBC_USUARIOS.sql;
@..\DB\tablas\crtbMBC_USUARIOS.sql;

PROMPT Aplicando objeto @..\DB\tablas\crtbMBC_PAGOS.sql;
@..\DB\tablas\crtbMBC_PAGOS.sql;

PROMPT Aplicando objeto @..\DB\tablas\crtbMBC_CASOS.sql;
@..\DB\tablas\crtbMBC_CASOS.sql;

PROMPT Aplicando objeto @..\DB\tablas\crtbMBC_INFORME.sql;
@..\DB\tablas\crtbMBC_INFORME.sql;

PROMPT Aplicando objeto @..\DB\tablas\crtbMBC_LOGS.sql;
@..\DB\tablas\crtbMBC_LOGS.sql;

PROMPT ------------------------- Objetos: secuencias -------------------------;

PROMPT Crear secuencias;

PROMPT Aplicando objeto @..\DB\secuencias\crSEQ_MBC_TIPOS_PAGOS.sql;
@..\DB\secuencias\crSEQ_MBC_TIPOS_PAGOS.sql;

PROMPT Aplicando objeto @..\DB\secuencias\crSEQ_MBC_ESTADOS_PAGOS.sql;
@..\DB\secuencias\crSEQ_MBC_ESTADOS_PAGOS.sql;

PROMPT Aplicando objeto @..\DB\secuencias\crSEQ_MBC_ESTADOS_CASOS.sql;
@..\DB\secuencias\crSEQ_MBC_ESTADOS_CASOS.sql;

PROMPT Aplicando objeto @..\DB\secuencias\crSEQ_MBC_ROLES_USUARIOS.sql;
@..\DB\secuencias\crSEQ_MBC_ROLES_USUARIOS.sql;

PROMPT Aplicando objeto @..\DB\secuencias\crSEQ_MBC_CIUDADES_LOCALES.sql;
@..\DB\secuencias\crSEQ_MBC_CIUDADES_LOCALES.sql;

PROMPT Aplicando objeto @..\DB\secuencias\crSEQ_MBC_EMPRESAS.sql;
@..\DB\secuencias\crSEQ_MBC_EMPRESAS.sql;

PROMPT Aplicando objeto @..\DB\secuencias\crSEQ_MBC_LOCALES.sql;
@..\DB\secuencias\crSEQ_MBC_LOCALES.sql;

PROMPT Aplicando objeto @..\DB\secuencias\crSEQ_MBC_USUARIOS.sql;
@..\DB\secuencias\crSEQ_MBC_USUARIOS.sql;

PROMPT Aplicando objeto @..\DB\secuencias\crSEQ_MBC_PAGOS.sql;
@..\DB\secuencias\crSEQ_MBC_PAGOS.sql;

PROMPT Aplicando objeto @..\DB\secuencias\crSEQ_MBC_CASOS.sql;
@..\DB\secuencias\crSEQ_MBC_CASOS.sql;

PROMPT Aplicando objeto @..\DB\secuencias\crSEQ_MBC_LOGS.sql;
@..\DB\secuencias\crSEQ_MBC_LOGS.sql;

PROMPT ------------------------- Objetos: índices -------------------------;

PROMPT Crear índices;

PROMPT Aplicando objeto @..\DB\indices\crPK_MBC_TIPOS_PAGOS.sql;
@..\DB\indices\crPK_MBC_TIPOS_PAGOS.sql;

PROMPT Aplicando objeto @..\DB\indices\crPK_MBC_ESTADOS_PAGOS.sql;
@..\DB\indices\crPK_MBC_ESTADOS_PAGOS.sql;

PROMPT Aplicando objeto @..\DB\indices\crPK_MBC_ESTADOS_CASOS.sql;
@..\DB\indices\crPK_MBC_ESTADOS_CASOS.sql;

PROMPT Aplicando objeto @..\DB\indices\crPK_MBC_ROLES_USUARIOS.sql;
@..\DB\indices\crPK_MBC_ROLES_USUARIOS.sql;

PROMPT Aplicando objeto @..\DB\indices\crPK_MBC_CIUDADES_LOCALES.sql;
@..\DB\indices\crPK_MBC_CIUDADES_LOCALES.sql;

PROMPT Aplicando objeto @..\DB\indices\crPK_MBC_EMPRESAS.sql;
@..\DB\indices\crPK_MBC_EMPRESAS.sql;

PROMPT Aplicando objeto @..\DB\indices\crPK_MBC_LOCALES.sql;
@..\DB\indices\crPK_MBC_LOCALES.sql;

PROMPT Aplicando objeto @..\DB\indices\crPK_MBC_USUARIOS.sql;
@..\DB\indices\crPK_MBC_USUARIOS.sql;

PROMPT Aplicando objeto @..\DB\indices\crPK_MBC_PAGOS.sql;
@..\DB\indices\crPK_MBC_PAGOS.sql;

PROMPT Aplicando objeto @..\DB\indices\crPK_MBC_CASOS.sql;
@..\DB\indices\crPK_MBC_CASOS.sql;

PROMPT Aplicando objeto @..\DB\indices\crPK_MBC_LOGS.sql;
@..\DB\indices\crPK_MBC_LOGS.sql;

PROMPT ------------------------- Objetos: referencias -------------------------;

PROMPT Crear referencias;

PROMPT Aplicando objeto @..\DB\referencias\crFK_MBC_LOCALES_ID_CIUDAD_LOCAL.sql;
@..\DB\referencias\crFK_MBC_LOCALES_ID_CIUDAD_LOCAL.sql;

PROMPT Aplicando objeto @..\DB\referencias\crFK_MBC_LOCALES_ID_EMPRESA.sql;
@..\DB\referencias\crFK_MBC_LOCALES_ID_EMPRESA.sql;

PROMPT Aplicando objeto @..\DB\referencias\crFK_MBC_USUARIOS_ID_ROL_USUARIO.sql;
@..\DB\referencias\crFK_MBC_USUARIOS_ID_ROL_USUARIO.sql;

PROMPT Aplicando objeto @..\DB\referencias\crFK_MBC_USUARIOS_ID_EMPRESA.sql;
@..\DB\referencias\crFK_MBC_USUARIOS_ID_EMPRESA.sql;

PROMPT Aplicando objeto @..\DB\referencias\crFK_MBC_CASOS_ID_USUARIO.sql;
@..\DB\referencias\crFK_MBC_CASOS_ID_USUARIO.sql;

PROMPT Aplicando objeto @..\DB\referencias\crFK_MBC_CASOS_ID_ESTADO_CASO.sql;
@..\DB\referencias\crFK_MBC_CASOS_ID_ESTADO_CASO.sql;

PROMPT Aplicando objeto @..\DB\referencias\crFK_MBC_CASOS_ID_PAGO.sql;
@..\DB\referencias\crFK_MBC_CASOS_ID_PAGO.sql;

PROMPT Aplicando objeto @..\DB\referencias\crFK_MBC_PAGOS_ID_TIPO_PAGO.sql;
@..\DB\referencias\crFK_MBC_PAGOS_ID_TIPO_PAGO.sql;

PROMPT Aplicando objeto @..\DB\referencias\crFK_MBC_PAGOS_ID_ESTADO_PAGO.sql;
@..\DB\referencias\crFK_MBC_PAGOS_ID_ESTADO_PAGO.sql;

PROMPT Aplicando objeto @..\DB\referencias\crFK_MBC_PAGOS_ID_LOCAL.sql;
@..\DB\referencias\crFK_MBC_PAGOS_ID_LOCAL.sql;

PROMPT Aplicando objeto @..\DB\referencias\crFK_MBC_PAGOS_ID_EMPRESA.sql;
@..\DB\referencias\crFK_MBC_PAGOS_ID_EMPRESA.sql;

PROMPT Aplicando objeto @..\DB\referencias\crFK_MBC_PAGOS_ID_USUARIO.sql;
@..\DB\referencias\crFK_MBC_PAGOS_ID_USUARIO.sql;

PROMPT ------------------------- Objetos: paquetes -------------------------;

PROMPT Crear paquetes;

PROMPT Aplicando objeto @..\DB\paquetes\crPKG_INFORME_PAGOS.sql;
@..\DB\paquetes\crPKG_INFORME_PAGOS.sql;

PROMPT Aplicando objeto @..\DB\paquetes\crPKG_INFORME_PAGOS_BODY.sql;
@..\DB\paquetes\crPKG_INFORME_PAGOS_BODY.sql;

PROMPT ------------------------- Objetos: sql -------------------------;

PROMPT Crear datos iniciales;

PROMPT Aplicando objeto @..\DB\sql\insData.sql;
@..\DB\sql\insData.sql;

PROMPT ------------------------- Objetos: sinónimos -------------------------;

PROMPT Crear sinónimos

PROMPT Aplicando objeto @..\DB\sinonimos\crSYN_PKG_INFORME_PAGOS.sql;
@..\DB\sinonimos\crSYN_PKG_INFORME_PAGOS.sql;

PROMPT ------------------------- Objetos: permisos -------------------------;

PROMPT Dar permisos;

PROMPT Aplicando objeto @..\DB\permisos\crGrantAPP_GEST_LOCALES_CLIENTE.sql;
@..\DB\permisos\crGrantAPP_GEST_LOCALES_CLIENTE.sql;

PROMPT Fin de orqAPP_GEST_LOCALES.sql;