unit UDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, IBTable, IBDatabase, IBServices,
  IBUpdateSQL, IBDatabaseInfo, IBEvents, IBSQLMonitor,
  DBTables, DateUtil;

type
  TDM = class(TDataModule)
    DB_ANGLO: TIBDatabase;
    IBTr_ANGLO: TIBTransaction;
    dsParametros: TDataSource;
    Parametros: TIBTable;
    dsAlunos: TDataSource;
    Alunos: TIBDataSet;
    ParametrosCODIGO: TIntegerField;
    ParametrosPROX_BLOQUETO: TIntegerField;
    ParametrosLOCALPAG: TIBStringField;
    ParametrosMENSAGEM1: TIBStringField;
    ParametrosMENSAGEM2: TIBStringField;
    ParametrosMENSAGEMSACADO: TIBStringField;
    ParametrosCEDENTE: TIBStringField;
    ParametrosCAD_ALU_ORIG: TIBStringField;
    ContaAlunosQ: TIBQuery;
    ContaAlunosQTOTALALUNOS: TIntegerField;
    dsBloquetos: TDataSource;
    Bloquetos: TIBDataSet;
    ParametrosVCTO_PADRAO: TIntegerField;
    ParametrosMENSALIDADE_1: TIBBCDField;
    ParametrosMENSALIDADE_2: TIBBCDField;
    ParametrosMENSALIDADE_3: TIBBCDField;
    ParametrosMATERIAL_1: TIBBCDField;
    ParametrosMATERIAL_2: TIBBCDField;
    ParametrosMATERIAL_3: TIBBCDField;
    dsBloquetosQ: TDataSource;
    ParametrosBLQ_TOP: TSmallintField;
    ParametrosBLQ_BOTTOM: TSmallintField;
    ParametrosBLQ_LEFT: TSmallintField;
    ParametrosBLQ_RIGHT: TSmallintField;
    Turmas: TIBDataSet;
    dsTurmas: TDataSource;
    Disciplinas: TIBDataSet;
    dsDisciplinas: TDataSource;
    DisciplinasCODIGO: TIntegerField;
    DisciplinasNOME: TIBStringField;
    DisciplinasNOME_RES: TIBStringField;
    DisciplinasMAX_FALTAS: TIBBCDField;
    TurmasSERIE: TSmallintField;
    TurmasTURMA: TIBStringField;
    TurmasPERIODO: TSmallintField;
    TurmasVAGAS: TIntegerField;
    TurmasPeriodoX: TStringField;
    Grade: TIBDataSet;
    dsGrade: TDataSource;
    GradeSERIE: TSmallintField;
    GradeDISCIPLINA: TIntegerField;
    GradeSEQUENCIA: TSmallintField;
    GradeCH_SEMANAL: TIntegerField;
    GradeCH_OFICIAL: TIntegerField;
    GradeCH_N_OFICIAL: TIntegerField;
    Mapa: TIBDataSet;
    dsMapa: TDataSource;
    MapaTUR_SERIE: TSmallintField;
    MapaTUR_TURMA: TIBStringField;
    MapaDIA_SEMANA: TSmallintField;
    MapaAULA: TSmallintField;
    MapaDIS_CODIGO: TIntegerField;
    GradeTipoX: TStringField;
    GradeTIPO: TIBStringField;
    GradeDisciplinaX: TStringField;
    Notas: TIBDataSet;
    dsNotas: TDataSource;
    TurmasNome: TStringField;
    NotasALUNO: TIntegerField;
    NotasDISCIPLINA: TIntegerField;
    NotasBIMESTRE: TSmallintField;
    NotasNOTA: TIBBCDField;
    NotasNOTA1: TIBBCDField;
    NotasNOTA2: TIBBCDField;
    NotasNOTA3: TIBBCDField;
    NotasCODIGO: TIntegerField;
    NotasCHAMADA: TSmallintField;
    NotasNOME: TIBStringField;
    ParametrosDIRETORIO_SCA: TIBStringField;
    Faltas: TIBDataSet;
    dsFaltas: TDataSource;
    FaltasALU_CODIGO: TIntegerField;
    FaltasDIS_CODIGO: TIntegerField;
    FaltasDATA: TDateField;
    FaltasQTDADE: TSmallintField;
    Boletim: TIBQuery;
    dsBoletim: TDataSource;
    ParametrosMEDIA: TIBBCDField;
    ParametrosRECUPBIM1: TIBStringField;
    ParametrosRECUPBIM2: TIBStringField;
    ParametrosRECUPBIM3: TIBStringField;
    BoletimR: TIBQuery;
    dsBoletimR: TDataSource;
    NotasRECUPBIM: TIBBCDField;
    NotasA: TIBDataSet;
    dsNotasA: TDataSource;
    NotasAALUNO: TIntegerField;
    NotasADISCIPLINA: TIntegerField;
    NotasABIMESTRE: TSmallintField;
    NotasANOTA1: TIBBCDField;
    NotasANOTA2: TIBBCDField;
    NotasANOTA3: TIBBCDField;
    NotasANOTA: TIBBCDField;
    NotasARECUPBIM: TIBBCDField;
    NotasACODIGO: TIntegerField;
    NotasANOME: TIBStringField;
    NotasASEQUENCIA: TSmallintField;
    DiasLetivos: TIBDataSet;
    DiasLetivosDATA: TDateField;
    dsDiasLetivos: TDataSource;
    ParametrosTEMPO_CARTAO: TIBBCDField;
    ParametrosMES_MATERIAL1: TSmallintField;
    ParametrosMES_MATERIAL2: TSmallintField;
    ParametrosMES_MATERIAL3: TSmallintField;
    NotasBim: TIBQuery;
    dsNotasBim: TDataSource;
    NotasBimALU_COD: TIntegerField;
    NotasBimALU_CHAMADA: TSmallintField;
    NotasBimALU_NOME: TIBStringField;
    NotasBimN_01: TIBBCDField;
    NotasBimN_02: TIBBCDField;
    NotasBimN_03: TIBBCDField;
    NotasBimN_04: TIBBCDField;
    NotasBimN_05: TIBBCDField;
    NotasBimN_06: TIBBCDField;
    NotasBimN_07: TIBBCDField;
    NotasBimN_08: TIBBCDField;
    NotasBimN_09: TIBBCDField;
    NotasBimN_10: TIBBCDField;
    NotasBimN_11: TIBBCDField;
    NotasBimN_12: TIBBCDField;
    NotasBimN_13: TIBBCDField;
    NotasBimN_14: TIBBCDField;
    NotasBimN_15: TIBBCDField;
    Bimestres: TIBDataSet;
    BimestresCODIGO: TSmallintField;
    BimestresDESCRICAO: TIBStringField;
    BimestresINICIO: TDateField;
    BimestresFIM: TDateField;
    dsBimestres: TDataSource;
    ParametrosCOR_ZEBRADO: TIntegerField;
    AluRecup: TIBQuery;
    dsAluRecup: TDataSource;
    AluRecupALU_COD: TIntegerField;
    AluRecupALU_CHAMADA: TSmallintField;
    AluRecupALU_NOME: TIBStringField;
    MapaFin: TIBQuery;
    dsMapaFin: TDataSource;
    MapaFinALU_COD: TIntegerField;
    MapaFinALU_NOME: TIBStringField;
    MapaFinALU_BOLSA: TIBBCDField;
    MapaFinALU_STATUS: TIBStringField;
    MapaFinVAL_01: TIBBCDField;
    MapaFinDATA_01: TDateField;
    MapaFinTP_01: TSmallintField;
    MapaFinVAL_02: TIBBCDField;
    MapaFinDATA_02: TDateField;
    MapaFinTP_02: TSmallintField;
    MapaFinVAL_03: TIBBCDField;
    MapaFinDATA_03: TDateField;
    MapaFinTP_03: TSmallintField;
    MapaFinVAL_04: TIBBCDField;
    MapaFinDATA_04: TDateField;
    MapaFinTP_04: TSmallintField;
    MapaFinVAL_05: TIBBCDField;
    MapaFinDATA_05: TDateField;
    MapaFinTP_05: TSmallintField;
    MapaFinVAL_06: TIBBCDField;
    MapaFinDATA_06: TDateField;
    MapaFinTP_06: TSmallintField;
    MapaFinVAL_07: TIBBCDField;
    MapaFinDATA_07: TDateField;
    MapaFinTP_07: TSmallintField;
    MapaFinVAL_08: TIBBCDField;
    MapaFinDATA_08: TDateField;
    MapaFinTP_08: TSmallintField;
    MapaFinVAL_09: TIBBCDField;
    MapaFinDATA_09: TDateField;
    MapaFinTP_09: TSmallintField;
    MapaFinVAL_10: TIBBCDField;
    MapaFinDATA_10: TDateField;
    MapaFinTP_10: TSmallintField;
    MapaFinVAL_11: TIBBCDField;
    MapaFinDATA_11: TDateField;
    MapaFinTP_11: TSmallintField;
    MapaFinVAL_12: TIBBCDField;
    MapaFinDATA_12: TDateField;
    MapaFinTP_12: TSmallintField;
    MapaFinALU_MATERIAL: TIBStringField;
    FaltasDia: TIBDataSet;
    FaltasDiaCODIGO: TIntegerField;
    FaltasDiaCHAMADA: TSmallintField;
    FaltasDiaNOME: TIBStringField;
    FaltasDiaSERIE: TSmallintField;
    FaltasDiaTURMA: TIBStringField;
    FaltasDiaFONE: TIBStringField;
    FaltasDiaQTDADE: TLargeintField;
    FaltasDiaDATA: TDateField;
    dsFaltasDia: TDataSource;
    TurmasSerieX: TStringField;
    FaltasDiaSerieX: TStringField;
    ParametrosSOM_OK_FREQUENCIA: TIntegerField;
    ParametrosSOM_OK_DURACAO: TIntegerField;
    ParametrosSOM_ERRO_FREQUENCIA: TIntegerField;
    ParametrosSOM_ERRO_DURACAO: TIntegerField;
    FaltasDiaPAI: TIBStringField;
    FaltasDiaMAE: TIBStringField;
    AlunosSerieX: TStringField;
    AlunosT: TIBDataSet;
    dsAlunosT: TDataSource;
    AlunosTCODIGO: TIntegerField;
    AlunosTCHAMADA: TSmallintField;
    AlunosTNOME: TIBStringField;
    MediasAno: TIBQuery;
    dsMediasAno: TDataSource;
    MediasAnoALU_COD: TIntegerField;
    MediasAnoALU_CHAMADA: TSmallintField;
    MediasAnoALU_NOME: TIBStringField;
    MediasAnoALU_STATUS: TIBStringField;
    MediasAnoM_01: TIBBCDField;
    MediasAnoM_02: TIBBCDField;
    MediasAnoM_03: TIBBCDField;
    MediasAnoM_04: TIBBCDField;
    MediasAnoM_05: TIBBCDField;
    MediasAnoM_06: TIBBCDField;
    MediasAnoM_07: TIBBCDField;
    MediasAnoM_08: TIBBCDField;
    MediasAnoM_09: TIBBCDField;
    MediasAnoM_10: TIBBCDField;
    MediasAnoM_11: TIBBCDField;
    MediasAnoM_12: TIBBCDField;
    MediasAnoM_13: TIBBCDField;
    MediasAnoM_14: TIBBCDField;
    MediasAnoM_15: TIBBCDField;
    MediasAnoM_16: TIBBCDField;
    MediasAnoM_17: TIBBCDField;
    MediasAnoM_18: TIBBCDField;
    MediasAnoRESULTADO: TIBStringField;
    AlunosModEspX: TStringField;
    HistNotas: TIBDataSet;
    dsHistNotas: TDataSource;
    HistNotasCODIGO: TIntegerField;
    HistNotasDISCIPLINA: TIntegerField;
    HistNotasNOTA1: TIBBCDField;
    HistNotasCH1: TIntegerField;
    HistNotasNOTA2: TIBBCDField;
    HistNotasCH2: TIntegerField;
    HistNotasNOTA3: TIBBCDField;
    HistNotasCH3: TIntegerField;
    HistNotasDisciplinaX: TStringField;
    ParametrosTEXTO_REQUERIMENTO: TIBStringField;
    ParametrosTEXTO_HISTORICO: TIBStringField;
    ParametrosTEXTO_CERTIFICADO: TIBStringField;
    TotAl: TIBQuery;
    dsTotAl: TDataSource;
    TotAlTOTAL: TIntegerField;
    Estatistica: TIBQuery;
    EstatisticaDESCRICAO: TIBStringField;
    EstatisticaREMATRICULADOS: TIntegerField;
    EstatisticaNOVOS: TIntegerField;
    EstatisticaATIVOS: TIntegerField;
    EstatisticaDESISTENTES: TIntegerField;
    EstatisticaTRANSFERIDOS: TIntegerField;
    EstatisticaOUTROS: TIntegerField;
    AlunosFinalX: TStringField;
    EstatisticaMAT_SIM: TIntegerField;
    EstatisticaMAT_NAO: TIntegerField;
    EstatisticaN_ATIVOS: TIntegerField;
    MedAta: TIBQuery;
    dsMedAta: TDataSource;
    MedAtaALU_COD: TIntegerField;
    MedAtaALU_CHAMADA: TSmallintField;
    MedAtaALU_NOME: TIBStringField;
    MedAtaALU_STATUS: TIBStringField;
    MedAtaM_01: TIBBCDField;
    MedAtaM_02: TIBBCDField;
    MedAtaM_03: TIBBCDField;
    MedAtaM_04: TIBBCDField;
    MedAtaM_05: TIBBCDField;
    MedAtaM_06: TIBBCDField;
    MedAtaM_07: TIBBCDField;
    MedAtaM_08: TIBBCDField;
    MedAtaM_09: TIBBCDField;
    MedAtaM_10: TIBBCDField;
    MedAtaM_11: TIBBCDField;
    MedAtaM_12: TIBBCDField;
    MedAtaM_13: TIBBCDField;
    MedAtaM_14: TIBBCDField;
    MedAtaM_15: TIBBCDField;
    MedAtaM_16: TIBBCDField;
    MedAtaM_17: TIBBCDField;
    MedAtaM_18: TIBBCDField;
    MedAtaRESULTADO: TIBStringField;
    TurmasNUMERO: TSmallintField;
    EstatTur: TIBQuery;
    EstatTurQTD: TIntegerField;
    EstatTurSerieX: TStringField;
    Mat_Lecionada: TIBDataSet;
    dsMat_Lecionada: TDataSource;
    Mat_LecionadaSERIE: TSmallintField;
    Mat_LecionadaBIMESTRE: TSmallintField;
    Mat_LecionadaDISCIPLINA: TIntegerField;
    Mat_LecionadaCONTEUDO: TIBStringField;
    Plantoes: TIBDataSet;
    dsPlantoes: TDataSource;
    PlantoesDATA: TDateField;
    PlantoesDISCIPLINA: TIntegerField;
    PlantoesALUNO: TIntegerField;
    PlantoesPROFESSOR: TIBStringField;
    PlantoesALUNOME: TIBStringField;
    PlantoesSERIE: TSmallintField;
    PlantoesTURMA: TIBStringField;
    PlantoesSerieX: TStringField;
    ParametrosPRIMEIRO_ALUNO: TIntegerField;
    ParametrosTAXA: TIBStringField;
    ParametrosFIM_MATRICULAS: TDateField;
    Ocorrencias: TIBDataSet;
    dsOcorrencias: TDataSource;
    OcorrenciasALUNO: TIntegerField;
    OcorrenciasHORA: TDateTimeField;
    OcorrenciasTEXTO: TIBStringField;
    MapaFinALU_VENCIMENTO: TSmallintField;
    OcorrenciasNOME: TIBStringField;
    OcorrenciasSERIE: TSmallintField;
    OcorrenciasTURMA: TIBStringField;
    OcorrenciasSerieX: TStringField;
    OcorrenciasHoraX: TStringField;
    AlunosTDATA_MATRICULA: TDateField;
    TurmasCURSINHO: TSmallintField;
    FaltasDiaCURSINHO: TSmallintField;
    Diario: TIBQuery;
    DiarioD: TIBQuery;
    dsDiario: TDataSource;
    dsDiarioD: TDataSource;
    DiarioALU_COD: TIntegerField;
    DiarioALU_CHAMADA: TSmallintField;
    DiarioALU_NOME: TIBStringField;
    DiarioALU_STATUS: TIBStringField;
    DiarioALU_DATA_SAIDA: TDateField;
    DiarioALU_SEXO: TIBStringField;
    DiarioDET_FALTAS: TIBStringField;
    DiarioMEDIA: TIBBCDField;
    DiarioTOT_FALTAS: TIntegerField;
    DiarioDDATA: TDateField;
    DiarioDDIA_SEMANA: TSmallintField;
    DiarioDAULA: TSmallintField;
    ParametrosMEDIA_EXAME: TIBBCDField;
    ColecC: TIBQuery;
    dsColecC: TDataSource;
    ColecCALU_CODIGO: TIntegerField;
    ColecCALU_CHAMADA: TSmallintField;
    ColecCALU_NOME: TIBStringField;
    ColecCALU_STATUS: TIBStringField;
    ColecCALU_DATA_SAIDA: TDateField;
    ColecCM1: TIBBCDField;
    ColecCM2: TIBBCDField;
    ColecCM3: TIBBCDField;
    ColecCM4: TIBBCDField;
    ColecCMEDIA_ANUAL: TIBBCDField;
    ColecCEXAME: TIBBCDField;
    ColecCMEDIA_FINAL: TIBBCDField;
    ColecCF1: TSmallintField;
    ColecCF2: TSmallintField;
    ColecCF3: TSmallintField;
    ColecCF4: TSmallintField;
    ColecCTOT_FALTAS: TSmallintField;
    ColecCRESULTADO: TIBStringField;
    TurmasCursinhoSN: TStringField;
    Semi: TIBDataSet;
    dsSemi: TDataSource;
    ParametrosTEXTO_REQ_SEMI: TIBStringField;
    IBQGeral: TIBQuery;
    DSGeral: TDataSource;
    IBQPagantes: TIBQuery;
    DSPagantes: TDataSource;
    DSAtu_Hist: TDataSource;
    Atu_Hist: TIBQuery;
    Atu_HistALU_COD: TIntegerField;
    Atu_HistALU_STATUS: TIBStringField;
    Atu_HistRESULTADO: TIBStringField;
    Atu_HistDISC: TIntegerField;
    Atu_HistM_ANUAL: TIBBCDField;
    DisciplinasFRENTES: TSmallintField;
    NotasRECUPBIM1: TIBBCDField;
    NotasRECUPBIM2: TIBBCDField;
    NotasARECUPBIM1: TIBBCDField;
    NotasARECUPBIM2: TIBBCDField;
    NotasFRENTES: TSmallintField;
    NotasAFRENTES: TSmallintField;
    NotasNOTA4: TIBBCDField;
    NotasANOTA4: TIBBCDField;
    DisciplinasNOME_NO: TIBStringField;
    DisciplinasNOME_RES_NO: TIBStringField;
    DisciplinasNOME_ATA_1: TIBStringField;
    DisciplinasNOME_ATA_2: TIBStringField;
    DisciplinasNOME_ATA_3: TIBStringField;
    RCarne: TIBQuery;
    DSRCarne: TDataSource;
    RCarneNOME: TIBStringField;
    RCarneSERIE: TSmallintField;
    RCarneTURMA: TIBStringField;
    DSDocAlunos: TDataSource;
    DocAlunos: TIBDataSet;
    NotasAlunos: TIBDataSet;
    DSNotasAlunos: TDataSource;
    DocAlunosCODIGO: TIntegerField;
    DocAlunosNOME: TIBStringField;
    DocAlunosENDERECO: TIBStringField;
    DocAlunosCOMPLEMENTO: TIBStringField;
    DocAlunosBAIRRO: TIBStringField;
    DocAlunosCIDADE: TIBStringField;
    DocAlunosUF: TIBStringField;
    DocAlunosCEP: TIBStringField;
    DocAlunosNASC_DATA: TDateField;
    DocAlunosNASC_CIDADE: TIBStringField;
    DocAlunosNASC_UF: TIBStringField;
    DocAlunosSEXO: TIBStringField;
    DocAlunosPAI_NOME: TIBStringField;
    DocAlunosPAI_PROFISSAO: TIBStringField;
    DocAlunosPAI_NASCIMENTO: TDateField;
    DocAlunosMAE_NOME: TIBStringField;
    DocAlunosMAE_PROFISSAO: TIBStringField;
    DocAlunosMAE_NASCIMENTO: TDateField;
    DocAlunosFONE: TIBStringField;
    DocAlunosDATA_MATRICULA: TDateField;
    DocAlunosBIMESTRE: TSmallintField;
    DocAlunosCURSO: TIntegerField;
    DocAlunosSERIE: TSmallintField;
    DocAlunosTURMA: TIBStringField;
    DocAlunosCHAMADA: TSmallintField;
    DocAlunosSTATUS: TIBStringField;
    DocAlunosDATA_SAIDA: TDateField;
    DocAlunosBOLSA: TIBBCDField;
    DocAlunosOBS_HIST: TMemoField;
    DocAlunosSACADO: TIBStringField;
    DocAlunosFINAL: TIBStringField;
    DocAlunosMATERIAL: TSmallintField;
    DocAlunosVENCIMENTO: TSmallintField;
    DocAlunosANO: TSmallintField;
    DocAlunosBLOQUETO_1SEM: TSmallintField;
    DocAlunosBLOQUETO_2SEM: TSmallintField;
    DocAlunosMES_MATERIAL: TSmallintField;
    DocAlunosSENHA: TIBStringField;
    DocAlunosSACADO_RG: TIBStringField;
    DocAlunosSACADO_CPF: TIBStringField;
    DocAlunosMOD_ESPORTIVA: TIBStringField;
    DocAlunosH_ANO1: TIntegerField;
    DocAlunosH_ESCOLA1: TIBStringField;
    DocAlunosH_CIDADE1: TIBStringField;
    DocAlunosH_UF1: TIBStringField;
    DocAlunosH_ANO2: TIntegerField;
    DocAlunosH_ESCOLA2: TIBStringField;
    DocAlunosH_CIDADE2: TIBStringField;
    DocAlunosH_UF2: TIBStringField;
    DocAlunosH_ANO3: TIntegerField;
    DocAlunosH_ESCOLA3: TIBStringField;
    DocAlunosH_CIDADE3: TIBStringField;
    DocAlunosH_UF3: TIBStringField;
    DocAlunosBOLSA_OBS: TIBStringField;
    DocAlunosCODIGO_SP: TIBStringField;
    DocAlunosSerieX: TIBStringField;
    DocAlunosFinalX: TIBStringField;
    DocAlunosModEspX: TIBStringField;
    DocAlunosCURSINHO: TSmallintField;
    NotasAlunosDisciplinaX: TIBStringField;
    NotasAlunosCODIGO: TIntegerField;
    NotasAlunosDISCIPLINA: TIntegerField;
    NotasAlunosNOTA1: TIBBCDField;
    NotasAlunosCH1: TIntegerField;
    NotasAlunosNOTA2: TIBBCDField;
    NotasAlunosCH2: TIntegerField;
    NotasAlunosNOTA3: TIBBCDField;
    NotasAlunosCH3: TIntegerField;
    NotasNOTA5: TIBBCDField;
    NotasANOTA5: TIBBCDField;
    NotasNOTA6: TIBBCDField;
    NotasANOTA6: TIBBCDField;
    NotasRECUPBIM3: TIBBCDField;
    NotasARECUPBIM3: TIBBCDField;
    DSBNotas: TDataSource;
    BNotas: TIBQuery;
    BNotasALUNO: TIntegerField;
    BNotasDISCIPLINA: TIntegerField;
    BNotasBIMESTRE: TSmallintField;
    BNotasNOTA1: TIBBCDField;
    BNotasNOTA2: TIBBCDField;
    BNotasNOTA3: TIBBCDField;
    BNotasNOTA4: TIBBCDField;
    BNotasNOTA5: TIBBCDField;
    BNotasNOTA6: TIBBCDField;
    BNotasNOTA: TIBBCDField;
    BNotasRECUPBIM: TIBBCDField;
    BNotasRECUPBIM1: TIBBCDField;
    BNotasRECUPBIM2: TIBBCDField;
    BNotasRECUPBIM3: TIBBCDField;
    NotasB: TIBDataSet;
    DSNotasB: TDataSource;
    NotasBALUNO: TIntegerField;
    NotasBDISCIPLINA: TIntegerField;
    NotasBBIMESTRE: TSmallintField;
    NotasBNOTA1: TIBBCDField;
    NotasBNOTA2: TIBBCDField;
    NotasBNOTA3: TIBBCDField;
    NotasBNOTA4: TIBBCDField;
    NotasBNOTA5: TIBBCDField;
    NotasBNOTA6: TIBBCDField;
    NotasBNOTA: TIBBCDField;
    NotasBRECUPBIM: TIBBCDField;
    NotasBRECUPBIM1: TIBBCDField;
    NotasBRECUPBIM2: TIBBCDField;
    NotasBRECUPBIM3: TIBBCDField;
    AluRecupN_01: TIBStringField;
    AluRecupN_02: TIBStringField;
    AluRecupN_03: TIBStringField;
    AluRecupN_04: TIBStringField;
    AluRecupN_05: TIBStringField;
    AluRecupN_06: TIBStringField;
    AluRecupN_07: TIBStringField;
    AluRecupN_08: TIBStringField;
    AluRecupN_09: TIBStringField;
    AluRecupN_10: TIBStringField;
    AluRecupN_11: TIBStringField;
    AluRecupN_12: TIBStringField;
    AluRecupN_13: TIBStringField;
    AluRecupN_14: TIBStringField;
    AluRecupN_15: TIBStringField;
    AluRecupN_16: TIBStringField;
    AluRecupN_17: TIBStringField;
    AluRecupN_18: TIBStringField;
    AluRecupN_19: TIBStringField;
    AluRecupN_20: TIBStringField;
    FaltasDiaENDERECO: TIBStringField;
    FaltasDiaCOMP: TIBStringField;
    FaltasDiaBAIRRO: TIBStringField;
    FaltasDiaCIDADE: TIBStringField;
    FaltasDiaUF: TIBStringField;
    FaltasDiaCEP: TIBStringField;
    ColecCNBIMESTRE: TSmallintField;
    IBQGeralCODIGO: TIntegerField;
    IBQGeralNOME: TIBStringField;
    IBQGeralMATERIAL: TSmallintField;
    Recibo: TIBDataSet;
    dsRecibo: TDataSource;
    ReciboCOD_ALUNO: TIntegerField;
    ReciboN_RECIBO: TIntegerField;
    ReciboVALOR: TIBBCDField;
    ReciboDATA_EXP: TDateField;
    ReciboSITUACAO: TIBStringField;
    ReciboDATA_BAIXA: TDateField;
    ReciboDATA_VENC: TDateField;
    ReciboVALOR_PAGO: TIBBCDField;
    Recibonomealuno: TIBStringField;
    BoletimRCOD_ALU: TIntegerField;
    BoletimRNOME: TIBStringField;
    BoletimRCHAMADA: TSmallintField;
    BoletimRSEXO: TIBStringField;
    BoletimRDIS_NOME: TIBStringField;
    BoletimRN1: TIBBCDField;
    BoletimRN2: TIBBCDField;
    BoletimRN3: TIBBCDField;
    BoletimRN4: TIBBCDField;
    BoletimRR1: TIBBCDField;
    BoletimRR2: TIBBCDField;
    BoletimRR3: TIBBCDField;
    BoletimRR4: TIBBCDField;
    BoletimRM1: TIBBCDField;
    BoletimRM2: TIBBCDField;
    BoletimRM3: TIBBCDField;
    BoletimRM4: TIBBCDField;
    BoletimRF1: TSmallintField;
    BoletimRF2: TSmallintField;
    BoletimRF3: TSmallintField;
    BoletimRF4: TSmallintField;
    BoletimRTOT_F: TSmallintField;
    BoletimRMEDIA_ANUAL: TIBBCDField;
    BoletimREXAME: TIBBCDField;
    BoletimRMEDIA_FINAL: TIBBCDField;
    BoletimRACIMA_MEDIA: TIBStringField;
    OcorrenciasTIPO: TIBStringField;
    DsCores: TDataSource;
    Cores: TIBDataSet;
    CoresCODIGO_COR: TIntegerField;
    CoresCOR: TIBStringField;
    nossonumero: TIBQuery;
    dsnossonumero: TDataSource;
    nossonumeroNOSSO_NUMERO: TIntegerField;
    nossonumeroALUNO: TIntegerField;
    nossonumeroPARCELA: TSmallintField;
    nossonumeroEMISSAO: TDateField;
    nossonumeroVENCIMENTO: TDateField;
    nossonumeroVALOR: TIBBCDField;
    nossonumeroPAGAMENTO: TDateField;
    nossonumeroVALOR_PAGO: TIBBCDField;
    nossonumeroMENSALIDADE: TIBBCDField;
    nossonumeroMATERIAL: TIBBCDField;
    nossonumeroDESCONTO: TIBBCDField;
    nossonumeroTIPO_PG: TSmallintField;
    nossonumeroANO_DV: TIBStringField;
    nossonumeroNossoNum: TIBStringField;
    nossonumeroParcelaX: TIBStringField;
    nossonumeroCodBarras: TIBStringField;
    nossonumeroCampo1: TIBStringField;
    nossonumeroCampo2: TIBStringField;
    nossonumeroCampo4: TIBStringField;
    nossonumeroCampo5: TIBStringField;
    nossonumeroSerieX: TIBStringField;
    nossonumeroMesX: TIBStringField;
    nossonumeroTipo_Pg_X: TIBStringField;
    nossonumeroCampo3: TIBStringField;
    nossonumeroCODIGO: TIntegerField;
    nossonumeroNOME: TIBStringField;
    nossonumeroFONE: TIBStringField;
    nossonumeroSERIE: TSmallintField;
    nossonumeroTURMA: TIBStringField;
    nossonumeroBOLSA: TIBBCDField;
    nossonumeroMATERIAL1: TSmallintField;
    Professores: TIBDataSet;
    dsProfessores: TDataSource;
    orgao: TIBDataSet;
    pais: TIBDataSet;
    logadouro: TIBDataSet;
    logadouroCOD_LOGADOURO: TIntegerField;
    logadouroNOME_LOGADOURO: TIBStringField;
    dsorgao: TDataSource;
    dspais: TDataSource;
    dslogadouro: TDataSource;
    paisCOD_PAIS: TIntegerField;
    paisNOME_PAIS: TIBStringField;
    orgaoCOD_ORGAO: TIntegerField;
    orgaoNOME: TIBStringField;
    BoletimCOD_ALU: TIntegerField;
    BoletimNOME: TIBStringField;
    BoletimCHAMADA: TSmallintField;
    BoletimSEXO: TIBStringField;
    BoletimDIS_NOME: TIBStringField;
    BoletimN1: TIBBCDField;
    BoletimN2: TIBBCDField;
    BoletimN3: TIBBCDField;
    BoletimN4: TIBBCDField;
    BoletimF1: TSmallintField;
    BoletimF2: TSmallintField;
    BoletimF3: TSmallintField;
    BoletimF4: TSmallintField;
    BoletimTOT_F: TSmallintField;
    BoletimMEDIA_ANUAL: TIBBCDField;
    BoletimEXAME: TIBBCDField;
    BoletimMEDIA_FINAL: TIBBCDField;
    BoletimACIMA_MEDIA: TIBStringField;
    Alunoscoraluno: TIBStringField;
    dsend_cob: TDataSource;
    end_cob: TIBDataSet;
    ParametrosREAJUSTE_1_2: TIBBCDField;
    ParametrosREAJUSTE_3: TIBBCDField;
    ParametrosMENSAGEM3: TIBStringField;
    ParametrosMENSAGEM4: TIBStringField;
    ProfessoresCOD_PROF: TIntegerField;
    ProfessoresTIPO: TSmallintField;
    ProfessoresCOD_ESCOLA: TIntegerField;
    ProfessoresANO: TSmallintField;
    ProfessoresNOME: TIBStringField;
    ProfessoresDATA_NASC: TDateField;
    ProfessoresSEXO: TSmallintField;
    ProfessoresMAE: TIBStringField;
    ProfessoresTIPO_LOGADOURO: TIBStringField;
    ProfessoresENDERECO: TIBStringField;
    ProfessoresNIMERO: TIBStringField;
    ProfessoresCOMPLEMENTO: TIBStringField;
    ProfessoresBAIRRO: TIBStringField;
    ProfessoresUF: TSmallintField;
    ProfessoresMUNICIPIO: TIntegerField;
    ProfessoresFUNCAO: TSmallintField;
    ProfessoresFUNCAO_AUX: TSmallintField;
    ProfessoresENSINO_FUND_5A8: TSmallintField;
    ProfessoresENSINO_FUND_1A4: TSmallintField;
    ProfessoresENSINO_FUND_1A5: TSmallintField;
    ProfessoresENSINO_FUND_6A9: TSmallintField;
    ProfessoresENSINO_MEDIO_INT: TSmallintField;
    ProfessoresEDUC_JOVENS_1A4: TSmallintField;
    ProfessoresEDUC_JOVENS_5A8: TSmallintField;
    ProfessoresEDUC_JOVENS_ADULTOS_MEDIO: TSmallintField;
    ProfessoresEDU_JOVENS_ADULTOS_TECN: TSmallintField;
    ProfessoresNEES: TSmallintField;
    ProfessoresIDENTIDADE: TIntegerField;
    ProfessoresNUMEROIDENTIDADE: TIBStringField;
    ProfessoresCOMPLEMENTOIDENTI: TIBStringField;
    ProfessoresDATAEMISSAOIDENT: TDateField;
    ProfessoresORGAOEMISSORIDENT: TIntegerField;
    ProfessoresDATAADMISSAO: TDateField;
    ProfessoresESCOLARIDADE: TIntegerField;
    ProfessoresMUN_NAS: TIntegerField;
    ProfessoresUF_NAS: TIntegerField;
    Atu_HistEXAME_N: TIBBCDField;
    ProfessoresLOGIN: TIBStringField;
    ProfessoresSENHA: TIBStringField;
    ProfessoresCEP: TIBStringField;
    dsGradePorfessor: TDataSource;
    ibGradeprofessor: TIBDataSet;
    ibGradeprofessorPROFESSOR: TIntegerField;
    ibGradeprofessorDISCIPLINA: TIntegerField;
    ibGradeprofessorTURMA: TIBStringField;
    ibGradeprofessorSERIE: TIntegerField;
    ibGradeprofessorHORA: TDateTimeField;
    ibGradeprofessornomedisciplina: TIBStringField;
    dstiposanguineo: TDataSource;
    tiposanguineo: TIBDataSet;
    tiposanguineoID_SANGUE: TIntegerField;
    tiposanguineoSANGUE: TIBStringField;
    Alunostiposangue: TIBStringField;
    end_cobCOD_ALUNO: TIntegerField;
    end_cobENDERECO: TIBStringField;
    end_cobNUMERO: TIBStringField;
    end_cobCEP: TIBStringField;
    end_cobTELEFONE: TIBStringField;
    end_cobCIDADE: TIntegerField;
    upMunicipio: TIBUpdateSQL;
    qMunicipio: TIBQuery;
    dsMunicipio: TDataSource;
    EstatTurSERIEA: TSmallintField;
    EstatTurTURMAA: TIBStringField;
    qatualizaPuxaNotas: TIBQuery;
    dsAtualizaPuxaNotas: TDataSource;
    qatualizaPuxaNotasALU_COD: TIntegerField;
    qatualizaPuxaNotasALU_STATUS: TIBStringField;
    qatualizaPuxaNotasRESULTADO: TIBStringField;
    qatualizaPuxaNotasDISC: TIntegerField;
    qatualizaPuxaNotasM_ANUAL: TIBBCDField;
    qatualizaPuxaNotasEXAME_N: TIBBCDField;
    qMunicipioCOD_MUNICIPIO: TIntegerField;
    qMunicipioUF: TIBStringField;
    qMunicipioNOME_MUNICIPIO: TIBStringField;
    ProfessoresUFIDENTIDADE: TIBStringField;
    ProfessoresADMINISTRADOR: TSmallintField;
    dsManutencaoFrentes: TDataSource;
    qManutencaoFrentes: TIBQuery;
    upManutencaoFrentes: TIBUpdateSQL;
    qManutencaoFrentesDISCIPLINA: TIntegerField;
    qManutencaoFrentesTURMAF: TIBStringField;
    qManutencaoFrentesSERIEF: TSmallintField;
    qManutencaoFrentesQFRENTES: TIntegerField;
    qManutencaoFrentesnomedisciplina: TIBStringField;
    qManutencaoFrentesseriex: TIBStringField;
    ibGradeprofessorSETOR: TIBStringField;
    ParametrosVCTOFEVEREIRO: TIBStringField;
    ParametrosSTATUSNOTANET: TIBStringField;
    ProfessoresEMAIL: TIBStringField;
    ParametrosMES_MATERIAL4: TSmallintField;
    ParametrosMATERIAL_4: TIBBCDField;
    ParametrosMENSALIDADE_4: TIBBCDField;
    BoletimRDIS_CODIGO: TIntegerField;
    BoletimRMODALIDADE: TIBStringField;
    end_cobESTADO: TIBStringField;
    Professorescidade: TIBStringField;
    MedAtaMODALIDADE: TIBStringField;
    DiarioMODALIDADE: TIBStringField;
    ParametrosPARAMETOSAIDA: TIBStringField;
    NotasUSUARIO: TIntegerField;
    FaltasAULA: TSmallintField;
    FaltasDiaOBSERVACAO: TIBStringField;
    FaltasOBS: TIBStringField;
    BoletimROPCAOESPANHOL: TIBStringField;
    IBQPagantesNOME: TIBStringField;
    IBQPagantesCURSO: TIBStringField;
    IBQPagantesSTATUS: TIBStringField;
    IBQPagantesN_RECIBO: TIntegerField;
    IBQPagantesVALOR: TIBBCDField;
    IBQPagantesSITUACAO: TIBStringField;
    dsNotasAnt: TDataSource;
    qNotasAnt: TIBQuery;
    qNotasAntALUNO: TIntegerField;
    qNotasAntDISCIPLINA: TIntegerField;
    qNotasAntBIMESTRE: TSmallintField;
    qNotasAntNOTA1: TIBBCDField;
    qNotasAntNOTA2: TIBBCDField;
    qNotasAntNOTA3: TIBBCDField;
    qNotasAntNOTA4: TIBBCDField;
    qNotasAntNOTA5: TIBBCDField;
    qNotasAntNOTA6: TIBBCDField;
    qNotasAntNOTA: TIBBCDField;
    qNotasAntRECUPBIM: TIBBCDField;
    qNotasAntRECUPBIM1: TIBBCDField;
    qNotasAntRECUPBIM2: TIBBCDField;
    qNotasAntRECUPBIM3: TIBBCDField;
    qNotasAntPROFESSOR1: TIntegerField;
    qNotasAntPROFESSOR2: TIntegerField;
    qNotasAntPROFESSOR3: TIntegerField;
    qNotasAntSTATUS: TIBStringField;
    qNotasAntUSUARIO: TIntegerField;
    qNotasAntCODIGO: TIntegerField;
    qNotasAntCHAMADA: TSmallintField;
    qNotasAntNOME: TIBStringField;
    qNotasAntFRENTES: TSmallintField;
    saEstado: TDataSource;
    estado: TIBDataSet;
    estadoCOD_UF: TIntegerField;
    estadoUF: TIBStringField;
    FaltasDiaAULA: TSmallintField;
    ibstrngfldMapaFinCON2: TIBStringField;
    ibstrngfldMapaFinCON3: TIBStringField;
    ibstrngfldMapaFinCON4: TIBStringField;
    ibstrngfldMapaFinCON5: TIBStringField;
    ibstrngfldMapaFinCON6: TIBStringField;
    ibstrngfldMapaFinCON7: TIBStringField;
    ibstrngfldMapaFinCON8: TIBStringField;
    ibstrngfldMapaFinCON9: TIBStringField;
    ibstrngfldMapaFinCON10: TIBStringField;
    ibstrngfldMapaFinCON11: TIBStringField;
    ibstrngfldMapaFinCON12: TIBStringField;
    SemiCODIGO: TIntegerField;
    SemiNOME: TIBStringField;
    SemiENDERECO: TIBStringField;
    SemiCOMPLEMENTO: TIBStringField;
    SemiBAIRRO: TIBStringField;
    SemiCIDADE: TIBStringField;
    SemiUF: TIBStringField;
    SemiCEP: TIBStringField;
    SemiRG: TIBStringField;
    SemiNASC_DATA: TDateField;
    SemiNASC_CIDADE: TIBStringField;
    SemiNASC_UF: TIBStringField;
    SemiSEXO: TIBStringField;
    SemiPAI_NOME: TIBStringField;
    SemiMAE_NOME: TIBStringField;
    SemiFONE: TIBStringField;
    SemiDATA_MATRICULA: TDateField;
    SemiSTATUS: TIBStringField;
    SemiDATA_SAIDA: TDateField;
    SemiBOLSA: TIBBCDField;
    SemiMATERIAL: TSmallintField;
    SemiVENCIMENTO: TSmallintField;
    SemiBOLSA_OBS: TIBStringField;
    SemiCURSO: TIBStringField;
    SemiBLOQUETO: TIntegerField;
    SemiTURNO: TIBStringField;
    SemiUSUARIO: TIntegerField;
    SemiCPF: TSmallintField;
    SemiSACADO_CPF: TIBStringField;
    ParametrosCAMINHO: TIBStringField;
    ParametrosMENSALIDADE_5: TIBBCDField;
    IqCont: TIBQuery;
    dsCont: TDataSource;
    IqContN_01_F1: TIntegerField;
    IqContN_01_F2: TIntegerField;
    IqContN_01_F3: TIntegerField;
    IqContN_02_F1: TIntegerField;
    IqContN_02_F2: TIntegerField;
    IqContN_02_F3: TIntegerField;
    IqContN_03_F1: TIntegerField;
    IqContN_03_F2: TIntegerField;
    IqContN_03_F3: TIntegerField;
    IqContN_04_F1: TIntegerField;
    IqContN_04_F2: TIntegerField;
    IqContN_04_F3: TIntegerField;
    IqContN_05_F1: TIntegerField;
    IqContN_05_F2: TIntegerField;
    IqContN_05_F3: TIntegerField;
    IqContN_06_F1: TIntegerField;
    IqContN_06_F2: TIntegerField;
    IqContN_06_F3: TIntegerField;
    IqContN_07_F1: TIntegerField;
    IqContN_07_F2: TIntegerField;
    IqContN_07_F3: TIntegerField;
    IqContN_08_F1: TIntegerField;
    IqContN_08_F2: TIntegerField;
    IqContN_08_F3: TIntegerField;
    IqContN_09_F1: TIntegerField;
    IqContN_09_F2: TIntegerField;
    IqContN_09_F3: TIntegerField;
    IqContN_10_F1: TIntegerField;
    IqContN_10_F2: TIntegerField;
    IqContN_10_F3: TIntegerField;
    IqContN_11_F1: TIntegerField;
    IqContN_11_F2: TIntegerField;
    IqContN_11_F3: TIntegerField;
    IqContN_12_F1: TIntegerField;
    IqContN_12_F2: TIntegerField;
    IqContN_12_F3: TIntegerField;
    IqContN_13_F1: TIntegerField;
    IqContN_13_F2: TIntegerField;
    IqContN_13_F3: TIntegerField;
    IqContN_14_F1: TIntegerField;
    IqContN_14_F2: TIntegerField;
    IqContN_14_F3: TIntegerField;
    IqContN_15_F1: TIntegerField;
    IqContN_15_F2: TIntegerField;
    IqContN_15_F3: TIntegerField;
    IqContN_16_F1: TIntegerField;
    IqContN_16_F2: TIntegerField;
    IqContN_16_F3: TIntegerField;
    IqContN_17_F1: TIntegerField;
    IqContN_17_F2: TIntegerField;
    IqContN_17_F3: TIntegerField;
    IqContN_18_F1: TIntegerField;
    IqContN_18_F2: TIntegerField;
    IqContN_18_F3: TIntegerField;
    IqContN_19_F1: TIntegerField;
    IqContN_19_F2: TIntegerField;
    IqContN_19_F3: TIntegerField;
    IqContN_20_F1: TIntegerField;
    IqContN_20_F2: TIntegerField;
    IqContN_20_F3: TIntegerField;
    DocAlunosID: TIBStringField;
    NotasAlunosTIPO: TIBStringField;
    MapaInd: TIBQuery;
    dsMapaInd: TDataSource;
    BoletimROPCAO: TIBStringField;
    MapaIndALU_COD: TIntegerField;
    MapaIndALU_CHAMADA: TSmallintField;
    MapaIndALU_NOME: TIBStringField;
    MapaIndALU_STATUS: TIBStringField;
    MapaIndM_01: TIBBCDField;
    MapaIndM_02: TIBBCDField;
    MapaIndM_03: TIBBCDField;
    MapaIndM_04: TIBBCDField;
    MapaIndM_05: TIBBCDField;
    MapaIndM_06: TIBBCDField;
    MapaIndM_07: TIBBCDField;
    MapaIndM_08: TIBBCDField;
    MapaIndM_09: TIBBCDField;
    MapaIndM_10: TIBBCDField;
    MapaIndM_11: TIBBCDField;
    MapaIndM_12: TIBBCDField;
    MapaIndM_13: TIBBCDField;
    MapaIndM_14: TIBBCDField;
    MapaIndM_15: TIBBCDField;
    MapaIndM_16: TIBBCDField;
    MapaIndM_17: TIBBCDField;
    MapaIndM_18: TIBBCDField;
    MapaIndMODALIDADE: TIBStringField;
    MapaIndRESULTADO: TIBStringField;
    BoletimRSITUACAO: TIBStringField;
    dsSerieIps: TDataSource;
    ibSerieIps: TIBDataSet;
    ibSerieIpsID_IPS: TIntegerField;
    ibSerieIpsSERIE: TSmallintField;
    ibSerieIpsTURMA: TIBStringField;
    ibSerieIpsIP: TIBStringField;
    dsDigital: TDataSource;
    ibDigital: TIBDataSet;
    ibDigitalID_DIGITAL: TIntegerField;
    ibDigitalALUNO: TIntegerField;
    ibDigitalIMPRESSAO: TBlobField;
    ParametrosCONT_REMESSA: TIntegerField;
    ParametrosDATA_REMESSA: TDateField;
    dsRetornoMotivo: TDataSource;
    ibRetornoMotivo: TIBDataSet;
    ibRetornoMotivoRETORNO_ID: TIntegerField;
    ibRetornoMotivoNOSSO_NUMERO: TIntegerField;
    ibRetornoMotivoCOD_MOTIVO: TIBStringField;
    ibRetornoMotivoMOTIVO: TIBStringField;
    ibSerieIpsSALA: TIBStringField;
    ibSerieIpsPORTA: TIBStringField;
    ParametrosVALOR_PONTUALIDADE1: TIBBCDField;
    ParametrosVALOR_PONTUALIDADE2: TIBBCDField;
    ParametrosVALOR_PONTUALIDADE3: TIBBCDField;
    BloquetosNOSSO_NUMERO: TIntegerField;
    BloquetosALUNO: TIntegerField;
    BloquetosPARCELA: TSmallintField;
    BloquetosEMISSAO: TDateField;
    BloquetosVENCIMENTO: TDateField;
    BloquetosVALOR: TIBBCDField;
    BloquetosPAGAMENTO: TDateField;
    BloquetosVALOR_PAGO: TIBBCDField;
    BloquetosMENSALIDADE: TIBBCDField;
    BloquetosMATERIAL: TIBBCDField;
    BloquetosDESCONTO: TIBBCDField;
    BloquetosTIPO_PG: TSmallintField;
    BloquetosANO_DV: TIBStringField;
    BloquetosMENSALIDADE_ANT: TIBBCDField;
    BloquetosVALOR_ANT: TIBBCDField;
    BloquetosBAULA_AD: TIBStringField;
    BloquetosST: TIBStringField;
    BloquetosTP: TIntegerField;
    BloquetosMOTIVO: TIBStringField;
    BloquetosDATA_LIMITE: TDateField;
    BloquetosDESCONTO_ANT: TIBBCDField;
    dshorarioplantao: TDataSource;
    thorarioplantao: TIBDataSet;
    thorarioplantaoCODIGO: TIntegerField;
    thorarioplantaoHORAS: TIBStringField;
    thorarioplantaoDIA_SEMANA: TIBStringField;
    thorarioplantaoPROFESSOR: TIntegerField;
    thorarioplantaoDISCIPLINA: TIntegerField;
    thorarioplantaoSERIE: TIBStringField;
    thorarioplantaoTIPO: TIBStringField;
    thorarioplantaoUNIDADE: TIBStringField;
    ParametrosTEXTO_TRANSFERENCIA: TIBStringField;
    Bloquetos_Delete: TIBDataSet;
    DsBloqueto_Delete: TDataSource;
    Bloquetos_DeleteNOSSO_NUMERO: TIntegerField;
    Bloquetos_DeleteALUNO: TIntegerField;
    Bloquetos_DeletePARCELA: TSmallintField;
    Bloquetos_DeleteEMISSAO: TDateField;
    Bloquetos_DeleteVENCIMENTO: TDateField;
    Bloquetos_DeleteVALOR: TIBBCDField;
    Bloquetos_DeletePAGAMENTO: TDateField;
    Bloquetos_DeleteVALOR_PAGO: TIBBCDField;
    Bloquetos_DeleteMENSALIDADE: TIBBCDField;
    Bloquetos_DeleteMATERIAL: TIBBCDField;
    Bloquetos_DeleteDESCONTO: TIBBCDField;
    Bloquetos_DeleteTIPO_PG: TSmallintField;
    Bloquetos_DeleteANO_DV: TIBStringField;
    Bloquetos_DeleteDESCONTO_ANT: TIBBCDField;
    Bloquetos_DeleteMENSALIDADE_ANT: TIBBCDField;
    Bloquetos_DeleteVALOR_ANT: TIBBCDField;
    Bloquetos_DeleteBAULA_AD: TIBStringField;
    Bloquetos_DeleteST: TIBStringField;
    Bloquetos_DeleteTP: TIntegerField;
    Bloquetos_DeleteMOTIVO: TIBStringField;
    Bloquetos_DeleteDATA_LIMITE: TDateField;
    DsNegociacao: TDataSource;
    Negociacao: TIBDataSet;
    BloquetosNEGOCIACAO: TIntegerField;
    dsAtualizaPuxaNotas2: TDataSource;
    AtualizaPuxaNotas2: TIBQuery;
    AtualizaPuxaNotas1: TIBQuery;
    dsAtualizaPuxaNotas1: TDataSource;
    AtualizaPuxaNotas2ALU_COD: TIntegerField;
    AtualizaPuxaNotas2ALU_STATUS: TIBStringField;
    AtualizaPuxaNotas2RESULTADO: TIBStringField;
    AtualizaPuxaNotas2DISC: TIntegerField;
    AtualizaPuxaNotas2M_ANUAL: TIBBCDField;
    AtualizaPuxaNotas2EXAME_N: TIBBCDField;
    AtualizaPuxaNotas1ALU_COD: TIntegerField;
    AtualizaPuxaNotas1ALU_STATUS: TIBStringField;
    AtualizaPuxaNotas1RESULTADO: TIBStringField;
    AtualizaPuxaNotas1DISC: TIntegerField;
    AtualizaPuxaNotas1M_ANUAL: TIBBCDField;
    AtualizaPuxaNotas1EXAME_N: TIBBCDField;
    MapaFinMES2: TIBStringField;
    MapaFinMES3: TIBStringField;
    MapaFinMES4: TIBStringField;
    MapaFinMES5: TIBStringField;
    MapaFinMES6: TIBStringField;
    MapaFinMES7: TIBStringField;
    MapaFinMES8: TIBStringField;
    MapaFinMES9: TIBStringField;
    MapaFinMES10: TIBStringField;
    MapaFinMES11: TIBStringField;
    MapaFinMES12: TIBStringField;
    NegociacaoCOD_NEGOCIACAO: TIntegerField;
    NegociacaoDATA: TDateField;
    NegociacaoQUANT: TIntegerField;
    NegociacaoDIAS: TIntegerField;
    NegociacaoALUNO: TIntegerField;
    NegociacaoVALOR: TIBBCDField;
    NegociacaoANOTACAO: TIBStringField;
    NegociacaoDATA_NEGOCIACAO: TDateField;
    GradeQUANTSETORES: TIntegerField;
    DsAutorizacao: TDataSource;
    Autorizacao: TIBDataSet;
    BloquetosQ: TIBQuery;
    BloquetosQMesX: TStringField;
    BloquetosQParcelaX: TStringField;
    BloquetosQCampo1: TStringField;
    BloquetosQCampo2: TStringField;
    BloquetosQCampo3: TStringField;
    BloquetosQCampo4: TStringField;
    BloquetosQCampo5: TStringField;
    BloquetosQCodBarras: TStringField;
    BloquetosQTipo_Pg_X: TStringField;
    BloquetosQSerieX: TStringField;
    BloquetosQNossoNum: TStringField;
    BloquetosQNOSSO_NUMERO: TIntegerField;
    BloquetosQALUNO: TIntegerField;
    BloquetosQPARCELA: TSmallintField;
    BloquetosQEMISSAO: TDateField;
    BloquetosQVENCIMENTO: TDateField;
    BloquetosQVALOR: TIBBCDField;
    BloquetosQPAGAMENTO: TDateField;
    BloquetosQVALOR_PAGO: TIBBCDField;
    BloquetosQMENSALIDADE: TIBBCDField;
    BloquetosQMATERIAL: TIBBCDField;
    BloquetosQDESCONTO: TIBBCDField;
    BloquetosQTIPO_PG: TSmallintField;
    BloquetosQANO_DV: TIBStringField;
    BloquetosQDESCONTO_ANT: TIBBCDField;
    BloquetosQMENSALIDADE_ANT: TIBBCDField;
    BloquetosQVALOR_ANT: TIBBCDField;
    BloquetosQBAULA_AD: TIBStringField;
    BloquetosQST: TIBStringField;
    BloquetosQTP: TIntegerField;
    BloquetosQMOTIVO: TIBStringField;
    BloquetosQDATA_LIMITE: TDateField;
    BloquetosQNEGOCIACAO: TIntegerField;
    BloquetosQCODIGO: TIntegerField;
    BloquetosQNOME: TIBStringField;
    BloquetosQFONE: TIBStringField;
    BloquetosQSERIE: TSmallintField;
    BloquetosQTURMA: TIBStringField;
    BloquetosQBOLSA: TIBBCDField;
    BloquetosQBOLSA_AD: TIBBCDField;
    BloquetosQSACADO_CPF: TIBStringField;
    BloquetosQCEP: TIBStringField;
    BloquetosQSACADO: TIBStringField;
    BloquetosQENDERECO: TIBStringField;
    AlunosCODIGO: TIntegerField;
    AlunosCODIGO_ESCOLA: TIntegerField;
    AlunosNOME: TIBStringField;
    AlunosTIPO_LOGADOURO: TIntegerField;
    AlunosNUMERO: TSmallintField;
    AlunosCOMPLEMENTO: TIBStringField;
    AlunosBAIRRO: TIBStringField;
    AlunosENDERECO: TIBStringField;
    AlunosCIDADE: TIBStringField;
    AlunosUF: TIBStringField;
    AlunosCOMPLEMENTO_RG: TSmallintField;
    AlunosDATA_EXP_IDENT: TDateField;
    AlunosUF_IDENTIDADE: TIntegerField;
    AlunosORGAO_EMIS_IDE: TIntegerField;
    AlunosNASC_DATA: TDateField;
    AlunosNACIONALIDADE: TIntegerField;
    AlunosDATA_ENTR_PAIS: TDateField;
    AlunosMUNICIPIO_NAS: TSmallintField;
    AlunosNASC_UF: TIBStringField;
    AlunosCERTIDAO_CIVIL: TSmallintField;
    AlunosDATA_EMI_CERT: TDateField;
    AlunosNOME_CART_EXP: TIBStringField;
    AlunosSEXO: TIBStringField;
    AlunosPAI_NOME: TIBStringField;
    AlunosPAI_PROFISSAO: TIBStringField;
    AlunosPAI_NASCIMENTO: TDateField;
    AlunosMAE_NOME: TIBStringField;
    AlunosMAE_PROFISSAO: TIBStringField;
    AlunosMAE_NASCIMENTO: TDateField;
    AlunosFONE: TIBStringField;
    AlunosDATA_MATRICULA: TDateField;
    AlunosBIMESTRE: TSmallintField;
    AlunosCURSO: TIntegerField;
    AlunosSERIE: TSmallintField;
    AlunosTURMA: TIBStringField;
    AlunosCHAMADA: TSmallintField;
    AlunosSTATUS: TIBStringField;
    AlunosDATA_SAIDA: TDateField;
    AlunosBOLSA: TIBBCDField;
    AlunosOBS_HIST: TMemoField;
    AlunosSACADO: TIBStringField;
    AlunosFINAL: TIBStringField;
    AlunosMATERIAL: TSmallintField;
    AlunosVENCIMENTO: TSmallintField;
    AlunosANO: TSmallintField;
    AlunosBLOQUETO_1SEM: TSmallintField;
    AlunosBLOQUETO_2SEM: TSmallintField;
    AlunosMES_MATERIAL: TSmallintField;
    AlunosSENHA: TIBStringField;
    AlunosSACADO_RG: TIBStringField;
    AlunosSACADO_CPF: TIBStringField;
    AlunosMOD_ESPORTIVA: TIBStringField;
    AlunosH_ANO1: TIntegerField;
    AlunosH_ESCOLA1: TIBStringField;
    AlunosH_CIDADE1: TIBStringField;
    AlunosH_UF1: TIBStringField;
    AlunosH_ANO2: TIntegerField;
    AlunosH_ESCOLA2: TIBStringField;
    AlunosH_CIDADE2: TIBStringField;
    AlunosH_UF2: TIBStringField;
    AlunosH_ANO3: TIntegerField;
    AlunosH_ESCOLA3: TIBStringField;
    AlunosH_CIDADE3: TIBStringField;
    AlunosH_UF3: TIBStringField;
    AlunosBOLSA_OBS: TIBStringField;
    AlunosCODIGO_SP: TIBStringField;
    AlunosCURSINHO: TSmallintField;
    AlunosCONT_TOL: TIntegerField;
    AlunosCOR: TIntegerField;
    AlunosEDU_ESPECIAL: TIBStringField;
    AlunosTIPO_EDU_ESP: TSmallintField;
    AlunosINC_CLASSE_COMU: TSmallintField;
    AlunosAPOIO_PED_ESPE: TSmallintField;
    AlunosCONDIC_ALUNO: TSmallintField;
    AlunosCORR_FLUXO: TSmallintField;
    AlunosBOLSA_FAMILIA: TSmallintField;
    AlunosTRANSP_PUBLICO: TSmallintField;
    AlunosTRANSP_PUB_OFER: TSmallintField;
    AlunosZONA_RESID: TSmallintField;
    AlunosCONCLUINTE: TSmallintField;
    AlunosADMI_APOS_CENSO: TSmallintField;
    AlunosMOV_REND_ESCOL: TSmallintField;
    AlunosAT_ED_ESPECIALI: TSmallintField;
    AlunosDATA_IGRESSO: TDateField;
    AlunosCURSO_NOR_NM: TSmallintField;
    AlunosNASC_CIDADE: TIBStringField;
    AlunosUF_MEC: TIntegerField;
    AlunosORGAO_EMISSOR: TIntegerField;
    AlunosSEXO_E: TIntegerField;
    AlunosUFCARTORIO: TIntegerField;
    AlunosNUMERO_TERMO: TIntegerField;
    AlunosFOLHA: TIBStringField;
    AlunosLIVRO: TIBStringField;
    AlunosCARTORIO_UF: TIntegerField;
    AlunosPASENHA: TIBStringField;
    AlunosTIPOSANGUINEO: TIntegerField;
    AlunosSITUACAO: TIBStringField;
    AlunosRECLASS_INGR: TSmallintField;
    AlunosRECLASS_DEST: TSmallintField;
    AlunosPALOGIN: TIBStringField;
    AlunosUSUARIO: TIntegerField;
    AlunosOPCAO_ESPANHOL: TIBStringField;
    AlunosCELULAR: TIBStringField;
    AlunosTEL_RESIDENCIAL: TIBStringField;
    AlunosTEL_CONTATO: TIBStringField;
    AlunosE_MAIL: TIBStringField;
    AlunosFORMATURA: TIBStringField;
    AlunosBOLSA_AD: TIBBCDField;
    AlunosAULA_AD: TIBStringField;
    AlunosID: TIBStringField;
    AlunosORIUNDO_ESCOLA: TIntegerField;
    AlunosOBS_TEL: TIBStringField;
    AlunosDATA_EFETUACAO: TDateTimeField;
    AutorizacaoALUNOS: TIntegerField;
    AutorizacaoAUTORIZACAO: TIBStringField;
    AutorizacaoNOME_TITULAR: TIBStringField;
    AutorizacaoDATA_PAGAMENTO: TDateField;
    AutorizacaoFORMAP: TIBStringField;
    AutorizacaoVALORP: TIBBCDField;
    AutorizacaoMEMOBS: TIBStringField;
    AutorizacaoTOTAL: TCurrencyField;
    AutorizacaoPARCELAS: TIntegerField;
    DiarioDATA: TDateField;
    DocAlunosRG: TIBStringField;
    AlunosRG: TIBStringField;
    AlunosTIPOCERTIDAO: TIBStringField;
    Areas: TIBDataSet;
    DsArea: TDataSource;
    AreasID_AREA: TIntegerField;
    AreasNOME_AREA: TIBStringField;
    DisciplinasOPTATIVA: TIBStringField;
    DisciplinasAREA_CONHECIMENTO: TIntegerField;
    AlunosEMAIL_MAE: TIBStringField;
    AlunosEMAIL_ALUNO: TIBStringField;
    AlunosCPF: TIBStringField;
    AlunosINTINERARIO: TIntegerField;
    AlunosCEP: TIBStringField;
    procedure BloquetosQCalcFields(DataSet: TDataSet);
    procedure TurmasNewRecord(DataSet: TDataSet);
    procedure GradeNewRecord(DataSet: TDataSet);
    procedure GradeCalcFields(DataSet: TDataSet);
    procedure TurmasCalcFields(DataSet: TDataSet);
    procedure NotasAfterPost(DataSet: TDataSet);
    procedure NotasNOTA1Validate(Sender: TField);
    procedure NotasNOTA2Validate(Sender: TField);
    procedure NotasNOTA3Validate(Sender: TField);
    procedure NotasAAfterPost(DataSet: TDataSet);
    procedure FaltasDiaCalcFields(DataSet: TDataSet);
    procedure AlunosBeforePost(DataSet: TDataSet);
    procedure AlunosDATA_SAIDAValidate(Sender: TField);
    procedure AlunosAfterInsert(DataSet: TDataSet);
    procedure AlunosSTATUSChange(Sender: TField);
    procedure AlunosCalcFields(DataSet: TDataSet);
    procedure HistNotasAfterPost(DataSet: TDataSet);
    procedure HistNotasBeforePost(DataSet: TDataSet);
    procedure AlunosAfterPost(DataSet: TDataSet);
    procedure EstatTurCalcFields(DataSet: TDataSet);
    procedure PlantoesCalcFields(DataSet: TDataSet);
    procedure OcorrenciasCalcFields(DataSet: TDataSet);
    procedure SemiAfterInsert(DataSet: TDataSet);
    procedure SemiAfterPost(DataSet: TDataSet);
    procedure DisciplinasAfterInsert(DataSet: TDataSet);
    procedure SemiNewRecord(DataSet: TDataSet);
    procedure DocAlunosAfterInsert(DataSet: TDataSet);
    procedure DocAlunosAfterPost(DataSet: TDataSet);
    procedure DocAlunosBeforePost(DataSet: TDataSet);
    procedure DocAlunosCalcFields(DataSet: TDataSet);
    procedure NotasAlunosAfterPost(DataSet: TDataSet);
    procedure NotasAlunosBeforePost(DataSet: TDataSet);
    procedure NotasAlunosNewRecord(DataSet: TDataSet);
    procedure AlunosNewRecord(DataSet: TDataSet);
    procedure nossonumeroCalcFields(DataSet: TDataSet);
    procedure ProfessoresNewRecord(DataSet: TDataSet);
    procedure DB_ANGLOAfterConnect(Sender: TObject);
    procedure end_cobNewRecord(DataSet: TDataSet);
    procedure ibGradeprofessorNewRecord(DataSet: TDataSet);
    procedure qManutencaoFrentesCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure ibSerieIpsBeforePost(DataSet: TDataSet);
    procedure thorarioplantaoNewRecord(DataSet: TDataSet);
    procedure AutorizacaoNewRecord(DataSet: TDataSet);
    procedure AutorizacaoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    function Arredonda(Valor : Real) : Real;
  public
    { Public declarations }
    function TextoWIN(Texto : String) : String;
    function TextoDOS(Texto : String) : String;
    function DvMod11(var str0:string) : string;
    function Senha : String;
    function SenhaProf : String;
    function LoginProf : String;
    function SenhaPais : String;
    function DataExt(dt0 : double) : String;
    function DataExtS(dt0 : double) : String;
    function MesExtS(dt0 : double) : String;
  end;

