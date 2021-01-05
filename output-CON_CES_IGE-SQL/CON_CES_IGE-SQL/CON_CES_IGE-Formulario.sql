INSERT INTO CEPAL_T_D_FORM_FORMULARIO (
        CO_ID,
        FORM_CO_CODIGO,
        FORM_NM_NOMBRE,
        FORM_LI_DESCRIPCION,
        FORM_NM_NOMBREARCHIVO,
        FORM_NM_EXTENSION,
        FORM_CO_ID_ALFRESCO,
        FORM_LI_URI_ALFRESCO,
        CO_USUARIO_CREACION,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        IN_CONTROL_CONCURRENCIA,
        FORM_NU_VERSION,
        FORM_FE_FECHA_VERSION,
        FORM_IN_VIGENTE,
        FORM_IN_ESPECIFICO
    )
VALUES (
        ' FORM_CON_CES_IGE ',
        ' CON_CES_IGE ',
        ' Instancia genérica ',
        ' CESIÓN DE CONTRATOS ',
        ' CES_01 ',
        ' .xml ',
        '08cc8d7d-a95c-4520-afa7-bef8e3b0989f',
        '/cepal/procedimientos/FORMULARIOS/NORMALIZADOS/ CON_CES_IGE / CON_CES_IGE _1_ADM_USUARIOS2_ 2020-12-30 11:21:49 CES_01 ',
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0,
        SYSDATE,
        0,
        1,
        SYSDATE,
        1,
        0
    );
INSERT INTO CEPAL_T_D_FOES_FORM_ESTADO(
        CO_ID,
        FOES_CO_FORMULARIO,
        FOES_CO_FLUJO_ESTADO,
        FOES_IN_ACTIVO,
        CO_USUARIO_CREACION,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        IN_CONTROL_CONCURRENCIA
    )
VALUES (
        'FOES_CON_CES_IGE ',
        'FORM_CON_CES_IGE ',
        (
            SELECT CO_ID
            FROM CEPAL_T_M_FLES_FLUJO_ESTADO
            WHERE FLES_CO_CODIGO = 'VALID_FIN_FORM'
        ),
        1,
        (
            SELECT CO_ID
            FROM CEPAL_T_D_USUA_USUARIOS
            WHERE USUA_LI_LOGIN = '00000000T'
                AND IN_ELIMINADO = 0
        ),
        0,
        SYSDATE,
        0
    );
INSERT INTO CEPAL_T_R_FOBL_FORM_BLMA (FOBL_CO_BLOQUEMATERIA, FOBL_CO_FORMULARIO)
VALUES ('BLOQUE_MATERIA_3', ' FORM_CON_CES_IGE ');
INSERT INTO CEPAL_T_R_PRFO_PROC_FORM (PRFO_CO_PROCEDIMIENTO, PRFO_CO_FORMULARIO)
VALUES (' PROC_ CON_CES ', ' CON_CES ');