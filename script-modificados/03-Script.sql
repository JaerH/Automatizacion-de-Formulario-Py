-- PAGINA DATOS_PERSONALES_CONTACTO
-- SOLICITANTE
INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO (
        CO_ID,
        PAEL_CO_PAGINA,
        PAEL_CO_ELEMENTOCOMPUESTO,
        PAEL_CO_PREFIJO_REUTILIZABLE,
        PAEL_CO_ID_VISTA,
        PAEL_NU_ORDEN_ELEM_COMP,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        CO_USUARIO_CREACION
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_A', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_PAGI_PAGINA
            WHERE PAGI_CO_CODIGO = 'DATOS_PERSONALES_CONTACTO'
                AND PAGI_CO_FORMULARIO = 'FORM_CON_CES_IGE'
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'SOLICITANTE'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1 --Cambia por elemento compuesto
        ),
        'CES_SOL',
        -- REVISAR EL PATRON DEL CODIGO EN REFERENCIA LA ELEMENTO COMPUSTO
        'contenedor_t2w9B9Cnup',
        2,
        0,
        SYSDATE,
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        )
    );
-- REPRESENTANTE
INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO (
        CO_ID,
        PAEL_CO_PAGINA,
        PAEL_CO_ELEMENTOCOMPUESTO,
        PAEL_CO_PREFIJO_REUTILIZABLE,
        PAEL_CO_ID_VISTA,
        PAEL_NU_ORDEN_ELEM_COMP,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        CO_USUARIO_CREACION
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_A', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_PAGI_PAGINA
            WHERE PAGI_CO_CODIGO = 'DATOS_PERSONALES_CONTACTO'
                AND PAGI_CO_FORMULARIO = 'FORM_CON_CES_IGE'
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'REPRESENTANTE'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1 --Cambia por elemento compuesto
        ),
        'CES_SOL',
        -- REVISAR EL PATRON DEL CODIGO EN REFERENCIA LA ELEMENTO COMPUSTO
        'contenedor_t2w9B9Cnup',
        2,
        0,
        SYSDATE,
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        )
    );
-- MEDIO
INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO (
        CO_ID,
        PAEL_CO_PAGINA,
        PAEL_CO_ELEMENTOCOMPUESTO,
        PAEL_CO_PREFIJO_REUTILIZABLE,
        PAEL_CO_ID_VISTA,
        PAEL_NU_ORDEN_ELEM_COMP,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        CO_USUARIO_CREACION
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_B', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_PAGI_PAGINA
            WHERE PAGI_CO_CODIGO = 'DATOS_PERSONALES_CONTACTO'
                AND PAGI_CO_FORMULARIO = 'FORM_CON_CES_IGE'
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'MEDIO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1 --Cambia por elemento compuesto efemplo if
        ),
        'CES_MED',
        -- REVISAR EL PATRON DEL CODIGO EN REFERENCIA LA ELEMENTO COMPUSTO
        'contenedor_t2w9B9Cnup',
        2,
        0,
        SYSDATE,
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        )
    );
-- PAGINA DATOS_ESPECIFICOS ----especificos  
-- EXPONGO
INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO (
        CO_ID,
        PAEL_CO_PAGINA,
        PAEL_CO_ELEMENTOCOMPUESTO,
        PAEL_CO_PREFIJO_REUTILIZABLE,
        PAEL_CO_ID_VISTA,
        PAEL_NU_ORDEN_ELEM_COMP,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        CO_USUARIO_CREACION
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DE_A', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_PAGI_PAGINA
            WHERE PAGI_CO_CODIGO = 'DATOS_ESPECIFICOS'
                AND PAGI_CO_FORMULARIO = 'FORM_CON_CES_IGE'
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'BLOQUE_EXPONGO' --Cambia por elemento compuesto efemplo if
        ),
        '',
        'contenedor_BzfUCJSbne',
        0,
        0,
        SYSDATE,
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        )
    );
--SOLICITO
INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO (
        CO_ID,
        PAEL_CO_PAGINA,
        PAEL_CO_ELEMENTOCOMPUESTO,
        PAEL_CO_PREFIJO_REUTILIZABLE,
        PAEL_CO_ID_VISTA,
        PAEL_NU_ORDEN_ELEM_COMP,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        CO_USUARIO_CREACION
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DE_B', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_PAGI_PAGINA
            WHERE PAGI_CO_CODIGO = 'DATOS_ESPECIFICOS'
                AND PAGI_CO_FORMULARIO = 'FORM_CON_CES_IGE'
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'BLOQUE_SOLICITO' --Cambia por elemento compuesto efemplo if
        ),
        '',
        'contenedor_BzfUCJSbne',
        0,
        0,
        SYSDATE,
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        )
    );
-- PAGINA DOCUMENTACION
-- Documentos que aporta directamente a este procedimiento:
INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO (
        CO_ID,
        PAEL_CO_PAGINA,
        PAEL_CO_ELEMENTOCOMPUESTO,
        PAEL_CO_PREFIJO_REUTILIZABLE,
        PAEL_CO_ID_VISTA,
        PAEL_NU_ORDEN_ELEM_COMP,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        CO_USUARIO_CREACION
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_PD_A', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_PAGI_PAGINA
            WHERE PAGI_CO_CODIGO = 'DOCUMENTACION'
                AND PAGI_CO_FORMULARIO = 'FORM_CON_CES_IGE'
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DOC_APORTADOS' --Cambia por elemento compuesto efemplo if
        ),
        'CES_',
        --REVISAR
        'contenedor_VAoH5NBdv4',
        1,
        0,
        SYSDATE,
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        )
    );
