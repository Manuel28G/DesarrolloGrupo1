﻿CREATE
  TABLE ASISTENCIA
  (
    asi_asistio BIT NOT NULL ,
    INSCRIPCION_PERSONA_per_id INTEGER NOT NULL ,
    CONSTRAINT ASISTENCIA_PK PRIMARY KEY CLUSTERED (INSCRIPCION_PERSONA_per_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE CATEGORIA
  (
    cat_id        INTEGER IDENTITY(1,1) NOT NULL ,
    cat_edad_ini  INTEGER NOT NULL ,
    cat_edad_fin  INTEGER ,
    cat_cinta_ini VARCHAR (100) NOT NULL ,
    cat_cinta_fin VARCHAR (100) ,
    cat_sexo      CHAR NOT NULL ,
    CONSTRAINT CATEGORIA_PK PRIMARY KEY CLUSTERED (cat_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE CINTA
  (
    cin_id                       INTEGER NOT NULL ,
    cin_color_nombre             VARCHAR (100) NOT NULL ,
    cin_rango                    INTEGER NOT NULL ,
    cin_clasificacion            INTEGER NOT NULL ,
    cin_significado              VARCHAR (150) NOT NULL ,
    cin_orden                    INTEGER NOT NULL ,
    RESTRICCION_CINTA_res_cin_id INTEGER NOT NULL ,
    CONSTRAINT CINTA_PK PRIMARY KEY CLUSTERED (cin_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO
CREATE UNIQUE NONCLUSTERED INDEX
CINTA__IDX ON CINTA
(
  RESTRICCION_CINTA_res_cin_id
)
ON "default"
GO

CREATE
  TABLE COMPETENCIA
  (
    comp_id                            INTEGER IDENTITY(1,1) NOT NULL ,
    comp_nombre                        VARCHAR (100) NOT NULL ,
    comp_tipo                          INTEGER NOT NULL ,
    CATEGORIA_comp_id                   INTEGER NOT NULL ,
    UBICACION_comp_id                   INTEGER NOT NULL ,
    ORGANIZACION_comp_id                INTEGER ,
    comp_org_todas BIT NOT NULL ,
    comp_status    VARCHAR (100) NOT NULL ,
    comp_fecha_ini DATETIME NOT NULL ,
    comp_fecha_fin DATETIME NOT NULL ,
    comp_costo FLOAT NOT NULL ,
    CONSTRAINT COMPETENCIA_PK PRIMARY KEY CLUSTERED (comp_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE COMPRA_CARRITO
  (
    com_id           INTEGER NOT NULL ,
    com_tipo_pago    VARCHAR (100) NOT NULL ,
    com_fecha_compra DATE NOT NULL ,
    com_estado       VARCHAR (20) NOT NULL ,
    PERSONA_per_id   INTEGER NOT NULL ,
    CONSTRAINT COMPRA_CARRITO_PK PRIMARY KEY CLUSTERED (com_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE DATO
  (
    dat_id          INTEGER NOT NULL ,
    dat_nombre      VARCHAR (100) NOT NULL ,
    dat_abreviatura VARCHAR (20) NOT NULL ,
    CONSTRAINT DATO_PK PRIMARY KEY CLUSTERED (dat_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE DETALLE_COMPRA
  (
    det_precio FLOAT NOT NULL ,
    MATRICULA_mat_id      INTEGER NOT NULL ,
    MATRICULA_per_id      INTEGER NOT NULL ,
    INVENTARIO_inv_id     INTEGER NOT NULL ,
    EVENTO_eve_id         INTEGER NOT NULL ,
    COMPRA_CARRITO_com_id INTEGER NOT NULL ,
    MATRICULA_doj_id      INTEGER NOT NULL ,
    CONSTRAINT DETALLE_COMPRA_PK PRIMARY KEY CLUSTERED (MATRICULA_mat_id,
    MATRICULA_per_id, INVENTARIO_inv_id, EVENTO_eve_id, COMPRA_CARRITO_com_id,
    MATRICULA_doj_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE DISEÑO
  (
    dis_id          INTEGER NOT NULL ,
    dis_contenido   VARCHAR (500) NOT NULL ,
    PLANILLA_pla_id INTEGER NOT NULL ,
    CONSTRAINT DISEÑO_PK PRIMARY KEY CLUSTERED (dis_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO
CREATE UNIQUE NONCLUSTERED INDEX
DISEÑO__IDX ON DISEÑO
(
  PLANILLA_pla_id
)
ON "default"
GO

CREATE
  TABLE DOJO
  (
    doj_id             INTEGER NOT NULL ,
    doj_rif            VARCHAR (150) NOT NULL ,
    doj_nombre         VARCHAR (150) NOT NULL ,
    doj_telefono       INTEGER NOT NULL ,
    doj_email          VARCHAR (120) NOT NULL ,
    doj__logo          VARCHAR (150) ,
    doj_fecha_registro DATE NOT NULL ,
    doj_status BIT NOT NULL ,
    ORGANIZACION_org_id INTEGER NOT NULL ,
    UBICACION_ubi_id    INTEGER NOT NULL ,
    CONSTRAINT DOJO_PK PRIMARY KEY CLUSTERED (doj_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE EMAIL
  (
    ema_id    INTEGER IDENTITY(1,1) NOT NULL ,
    ema_email VARCHAR (100) NOT NULL ,
    ema_principal BIT NOT NULL ,
    PERSONA_per_id INTEGER NOT NULL ,
    CONSTRAINT EMAIL_PK PRIMARY KEY CLUSTERED (ema_id, PERSONA_per_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE ESTILO
  (
    est_id          INTEGER NOT NULL ,
    est_nombre      VARCHAR (150) NOT NULL ,
    est_descripcion VARCHAR (150) NOT NULL ,
    CONSTRAINT ESTILO_PK PRIMARY KEY CLUSTERED (est_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE EVENTO
  (
    eve_id           INTEGER IDENTITY(1,1) NOT NULL ,
	eve_nombre       VARCHAR (120) NOT NULL ,
    eve_descripcion  VARCHAR (120) NOT NULL ,
    eve_costo FLOAT NOT NULL ,
    HORARIO_hor_id   INTEGER NOT NULL ,
    UBICACION_ubi_id INTEGER NOT NULL ,
    DOJO_doj_id      INTEGER ,
    CATEGORIA_cat_id INTEGER,
    TIPO_EVENTO_tip_id INTEGER NOT NULL ,
    CONSTRAINT EVENTO_PK PRIMARY KEY CLUSTERED (eve_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO
CREATE
  TABLE EVENTO_RESTRICCION
  (
    EVENTO_eve_id                 INTEGER NOT NULL ,
    RESTRICCION_EVENTO_res_eve_id INTEGER NOT NULL ,
    eve_res_id                    INTEGER NOT NULL ,
    CONSTRAINT EVENTO_RESTRICCION_PK PRIMARY KEY CLUSTERED (eve_res_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE HISTORIAL_CINTAS
  (
    PERSONA_per_id INTEGER NOT NULL ,
    EVENTO_eve_id  INTEGER NOT NULL ,
    his_cin_fecha  DATE NOT NULL ,
    CINTA_cin_id   INTEGER NOT NULL ,
    CONSTRAINT HISTORIAL_CINTAS_PK PRIMARY KEY CLUSTERED (PERSONA_per_id,
    CINTA_cin_id, EVENTO_eve_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE HISTORIAL_MATRICULA
  (
    his_mat_fecha_vigente DATE NOT NULL ,
    his_mat_modalidad     VARCHAR (50) NOT NULL ,
    his_mat_monto FLOAT NOT NULL ,
    DOJO_doj_id INTEGER NOT NULL ,
    CONSTRAINT HISTORIAL_MATRICULA_PK PRIMARY KEY CLUSTERED (DOJO_doj_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE HIST_ASCENSO
  (
    RESULTADO_ASCENSO_res_asc_id INTEGER NOT NULL ,
    INSCRIPCION_PERSONA_per_id   INTEGER NOT NULL ,
    CONSTRAINT HIST_ASCENSO_PK PRIMARY KEY CLUSTERED (
    RESULTADO_ASCENSO_res_asc_id, INSCRIPCION_PERSONA_per_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE HIST_KATA
  (
    RESULTADO_KATA_res_kat_id  INTEGER NOT NULL ,
    INSCRIPCION_PERSONA_per_id INTEGER NOT NULL ,
    CONSTRAINT HIST_KATA_PK PRIMARY KEY CLUSTERED (RESULTADO_KATA_res_kat_id,
    INSCRIPCION_PERSONA_per_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE HIST_KUMITE
  (
    RESULTADO_KUMITE_res_kum_id INTEGER NOT NULL ,
    INSCRIPCION_PERSONA_per_id  INTEGER NOT NULL ,
    INSCRIPCION_PERSONA_per_id1 INTEGER NOT NULL ,
    CONSTRAINT HIST_KUMITE_PK PRIMARY KEY CLUSTERED (
    RESULTADO_KUMITE_res_kum_id, INSCRIPCION_PERSONA_per_id,
    INSCRIPCION_PERSONA_per_id1)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE HORARIO
  (
    hor_id           INTEGER IDENTITY(1,1) NOT NULL ,
    hor_fecha_inicio DATE NOT NULL ,
    hor_fecha_fin    DATE NOT NULL ,
    hor_hora_inicio  INTEGER NOT NULL ,
    hor_hora_fin     INTEGER NOT NULL ,
    CONSTRAINT HORARIO_PK PRIMARY KEY CLUSTERED (hor_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE IMPLEMENTO
  (
    imp_id      INTEGER NOT NULL ,
    imp_imagen  VARCHAR (100) NOT NULL ,
    imp_nombre  VARCHAR (100) NOT NULL ,
    imp_tipo    VARCHAR (100) NOT NULL ,
    imp_marca   VARCHAR (100) NOT NULL ,
    imp_color   VARCHAR (100) NOT NULL ,
    imp_talla   VARCHAR (3) ,
    imp_estatus VARCHAR (50) NOT NULL ,
    imp_precio FLOAT NOT NULL ,
    imp_stockmin    INTEGER NOT NULL ,
    imp_descripcion VARCHAR (255) NOT NULL ,
    CONSTRAINT IMPLEMENTO_PK PRIMARY KEY CLUSTERED (imp_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE INSCRIPCION
  (
    PERSONA_per_id                     INTEGER NOT NULL ,
    ins_fecha                          DATE NOT NULL ,
    SOLICITUD_PLANILLA_sol_pla_id      INTEGER ,
    SOLICITUD_PLANILLA_PLANILLA_pla_id INTEGER ,
    COMPETENCIA_comp_id                INTEGER ,
    EVENTO_eve_id                      INTEGER ,
    ins_id                             INTEGER NOT NULL ,
    CONSTRAINT INSCRIPCION_PK PRIMARY KEY CLUSTERED (PERSONA_per_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE INVENTARIO
  (
    inv_id             INTEGER NOT NULL ,
    inv_cantidad_total INTEGER NOT NULL ,
    IMPLEMENTO_imp_id  INTEGER NOT NULL ,
    DOJO_doj_id        INTEGER NOT NULL ,
    CONSTRAINT INVENTARIO_PK PRIMARY KEY CLUSTERED (inv_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE MATRICULA
  (
    mat_id             INTEGER IDENTITY(1,1) NOT NULL ,
    mat_identificador  VARCHAR (50) NOT NULL ,
    mat_fecha_creacion DATETIME NOT NULL ,
    mat_activa BIT NOT NULL ,
    mat_fecha_ultimo_pago DATETIME NOT NULL ,
    PERSONA_per_id        INTEGER NOT NULL ,
    DOJO_doj_id           INTEGER NOT NULL ,
    CONSTRAINT MATRICULA_PK PRIMARY KEY CLUSTERED (mat_id, PERSONA_per_id,
    DOJO_doj_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE ORGANIZACION
  (
    org_id        INTEGER NOT NULL ,
    org_nombre    VARCHAR (100) NOT NULL ,
    org_direccion VARCHAR (150) NOT NULL ,
    org_telefono  INTEGER NOT NULL ,
    org_email     VARCHAR (100) NOT NULL ,
    org_estado    VARCHAR (100) NOT NULL ,
    ESTILO_est_id INTEGER NOT NULL ,
    CONSTRAINT ORGANIZACION_PK PRIMARY KEY CLUSTERED (org_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE ORGANIZACION_CINTA
  (
    ORGANIZACION_org_id INTEGER NOT NULL ,
    CINTA_cin_id        INTEGER NOT NULL
  )
  ON "default"
GO

CREATE
  TABLE PERSONA
  (
    per_id           INTEGER IDENTITY(1,1) NOT NULL ,
    per_tipo_doc_id  VARCHAR (9) ,
    per_num_doc_id   NUMERIC (28) ,
    per_nombre       VARCHAR (256) NOT NULL ,
    per_apellido     VARCHAR (256) NOT NULL ,
    per_nacionalidad VARCHAR (10) NOT NULL ,
    per_alergias TEXT ,
    per_direccion TEXT ,
    per_sexo             CHAR (1) NOT NULL ,
    per_tipo_sangre      VARCHAR (3) NOT NULL ,
    per_fecha_nacimiento DATETIME NOT NULL ,
    per_nombre_usuario   VARCHAR (25) ,
    per_clave            VARCHAR (64) ,
    per_activo BIT ,
    per_peso FLOAT NOT NULL ,
    per_estatura FLOAT NOT NULL ,
    per_imagen TEXT ,
    DOJO_doj_id INTEGER ,
    CONSTRAINT PERSONA_PK PRIMARY KEY CLUSTERED (per_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO
ALTER TABLE PERSONA
ADD
CHECK ( per_tipo_doc_id IN ('CEDULA NACIONAL', 'CEDULA EXTRAJERA', 'PASAPORTE') )
GO
ALTER TABLE PERSONA
ADD
CHECK ( per_sexo IN ('F', 'M') )
GO
ALTER TABLE PERSONA
ADD
CHECK ( per_tipo_sangre IN ('A+', 'A-', 'AB+', 'AB-', 'B+', 'B-', 'O+', 'O-') )
GO

CREATE
  TABLE PERSONA_ROL
  (
    per_rol_fecha  DATE NOT NULL ,
    PERSONA_per_id INTEGER NOT NULL ,
    ROL_rol_id     INTEGER NOT NULL ,
    CONSTRAINT PERSONA_ROL_PK PRIMARY KEY CLUSTERED (PERSONA_per_id, ROL_rol_id
    )
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE PLANILLA
  (
    pla_id     INTEGER NOT NULL ,
    pla_nombre VARCHAR (100) NOT NULL ,
    pla_status BIT NOT NULL ,
    DOJO_doj_id          INTEGER ,
    TIPO_PLANILLA_tip_id INTEGER NOT NULL ,
    CONSTRAINT PLANILLA_PK PRIMARY KEY CLUSTERED (pla_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE PLA_DAT
  (
    pd_id           INTEGER NOT NULL ,
    DATO_dat_id     INTEGER NOT NULL ,
    PLANILLA_pla_id INTEGER NOT NULL ,
    CONSTRAINT PLA_DAT_PK PRIMARY KEY CLUSTERED (pd_id, DATO_dat_id,
    PLANILLA_pla_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE RC_CINTA
  (
    rc_cinta_id                        INTEGER NOT NULL ,
    rc_cinta_cinta_id                  INTEGER NOT NULL ,
    rc_cinta_restriccion_id            INTEGER NOT NULL ,
    RESTRICCION_COMPETENCIA_res_com_id INTEGER NOT NULL ,
    CINTA_cin_id                       INTEGER ,
    CONSTRAINT RC_CINTA_PK PRIMARY KEY CLUSTERED (rc_cinta_id,
    rc_cinta_cinta_id, rc_cinta_restriccion_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE REGLAMENTO
  (
    reg_id               INTEGER NOT NULL ,
    reg_nombre           VARCHAR (150) NOT NULL ,
    reg_descripcion      VARCHAR (150) NOT NULL ,
    reg_fecha_registrada DATE NOT NULL ,
    reg_status BIT NOT NULL ,
    DOJO_doj_id INTEGER NOT NULL ,
    CONSTRAINT REGLAMENTO_PK PRIMARY KEY CLUSTERED (reg_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE RELACION
  (
    rel_tipo        VARCHAR (15) NOT NULL ,
    PERSONA_per_id1 INTEGER NOT NULL ,
    PERSONA_per_id  INTEGER NOT NULL ,
    CONSTRAINT RELACION_PK PRIMARY KEY CLUSTERED (PERSONA_per_id1,
    PERSONA_per_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO
ALTER TABLE RELACION
ADD
CHECK ( rel_tipo IN ('Contacto', 'Entrenador', 'Representante') )
GO

CREATE
  TABLE RESTRICCION_CINTA
  (
    res_cin_id               INTEGER NOT NULL ,
    res_cin_descripcion      VARCHAR (255) NOT NULL ,
    res_cin_tiemp_min        INTEGER NOT NULL ,
    res_cin_punt_min         INTEGER NOT NULL ,
    res_cin_horas_docent     INTEGER NOT NULL ,
    tipo_per_id              INTEGER NOT NULL ,
    TIPO_PERIODO_tipo_per_id INTEGER NOT NULL ,
    CINTA_cin_id             INTEGER NOT NULL ,
    CONSTRAINT RESTRICCION_CINTA_PK PRIMARY KEY CLUSTERED (res_cin_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO
CREATE UNIQUE NONCLUSTERED INDEX
RESTRICCION_CINTA__IDX ON RESTRICCION_CINTA
(
  TIPO_PERIODO_tipo_per_id
)
ON "default"
GO
CREATE UNIQUE NONCLUSTERED INDEX
RESTRICCION_CINTA__IDXv1 ON RESTRICCION_CINTA
(
  CINTA_cin_id
)
ON "default"
GO

CREATE
  TABLE RESTRICCION_COMPETENCIA
  (
    res_com_id        INTEGER NOT NULL ,
    res_com_desc      VARCHAR (255) NOT NULL ,
    res_com_edad_min  INTEGER NOT NULL ,
    res_com_edad_max  INTEGER NOT NULL ,
    res_com_sexo      VARCHAR (1) NOT NULL ,
    res_com_modalidad VARCHAR (10) NOT NULL ,
    res_com_categoria VARCHAR (255) NOT NULL ,
    CONSTRAINT RESTRICCION_COMPETENCIA_PK PRIMARY KEY CLUSTERED (res_com_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE RESTRICCION_EVENTO
  (
    res_eve_id       INTEGER NOT NULL ,
    res_eve_desc     VARCHAR (255) ,
    res_eve_edad_min INTEGER ,
    res_eve_edad_max INTEGER ,
    res_eve_sexo     VARCHAR (1) ,
    CONSTRAINT RESTRICCION_EVENTO_PK PRIMARY KEY CLUSTERED (res_eve_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE RESULTADO_ASCENSO
  (
    res_asc_id INTEGER NOT NULL ,
    res_asc_aprobado BIT NOT NULL ,
    CONSTRAINT RESULTADO_ASCENSO_PK PRIMARY KEY CLUSTERED (res_asc_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE RESULTADO_KATA
  (
    res_kat_id      INTEGER NOT NULL ,
    res_kat_jurado1 INTEGER NOT NULL ,
    res_kat_jurado2 INTEGER NOT NULL ,
    res_kat_jurado3 INTEGER NOT NULL ,
    CONSTRAINT RESULTADO_KATA_PK PRIMARY KEY CLUSTERED (res_kat_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE RESULTADO_KUMITE
  (
    res_kum_id      INTEGER NOT NULL ,
    res_kum_atleta1 INTEGER NOT NULL ,
    res_kum_atleta2 INTEGER NOT NULL ,
    CONSTRAINT RESULTADO_KUMITE_PK PRIMARY KEY CLUSTERED (res_kum_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE RH_CINTA
  (
    rh_cinta_id                   INTEGER NOT NULL ,
    RESTRICCION_EVENTO_res_eve_id INTEGER NOT NULL ,
    CINTA_cin_id                  INTEGER NOT NULL,
    CONSTRAINT RH_CINTA_PK PRIMARY KEY CLUSTERED (rh_cinta_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE ROL
  (
    rol_id     INTEGER IDENTITY(1,1) NOT NULL,
    rol_nombre VARCHAR (150) NOT NULL ,
    rol_descripcion varchar(200) NOT NULL,
    CONSTRAINT ROL_PK PRIMARY KEY CLUSTERED (rol_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE SOLICITUD_INSCRIPCION
  (
    sol_inc_id                  INTEGER IDENTITY(1,1) NOT NULL ,
    sol_inc_fecha_creacion      DATETIME NOT NULL ,
    sol_inc_fecha_actualizacion DATETIME NOT NULL ,
    sol_inc_estado              VARCHAR (30) NOT NULL ,
    PERSONA_per_id              INTEGER NOT NULL ,
    DOJO_doj_id                 INTEGER NOT NULL ,
    CONSTRAINT SOLICITUD_INSCRIPCION_PK PRIMARY KEY CLUSTERED (sol_inc_id,
    PERSONA_per_id, DOJO_doj_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO
ALTER TABLE SOLICITUD_INSCRIPCION
ADD
CHECK ( sol_inc_estado IN ('ACEPTADO', 'PENDIENTE', 'RECHAZADO') )
GO

CREATE
  TABLE SOLICITUD_PLANILLA
  (
    sol_pla_id                    INTEGER NOT NULL ,
    sol_pla_fecha_creacion        DATE NOT NULL ,
    sol_pla_fecha_retiro          DATE ,
    sol_pla_fecha_reincorporacion DATE ,
    sol_pla_motivo                VARCHAR (2000) ,
    PLANILLA_pla_id               INTEGER NOT NULL ,
    CONSTRAINT SOLICITUD_PLANILLA_PK PRIMARY KEY CLUSTERED (sol_pla_id,
    PLANILLA_pla_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE TELEFONO
  (
    tel_id         INTEGER IDENTITY(1,1) NOT NULL ,
    tel_numero     VARCHAR (11) NOT NULL ,
    PERSONA_per_id INTEGER NOT NULL ,
    CONSTRAINT TELEFONO_PK PRIMARY KEY CLUSTERED (tel_id,PERSONA_per_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE TIPO_EVENTO
  (
    tip_id        INTEGER IDENTITY(1,1) NOT NULL ,
    tip_nombre    VARCHAR (120) NOT NULL ,
    CONSTRAINT TIPO_EVENTO_PK PRIMARY KEY CLUSTERED (tip_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE TIPO_PERIODO
  (
    tipo_per_id                  INTEGER NOT NULL ,
    tipo_per_desc                VARCHAR (25) ,
    rest_cinta_id                INTEGER NOT NULL ,
    RESTRICCION_CINTA_res_cin_id INTEGER NOT NULL ,
    CONSTRAINT TIPO_PERIODO_PK PRIMARY KEY CLUSTERED (tipo_per_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO
CREATE UNIQUE NONCLUSTERED INDEX
TIPO_PERIODO__IDX ON TIPO_PERIODO
(
  RESTRICCION_CINTA_res_cin_id
)
ON "default"
GO

CREATE
  TABLE TIPO_PLANILLA
  (
    tip_id          INTEGER NOT NULL ,
    tip_nombre      VARCHAR (100) NOT NULL ,
    tip_descripcion VARCHAR (150) ,
    CONSTRAINT TIPO_PLANILLA_PK PRIMARY KEY CLUSTERED (tip_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO

CREATE
  TABLE UBICACION
  (
    ubi_id        INTEGER IDENTITY(1,1) NOT NULL ,
    ubi_latitud   VARCHAR (100) NOT NULL ,
    ubi_longitud  VARCHAR (100) NOT NULL ,
    ubi_ciudad    VARCHAR (100) NOT NULL ,
    ubi_estado    VARCHAR (100) NOT NULL ,
    ubi_direccion VARCHAR (100) ,
    CONSTRAINT UBICACION_PK PRIMARY KEY CLUSTERED (ubi_id)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
  )
  ON "default"
GO