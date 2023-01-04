/************************************************************************************
Descripci�n: Objeto encargado de crear el paquete "PKG_INFORME_PAGOS"
Autor:       Marlon P�rez R�os
Fecha:       13-12-2022
IdGesti�n:   
@copyright:  TechCamp
************************************************************************************/

CREATE OR REPLACE PACKAGE APP_GEST_LOCALES.PKG_INFORME_PAGOS IS

    /************************************************************************************
    Descripci�n: Objeto encargado de crear el procedimiento "GENERAR_INFORME_PAGOS"
    Autor:       Marlon P�rez R�os
    Fecha:       13-12-2022
    IdGesti�n:   
    @copyright:  TechCamp
    ************************************************************************************/

    PROCEDURE GENERAR_INFORME_PAGOS(a�o_informe IN NUMBER);

END;