-- Documentos que no se aportan por encontrarse ya en poder $$DEL_AYTO$$ $$TRATAMIENTO_AYTO$$ $$NOMBRE_AYTO$$:
INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO (
        CO_ID,
        PAEL_CO_PAGINA,
        PAEL_CO_ELEMENTOCOMPUESTO,
        PAEL_CO_PREFIJO_REUTILIZABLE,
        PAEL_CO_ID_VISTA,
        PAEL_NU_ORDEN_ELEM_COMP,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        CO_USUARIO_CREACION
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_PD_B', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_PAGI_PAGINA
            WHERE PAGI_CO_CODIGO = 'DOCUMENTACION'
                AND PAGI_CO_FORMULARIO = 'FORM_CON_CES_IGE'
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DOC_APORTADA_AYTO' --Cambia por elemento compuesto efemplo if
        ),
        'CES_',
        --REVISAR
        'contenedor_VAoH5NBdv4',
        1,
        0,
        SYSDATE,
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        )
    );
-- Documentos que no se aportan por encontrarse ya en poder de otras Administraciones públicas:
INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO (
        CO_ID,
        PAEL_CO_PAGINA,
        PAEL_CO_ELEMENTOCOMPUESTO,
        PAEL_CO_PREFIJO_REUTILIZABLE,
        PAEL_CO_ID_VISTA,
        PAEL_NU_ORDEN_ELEM_COMP,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        CO_USUARIO_CREACION
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_PD_C', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_PAGI_PAGINA
            WHERE PAGI_CO_CODIGO = 'DOCUMENTACION'
                AND PAGI_CO_FORMULARIO = 'FORM_CON_CES_IGE'
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DOC_APORTADA_ADM' --Cambia por elemento compuesto efemplo if
        ),
        'CES_',
        --REVISAR
        'contenedor_VAoH5NBdv4',
        1,
        0,
        SYSDATE,
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        )
    );
-- Derecho de oposición
INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO (
        CO_ID,
        PAEL_CO_PAGINA,
        PAEL_CO_ELEMENTOCOMPUESTO,
        PAEL_CO_PREFIJO_REUTILIZABLE,
        PAEL_CO_ID_VISTA,
        PAEL_NU_ORDEN_ELEM_COMP,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        CO_USUARIO_CREACION
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_PD_D', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_PAGI_PAGINA
            WHERE PAGI_CO_CODIGO = 'DOCUMENTACION'
                AND PAGI_CO_FORMULARIO = 'FORM_CON_CES_IGE'
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DER_OPOSICION' --Cambia por elemento compuesto efemplo if
        ),
        'CES_',
        --REVISAR
        'contenedor_VAoH5NBdv4',
        1,
        0,
        SYSDATE,
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        )
    );
-- PAGINA AVISOS  - reutilizable
-- INFORMACIÓN DE AVISOS Y NOTIFICACIONES
INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO (
        CO_ID,
        PAEL_CO_PAGINA,
        PAEL_CO_ELEMENTOCOMPUESTO,
        PAEL_CO_PREFIJO_REUTILIZABLE,
        PAEL_CO_ID_VISTA,
        PAEL_NU_ORDEN_ELEM_COMP,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        CO_USUARIO_CREACION
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_PA_A', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_PAGI_PAGINA
            WHERE PAGI_CO_CODIGO = 'AVISOS'
                AND PAGI_CO_FORMULARIO = 'FORM_CON_CES_IGE'
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'INFO_NOTIFICACIONES'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1 --Cambia por elemento compuesto efemplo if
        ),
        'CES_',
        'contenedor_nb2PrG9QIu',
        0,
        0,
        SYSDATE,
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        )
    );
-- PAGINA GDPR_PAGE
-- INFORMACIÓN DE AVISOS Y NOTIFICACIONES
INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO (
        CO_ID,
        PAEL_CO_PAGINA,
        PAEL_CO_ELEMENTOCOMPUESTO,
        PAEL_CO_PREFIJO_REUTILIZABLE,
        PAEL_CO_ID_VISTA,
        PAEL_NU_ORDEN_ELEM_COMP,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        CO_USUARIO_CREACION
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_PA_A', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_PAGI_PAGINA
            WHERE PAGI_CO_CODIGO = 'AVISOS'
                AND PAGI_CO_FORMULARIO = 'FORM_CON_CES_IGE'
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'GDPR'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
                AND ELCO_NU_VERSION =(
                    SELECT MAX(ELCO_NU_VERSION)
                    FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
                    WHERE ELCO_CO_CODIGO = 'GDPR'
                ) --Cambia por elemento compuesto efemplo if
        ),
        'CES_',
        'contenedor_nb2PrG9QIu',
        0,
        0,
        SYSDATE,
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        )
    );