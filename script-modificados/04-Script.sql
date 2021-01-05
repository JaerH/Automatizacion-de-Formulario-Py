-- Elemento Compuesto SOLICITANTE (Simple)
--Creacion de componentes
--NUM_DOC
INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_EC_ES_A', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'SOLICITANTE'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'NUM_DOC'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_0P3E8RmDRK',
        'line_WBHZCjmrjj',
        1,
        1,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

--PRI_APE

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_EC_ES_B', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'SOLICITANTE'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'PRI_APE'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_peWLdBWpj8',
        'line_ajAlxPHWmE',
        1,
        1,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

--SEG_APE

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_EC_ES_C', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'SOLICITANTE'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'SEG_APE'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_F3dwvdid66',
        'line_ajAlxPHWmE',
        1,
        2,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

--TIPO_DOC

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_EC_ES_D', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'SOLICITANTE'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'TIPO_DOC'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_Tb7eSXGzbn',
        'line_WBHZCjmrjj',
        0,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

--RAZ_SOC

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_EC_ES_E', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'SOLICITANTE'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'RAZ_SOC'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_Ne8J4E0m3y',
        'line_WBHZCjmrjj',
        1,
        2,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

--NOM

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_EC_ES_F', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'SOLICITANTE'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'NOM'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_IXuC1u1lw4',
        'line_ajAlxPHWmE',
        1,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );


-- Elemento Compuesto REPRESENTANTE (Simple)
--Creacion de componentes


INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
       (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_RE_EC_ES_A', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'REPRESENTANTE'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'TIPO_DOC'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_wysrYPzO2r',
        'line_5C5BeOfYuT',
        0,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

-------------------------------------------------------
--NUM_DOC

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
         (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_RE_EC_ES_B', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'REPRESENTANTE'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'NUM_DOC'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_7QHNN3F6hZ',
        'line_5C5BeOfYuT',
        1,
        1,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );


--NOM

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_RE_EC_ES_C', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'REPRESENTANTE'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'NOM'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_7Q0sfw23w2',
        'line_5C5BeOfYuT',
        1,
        2,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

--SEG_APE

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_RE_EC_ES_D', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'REPRESENTANTE'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'SEG_APE'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_Cgy7s67kW5',
        'line_9xJhquUF6q',
        1,
        1,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

--PRI_APE

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_RE_EC_ES_E', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'REPRESENTANTE'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'PRI_APE'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_vFyRzTmj9o',
        'line_9xJhquUF6q',
        1,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

-- Elemento Compuesto MEDIO
--Creacion de componentes

--NUM_VIA
INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_ME_EC_ES_A', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'MEDIO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'NUM_VIA'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'line_BsHPiJa45F',
        2,
        2,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

-- COD_POSTAL

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_ME_EC_ES_B', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'MEDIO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'COD_POSTAL'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_6KMwcEdYhT',
        'line_pNTPqW8Rx0',
        2,
        2,
        20,
        0,
        0,
        SYSDATE,
        'COD_POSTAL',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

-- PISO

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_ME_EC_ES_C', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'MEDIO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'PISO'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_CYp2REyvUd',
        'line_SRocsD3dRp',
        1,
        1,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

-- EMAIL

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_ME_EC_ES_D', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'MEDIO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'EMAIL'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_UsHyh3wgPL',
        'line_edUhMDD3Lv',
        3,
        1,
        20,
        0,
        0,
        SYSDATE,
        'EMAIL',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

--COD_VIA

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_ME_EC_ES_E', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'MEDIO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'COD_VIA'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_9E5349lGsX',
        'line_BsHPiJa45F',
        0,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

--NOM_VIA

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_ME_EC_ES_F', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'MEDIO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'NOM_VIA'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_qDXTyz0P7P',
        'line_BsHPiJa45F',
        1,
        1,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

--LETRA

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_ME_EC_ES_G', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'MEDIO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'LETRA'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_gwWeHyyjIC',
        'line_SRocsD3dRp',
        2,
        2,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

--PROVINCIA

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_ME_EC_ES_H', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'MEDIO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'PROVINCIA'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_0m3xPAPZ0g',
        'line_pNTPqW8Rx0',
        2,
        1,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

--TELEFONO

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_ME_EC_ES_I', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'MEDIO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'TELEFONO'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_VlmyeTz0zc',
        'line_edUhMDD3Lv',
        3,
        0,
        20,
        0,
        0,
        SYSDATE,
        'TELEFONO',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

-- PORTAL


INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_ME_EC_ES_J', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'MEDIO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'PORTAL'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_fhNHZhdoco',
        'line_SRocsD3dRp',
        1,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );


