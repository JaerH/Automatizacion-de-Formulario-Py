INSERT INTO CEPAL_T_D_PAGI_PAGINA (
        CO_ID,
        PAGI_CO_CODIGO,
        PAGI_CO_ID_VISTA,
        PAGI_NM_NOMBRE,
        PAGI_NU_ORDEN,
        PAGI_CO_FORMULARIO,
        CO_USUARIO_CREACION,
        IN_ELIMINADO,
        FE_FECHA_CREACION
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
        'DATOS_PERSONALES_CONTACTO',
        'page_5CyBvb7Uv1',
        'DATOS PERSONALES Y DE CONTACTO',
        0,
        'FORM_CON_CES_IGE',
(
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0,
        SYSDATE
    );
INSERT INTO CEPAL_T_D_PAGI_PAGINA (
        CO_ID,
        PAGI_CO_CODIGO,
        PAGI_CO_ID_VISTA,
        PAGI_NM_NOMBRE,
        PAGI_NU_ORDEN,
        PAGI_CO_FORMULARIO,
        CO_USUARIO_CREACION,
        IN_ELIMINADO,
        FE_FECHA_CREACION
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
        'DATOS_ESPECIFICOS',
        'page_5CyBvb7Uv1',
        'DATOS ESPEC�FICOS',
        1,
        'FORM_CON_CES_IGE',
(
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0,
        SYSDATE
    );
INSERT INTO CEPAL_T_D_PAGI_PAGINA (
        CO_ID,
        PAGI_CO_CODIGO,
        PAGI_CO_ID_VISTA,
        PAGI_NM_NOMBRE,
        PAGI_NU_ORDEN,
        PAGI_CO_FORMULARIO,
        CO_USUARIO_CREACION,
        IN_ELIMINADO,
        FE_FECHA_CREACION
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_C', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        'DOCUMENTACION',
        'page_5CyBvb7Uv1',
        'DOCUMENTACI�N; CONSENTIMIENTO Y AUTORIZACIONES',
        2,
        'FORM_CON_CES_IGE',
(
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0,
        SYSDATE
    );
INSERT INTO CEPAL_T_D_PAGI_PAGINA (
        CO_ID,
        PAGI_CO_CODIGO,
        PAGI_CO_ID_VISTA,
        PAGI_NM_NOMBRE,
        PAGI_NU_ORDEN,
        PAGI_CO_FORMULARIO,
        CO_USUARIO_CREACION,
        IN_ELIMINADO,
        FE_FECHA_CREACION
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_D', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        'AVISOS',
        'page_5CyBvb7Uv1',
        'AVISOS Y NOTIFICACIONES',
        3,
        'FORM_CON_CES_IGE',
(
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0,
        SYSDATE
    );
INSERT INTO CEPAL_T_D_PAGI_PAGINA (
        CO_ID,
        PAGI_CO_CODIGO,
        PAGI_CO_ID_VISTA,
        PAGI_NM_NOMBRE,
        PAGI_NU_ORDEN,
        PAGI_CO_FORMULARIO,
        CO_USUARIO_CREACION,
        IN_ELIMINADO,
        FE_FECHA_CREACION
    )
VALUES (
        (
            SELECT LOWER(
                    DBMS_OBFUSCATION_TOOLKIT.md5(
                        input = > UTL_I18N.STRING_TO_RAW ('CON_CES_E', 'AL32UTF8')
                    )
                ) Alias
            from dual
        ),
        'GDPR_PAGE',
        'page_5CyBvb7Uv1',
        'DECLARACI�N RESPONSABLE',
        4,
        'FORM_CON_CES_IGE',
(
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0,
        SYSDATE
    );
- -
SELECT DBMS_OBFUSCATION_TOOLKIT.md5(
        input = > UTL_I18N.STRING_TO_RAW ('rodrigo' || '46728595335', 'AL32UTF8')
    ) Alias
from dual;
- -
SELECT LOWER(
        DBMS_OBFUSCATION_TOOLKIT.md5(
            input = > UTL_I18N.STRING_TO_RAW ('CON_CES', 'AL32UTF8')
        )
    ) Alias
from dual;
SELECT *
FROM CEPAL_T_D_PAGI_PAGINA;
delete from CEPAL_T_D_PAGI_PAGINA
where PAGI_CO_FORMULARIO = 'FORM_CON_CES_IGE';