var
  DM: TDM;
const CarDOS : Array[1..50] Of Char = ('‡','€','¤','¥','¦','§',// C-N
                'Æ','…','„',' ','ƒ','Ç','·','Ž','µ','¶',       // A
                    'Š','‰','‚','ˆ',    'Ô','Ó','','Ò',       // E
                    '','‹','¡','Œ',    'Þ','Ø','Ö','×',       // I
                'ä','•','”','¢','“','å','ã','™','à','â',       // O
                    '—','','£','–',    'ë','š','é','ê');      // U
      CarWIN : Array[1..50] Of Char = ('ç','Ç','ñ','Ñ','ª','º',// C-N
                'ã','à','ä','á','â','Ã','À','Ä','Á','Â',       // A
                    'è','ë','é','ê',    'È','Ë','É','Ê',       // E
                    'ì','ï','í','î',    'Ì','Ï','Í','Î',       // I
                'õ','ò','ö','ó','ô','Õ','Ò','Ö','Ó','Ô',       // O
                    'ù','ü','ú','û',    'Ù','Ü','Ú','Û');      // U
      MesExt : Array[1..12] Of String = ('Janeiro', 'Fevereiro', 'Março',
                          'Abril', 'Maio', 'Junho', 'Julho', 'Agosto',
                          'Setembro', 'Outubro', 'Novembro', 'Dezembro');

