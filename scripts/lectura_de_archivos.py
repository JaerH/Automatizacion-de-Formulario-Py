"""
Created on Wed Dec 16 23:05:05 2020

@authors: 
    - Rodrigo Herrada
    - Jose Luis Quispe
"""

import pandas as pd
import os
import time
from datetime import datetime as dt


def main():

    df = leer_archivos()
    # visualizar_datos(df)
    exportar_datos(df)


def leer_archivos():

    path = "../input"

    filename = input("Ingresar el nombre del archivo -> ") + ".xlsx"

    print("Leyendo archivo...")

    ##time.sleep(2)

    fullpath = os.path.join(path, filename)

    dataFrame = pd.read_excel(
        fullpath, sheet_name="Revisión de procedimientos", header=0)

    return dataFrame


def visualizar_datos(dataFrame):

    print("Visulizando Datos")

    dataFrame_cols = dataFrame.columns

    for col in dataFrame_cols:
        print(dataFrame[col])
        

def exportar_datos(dataFrame):

    print("Generando script...")

    time.sleep(2)
    
    increment=0

    #table_name = 'CEPAL_T_D_FORM_FORMULARIO'

    with open("../output/script_original/script.sql", "w" , encoding="utf-8"):
        for index, row in dataFrame.iterrows():
            
            increment=increment+1
        
            # ================================================FORMS================================================
            
            print("-- ===============================================================",file=open("../output/script_original/script.sql", "a"))
            print("-- Script para el procedimiento ", row['CÓDIGO DE FORMULARIO'],file=open("../output/script_original/script.sql", "a"))
            print("-- ===============================================================",file=open("../output/script_original/script.sql", "a"))
            print("-- 01",row['CÓDIGO DE FORMULARIO'],"-Formulario'", file=open("../output/script_original/script.sql", "a"))


            print("INSERT INTO CEPAL_T_D_FORM_FORMULARIO ( CO_ID, FORM_CO_CODIGO, FORM_NM_NOMBRE, FORM_LI_DESCRIPCION, FORM_NM_NOMBREARCHIVO, FORM_NM_EXTENSION, FORM_CO_ID_ALFRESCO, FORM_LI_URI_ALFRESCO, CO_USUARIO_CREACION, IN_ELIMINADO, FE_FECHA_CREACION, IN_CONTROL_CONCURRENCIA, FORM_NU_VERSION, FORM_FE_FECHA_VERSION, FORM_IN_VIGENTE, FORM_IN_ESPECIFICO ) VALUES ( '",row['CÓDIGO DE PLANTILLA'],"', '",row['CÓDIGO DE FORMULARIO'],"', '",row['FORMULARIO'],"','",row['DESCRIPCIÓN DEL PROCEDIMIENTO'],"', '",row['NOMBRE ARCHIVO'],"', '",row['TIPO ARCHIVO'],"','','/cepal/procedimientos/FORMULARIOS/NORMALIZADOS/",row['CÓDIGO DE FORMULARIO'],"/",row['CÓDIGO DE FORMULARIO'],"_1_ADM_USUARIOS2_",dt.now().strftime("%Y%m%d%H%M%S"), row['NOMBRE ARCHIVO'], "','ADM0000001', 0, SYSDATE, 0, 1, SYSDATE, 1, 0 );",sep="",file=open("../output/script_original/script.sql", "a"))


            print("INSERT INTO CEPAL_T_D_FOES_FORM_ESTADO (CO_ID,FOES_CO_FORMULARIO,FOES_CO_FLUJO_ESTADO,FOES_IN_ACTIVO,CO_USUARIO_CREACION,IN_ELIMINADO,FE_FECHA_CREACION,IN_CONTROL_CONCURRENCIA) VALUES (", "'FOES_", row['CÓDIGO DE FORMULARIO'], "','", row[
                  'CÓDIGO DE PLANTILLA'], "',", "(SELECT CO_ID FROM CEPAL_T_M_FLES_FLUJO_ESTADO WHERE FLES_CO_CODIGO = 'VALID_FIN_FORM'),", '1,', "(SELECT CO_ID FROM CEPAL_T_D_USUA_USUARIOS WHERE USUA_LI_LOGIN = '00000000T' AND IN_ELIMINADO = 0),", '0,', "SYSDATE,", '0);',sep="", file=open("../output/script_original/script.sql", "a"))
                  
            print("INSERT INTO CEPAL_T_R_FOBL_FORM_BLMA (FOBL_CO_BLOQUEMATERIA, FOBL_CO_FORMULARIO) VALUES (", "'BLOQUE_MATERIA_3','", row['CÓDIGO DE PLANTILLA'], "');",sep="", file=open("../output/script_original/script.sql", "a"))
            
            
            # AQUI ENTRA Y LUEGO VA A SALIR
            print("Insert into CEPAL_T_D_PROC_PROCEDIMIENTOS ( CO_ID, PROC_CO_CODIGO_CEPAL, PROC_NM_NOMBRE, PROC_LI_DESCRIPCION, PROC_CO_BLOQUE_MATERIA, PROC_CO_CLASE_TRAMITE, PROC_IN_INTERNO, PROC_IN_COMUN, PROC_CO_TIPO_PROCEDIMIENTO, PROC_CO_TIPO_CONCURRENCIA, PROC_IN_OFICIO, PROC_IN_INTERESADO, PROC_NM_DESCRIP_FORMA_INI, PROC_CO_PERIODICIDAD, PROC_LI_DESC_PERIODICIDAD, PROC_NM_DESCRIPCION_REIN, PROC_IN_TASAS, PROC_LI_DESC_TASAS, PROC_CO_EFSI_OFICIO, PROC_NM_DESC_EFSI_OFICIO, PROC_CO_EFSI_INTERESADO, PROC_NM_DESC_EFSI_INTERESADO, PROC_IN_VIA, PROC_NM_DESCRIPCION_VIA_ADM, PROC_IN_COMP, PROC_IN_AUTOMATIZABLE, PROC_LI_DESC_AUTOMATIZACION, PROC_NM_DESCRIPCION_RECU, PROC_IN_REQ_DOC_INI, PROC_NM_DESCRIPCION_REQ_DOC, PROC_IN_COMUNICAR_VUDS, PROC_LI_DESC_VUDS, PROC_CO_FUNCION, PROC_IN_ESPECIFICO, PROC_CO_TRAMITACION_ELEC, PROC_CO_METADATOS_BASICOS, PROC_CO_METADATOS_DERECHOS, PROC_CO_METADATOS_SEGURIDAD, PROC_CO_METADATOS_CCA, PROC_CO_ID_ASSET, PROC_LI_OBSERVACION, PROC_LI_COMENTARIOS_VERSION, PROC_CO_TIPO_TRAMITACION, CO_USUARIO_CREACION, CO_USUARIO_MODIFICACION, IN_ELIMINADO, FE_FECHA_CREACION, FE_FECHA_MODIFICACION, PROC_IN_VIGENTE, PROC_NU_VERSION, PROC_FE_FECHA_VERSION, IN_CONTROL_CONCURRENCIA )",sep="", file=open("../output/script_original/script.sql", "a"))
            print("Values( 'PROC_",row['CÓDIGO DE PROCEDIMIENTO'],"', '",row['CÓDIGO DE PROCEDIMIENTO'],"', 'Resolucion del contrato por mutuo acuerdo', 'Extincion de las obligaciones por resolucion del contrato voluntariamente por ambas partes.', ( Select CO_ID From CEPAL_T_M_BLMA_BLOQUE_MATERIA Where BLMA_CO_CODIGO = 'CONTRATACION' And IN_ELIMINADO = 0 ), ( Select CO_ID From CEPAL_T_M_CLTR_CLASE_TRAMITE Where CLTR_CO_CODIGO = 'CONTRATACION_PUBLICA' And IN_ELIMINADO = 0 ), 0, 0, ( Select CO_ID From CEPAL_T_M_TIPR_TIPO_PDTO Where TIPR_CO_CODIGO = 'PROC_ESTATAL_AUTONOMICO' And IN_ELIMINADO = 0 ), ( Select CO_ID From CEPAL_T_M_TICO_TIPO_CONCU Where TICO_CO_CODIGO = 'NO_APLICA' And IN_ELIMINADO = 0 ), 1, 1, 'El procedimiento puede iniciarse tanto de oficio como a instancia de parte.', ( Select CO_ID From CEPAL_T_M_PERI_PERIODICIDAD Where PERI_CO_CODIGO = 'CONTINUO' And IN_ELIMINADO = 0 ), NULL, 'Disponer de un contrato firmado entre las partes', 0, NULL, ( Select CO_ID From CEPAL_T_M_EFSI_EFECTO_SILENCIO Where EFSI_CO_CODIGO = 'NO_TIENE' And IN_ELIMINADO = 0 ), NULL, ( Select CO_ID From CEPAL_T_M_EFSI_EFECTO_SILENCIO Where EFSI_CO_CODIGO = 'NO_TIENE' And IN_ELIMINADO = 0 ), NULL, 1, NULL, NULL, 0, NULL, 'Ante la resolucion que pone fin a la via administrativa puede interponerse tanto recurso potestativo de reposicion como recurso contencioso administrativo', 0, NULL, 0, NULL, ( Select CO_ID From CEPAL_T_M_FUNC_FUNCIONES Where FUNC_CO_CODIGO = 'CONTRATACION' And IN_ELIMINADO = 0 ), 1, NULL, NULL, NULL, NULL, NULL, 'default://master@MySpace/cepal/src/main/resources/com/myspace/cepal/CONTRATACION/CON_RCM/1/CON_RCM_1.bpmn2', NULL, NULL, ( Select CO_ID From CEPAL_T_M_TITR_TIPO_TRAMITA Where TITR_CO_CODIGO = 'PROCEDIMIENTO' And IN_ELIMINADO = 0 ), 'ADM_USUARIOS1', NULL, 0, SYSDATE, NULL, 1, 1, SYSDATE, 0 );",sep="", file=open("../output/script_original/script.sql", "a"))
            
           
            
            print("INSERT INTO CEPAL_T_R_PRFO_PROC_FORM (PRFO_CO_PROCEDIMIENTO, PRFO_CO_FORMULARIO) VALUES ('","PROC_", row['CÓDIGO DE PROCEDIMIENTO'],"','",row['CÓDIGO DE PLANTILLA'],"');",sep="", file=open("../output/script_original/script.sql", "a"))


            # ================================================PAGES================================================ 
            
            print("-- 02",row['CÓDIGO DE FORMULARIO'],"-Paginas-Formulario", file=open("../output/script_original/script.sql", "a"))
                   
            if row['BLOQUE GENÉRICO DATOS SOLICITANTE']  == 'SI':
                            print("INSERT INTO CEPAL_T_D_PAGI_PAGINA (CO_ID,PAGI_CO_CODIGO,PAGI_CO_ID_VISTA,PAGI_NM_NOMBRE,PAGI_NU_ORDEN,PAGI_CO_FORMULARIO,CO_USUARIO_CREACION,IN_ELIMINADO,FE_FECHA_CREACION) VALUES ((SELECT LOWER(DBMS_OBFUSCATION_TOOLKIT.md5(input => UTL_I18N.STRING_TO_RAW ('CON_CES_PF_A",increment,"', 'AL32UTF8'))) Alias from dual),'DATOS_PERSONALES_CONTACTO','page_5CyBvb7Uv1','DATOS PERSONALES Y DE CONTACTO',","0,'",row['CÓDIGO DE PLANTILLA'],"',(SELECT CO_ID FROM CEPAL_T_D_USUA_USUARIOS WHERE USUA_LI_LOGIN = '00000000T' AND IN_ELIMINADO = 0 ),",'0,',"SYSDATE",");",sep="", file=open("../output/script_original/script.sql", "a"))
            if row['DATOS ESPECÍFICOS']  == 'SI':
                            print("INSERT INTO CEPAL_T_D_PAGI_PAGINA (CO_ID,PAGI_CO_CODIGO,PAGI_CO_ID_VISTA,PAGI_NM_NOMBRE,PAGI_NU_ORDEN,PAGI_CO_FORMULARIO,CO_USUARIO_CREACION,IN_ELIMINADO,FE_FECHA_CREACION) VALUES ((SELECT LOWER(DBMS_OBFUSCATION_TOOLKIT.md5(input => UTL_I18N.STRING_TO_RAW ('CON_CES_PF_B",increment,"', 'AL32UTF8'))) Alias from dual),'DATOS_ESPECIFICOS','page_5CyBvb7Uv1','DATOS ESPECÍFICOS',","1,'",row['CÓDIGO DE PLANTILLA'],"',(SELECT CO_ID FROM CEPAL_T_D_USUA_USUARIOS WHERE USUA_LI_LOGIN = '00000000T' AND IN_ELIMINADO = 0 ),",'0,',"SYSDATE",");",sep="", file=open("../output/script_original/script.sql", "a"))
            if row['DOCUMENTACIÓN; CONSENTIMIENTO Y AUTORIZACIONES']  == 'SI':
                            print("INSERT INTO CEPAL_T_D_PAGI_PAGINA (CO_ID,PAGI_CO_CODIGO,PAGI_CO_ID_VISTA,PAGI_NM_NOMBRE,PAGI_NU_ORDEN,PAGI_CO_FORMULARIO,CO_USUARIO_CREACION,IN_ELIMINADO,FE_FECHA_CREACION) VALUES ((SELECT LOWER(DBMS_OBFUSCATION_TOOLKIT.md5(input => UTL_I18N.STRING_TO_RAW ('CON_CES_PF_C",increment,"', 'AL32UTF8'))) Alias from dual),'DOCUMENTACION','page_5CyBvb7Uv1','DOCUMENTACIÓN; CONSENTIMIENTO Y AUTORIZACIONES',","2,'",row['CÓDIGO DE PLANTILLA'],"',(SELECT CO_ID FROM CEPAL_T_D_USUA_USUARIOS WHERE USUA_LI_LOGIN = '00000000T' AND IN_ELIMINADO = 0 ),",'0,',"SYSDATE",");",sep="", file=open("../output/script_original/script.sql", "a"))
            if row['AVISOS Y NOTIFICACIONES']  == 'SI':
                            print("INSERT INTO CEPAL_T_D_PAGI_PAGINA (CO_ID,PAGI_CO_CODIGO,PAGI_CO_ID_VISTA,PAGI_NM_NOMBRE,PAGI_NU_ORDEN,PAGI_CO_FORMULARIO,CO_USUARIO_CREACION,IN_ELIMINADO,FE_FECHA_CREACION) VALUES ((SELECT LOWER(DBMS_OBFUSCATION_TOOLKIT.md5(input => UTL_I18N.STRING_TO_RAW ('CON_CES_PF_D",increment,"', 'AL32UTF8'))) Alias from dual),'AVISOS','page_5CyBvb7Uv1','AVISOS Y NOTIFICACIONES',","3,'",row['CÓDIGO DE PLANTILLA'],"',(SELECT CO_ID FROM CEPAL_T_D_USUA_USUARIOS WHERE USUA_LI_LOGIN = '00000000T' AND IN_ELIMINADO = 0 ),",'0,',"SYSDATE",");",sep="", file=open("../output/script_original/script.sql", "a"))
            if row['DECLARACIÓN RESPONSABLE']  == 'SI':
                            print("INSERT INTO CEPAL_T_D_PAGI_PAGINA (CO_ID,PAGI_CO_CODIGO,PAGI_CO_ID_VISTA,PAGI_NM_NOMBRE,PAGI_NU_ORDEN,PAGI_CO_FORMULARIO,CO_USUARIO_CREACION,IN_ELIMINADO,FE_FECHA_CREACION) VALUES ((SELECT LOWER(DBMS_OBFUSCATION_TOOLKIT.md5(input => UTL_I18N.STRING_TO_RAW ('CON_CES_PF_E",increment,"', 'AL32UTF8'))) Alias from dual),'GDPR_PAGE','page_5CyBvb7Uv1','DECLARACIÓN RESPONSABLE',","4,'",row['CÓDIGO DE PLANTILLA'],"',(SELECT CO_ID FROM CEPAL_T_D_USUA_USUARIOS WHERE USUA_LI_LOGIN = '00000000T' AND IN_ELIMINADO = 0 ),",'0,',"SYSDATE",");",sep="", file=open("../output/script_original/script.sql", "a"))                
            
            
          
            # ================================================COMPONENTS============================================ 
            
      
            print("-- 03",row['CÓDIGO DE FORMULARIO'],"-ElementoCompuesto-Formulario", file=open("../output/script_original/script.sql", "a"))
           
            print("-- DATOS PERSONALES" , file=open("../output/script_original/script.sql" , "a"))

            print("-- SOLICITANTE" , file=open("../output/script_original/script.sql" , "a"))
            if row['BLOQUE GENÉRICO DATOS SOLICITANTE']=='SI':
               print("INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO (CO_ID,PAEL_CO_PAGINA,PAEL_CO_ELEMENTOCOMPUESTO,PAEL_CO_PREFIJO_REUTILIZABLE,PAEL_CO_ID_VISTA,PAEL_NU_ORDEN_ELEM_COMP,IN_ELIMINADO,FE_FECHA_CREACION,CO_USUARIO_CREACION) VALUES ((SELECT LOWER(DBMS_OBFUSCATION_TOOLKIT.md5(input => UTL_I18N.STRING_TO_RAW ('CON_CES_DP_A",increment,"', 'AL32UTF8'))) Alias from dual),(SELECT CO_ID FROM CEPAL_T_D_PAGI_PAGINA WHERE PAGI_CO_CODIGO = 'DATOS_PERSONALES_CONTACTO' AND PAGI_CO_FORMULARIO = '",row['CÓDIGO DE PLANTILLA'],"'),(SELECT CO_ID FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO WHERE ELCO_CO_CODIGO = 'SOLICITANTE' AND ELCO_IN_REUTILIZABLE = 1 AND ELCO_IN_VIGENTE = 1),'CES_SOL','contenedor_t2w9B9Cnup',2,0,SYSDATE,(SELECT CO_ID FROM CEPAL_T_D_USUA_USUARIOS WHERE USUA_LI_LOGIN = '00000000T'AND IN_ELIMINADO = 0));",sep="",file=open("../output/script_original/script.sql", "a"))          
           
            
            print("-- REPRESENTANTE" , file=open("../output/script_original/script.sql" , "a"))
            if row['BLOQUE GENÉRICO DATOS DEL REPRESENTANTE']=='SI':
               print("INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO (CO_ID,PAEL_CO_PAGINA,PAEL_CO_ELEMENTOCOMPUESTO,PAEL_CO_PREFIJO_REUTILIZABLE,PAEL_CO_ID_VISTA,PAEL_NU_ORDEN_ELEM_COMP,IN_ELIMINADO,FE_FECHA_CREACION,CO_USUARIO_CREACION) VALUES ((SELECT LOWER(DBMS_OBFUSCATION_TOOLKIT.md5(input => UTL_I18N.STRING_TO_RAW ('CON_CES_DP_B",increment,"', 'AL32UTF8'))) Alias from dual),(SELECT CO_ID FROM CEPAL_T_D_PAGI_PAGINA WHERE PAGI_CO_CODIGO = 'DATOS_PERSONALES_CONTACTO' AND PAGI_CO_FORMULARIO = '",row['CÓDIGO DE PLANTILLA'],"'),(SELECT CO_ID FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO WHERE ELCO_CO_CODIGO = 'REPRESENTANTE'AND ELCO_IN_REUTILIZABLE = 1 AND ELCO_IN_VIGENTE = 1), 'CES_SOL','contenedor_t2w9B9Cnup',2,0,SYSDATE,(SELECT CO_ID FROM CEPAL_T_D_USUA_USUARIOS WHERE USUA_LI_LOGIN = '00000000T'AND IN_ELIMINADO = 0));",sep="",file=open("../output/script_original/script.sql", "a"))        
        
            
            print("-- MEDIO" , file=open("../output/script_original/script.sql" , "a"))
            if row['BLOQUE GENÉRICO MEDIO PREFERENTE']=='SI':
               print("INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO ( CO_ID, PAEL_CO_PAGINA, PAEL_CO_ELEMENTOCOMPUESTO, PAEL_CO_PREFIJO_REUTILIZABLE, PAEL_CO_ID_VISTA, PAEL_NU_ORDEN_ELEM_COMP, IN_ELIMINADO, FE_FECHA_CREACION, CO_USUARIO_CREACION ) VALUES ( ( SELECT LOWER( DBMS_OBFUSCATION_TOOLKIT.md5( input => UTL_I18N.STRING_TO_RAW ('CON_CES_DP_C",increment,"', 'AL32UTF8') ) ) Alias from dual ), ( SELECT CO_ID FROM CEPAL_T_D_PAGI_PAGINA WHERE PAGI_CO_CODIGO = 'DATOS_PERSONALES_CONTACTO' AND PAGI_CO_FORMULARIO = '",row['CÓDIGO DE PLANTILLA'],"' ), ( SELECT CO_ID FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO WHERE ELCO_CO_CODIGO = 'MEDIO' AND ELCO_IN_REUTILIZABLE = 1 AND ELCO_IN_VIGENTE = 1  ), 'CES_MED', 'contenedor_t2w9B9Cnup', 2, 0, SYSDATE, ( SELECT CO_ID FROM CEPAL_T_D_USUA_USUARIOS WHERE USUA_LI_LOGIN = '00000000T' AND IN_ELIMINADO = 0 ) );",sep="",file=open("../output/script_original/script.sql", "a"))        

            
        
            print("-- DATOS ESPECIFICOS", file=open("../output/script_original/script.sql", "a"))
            
            print("-- EXPONGO" , file=open("../output/script_original/script.sql" , "a"))
            if row['BLOQUE GENÉRICO EXPONGO']  == 'SI':
                print("INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO ( CO_ID, PAEL_CO_PAGINA, PAEL_CO_ELEMENTOCOMPUESTO, PAEL_CO_PREFIJO_REUTILIZABLE, PAEL_CO_ID_VISTA, PAEL_NU_ORDEN_ELEM_COMP, IN_ELIMINADO, FE_FECHA_CREACION, CO_USUARIO_CREACION ) VALUES ( ( SELECT LOWER( DBMS_OBFUSCATION_TOOLKIT.md5( input => UTL_I18N.STRING_TO_RAW ('CON_CES_DE_A",increment,"', 'AL32UTF8') ) ) Alias from dual ), ( SELECT CO_ID FROM CEPAL_T_D_PAGI_PAGINA WHERE PAGI_CO_CODIGO = 'DATOS_ESPECIFICOS' AND PAGI_CO_FORMULARIO = '",row['CÓDIGO DE PLANTILLA'],"' ), ( SELECT CO_ID FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO WHERE ELCO_CO_CODIGO = 'BLOQUE_EXPONGO'), '', 'contenedor_BzfUCJSbne', 0, 0, SYSDATE, ( SELECT CO_ID FROM CEPAL_T_D_USUA_USUARIOS WHERE USUA_LI_LOGIN = '00000000T' AND IN_ELIMINADO = 0 ) );",sep="",file=open("../output/script_original/script.sql", "a"))
              
            print("-- SOLICITO" , file=open("../output/script_original/script.sql" , "a"))
            if row['BLOQUE GENÉRICO SOLICITO']== 'SI':
                print("INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO ( CO_ID, PAEL_CO_PAGINA, PAEL_CO_ELEMENTOCOMPUESTO, PAEL_CO_PREFIJO_REUTILIZABLE, PAEL_CO_ID_VISTA, PAEL_NU_ORDEN_ELEM_COMP, IN_ELIMINADO, FE_FECHA_CREACION, CO_USUARIO_CREACION ) VALUES ( ( SELECT LOWER( DBMS_OBFUSCATION_TOOLKIT.md5( input => UTL_I18N.STRING_TO_RAW ('CON_CES_DE_B",increment,"', 'AL32UTF8') ) ) Alias from dual ), ( SELECT CO_ID FROM CEPAL_T_D_PAGI_PAGINA WHERE PAGI_CO_CODIGO = 'DATOS_ESPECIFICOS' AND PAGI_CO_FORMULARIO = '",row['CÓDIGO DE PLANTILLA'],"' ), ( SELECT CO_ID FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO WHERE ELCO_CO_CODIGO = 'BLOQUE_SOLICITO' ), '', 'contenedor_BzfUCJSbne', 0, 0, SYSDATE, ( SELECT CO_ID FROM CEPAL_T_D_USUA_USUARIOS WHERE USUA_LI_LOGIN = '00000000T' AND IN_ELIMINADO = 0 ) );",sep="",file=open("../output/script_original/script.sql", "a"))


            print("-- PAGINA DOCUMENTACION" , file=open("../output/script_original/script.sql" , "a"))
            print("-- Documentos que aporta directamente a este procedimiento" , file=open("../output/script_original/script.sql" , "a"))
            if row['BLOQUE GENÉRICO DOCUMENTACIÓN']== 'SI':
                print("INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO ( CO_ID, PAEL_CO_PAGINA, PAEL_CO_ELEMENTOCOMPUESTO, PAEL_CO_PREFIJO_REUTILIZABLE, PAEL_CO_ID_VISTA, PAEL_NU_ORDEN_ELEM_COMP, IN_ELIMINADO, FE_FECHA_CREACION, CO_USUARIO_CREACION ) VALUES ( ( SELECT LOWER( DBMS_OBFUSCATION_TOOLKIT.md5( input => UTL_I18N.STRING_TO_RAW ('CON_CES_PD_A",increment,"', 'AL32UTF8') ) ) Alias from dual ), ( SELECT CO_ID FROM CEPAL_T_D_PAGI_PAGINA WHERE PAGI_CO_CODIGO = 'DOCUMENTACION' AND PAGI_CO_FORMULARIO = '",row['CÓDIGO DE PLANTILLA'],"' ), ( SELECT CO_ID FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO WHERE ELCO_CO_CODIGO = 'DOC_APORTADOS' ), 'CES_', 'contenedor_VAoH5NBdv4', 1, 0, SYSDATE, ( SELECT CO_ID FROM CEPAL_T_D_USUA_USUARIOS WHERE USUA_LI_LOGIN = '00000000T' AND IN_ELIMINADO = 0 ) );",sep="",file=open("../output/script_original/script.sql", "a"))
                
                
            print("-- Documentos que no se aportan por encontrarse ya en poder $$DEL_AYTO$$ $$TRATAMIENTO_AYTO$$ $$NOMBRE_AYTO$$:" , file=open("../output/script_original/script.sql" , "a"))
            if row['BLOQUE GENÉRICO CONSENTIMIENTO']== 'SI':
                print("INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO ( CO_ID, PAEL_CO_PAGINA, PAEL_CO_ELEMENTOCOMPUESTO, PAEL_CO_PREFIJO_REUTILIZABLE, PAEL_CO_ID_VISTA, PAEL_NU_ORDEN_ELEM_COMP, IN_ELIMINADO, FE_FECHA_CREACION, CO_USUARIO_CREACION ) VALUES ( ( SELECT LOWER( DBMS_OBFUSCATION_TOOLKIT.md5( input => UTL_I18N.STRING_TO_RAW ('CON_CES_PD_B",increment,"', 'AL32UTF8') ) ) Alias from dual ), ( SELECT CO_ID FROM CEPAL_T_D_PAGI_PAGINA WHERE PAGI_CO_CODIGO = 'DOCUMENTACION' AND PAGI_CO_FORMULARIO = '",row['CÓDIGO DE PLANTILLA'],"' ), ( SELECT CO_ID FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO WHERE ELCO_CO_CODIGO = 'DOC_APORTADA_AYTO'  ), 'CES_', 'contenedor_VAoH5NBdv4', 1, 0, SYSDATE, ( SELECT CO_ID FROM CEPAL_T_D_USUA_USUARIOS WHERE USUA_LI_LOGIN = '00000000T' AND IN_ELIMINADO = 0 ) );",sep="",file=open("../output/script_original/script.sql", "a"))
                
            
            print("-- Documentos que no se aportan por encontrarse ya en poder de otras Administraciones públicas:" , file=open("../output/script_original/script.sql" , "a"))
            if row['BLOQUE GENÉRICO AUTORIZACIÓN']== 'SI':
                print("INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO ( CO_ID, PAEL_CO_PAGINA, PAEL_CO_ELEMENTOCOMPUESTO, PAEL_CO_PREFIJO_REUTILIZABLE, PAEL_CO_ID_VISTA, PAEL_NU_ORDEN_ELEM_COMP, IN_ELIMINADO, FE_FECHA_CREACION, CO_USUARIO_CREACION ) VALUES ( ( SELECT LOWER( DBMS_OBFUSCATION_TOOLKIT.md5( input => UTL_I18N.STRING_TO_RAW ('CON_CES_PD_C",increment,"', 'AL32UTF8') ) ) Alias from dual ), ( SELECT CO_ID FROM CEPAL_T_D_PAGI_PAGINA WHERE PAGI_CO_CODIGO = 'DOCUMENTACION' AND PAGI_CO_FORMULARIO = '",row['CÓDIGO DE PLANTILLA'],"' ), ( SELECT CO_ID FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO WHERE ELCO_CO_CODIGO = 'DOC_APORTADA_ADM' ), 'CES_', 'contenedor_VAoH5NBdv4', 1, 0, SYSDATE, ( SELECT CO_ID FROM CEPAL_T_D_USUA_USUARIOS WHERE USUA_LI_LOGIN = '00000000T' AND IN_ELIMINADO = 0 ) );",sep="",file=open("../output/script_original/script.sql", "a"))
                
            
            print("-- Derecho de oposición" , file=open("../output/script_original/script.sql" , "a"))
            if row['OPOSICIÓN']== 'SI':
                print("INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO ( CO_ID, PAEL_CO_PAGINA, PAEL_CO_ELEMENTOCOMPUESTO, PAEL_CO_PREFIJO_REUTILIZABLE, PAEL_CO_ID_VISTA, PAEL_NU_ORDEN_ELEM_COMP, IN_ELIMINADO, FE_FECHA_CREACION, CO_USUARIO_CREACION ) VALUES ( ( SELECT LOWER( DBMS_OBFUSCATION_TOOLKIT.md5( input => UTL_I18N.STRING_TO_RAW ('CON_CES_DO_A",increment,"', 'AL32UTF8') ) ) Alias from dual ), ( SELECT CO_ID FROM CEPAL_T_D_PAGI_PAGINA WHERE PAGI_CO_CODIGO = 'DOCUMENTACION' AND PAGI_CO_FORMULARIO = '",row['CÓDIGO DE PLANTILLA'],"' ), ( SELECT CO_ID FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO WHERE ELCO_CO_CODIGO = 'DER_OPOSICION' ), 'CES_', 'contenedor_VAoH5NBdv4', 1, 0, SYSDATE, ( SELECT CO_ID FROM CEPAL_T_D_USUA_USUARIOS WHERE USUA_LI_LOGIN = '00000000T' AND IN_ELIMINADO = 0 ) );",sep="",file=open("../output/script_original/script.sql", "a"))
            
            
            if row['AVISOS Y NOTIFICACIONES'] == 'SI':
                print("INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO (CO_ID, PAEL_CO_PAGINA,PAEL_CO_ELEMENTOCOMPUESTO,PAEL_CO_PREFIJO_REUTILIZABLE,PAEL_CO_ID_VISTA,PAEL_NU_ORDEN_ELEM_COMP,IN_ELIMINADO,FE_FECHA_CREACION,CO_USUARIO_CREACION) VALUES ((SELECT LOWER(DBMS_OBFUSCATION_TOOLKIT.md5(input => UTL_I18N.STRING_TO_RAW ('CON_CES_DO_B",increment,"', 'AL32UTF8'))) Alias from dual),(SELECT CO_ID FROM CEPAL_T_D_PAGI_PAGINA WHERE PAGI_CO_CODIGO = 'AVISOS' AND PAGI_CO_FORMULARIO = '",row['CÓDIGO DE PLANTILLA'],"'), (SELECT CO_ID FROM (SELECT CO_ID, ELCO_NU_VERSION FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO WHERE ELCO_CO_CODIGO = 'INFO_NOTIFICACIONES' AND ELCO_IN_REUTILIZABLE=1 AND ELCO_IN_VIGENTE=1  ORDER BY ELCO_NU_VERSION DESC) WHERE  ROWNUM = 1) , 'RCM_' , 'contenedor_nb2PrG9QIu' , 0, 0, SYSDATE,(SELECT CO_ID FROM CEPAL_T_D_USUA_USUARIOS WHERE USUA_LI_LOGIN = '00000000T'AND IN_ELIMINADO = 0 ));",sep="" , file=open("../output/script_original/script.sql", "a"))
         
            
            if row['DECLARACIÓN RESPONSABLE'] == 'SI':
                print("INSERT INTO CEPAL_T_D_PAEL_PAGI_ELCO (CO_ID, PAEL_CO_PAGINA,PAEL_CO_ELEMENTOCOMPUESTO,PAEL_CO_PREFIJO_REUTILIZABLE,PAEL_CO_ID_VISTA,PAEL_NU_ORDEN_ELEM_COMP,IN_ELIMINADO,FE_FECHA_CREACION,CO_USUARIO_CREACION) VALUES ((SELECT LOWER(DBMS_OBFUSCATION_TOOLKIT.md5(input => UTL_I18N.STRING_TO_RAW ('CON_CES_DO_C",increment,"', 'AL32UTF8'))) Alias from dual) , (SELECT CO_ID FROM CEPAL_T_D_PAGI_PAGINA WHERE PAGI_CO_CODIGO = 'GDPR_PAGE' AND PAGI_CO_FORMULARIO = '",row['CÓDIGO DE PLANTILLA'],"'), (SELECT CO_ID FROM (SELECT CO_ID, ELCO_NU_VERSION FROM CEPAL_T_D_ELCO_ELEM_COMPUESTO WHERE ELCO_CO_CODIGO = 'GDPR' AND ELCO_IN_REUTILIZABLE=1 AND ELCO_IN_VIGENTE=1  ORDER BY ELCO_NU_VERSION DESC) WHERE  ROWNUM = 1) , 'RCM_' , 'contenedor_nb2PrG9QIu' , 0, 0, SYSDATE,(SELECT CO_ID FROM CEPAL_T_D_USUA_USUARIOS WHERE USUA_LI_LOGIN = '00000000T'AND IN_ELIMINADO = 0 ));" ,sep="", file=open("../output/script_original/script.sql", "a"))
            


    print("Exportando archivo...")

    time.sleep(2)



if __name__ == "__main__":
    main()
    input("\tPROCESO FINALIZADO CON ÉXITO. PRESIONAR ENTER PARA SALIR")
