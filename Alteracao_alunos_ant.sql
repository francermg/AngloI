alter table alunos_ant
add    COR              INTEGER,
add    EDU_ESPECIAL     CHAR(1) COLLATE PXW_INTL850,
add    DATA_IGRESSO     DATE,
add    CODIGO_ESCOLA    INTEGER,
add    TIPO_LOGADOURO   SMALLINT,
add    NUMERO           SMALLINT,
add    COMPLEMENTO_RG   SMALLINT,
add    DATA_EXP_IDENT   DATE,
add    UF_IDENTIDADE    SMALLINT,
add    ORGAO_EMIS_IDE   SMALLINT,
add    NACIONALIDADE    SMALLINT,
add    DATA_ENTR_PAIS   DATE,
add    MUNICIPIO_NAS    SMALLINT,
add    TIPOCERTIDAO     INTEGER,
add    CERTIDAO_CIVIL   SMALLINT,
add    NUMERO_TERMO     INTEGER,
add    FOLHA            VARCHAR(4),
add    LIVRO            VARCHAR(8),
add    DATA_EMI_CERT    DATE,
add    CARTORIO_UF      INTEGER,
add    NOME_CART_EXP    VARCHAR(20) COLLATE PXW_INTL850,
add    CPF              SMALLINT,
add    TIPO_EDU_ESP     SMALLINT,
add    INC_CLASSE_COMU  SMALLINT,
add    APOIO_PED_ESPE   SMALLINT,
add    CONDIC_ALUNO     SMALLINT,
add    CORR_FLUXO       SMALLINT,
add    BOLSA_FAMILIA    SMALLINT,
add    TRANSP_PUBLICO   SMALLINT,
add    TRANSP_PUB_OFER  SMALLINT,
add    ZONA_RESID       SMALLINT,
add    CONCLUINTE       SMALLINT,
add    RECLASS_INGR     SMALLINT,
add    RECLASS_DEST     SMALLINT,
add    ADMI_APOS_CENSO  SMALLINT,
add    MOV_REND_ESCOL   SMALLINT,
add    AT_ED_ESPECIALI  SMALLINT,
add    CURSO_NOR_NM     SMALLINT,
add    UF_MEC           SMALLINT,
add    ORGAO_EMISSOR    SMALLINT,
add    SEXO_E           INTEGER,
add    UFCARTORIO       INTEGER,
add    CODIGO_SP char(8),
add    BOLSA_OBS varchar(50) collate pxw_intl850;