var   codigouser : Integer;
implementation

uses UMenu, UDM2, UMov_Notas, UCad_Alunos, UCad_Grade;

{$R *.DFM}

function TDM.Senha : String;
var senha : string;
    i : integer;
begin
  Randomize;
  senha := '';
  for i := 1 to 3 do senha := senha + chr(Random(26)+97);
  for i := 1 to 3 do senha := senha + chr(Random(10)+48);
  result := senha;
end;


function TDM.SenhaPais : String;
var senha : string;
    i : integer;
begin
  Randomize;
//  senha := '';
  for i := 1 to 3 do senha := senha + chr(Random(25)+96);
  for i := 1 to 3 do senha := senha + chr(Random(9)+47);
  result := senha;
end;

function TDM.SenhaProf : String;
var senhap : string;
    i : integer;
begin
  Randomize;
  senhap := '';
  for i := 1 to 3 do senhap := senhap + chr(Random(26)+97);
  for i := 1 to 3 do senhap := senhap + chr(Random(10)+48);
  result := senhap;
end;

function TDM.LoginProf : String;
var loginp : string;
    i : integer;
begin
  Randomize;
  loginp := '';
  for i := 1 to 4 do loginp := loginp + chr(Random(10)+48);
  result := loginp;
end;


function TDM.DataExt(dt0 : double) : String;
var dia,mes,ano : word;
begin
  DecodeDate(dt0,ano,mes,dia);
  result := 'Dourados (MS), '+IntToStr(dia)+' de '+MesExt[mes]+' de '+IntToStr(ano)+'.';