-- MUNICIPIO

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_ME_EC_ES_J', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'MEDIO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'MUNICIPIO'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_mHYNwiu86j',
        'line_pNTPqW8Rx0',
        2,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );


-- Elemento Compuesto BLOQUE_EXPONGO

--EXPONGO

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_EX_EC_ES_A', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'BLOQUE_EXPONGO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'EXPONGO'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_sdqtUY8u6l',
        'line_r8yUrPfWZf',
        0,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

-- Elemento Compuesto BLOQUE_SOLICITO
--BLOQUE_SOLICITO


INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_SO_EC_ES_A', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'BLOQUE_SOLICITO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'SOLICITO'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_uE8NKpPX7T',
        'line_SVp66jEGLJ',
        0,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

-- Elemento Compuesto DOC_APORTADOS
--DOC_APORTADOS

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DA_EC_ES_A', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DOC_APORTADOS'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'DOC_APORTADA_I'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_6YthPbCI11',
        'line_yBA7JKBvqZ',
        0,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        1
    );

-- Elemento Compuesto DOC_APORTADA_AYTO
-- DOC_APORTADA_AYTO_TXT

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DAA_EC_ES_A', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DOC_APORTADA_AYTO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'DOC_APORTADA_AYTO_TXT'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_TZD0oAORod',
        'line_DifXHU49Fp',
        0,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

--DOC_APORTADA_AYTO_DOC


INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DAA_EC_ES_B', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DOC_APORTADA_AYTO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'DOC_APORTADA_AYTO_DOC'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_cUhYCkA8Qw',
        'line_OsthU9jDra',
        1,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

--DOC_APORTADA_AYTO_ORGANO

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DAA_EC_ES_C', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DOC_APORTADA_AYTO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'DOC_APORTADA_AYTO_ORGANO'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_INCL0GBH8j',
        'line_OsthU9jDra',
        1,
        1,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

--DOC_APORTADA_AYTO_FECHA

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DAA_EC_ES_D', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DOC_APORTADA_AYTO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'DOC_APORTADA_AYTO_FECHA'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_7XPZmZlJwn',
        'line_LuiFtVRdO4',
        2,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

--DOC_APORTADA_AYTO_PROC

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DAA_EC_ES_E', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DOC_APORTADA_AYTO'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'DOC_APORTADA_AYTO_PROC'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_DCn6B3BIK1',
        'line_LuiFtVRdO4',
        2,
        1,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

-- Elemento Compuesto DOC_APORTADA_ADM
--Creacion de componentes
--DOC_APORTADA_ADM_TXT

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DAAA_EC_ES_A', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DOC_APORTADA_ADM'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'DOC_APORTADA_ADM_TXT'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_hoBkkZAm9o',
        'line_TEb6FWSvth',
        0,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

-- DOC_APORTADA_ADM_DOC

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DAAA_EC_ES_B', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DOC_APORTADA_ADM'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'DOC_APORTADA_ADM_DOC'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_DceAQln5rg',
        'line_yWHo5YdXXs',
        1,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

-- DOC_APORTADA_ADM_ORGANO

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DAAA_EC_ES_C', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DOC_APORTADA_ADM'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'DOC_APORTADA_ADM_ORGANO'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_BaGg0i2KgA',
        'line_yWHo5YdXXs',
        1,
        1,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );


-- DOC_APORTADA_ADM_ADM

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DAAA_EC_ES_D', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DOC_APORTADA_ADM'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'DOC_APORTADA_ADM_ADM'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_UFec9RN0p1',
        'line_sbi0cmhNE0',
        2,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

-- DOC_APORTADA_ADM_FECHA

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DAAA_EC_ES_E', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DOC_APORTADA_ADM'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'DOC_APORTADA_ADM_FECHA'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_SeY3LDj0UQ',
        'line_sbi0cmhNE0',
        2,
        1,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );


