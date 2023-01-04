/************************************************************************************
Descripción: Objeto encargado de dar los permisos a "APP_GEST_LOCALES_CLIENTE"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

-- Permisos para paquetes
GRANT EXECUTE ON APP_GEST_LOCALES.PKG_INFORME_PAGOS TO APP_GEST_LOCALES_CLIENTE;
GRANT EXECUTE ON APP_GEST_LOCALES.SYN_PKG_INFORME_PAGOS TO APP_GEST_LOCALES_CLIENTE;