end;

function TDM.DataExtS(dt0 : double) : String;
var dia,mes,ano : word;
begin
  DecodeDate(dt0,ano,mes,dia);
  result := IntToStr(dia) +' de '+MesExt[mes]+' de '+IntToStr(ano)+'.';
end;

function TDM.MesExtS(dt0 : double) : String;
var dia,mes,ano : word;
begin
  DecodeDate(dt0,ano,mes,dia);
  result := MesExt[mes];
end;

function TDM.TextoWIN(Texto : String) : String;
var i,j : integer;
begin
  for i := 1 to Length(Texto) do begin
    for j := 1 to 50 do
      if Texto[i]=CarDOS[j] then begin
         Texto[i]:=CarWIN[j];
         Break;
      end;
  end;
  result := Texto;
end;

function TDM.TextoDOS(Texto : String) : String;
var i,j : integer;
begin
  for i := 1 to Length(Texto) do begin
    for j := 1 to 50 do
      if Texto[i]=CarWIN[j] then begin
         Texto[i]:=CarDOS[j];
         Break;
      end;
  end;
  result := Texto;
end;

function DvParcial(var str0:string) : string;
const
   multiplicador : array [1..11] of integer =(2,1,2,1,2,1,2,1,2,1,2);
var
   soma,i,j : integer;
