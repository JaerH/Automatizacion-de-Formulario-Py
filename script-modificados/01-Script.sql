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
        'FORM_CON_CES_IGE',
        'CON_CES_IGE',
        'Instancia gen�rica',
        'CESI�N DE CONTRATOS',
        'CES_01',
        '.xml',
        '08cc8d7d-a95c-4520-afa7-bef8e3b0989f',
        '/cepal/procedimientos/FORMULARIOS/NORMALIZADOS/CON_CES_IGE/CON_CES_IGE_1_ADM_USUARIOS2_ 2020-12-30 11:21:49 CES_01',
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

---------------------------------------------------------


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
        'FOES_CON_CES_IGE',
        'FORM_CON_CES_IGE',
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

-------------------------------------------------------------------------------------------

INSERT INTO CEPAL_T_R_FOBL_FORM_BLMA (FOBL_CO_BLOQUEMATERIA, FOBL_CO_FORMULARIO)
VALUES ('BLOQUE_MATERIA_3', 'FORM_CON_CES_IGE');
INSERT INTO CEPAL_T_R_PRFO_PROC_FORM (PRFO_CO_PROCEDIMIENTO, PRFO_CO_FORMULARIO)
VALUES ('PROC_CON_CES', 'FORM_CON_CES_IGE');
Insert into CEPAL_T_D_PROC_PROCEDIMIENTOS (
        CO_ID,
        PROC_CO_CODIGO_CEPAL,
        PROC_NM_NOMBRE,
        PROC_LI_DESCRIPCION,
        PROC_CO_BLOQUE_MATERIA,
        PROC_CO_CLASE_TRAMITE,
        PROC_IN_INTERNO,
        PROC_IN_COMUN,
        PROC_CO_TIPO_PROCEDIMIENTO,
        PROC_CO_TIPO_CONCURRENCIA,
        PROC_IN_OFICIO,
        PROC_IN_INTERESADO,
        PROC_NM_DESCRIP_FORMA_INI,
        PROC_CO_PERIODICIDAD,
        PROC_LI_DESC_PERIODICIDAD,
        PROC_NM_DESCRIPCION_REIN,
        PROC_IN_TASAS,
        PROC_LI_DESC_TASAS,
        PROC_CO_EFSI_OFICIO,
        PROC_NM_DESC_EFSI_OFICIO,
        PROC_CO_EFSI_INTERESADO,
        PROC_NM_DESC_EFSI_INTERESADO,
        PROC_IN_VIA,
        PROC_NM_DESCRIPCION_VIA_ADM,
        PROC_IN_COMP,
        PROC_IN_AUTOMATIZABLE,
        PROC_LI_DESC_AUTOMATIZACION,
        PROC_NM_DESCRIPCION_RECU,
        PROC_IN_REQ_DOC_INI,
        PROC_NM_DESCRIPCION_REQ_DOC,
        PROC_IN_COMUNICAR_VUDS,
        PROC_LI_DESC_VUDS,
        PROC_CO_FUNCION,
        PROC_IN_ESPECIFICO,
        PROC_CO_TRAMITACION_ELEC,
        PROC_CO_METADATOS_BASICOS,
        PROC_CO_METADATOS_DERECHOS,
        PROC_CO_METADATOS_SEGURIDAD,
        PROC_CO_METADATOS_CCA,
        PROC_CO_ID_ASSET,
        PROC_LI_OBSERVACION,
        PROC_LI_COMENTARIOS_VERSION,
        PROC_CO_TIPO_TRAMITACION,
        CO_USUARIO_CREACION,
        CO_USUARIO_MODIFICACION,
        IN_ELIMINADO,
        FE_FECHA_CREACION,
        FE_FECHA_MODIFICACION,
        PROC_IN_VIGENTE,
        PROC_NU_VERSION,
        PROC_FE_FECHA_VERSION,
        IN_CONTROL_CONCURRENCIA
    )
