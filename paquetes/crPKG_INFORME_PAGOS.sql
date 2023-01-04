/************************************************************************************
Descripción: Objeto encargado de crear el paquete "PKG_INFORME_PAGOS"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

CREATE OR REPLACE PACKAGE APP_GEST_LOCALES.PKG_INFORME_PAGOS IS

    /************************************************************************************
    Descripción: Objeto encargado de crear el procedimiento "GENERAR_INFORME_PAGOS"
    Autor:       Marlon Pérez Ríos
    Fecha:       13-12-2022
    IdGestión:   
    @copyright:  TechCamp
    ************************************************************************************/

    PROCEDURE GENERAR_INFORME_PAGOS(año_informe IN NUMBER);

END;