begin
   soma := 0;
   str0 := Trim(str0);
   For i := 1 To Length(str0) Do Begin
       j := (multiplicador[i]*StrToInt(str0[Length(str0)+1-i]));
       if j > 9 then j := j - 10 + 1;
       soma := soma + j;
   end;
   soma := soma mod 10;
   if soma <> 0 then soma := 10 - soma;
   result := IntToStr(soma);
end;

function DvGeral(var str0:string) : string;
const
   multiplicador : array [1..44] of integer = (2,3,4,5,6,7,8,9,2,3,4,5,6,7,8,9,2,3,4,5,6,7,8,9,2,3,4,5,6,7,8,9,2,3,4,5,6,7,8,9,2,3,4,5);
var
   soma,i : integer;
   sobra :real;
begin
   soma := 0;
   str0 := Trim(str0);
   For i := 1 To Length(str0) Do
      soma := soma + (multiplicador[i]*StrToInt(str0[Length(str0)+1-i]));
      sobra := (soma mod 11);
   soma := 11 - (soma mod 11);
   if (soma > 9) or (soma = 0) then soma := 1;
   result := IntToStr(soma);
end;

function TDM.DvMod11(var str0:string) : string;
const
   multiplicador : array [1..25] of integer = (2,3,4,5,6,7,8,9,2,3,4,5,6,7,8,9,2,3,4,5,6,7,8,9,0);