Values(
        'PROC_CON_CES',
        'CON_CES',
        'Resoluci�n del contrato por mutuo acuerdo',
        'Extinci�n de las obligaciones por resoluci�n del contrato voluntariamente por ambas partes.',
        (
            Select CO_ID
            From CEPAL_T_M_BLMA_BLOQUE_MATERIA
            Where BLMA_CO_CODIGO = 'CONTRATACION'
                And IN_ELIMINADO = 0
        ),
        (
            Select CO_ID
            From CEPAL_T_M_CLTR_CLASE_TRAMITE
            Where CLTR_CO_CODIGO = 'CONTRATACION_PUBLICA'
                And IN_ELIMINADO = 0
        ),
        0,
        0,
        (
            Select CO_ID
            From CEPAL_T_M_TIPR_TIPO_PDTO
            Where TIPR_CO_CODIGO = 'PROC_ESTATAL_AUTONOMICO'
                And IN_ELIMINADO = 0
        ),
        (
            Select CO_ID
            From CEPAL_T_M_TICO_TIPO_CONCU
            Where TICO_CO_CODIGO = 'NO_APLICA'
                And IN_ELIMINADO = 0
        ),
        1,
        1,
        'El procedimiento puede iniciarse tanto de oficio como a instancia de parte.',
        (
            Select CO_ID
            From CEPAL_T_M_PERI_PERIODICIDAD
            Where PERI_CO_CODIGO = 'CONTINUO'
                And IN_ELIMINADO = 0
        ),
        NULL,
        'Disponer de un contrato firmado entre las partes',
        0,
        NULL,
        (
            Select CO_ID
            From CEPAL_T_M_EFSI_EFECTO_SILENCIO
            Where EFSI_CO_CODIGO = 'NO_TIENE'
                And IN_ELIMINADO = 0
        ),
        NULL,
        (
            Select CO_ID
            From CEPAL_T_M_EFSI_EFECTO_SILENCIO
            Where EFSI_CO_CODIGO = 'NO_TIENE'
                And IN_ELIMINADO = 0
        ),
        NULL,
        1,
        NULL,
        NULL,
        0,
        NULL,
        'Ante la resoluci�n que pone fin a la v�a administrativa puede interponerse tanto recurso potestativo de reposici�n como recurso contencioso administrativo',
        0,
        NULL,
        0,
        NULL,
(
            Select CO_ID
            From CEPAL_T_M_FUNC_FUNCIONES
            Where FUNC_CO_CODIGO = 'CONTRATACION'
                And IN_ELIMINADO = 0
        ),
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'default://master@MySpace/cepal/src/main/resources/com/myspace/cepal/CONTRATACION/CON_RCM/1/CON_RCM_1.bpmn2',
        NULL,
        NULL,
        (
            Select CO_ID
            From CEPAL_T_M_TITR_TIPO_TRAMITA
            Where TITR_CO_CODIGO = 'PROCEDIMIENTO'
                And IN_ELIMINADO = 0
        ),
        'ADM_USUARIOS1',
        NULL,
        0,
        SYSDATE,
        NULL,
        1,
        1,
        SYSDATE,
        0
    );
SELECT *
FROM CEPAL_T_D_FORM_FORMULARIO;
SELECT *
FROM CEPAL_T_D_FOES_FORM_ESTADO;
SELECT *
FROM CEPAL_T_R_FOBL_FORM_BLMA;
SELECT *
FROM CEPAL_T_R_PRFO_PROC_FORM;
delete from CEPAL_T_D_FORM_FORMULARIO
where FORM_CO_CODIGO = ' CON_CES_IGE ';
delete from CEPAL_T_D_FOES_FORM_ESTADO
where FOES_CO_FORMULARIO = ' FORM_CON_CES_IGE ';
delete from CEPAL_T_R_FOBL_FORM_BLMA
where FOBL_CO_FORMULARIO = ' FORM_CON_CES_IGE ';
SELECT *
FROM CEPAL_T_D_PROC_PROCEDIMIENTOS