-- DOC_APORTADA_ADM_PROC

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DAAA_EC_ES_F', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DOC_APORTADA_ADM'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'DOC_APORTADA_ADM_PROC'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_0zsbJNdojb',
        'line_sbi0cmhNE0',
        2,
        2,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );


-- Elemento Compuesto DER_OPOSICION
-- Creacion de componentes
-- DER_OPOSICION_TXT1

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DO_EC_ES_A', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DER_OPOSICION'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'DER_OPOSICION_TXT1'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_b8PLpHWkWh',
        'line_G9ftdvfdpk',
        0,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

-- DER_OPOSICION_CHECK_OPONGO

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DO_EC_ES_B', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DER_OPOSICION'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'DER_OPOSICION_CHECK_OPONGO'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_sl8eBInFIr',
        'line_Gx7k7sYSS3',
        1,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

-- DER_OPOSICION_MOTIVOS

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DO_EC_ES_C', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DER_OPOSICION'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'DER_OPOSICION_MOTIVOS'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_KPya1C8v13',
        'line_B1OBhZXHk7',
        2,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );


-- DER_OPOSICION_TXT3

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DO_EC_ES_D', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DER_OPOSICION'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'DER_OPOSICION_TXT3'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_C37pjrCd8B',
        'line_Zpf1wMD2lZ',
        3,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

-- DER_OPOSICION_CHECK_CONSIENTO

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_DO_EC_ES_E', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'DER_OPOSICION'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'DER_OPOSICION_CHECK_CONSIENTO'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_XHB5ifIzPL',
        'line_DSFXH7sS56',
        4,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );



-- Elemento Compuesto INFO_NOTIFICACIONES
--Creacion de componentes

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_IF_EC_ES_A', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'INFO_NOTIFICACIONES'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'CHECK_CAMB_EMAIL'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_84159168',
        'line_1748099919',
        0,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );


-- NOTA_MEDIO_NOTIFICACION

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_IF_EC_ES_B', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'INFO_NOTIFICACIONES'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'NOTA_MEDIO_NOTIFICACION'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_1485278396',
        'line_1153325352',
        4,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );


--CHECK_TEL


INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_IF_EC_ES_C', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'INFO_NOTIFICACIONES'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'CHECK_TEL'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_1342451232',
        'line_1101946087',
        2,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );

-- CHECK_DOM

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_IF_EC_ES_D', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'INFO_NOTIFICACIONES'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'CHECK_DOM'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_39539768',
        'line_1654488912',
        3,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );


-- MEDIO_NOTIFICACION


INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_IF_EC_ES_E', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'INFO_NOTIFICACIONES'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'MEDIO_NOTIFICACION'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_542741004',
        'line_237676434',
        1,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );


-- Elemento Compuesto GDPR
-- Creacion de componentes

-- gdpr_1

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_IF_GDPR_ES_A', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'GDPR'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'gdpr_1'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_RHrDHiVyyW',
        'line_gEo0mI7wFb',
        0,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );


-- gdpr_2

INSERT INTO CEPAL_T_D_ELEL_ELCO_ELSI (
        CO_ID,
        ELEL_CO_ELEMENTOCOMPUESTO,
        ELEL_CO_ELEMENTOSIMPLE,
        ELEL_CO_ID_VISTA,
        ELEL_NM_ID_LINEA,
        ELEL_NU_ORDEN_LINEA,
        ELEL_NU_ORDEN_ELEM_SIMP,
        ELEL_NU_WIDTH,
        ELEL_NU_ALIGNMENT,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        ELEL_CO_PREFIJO_PREDEFINIDO,
        CO_USUARIO_CREACION,
        ELEL_IN_LABEL_IN_LINE
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_IF_GDPR_ES_B', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        (
            SELECT CO_ID
            FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO
            WHERE ELCO_CO_CODIGO = 'GDPR'
                AND ELCO_IN_REUTILIZABLE = 1
                AND ELCO_IN_VIGENTE = 1
        ),
         (
            SELECT CO_ID
            FROM CEPAL_T_D_ELSI_ELEM_SIMPLE
            WHERE ELSI_CO_CODIGO = 'gdpr_2'
                AND ROWNUM = 1 --REVISAR LA CONSULTA 
        ),
        'elementoSimple_fJYa1u6sWZ',
        'line_bFjwU4egwl',
        1,
        0,
        20,
        0,
        0,
        SYSDATE,
        '',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0
    );