var
   soma,i  : integer;
begin
   soma := 0;
   str0 := Trim(str0); //Remove os espaços em branco
   For i := 1 To Length(str0) Do
    soma := soma + (multiplicador[i]*StrToInt(str0[Length(str0)+1-i]));
    soma := 11 - (soma mod 11);//Acha o digito verificador
   if soma > 9 then soma := 0;
   result := IntToStr(soma);
end;

procedure TDM.BloquetosQCalcFields(DataSet: TDataSet);
var Str1,CampoLivre,ValorX,NossoNumX,NossoNumXCompleto : string;
var dia,mes,ano  : word;
var fvencimento  :integer;
var fdata1 : TdateTime;
begin
  // Calcula Nosso Numero e Parcela
  ///////////////////////////////// trocar ano abaixo
  DM.BloquetosQParcelaX.Value := FormatFloat('00',DM.BloquetosQPARCELA.Value)+'ª';
////////// acerto - liberar a linha abaixo e apagar a gambiarra abaixo
//////////    vamos fazer o seguinte - deixa a porra da gambiarra lá
//  NossoNumX := Principal.AnoP.Caption+'2'+FormatFloat('00000',DM.BloquetosQNOSSO_NUMERO.Value);
//========================================================= GAMBIARRA
  NossoNumX := DM.BloquetosQANO_DV.Value+'2'+FormatFloat('00000',DM.BloquetosQNOSSO_NUMERO.Value);
//    NossoNumXCompleto := '0903'+'02'+'10582'+NossoNumX; conta antiga
//  NossoNumXCompleto := '0903'+'02'+'26431'+NossoNumX; conta nova
  NossoNumXCompleto := '0903'+'02'+'26431'+NossoNumX;
  NossoNumX := NossoNumX+DvMod11(NossoNumXCompleto);
  // Calcula Campo Livre e seu DV
//  CampoLivre := '1'+'1'+NossoNumX+'0903'+'02'+'26431'+'1'+'0'; novo
//  CampoLivre := '3'+'1'+NossoNumX+'0903'+'02'+'10582'+'1'+'0'; Antigo
  CampoLivre := '1'+'1'+NossoNumX+'0903'+'02'+'26431'+'1'+'0';
  Insert(DvMod11(CampoLivre),CampoLivre,25);

  // Calcula Campos Digitáveis
  Str1 := '7489'+Copy(CampoLivre,1,5);
  Insert(DvParcial(Str1),Str1,10);  //Aqui tem que fazer o DivParcial
  Insert('.',Str1,6);
  DM.BloquetosQCampo1.Value := Str1;
  Str1 := Copy(CampoLivre,6,10);
  Insert(DvParcial(Str1),Str1,11);
  Insert('.',Str1,6);
  DM.BloquetosQCampo2.Value := Str1;
  Str1 := Copy(CampoLivre,16,10);
  Insert(DvParcial(Str1),Str1,11);
  Insert('.',Str1,6);
  DM.BloquetosQCampo3.Value := Str1;
  ValorX := IntToStr(Trunc(DM.BloquetosQValor.Value*100));//valor no código de barras

  fdata1 := StrToDate('08/10/1997');
  fvencimento := DaysBetween(fdata1, dm.BloquetosQVENCIMENTO.Value);

  ValorX := StringOfChar('0',10-Length(ValorX))+ValorX;
  DM.BloquetosQCampo5.Value := IntToStr(fvencimento)+ValorX;

  // Calcula Código de Barras e Campo4(DVGeral)
  Str1 := '7489'+IntToStr(fvencimento)+ValorX+CampoLivre;
  DM.BloquetosQCampo4.Value := DvGeral(Str1); //aqui fica o digito verificador do campo 4 com o div geral
  Insert(DvGeral(Str1),Str1,5);

  DM.BloquetosQCodBarras.Value := Str1;
  // Calcula Nosso Número da Cobrança sem Registro - 9 Posições
  Str1 := NossoNumX;
  Insert('-',Str1,9);
  Insert('/',Str1,3);
  DM.BloquetosQNossoNum.Value := Str1;
  // Calcula Tipo_Pg_X
  case BloquetosQTIPO_PG.Value of
    0 : BloquetosQTipo_Pg_X.Value := 'Banco';
    1 : BloquetosQTipo_Pg_X.Value := 'Tesouraria';
  end;
  if BloquetosQTIPO_PG.IsNull then BloquetosQTipo_Pg_X.Value := '';
  // Calcula SerieX
  BloquetosQSerieX.Value := BloquetosQSERIE.AsString+'ª Série '+BloquetosQTURMA.Value;
  // Calcula MesX

  DecodeDate(BloquetosQVENCIMENTO.Value,ano,mes,dia);
  BloquetosQMesX.Value := MesExt[mes];
