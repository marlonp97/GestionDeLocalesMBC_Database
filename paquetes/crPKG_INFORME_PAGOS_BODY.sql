/************************************************************************************
Descripción: Objeto encargado de crear el cuerpo del paquete "PKG_INFORME_PAGOS"
Autor:       Marlon Pérez Ríos
Fecha:       13-12-2022
IdGestión:   
@copyright:  TechCamp
************************************************************************************/

CREATE OR REPLACE PACKAGE BODY APP_GEST_LOCALES.PKG_INFORME_PAGOS IS

    PROCEDURE GENERAR_INFORME_PAGOS(año_informe IN NUMBER) IS
    
        -- Creación de variables
        id_mayor NUMBER;
        limite_inferior_actual NUMBER;
        limite_superior_actual NUMBER;
        limite_inferior_tabla NUMBER;
        limite_superior_tabla NUMBER;
        cantidad_datos NUMBER := 10;
        total_precio NUMBER;
        total_valor_pagado NUMBER;
        tabla_existe NUMBER;
        
        BEGIN
        
            -- Consultar ID mayor en tabla MBC_PAGOS
            SELECT /*+ ROWID (APP_GEST_LOCALES.MBC_PAGOS) */ MAX(ID_PAGO)
            INTO id_mayor
            FROM APP_GEST_LOCALES.MBC_PAGOS;
            
            -- Consultar si existen registros en tabla MBC_PAGOS que indiquen que un informe previo quedó inconcluso
            SELECT /*+ ALL_ROWS */ MAX(LIMITE_INFERIOR), MAX(LIMITE_SUPERIOR)
            INTO limite_inferior_tabla, limite_superior_tabla
            FROM APP_GEST_LOCALES_CLIENTE.MBC_LOGS
            WHERE AÑO = año_informe AND ESTADO = 'Comenzado';
            
            -- Caso si hubo informe previo que posiblemente quedó inconcluso
            IF limite_inferior_tabla IS NOT NULL AND limite_superior_tabla IS NOT NULL THEN
            
                -- Caso si informe previo quedó finalizado pero tabla MBC_LOGS no quedó actualizada
                IF limite_inferior_tabla > id_mayor THEN
                
                    -- Actualizar tabla MBC_LOGS para finalizar el informe
                    UPDATE /*+ PARALLEL (APP_GEST_LOCALES_CLIENTE.MBC_LOGS) */ APP_GEST_LOCALES_CLIENTE.MBC_LOGS
                    SET ESTADO = 'Finalizado'
                    WHERE AÑO = año_informe;
                    
                    COMMIT;
                    
                -- Caso si informe previo quedó inconcluso
                ELSE
                
                    -- Actualizar límites para continuar donde el informe previo inconcluso había quedado
                    limite_inferior_actual := limite_superior_tabla + 1;
                    limite_superior_actual := limite_inferior_actual + cantidad_datos - 1;
                    
                END IF;
                
            -- Caso si se va a iniciar un informe desde cero
            ELSE
            
                -- Inicializar los límites para comenzar desde cero
                limite_inferior_actual := 1;
                limite_superior_actual := cantidad_datos;
                
                -- Verificar si existe la tabla MBC_INFORME
                SELECT /*+ CHOOSE */ COUNT(TABLE_NAME)
                INTO tabla_existe
                FROM ALL_TABLES
                WHERE TABLE_NAME = 'MBC_INFORME';
            
                IF tabla_existe > 0 THEN
                
                -- Borrar la tabla MBC_INFORME en caso de que existe
                    EXECUTE IMMEDIATE 'DROP TABLE APP_GEST_LOCALES_CLIENTE.MBC_INFORME';
                   
                END IF;
                
                -- Crear la tabla MBC_INFORME para un nuevo informe
                EXECUTE IMMEDIATE 'CREATE TABLE APP_GEST_LOCALES_CLIENTE.MBC_INFORME(
                    ID_PAGO						NUMBER(15),
                    DESCRIPCION					VARCHAR2(50),
                    PRECIO           			NUMBER(12, 2),
                    FECHA_VENCIMIENTO			DATE,
                    SOPORTE						VARCHAR2(260),
                    VALOR_PAGADO				NUMBER(12, 2),
                    FECHA_PAGO					DATE,
                    TIPO_PAGO				    VARCHAR2(10),
                    LOCAL                       VARCHAR2(50),
                    EMPRESA					    VARCHAR2(100),
                    USUARIO					    VARCHAR2(50)
                )
                TABLESPACE TS_APP_GEST_LOCALES_CLIENTE';
            
            END IF;
            
            -- Caso si se va a iniciar un informe desde cero o se va a seguir un informe previo inconcluso
            IF limite_inferior_tabla IS NULL OR limite_superior_tabla IS NULL OR limite_inferior_tabla <= id_mayor THEN
            
                WHILE limite_inferior_actual <= id_mayor LOOP
                
                    -- Insertar bache de registros en la tabla MBC_INFORME
                    INSERT /*+ APPEND */ INTO APP_GEST_LOCALES_CLIENTE.MBC_INFORME
                    (ID_PAGO, DESCRIPCION, PRECIO, FECHA_VENCIMIENTO, SOPORTE, VALOR_PAGADO, FECHA_PAGO, TIPO_PAGO, LOCAL, EMPRESA, USUARIO)
                    SELECT p.ID_PAGO, p.DESCRIPCION, p.PRECIO, p.FECHA_VENCIMIENTO, p.SOPORTE, p.VALOR_PAGADO, p.FECHA_PAGO, tpTIPO_PAGO.TIPO, tpLOCAL.DIRECCION, tpEMPRESA.NOMBRE, tpUSUARIO.CORREO
                    FROM APP_GEST_LOCALES.MBC_PAGOS p
                    INNER JOIN APP_GEST_LOCALES.MBC_TIPOS_PAGOS tpTIPO_PAGO
                    ON p.ID_TIPO_PAGO = tpTIPO_PAGO.ID_TIPO_PAGO
                    INNER JOIN APP_GEST_LOCALES.MBC_LOCALES tpLOCAL
                    ON p.ID_LOCAL = tpLOCAL.ID_LOCAL
                    INNER JOIN APP_GEST_LOCALES.MBC_EMPRESAS tpEMPRESA
                    ON p.ID_EMPRESA = tpEMPRESA.ID_EMPRESA
                    INNER JOIN APP_GEST_LOCALES.MBC_USUARIOS tpUSUARIO
                    ON p.ID_USUARIO = tpUSUARIO.ID_USUARIO
                    WHERE p.ID_ESTADO_PAGO = 3 AND EXTRACT(YEAR FROM p.FECHA_PAGO) = año_informe AND p.ID_PAGO >= limite_inferior_actual AND p.ID_PAGO <= limite_superior_actual;
                    
                    -- Insertar registro de correcta inserción en la tabla MBC_LOGS
                    INSERT /*+ APPEND */ INTO APP_GEST_LOCALES_CLIENTE.MBC_LOGS
                    (ID_LOG, LIMITE_INFERIOR, LIMITE_SUPERIOR, AÑO, ESTADO)
                    VALUES
                    (APP_GEST_LOCALES_CLIENTE.SEQ_MBC_LOGS.NEXTVAL, limite_inferior_actual, limite_superior_actual, año_informe, 'Comenzado');
                    
                    -- Actualizar límites para el siguiente bache
                    limite_inferior_actual := limite_superior_actual + 1;
                    limite_superior_actual := limite_inferior_actual + cantidad_datos - 1;
                    
                    COMMIT;
                    
                END LOOP;
                
                -- Hacer la suma de la columna de precios
                SELECT /*+ ALL_ROWS */ SUM(PRECIO)
                INTO total_precio
                FROM APP_GEST_LOCALES_CLIENTE.MBC_INFORME;
                
                -- Hacer la suma de la columna de valores pagados
                SELECT /*+ ALL_ROWS */ SUM(VALOR_PAGADO)
                INTO total_valor_pagado
                FROM APP_GEST_LOCALES_CLIENTE.MBC_INFORME;
                
                -- Insertar una fila al final de la tabla MBC_INFORME con los valores totalizados de precios y valores pagados
                INSERT /*+ APPEND */ INTO APP_GEST_LOCALES_CLIENTE.MBC_INFORME
                (ID_PAGO, DESCRIPCION, PRECIO, VALOR_PAGADO)
                VALUES
                (id_mayor + 1, 'TOTAL', total_precio, total_valor_pagado);
                
                -- Actualizar tabla MBC_LOGS para finalizar el informe
                UPDATE /*+ PARALLEL (APP_GEST_LOCALES_CLIENTE.MBC_LOGS) */ APP_GEST_LOCALES_CLIENTE.MBC_LOGS
                SET ESTADO = 'Finalizado'
                WHERE AÑO = año_informe;
                
                COMMIT;
            
            END IF;
        
        EXCEPTION
        
            WHEN OTHERS THEN
            
                raise_application_error(-20000, SQLCODE ||'=>'|| SQLERRM, TRUE);
        
        END;
        
END;