end;

procedure TDM.TurmasNewRecord(DataSet: TDataSet);
begin
  TurmasTURMA.Value := ' ';
  TurmasPERIODO.Value := 1;
  TurmasVAGAS.Value := 0;
end;

procedure TDM.TurmasCalcFields(DataSet: TDataSet);
begin
  case TurmasPERIODO.Value of
    1 : TurmasPeriodoX.Value := 'Matutino';
    2 : TurmasPeriodoX.Value := 'Vespertino';
    3 : TurmasPeriodoX.Value := 'Noturno';
  end;
  TurmasNome.Value := IntToStr(TurmasSERIE.Value)+'ª '+TurmasTURMA.Value+
                ' - '+TurmasPeriodoX.Value;
  TurmasSerieX.Value := IntToStr(TurmasSERIE.Value)+'ª Série '+TurmasTURMA.Value;
  if TurmasCURSINHO.Value = 0 then TurmasCursinhoSN.Value := 'N';
  if TurmasCURSINHO.Value = 1 then TurmasCursinhoSN.Value := 'S';
end;

procedure TDM.GradeNewRecord(DataSet: TDataSet);
begin
  GradeSEQUENCIA.Value := 0;
  GradeCH_SEMANAL.Value := 0;
  GradeCH_OFICIAL.Value := 0;
  GradeCH_N_OFICIAL.Value := 0;
  GradeTIPO.Value := 'TD';
  GradeSERIE.Value :=  Cad_Grade.QualSerie.ItemIndex + 1;
end;

procedure TDM.GradeCalcFields(DataSet: TDataSet);
begin
  if GradeTIPO.Value = 'OF' then GradeTipoX.Value := 'OF - Documentos Oficiais';
  if GradeTIPO.Value = 'NO' then GradeTipoX.Value := 'NO - Documentos Não Oficiais';
  if GradeTIPO.Value = 'TD' then GradeTipoX.Value := 'TD - Todos os Documentos';
end;

procedure TDM.NotasNOTA1Validate(Sender: TField);
begin
  if NotasNOTA1.Value > 10 then abort;
end;

procedure TDM.NotasNOTA2Validate(Sender: TField);
begin
  if NotasNOTA2.Value > 10 then abort;
end;

procedure TDM.NotasNOTA3Validate(Sender: TField);
begin
  if NotasNOTA3.Value > 10 then abort;
end;

procedure TDM.NotasAfterPost(DataSet: TDataSet);
begin
  Notas.Next;
end;

function TDM.Arredonda(Valor : Real) : Real;
var ParteInt,ParteDec,Arr : Real;
begin
  Arr := 0;
  ParteInt := Trunc(Valor);
  ParteDec := Valor - ParteInt;
  if (ParteDec >  0)   and (ParteDec <= 0.25) then  Arr := 0.5;
  if (ParteDec > 0.25) and (ParteDec <  0.75) then  Arr := 0.5;
  if (ParteDec >= 0.75) and (ParteDec <= 1)    then  Arr := 1;
  result := ParteInt + Arr;
end;


procedure TDM.NotasAAfterPost(DataSet: TDataSet);
begin
  NotasA.Next;
end;

procedure TDM.FaltasDiaCalcFields(DataSet: TDataSet);
begin
  FaltasDiaSerieX.Value := IntToStr(FaltasDiaSERIE.Value)+'ª Série '+FaltasDiaTURMA.Value;
end;

procedure TDM.AlunosBeforePost(DataSet: TDataSet);
begin
  if AlunosSENHA.IsNull then AlunosSENHA.Value := senha;
  if AlunosPASENHA.IsNull then AlunosPASENHA.Value := SenhaPais;
  case DM.AlunosSERIE.Value of
    1 : if (DM.AlunosH_ANO1.IsNull) then begin
          DM.AlunosH_ANO1.Value := StrToInt(Principal.Ano.Caption);
          DM.AlunosH_ESCOLA1.Value := 'COLÉGIO ANGLO UNIGRAN';
          DM.AlunosH_CIDADE1.Value := 'DOURADOS';
          DM.AlunosH_UF1.Value := 'MS';
        end;
    2 : if (DM.AlunosH_ANO2.IsNull) then begin
          DM.AlunosH_ANO2.Value := StrToInt(Principal.Ano.Caption);
          DM.AlunosH_ESCOLA2.Value := 'COLÉGIO ANGLO UNIGRAN';
          DM.AlunosH_CIDADE2.Value := 'DOURADOS';
          DM.AlunosH_UF2.Value := 'MS';
        end;
    3 : if (DM.AlunosH_ANO3.IsNull) then begin
          DM.AlunosH_ANO3.Value := StrToInt(Principal.Ano.Caption);
          DM.AlunosH_ESCOLA3.Value := 'COLÉGIO ANGLO UNIGRAN';
          DM.AlunosH_CIDADE3.Value := 'DOURADOS';
          DM.AlunosH_UF3.Value := 'MS';
        end;
  end;
  If AlunosSerie.IsNull Then
   Begin
    ShowMessage('Favor Inserir a série do aluno.');
    Cad_Alunos.PageControl1.ActivePageIndex := 1;
    Cad_Alunos.DBESerie.SetFocus;
   End;
   if AlunosORIUNDO_ESCOLA.IsNull then
   Begin
      ShowMessage('Favor inserir a escola origem do aluno.');
      Cad_Alunos.PageControl1.ActivePageIndex := 1;
      Cad_Alunos.DBLookupComboBox1.SetFocus;
   End;

      
end;

procedure TDM.AlunosDATA_SAIDAValidate(Sender: TField);
begin
  if ((AlunosSTATUS.Value = 'A') and not (AlunosDATA_SAIDA.IsNull))
   or ((AlunosSTATUS.Value = 'D') and (AlunosDATA_SAIDA.IsNull))
   or ((AlunosSTATUS.Value = 'T') and (AlunosDATA_SAIDA.IsNull)) then begin
    MessageDlg('Data de Saída Inválida!', mtInformation, [mbOK], 0);
    abort;
  end;
end;

procedure TDM.AlunosAfterInsert(DataSet: TDataSet);
begin
  AlunosCIDADE.Value := 'DOURADOS';
  AlunosUF.Value := 'MS';
  AlunosCEP.Value := '79800000';
  AlunosSEXO.Value := 'M';
  AlunosDATA_MATRICULA.Value := now;
  AlunosBIMESTRE.Value := 1;
  AlunosSTATUS.Value := 'P';
  AlunosBOLSA.Value := 0;
  AlunosMATERIAL.Value := 1;
  AlunosANO.Value := StrToInt(Principal.Ano.Caption);
  AlunosBLOQUETO_1SEM.Value := 0;
  AlunosBLOQUETO_2SEM.Value := 0;
end;

procedure TDM.AlunosSTATUSChange(Sender: TField);
begin
  if AlunosSTATUS.Value = 'A' then AlunosDATA_SAIDA.Clear;
  if AlunosSTATUS.Value = 'T' then AlunosDATA_SAIDA.Value := now;
  if AlunosSTATUS.Value = 'D' then AlunosDATA_SAIDA.Value := now;
  if AlunosSTATUS.Value = 'R' then AlunosDATA_SAIDA.Value := now;
end;

procedure TDM.AlunosCalcFields(DataSet: TDataSet);
begin
  AlunosSerieX.Value := IntToStr(AlunosSERIE.Value)+'ª Série '+AlunosTURMA.Value;
  if AlunosMOD_ESPORTIVA.Value = 'EDF' then AlunosModEspX.Value := 'Educação Física';
  if AlunosMOD_ESPORTIVA.Value = 'NAT' then AlunosModEspX.Value := 'Natação';
  if AlunosMOD_ESPORTIVA.Value = 'VOL' then AlunosModEspX.Value := 'Voleibol';
  if AlunosMOD_ESPORTIVA.Value = 'HAN' then AlunosModEspX.Value := 'Handebol';
  if AlunosMOD_ESPORTIVA.Value = 'FTS' then AlunosModEspX.Value := 'Fut-Sal';
  if AlunosMOD_ESPORTIVA.Value = 'MUS' then AlunosModEspX.Value := 'Musculação';
  if AlunosMOD_ESPORTIVA.Value = 'BAS' then AlunosModEspX.Value := 'Basquetebol';
  if AlunosFINAL.Value = 'A' then AlunosFinalX.Value := 'Aprovado';
  if AlunosFINAL.Value = 'R' then AlunosFinalX.Value := 'Reprovado';
  if AlunosFINAL.Value = 'S' then AlunosFinalX.Value := 'S/Res.Final';
end;

procedure TDM.HistNotasAfterPost(DataSet: TDataSet);
begin
  HistNotas.Next;
end;

procedure TDM.HistNotasBeforePost(DataSet: TDataSet);
begin
  if HistNotasCODIGO.IsNull then
    HistNotasCODIGO.Value := AlunosCODIGO.Value;
end;

procedure TDM.AlunosAfterPost(DataSet: TDataSet);
begin
  IBTr_ANGLO.CommitRetaining;
end;

procedure TDM.EstatTurCalcFields(DataSet: TDataSet);
begin
  EstatTurSerieX.Value := EstatTurSERIEA.AsString+'ª Série '+EstatTurTURMAA.AsString;
end;

procedure TDM.PlantoesCalcFields(DataSet: TDataSet);
begin
  PlantoesSerieX.Value := IntToStr(PlantoesSERIE.Value)+'ª Série '+PlantoesTURMA.Value;
end;

procedure TDM.OcorrenciasCalcFields(DataSet: TDataSet);
begin
  if OcorrenciasSerie.AsString = '' then
  begin
     DM.OcorrenciasSerieX.Value := DM2.IOcorrenciaSerie.AsString+'ª Série '+DM2.IOcorrenciaTurma.AsString;
     DM.OcorrenciasHoraX.Value := FormatDateTime('dd/mm hh:mm',OcorrenciasHORA.Value)+'h';
  end else
    begin
     OcorrenciasSerieX.Value := OcorrenciasSERIE.AsString+'ª Série '+OcorrenciasTURMA.AsString;
     OcorrenciasHoraX.Value := FormatDateTime('dd/mm hh:mm',OcorrenciasHORA.Value)+'h';
    end;
end;

procedure TDM.SemiAfterInsert(DataSet: TDataSet);
begin
  SemiCIDADE.Value := 'DOURADOS';
  SemiUF.Value := 'MS';
  SemiCEP.Value := '79800-000';
  SemiSEXO.Value := 'M';
  SemiDATA_MATRICULA.Value := now;
  SemiSTATUS.Value := 'A';
  SemiBOLSA.Value := 0;
  SemiMATERIAL.Value := 1;
end;

procedure TDM.SemiAfterPost(DataSet: TDataSet);
begin
  IBTr_ANGLO.CommitRetaining;
end;

procedure TDM.DisciplinasAfterInsert(DataSet: TDataSet);
begin
  DisciplinasFRENTES.Value := 1;
end;

procedure TDM.SemiNewRecord(DataSet: TDataSet);
begin
   DM.SemiBLOQUETO.Value := 0;
   DM.SemiTURNO.Value := 'N';
   DM.SemiCURSO.Value := 'SEMI';
end;

procedure TDM.DocAlunosAfterInsert(DataSet: TDataSet);
begin
  DocAlunosCIDADE.Value := 'DOURADOS';
  DocAlunosUF.Value := 'MS';
  DocAlunosCEP.Value := '79800000';
  DocAlunosSEXO.Value := 'M';
  DocAlunosDATA_MATRICULA.Value := now;
  DocAlunosBIMESTRE.Value := 1;
  DocAlunosSTATUS.Value := 'A';
  DocAlunosBOLSA.Value := 0;
  DocAlunosMATERIAL.Value := 1;
  DocAlunosANO.Value := StrToInt(Principal.Ano.Caption);
  DocAlunosBLOQUETO_1SEM.Value := 0;
  DocAlunosBLOQUETO_2SEM.Value := 0;
end;

procedure TDM.DocAlunosAfterPost(DataSet: TDataSet);
begin
  IBTr_ANGLO.CommitRetaining;
end;

procedure TDM.DocAlunosBeforePost(DataSet: TDataSet);
begin
  if DocAlunosSENHA.IsNull then DocAlunosSENHA.Value := senha;
  case DM.DocAlunosSERIE.Value of
    1 : if DM.DocAlunosH_ANO1.IsNull then begin
          DM.DocAlunosH_ANO1.Value := StrToInt(Principal.Ano.Caption);
          DM.DocAlunosH_ESCOLA1.Value := 'COLÉGIO UNIGRAN';
          DM.DocAlunosH_CIDADE1.Value := 'DOURADOS';
          DM.DocAlunosH_UF1.Value := 'MS';
        end;
    2 : if DM.DocAlunosH_ANO2.IsNull then begin
          DM.DocAlunosH_ANO2.Value := StrToInt(Principal.Ano.Caption);
          DM.DocAlunosH_ESCOLA2.Value := 'COLÉGIO UNIGRAN';
          DM.DocAlunosH_CIDADE2.Value := 'DOURADOS';
          DM.DocAlunosH_UF2.Value := 'MS';
        end;
    3 : if DM.DocAlunosH_ANO3.IsNull then begin
          DM.DocAlunosH_ANO3.Value := StrToInt(Principal.Ano.Caption);
          DM.DocAlunosH_ESCOLA3.Value := 'COLÉGIO UNIGRAN';
          DM.DocAlunosH_CIDADE3.Value := 'DOURADOS';
          DM.DocAlunosH_UF3.Value := 'MS';
        end;
     end;
end;
procedure TDM.DocAlunosCalcFields(DataSet: TDataSet);
begin
  DocAlunosSerieX.Value := IntToStr(DocAlunosSERIE.Value)+'ª Série '+DocAlunosTURMA.Value;
  if DocAlunosMOD_ESPORTIVA.Value = 'EDF' then DocAlunosModEspX.Value := 'Educação Física';
  if DocAlunosMOD_ESPORTIVA.Value = 'NAT' then DocAlunosModEspX.Value := 'Natação';
  if DocAlunosMOD_ESPORTIVA.Value = 'VOL' then DocAlunosModEspX.Value := 'Voleibol';
  if DocAlunosMOD_ESPORTIVA.Value = 'HAN' then DocAlunosModEspX.Value := 'Handebol';
  if DocAlunosMOD_ESPORTIVA.Value = 'FTS' then DocAlunosModEspX.Value := 'Fut-Sal';
  if DocAlunosMOD_ESPORTIVA.Value = 'MUS' then DocAlunosModEspX.Value := 'Musculação';
  if DocAlunosMOD_ESPORTIVA.Value = 'BAS' then DocAlunosModEspX.Value := 'Basquetebol';
  if DocAlunosFINAL.Value = 'A' then DocAlunosFinalX.Value := 'Aprovado';
  if DocAlunosFINAL.Value = 'R' then DocAlunosFinalX.Value := 'Reprovado';
  if DocAlunosFINAL.Value = 'S' then DocAlunosFinalX.Value := 'S/Res.Final';
end;

procedure TDM.NotasAlunosAfterPost(DataSet: TDataSet);
begin
  NotasAlunos.Next;
end;

procedure TDM.NotasAlunosBeforePost(DataSet: TDataSet);
begin
  if NotasAlunosCODIGO.IsNull then
    NotasAlunosCODIGO.Value := DocAlunosCODIGO.Value;
end;

procedure TDM.NotasAlunosNewRecord(DataSet: TDataSet);
begin
  NotasAlunosCODIGO.Value := DocAlunosCODIGO.Value;
end;


procedure TDM.AlunosNewRecord(DataSet: TDataSet);
begin
  AlunosEDU_ESPECIAL.Value := 'N';
  AlunosCODIGO_ESCOLA.Value := 50016628;
  AlunosTIPO_EDU_ESP.Value := 2;
  AlunosCONDIC_ALUNO.Value := 1;
  AlunosCORR_FLUXO.Value := 2;
  AlunosBOLSA_FAMILIA.Value := 2;
  AlunosTRANSP_PUBLICO.Value := 2;
  AlunosZONA_RESID.Value := 2;
  AlunosCONCLUINTE.Value := 2;
  AlunosCURSO_NOR_NM.Value := 1;
  AlunosANO.Text := Principal.Ano.Caption;
  AlunosFORMATURA.Value := 'N';   
end;

procedure TDM.nossonumeroCalcFields(DataSet: TDataSet);
var Str1,CampoLivre,ValorX,NossoNumX,NossoNumXCompleto : string;
var dia,mes,ano : word;
begin
  // Calcula Nosso Numero e Parcela
  ///////////////////////////////// trocar ano abaixo
  DM.nossonumeroParcelaX.Value := FormatFloat('00',DM.nossonumeroPARCELA.Value)+'ª';
////////// acerto - liberar a linha abaixo e apagar a gambiarra abaixo
//////////    vamos fazer o seguinte - deixa a porra da gambiarra lá
//  NossoNumX := Principal.AnoP.Caption+'2'+FormatFloat('00000',DM.BloquetosQNOSSO_NUMERO.Value);
//========================================================= GAMBIARRA
  NossoNumX := DM.nossonumeroANO_DV.Value+'2'+FormatFloat('00000',DM.nossonumeroNOSSO_NUMERO.Value);
  NossoNumXCompleto := '0903'+'01'+'10582'+NossoNumX;
  NossoNumX := NossoNumX+DvMod11(NossoNumXCompleto);
  // Calcula Campo Livre e seu DV
  CampoLivre := '3'+'1'+NossoNumX+'0903'+'01'+'10582'+'1'+'0';
  Insert(DvMod11(CampoLivre),CampoLivre,25);
  // Calcula Campos Digitáveis
  Str1 := '7489'+Copy(CampoLivre,1,5);
  Insert(DvParcial(Str1),Str1,10);
  Insert('.',Str1,6);
  DM.nossonumeroCampo1.Value := Str1;
  Str1 := Copy(CampoLivre,6,10);
  Insert(DvParcial(Str1),Str1,11);
  Insert('.',Str1,6);
  DM.nossonumeroCampo2.Value := Str1;
  Str1 := Copy(CampoLivre,16,10);
  Insert(DvParcial(Str1),Str1,11);
  Insert('.',Str1,6);
  DM.nossonumeroCampo3.Value := Str1;
  ValorX := IntToStr(Trunc(DM.nossonumeroValor.Value*100));
  DM.nossonumeroCampo5.Value := ValorX;
  ValorX := StringOfChar('0',14-Length(ValorX))+ValorX;
  // Calcula Código de Barras e Campo4(DVGeral)
  Str1 := '7489'+ValorX+CampoLivre;
  DM.nossonumeroCampo4.Value := DvGeral(Str1);
  Insert(DvGeral(Str1),Str1,5);
  DM.nossonumeroCodBarras.Value := Str1;
  // Calcula Nosso Número da Cobrança sem Registro - 9 Posições
  Str1 := NossoNumX;
  Insert('-',Str1,9);
  Insert('/',Str1,3);
  DM.nossonumeroNossoNum.Value := Str1;
  // Calcula Tipo_Pg_X
  case nossonumeroTIPO_PG.Value of
    0 : nossonumeroTipo_Pg_X.Value := 'Banco';
    1 : nossonumeroTipo_Pg_X.Value := 'Tesouraria';
  end;
  if nossonumeroTIPO_PG.IsNull then nossonumeroTipo_Pg_X.Value := '';
  // Calcula SerieX
  nossonumeroSerieX.Value := nossonumeroSERIE.AsString+'ª Série '+nossonumeroTURMA.Value;
  // Calcula MesX
  DecodeDate(nossonumeroVENCIMENTO.Value,ano,mes,dia);
  nossonumeroMesX.Value := MesExt[mes];
end;

procedure TDM.ProfessoresNewRecord(DataSet: TDataSet);
begin
  ProfessoresTIPO.Value := 10;
  ProfessoresCOD_ESCOLA.Value := 50016628;
  ProfessoresANO.Value := 2012;
  ProfessoresFUNCAO.Value := 1;
  ProfessoresFUNCAO_AUX.Value := 2;
  ProfessoresENSINO_FUND_1A4.Value := 2;
  ProfessoresENSINO_FUND_5A8.Value := 2;
  ProfessoresENSINO_FUND_1A5.Value := 2;
  ProfessoresENSINO_FUND_6A9.Value := 2;
  ProfessoresENSINO_MEDIO_INT.Value := 1;
  ProfessoresEDUC_JOVENS_1A4.Value := 2;
  ProfessoresEDUC_JOVENS_5A8.Value := 2;
  ProfessoresEDUC_JOVENS_ADULTOS_MEDIO.Value := 2;
  ProfessoresEDU_JOVENS_ADULTOS_TECN.Value := 2;
  ProfessoresNEES.Value := 2;
//  ProfessoresSENHA.Value := senhaProf;
end;

procedure TDM.DB_ANGLOAfterConnect(Sender: TObject);
begin
///Anglo/Anglo.gdb
//Servidor UNIGRAN
//home/francebd/Anglo/Anglo_2008.gdb
//servidor
//senha: bjiml_lv
//Anglo Local
//Anglo/Anglo.gdb
//masterkey
end;

procedure TDM.end_cobNewRecord(DataSet: TDataSet);
begin
  end_cobCOD_ALUNO.Value := AlunosCODIGO.Value;
end;

procedure TDM.ibGradeprofessorNewRecord(DataSet: TDataSet);
begin
   ibGradeprofessorPROFESSOR.Value := ProfessoresCOD_PROF.Value;
   ibGradeprofessorHORA.Value := now;
end;

procedure TDM.qManutencaoFrentesCalcFields(DataSet: TDataSet);
begin
  qManutencaoFrentesseriex.Value := '';
  qManutencaoFrentesseriex.Value := qManutencaoFrentesSERIEF.AsString + 'ª';
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
//servidor
//***********************Para conexão com o servidor****************************
  {
  DB_ANGLO.Close;
  DB_ANGLO.Params.Clear;
  DB_ANGLO.Params.Add('user_name=SYSDBA');
  DB_ANGLO.Params.Add('lc_ctype=WIN1252');
  DB_ANGLO.Params.Add('password=plkh%321');
  DB_ANGLO.DatabaseName := ('anglo:/bds/Anglo/Anglo_2020.gdb');
  DB_ANGLO.Open;
  DB_ANGLO.Connected := True;
  IBTr_ANGLO.Active := True;
  }
  //***************************Para conexão com o banco de dados LOCAL************

  DB_ANGLO.Close;
  DB_ANGLO.Params.Clear;
  DB_ANGLO.Params.Add('user_name=SYSDBA');
  DB_ANGLO.Params.Add('lc_ctype=WIN1252');
  DB_ANGLO.Params.Add('password=masterkey');
  DB_ANGLO.DatabaseName := ('C:\Anglo\Anglo_2020.gdb');
  DB_ANGLO.Open;
  DB_ANGLO.Connected := True;
  IBTr_ANGLO.Active := True;
  
end;

procedure TDM.ibSerieIpsBeforePost(DataSet: TDataSet);
begin
  ibSerieIpsTURMA.Value := TurmasTURMA.Value;
  ibSerieIpsSERIE.Value := TurmasSERIE.Value;
end;

procedure TDM.thorarioplantaoNewRecord(DataSet: TDataSet);
begin
  thorarioplantaoTIPO.Value := 'P';
end;

procedure TDM.AutorizacaoNewRecord(DataSet: TDataSet);
begin
  dm.AutorizacaoALUNOS.Value := dm.AlunosCODIGO.Value;
end;

procedure TDM.AutorizacaoCalcFields(DataSet: TDataSet);
begin
   DM.AutorizacaoTOTAL.Value := (dm.AutorizacaoPARCELAS.Value * dm.AutorizacaoVALORP.Value);
end;

end.



