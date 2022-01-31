unit UCad_Alunos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, DBCtrls, ExtCtrls, Mask, ComCtrls, Db,
  DBTables, Gauges, RxLookup, RXSwitch, ToolEdit, CurrEdit, RXDBCtrl,
  IBCustomDataSet, IBQuery, RxDBComb, OleServer, Word97, 
  TeeProcs, TeEngine, Chart, Placemnt, Spin, IBSQL, RXCtrls, IB, ScktComp, Math, DateUtil,
  Psock, NMsmtp;



type
  TCad_Alunos = class(TForm)
    PageControl1: TPageControl;
    Tab1: TTabSheet;
    Tab2: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit19: TDBEdit;
    Label19: TLabel;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    DBEdit17: TDBEdit;
    Label17: TLabel;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    Label15: TLabel;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    DBEdit21: TDBEdit;
    Label12: TLabel;
    DBEdit22: TDBEdit;
    Label22: TLabel;
    DBESerie: TDBEdit;
    DBETurma: TDBEdit;
    Label24: TLabel;
    DBEdit26: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit28: TDBEdit;
    Label29: TLabel;
    DBEdit30: TDBEdit;
    Label32: TLabel;
    DBEdit33: TDBEdit;
    Label33: TLabel;
    DBEdit34: TDBEdit;
    dsAluOrig: TDataSource;
    AluOrig: TTable;
    AluOrigALU_COD: TFloatField;
    AluOrigALU_NOME: TStringField;
    AluOrigALU_NOMEX: TStringField;
    AluOrigALU_RUA: TStringField;
    AluOrigALU_NUMERO: TFloatField;
    AluOrigALU_BAIRRO: TStringField;
    AluOrigALU_COMPLE: TStringField;
    AluOrigALU_CIDADE: TStringField;
    AluOrigALU_ESTADO: TStringField;
    AluOrigALU_CEP: TStringField;
    AluOrigALU_RG: TStringField;
    AluOrigALU_DTNASC: TDateField;
    AluOrigALU_CDNASC: TStringField;
    AluOrigALU_UFNASC: TStringField;
    AluOrigALU_SEXO: TStringField;
    AluOrigALU_PAI: TStringField;
    AluOrigALU_PAIPRO: TStringField;
    AluOrigALU_PAIDTN: TDateField;
    AluOrigALU_MAE: TStringField;
    AluOrigALU_MAEPRO: TStringField;
    AluOrigALU_MAEDTN: TDateField;
    AluOrigALU_FONE: TStringField;
    AluOrigALU_DATMAT: TDateField;
    AluOrigALU_BIMEST: TSmallintField;
    AluOrigCUR_COD: TSmallintField;
    AluOrigSER_NUMERO: TSmallintField;
    AluOrigTUR_TURMA: TStringField;
    AluOrigALU_CHAMAD: TSmallintField;
    AluOrigALU_STATUS: TStringField;
    AluOrigALU_DATSAI: TDateField;
    AluOrigALU_BOLSA: TFloatField;
    AluOrigALU_OBSHIS: TMemoField;
    AluOrigALU_SACADO: TStringField;
    AluOrigALU_FINAL: TStringField;
    AluOrigALU_MATERI: TStringField;
    AluOrigALU_VENCTO: TSmallintField;
    AluOrigALU_ANO: TSmallintField;
    AluOrigALU_CURSIN: TStringField;
    Tab3: TTabSheet;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    PesqAluno: TRxDBLookupCombo;
    Panel1: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    Nome: TEdit;
    Pesquisa: TBitBtn;
    Filtro: TRxSwitch;
    Codigo: TCurrencyEdit;
    Ordem: TRadioGroup;
    Tab4: TTabSheet;
    RxDBGrid1: TRxDBGrid;
    Label37: TLabel;
    Label38: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label39: TLabel;
    Label43: TLabel;
    DBText3: TDBText;
    Label44: TLabel;
    DBText4: TDBText;
    Label45: TLabel;
    DBText5: TDBText;
    Label46: TLabel;
    DBText6: TDBText;
    Gauge2: TGauge;
    Panel2: TPanel;
    Label47: TLabel;
    Codigo2: TCurrencyEdit;
    Label48: TLabel;
    ComboStatus: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    GroupBox1: TGroupBox;
    FichaOcorr: TBitBtn;
    Contrato: TBitBtn;
    Requerimento: TBitBtn;
    Recibo: TBitBtn;
    Label21: TLabel;
    DataDoc: TDateEdit;
    Label23: TLabel;
    Label41: TLabel;
    Label49: TLabel;
    DBEdit23: TDBEdit;
    Tab5: TTabSheet;
    RxDBGrid2: TRxDBGrid;
    Turma2: TRxDBLookupCombo;
    Label50: TLabel;
    Atualiza: TBitBtn;
    AlunosAnt: TIBQuery;
    PuxaDados: TBitBtn;
    Label51: TLabel;
    TrocaSenha: TSpeedButton;
    Tab6: TTabSheet;
    RxDBGrid3: TRxDBGrid;
    Label52: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    Label53: TLabel;
    Label54: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    Label57: TLabel;
    Label28: TLabel;
    DBMemo1: TDBMemo;
    Pai: TSpeedButton;
    Mae: TSpeedButton;
    Label58: TLabel;
    ModEspCombo: TRxDBComboBox;
    Label59: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit32: TDBEdit;
    Label63: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    DBEdit35: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    Label65: TLabel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    ImpHistorico: TBitBtn;
    Label66: TLabel;
    DataHist: TDateEdit;
    Label67: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label68: TLabel;
    Label69: TLabel;
    FS1: TFormStorage;
    RadioGroup1: TRadioGroup;
    PesqAluno2: TRxDBLookupCombo;
    Label55: TLabel;
    Label56: TLabel;
    DBText11: TDBText;
    RadioGroup2: TRadioGroup;
    Estatistica: TBitBtn;
    IRDecl: TBitBtn;
    EstatTur: TBitBtn;
    EtAvulsa: TBitBtn;
    Label71: TLabel;
    DBText13: TDBText;
    Label72: TLabel;
    DBText14: TDBText;
    AlunosSP: TIBQuery;
    AlunosSPCODIGO_SP: TIBStringField;
    Panel3: TPanel;
    Foto: TImage;
    Label73: TLabel;
    ConsTurma: TIBQuery;
    ConsTurmaCURSINHO: TSmallintField;
    ConsTurmaPERIODO: TSmallintField;
    Button1: TButton;
    Label34: TLabel;
    Panel4: TPanel;
    ImageT: TImage;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Label74: TLabel;
    Resultado1: TComboBox;
    Resultado2: TComboBox;
    Resultado3: TComboBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label75: TLabel;
    Bcores: TBitBtn;
    DBRadioGroup2: TDBRadioGroup;
    DBDateEdit1: TDBDateEdit;
    Label77: TLabel;
    Label78: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEdit44: TDBEdit;
    Label79: TLabel;
    DBEdit45: TDBEdit;
    Label80: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label81: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label82: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label83: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label85: TLabel;
    Label86: TLabel;
    BitBtn2: TBitBtn;
    DBRadioGroup3: TDBRadioGroup;
    DBEdit46: TDBEdit;
    Label84: TLabel;
    DBEdit47: TDBEdit;
    Label87: TLabel;
    DBEdit48: TDBEdit;
    Label88: TLabel;
    DBDateEdit3: TDBDateEdit;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    DBEdit49: TDBEdit;
    Save1: TSaveDialog;
    IBEtiq_SP: TIBQuery;
    DsIBEtiq_SP: TDataSource;
    IBEtiq_SPCODIGO_SP: TIBStringField;
    UFCartorio: TRxDBLookupCombo;
    BitBtn5: TBitBtn;
    Label92: TLabel;
    senhapais: TDBText;
    Button2: TButton;
    tiposanguineo: TRxDBLookupCombo;
    Label93: TLabel;
    situacao: TDBRadioGroup;
    SpeedButton1: TSpeedButton;
    DBRadioGroup4: TDBRadioGroup;
    DBEdit50: TDBEdit;
    Label76: TLabel;
    DBEdit51: TDBEdit;
    Label94: TLabel;
    Label95: TLabel;
    DBEdit52: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBRadioGroup5: TDBRadioGroup;
    dbedtCPF: TDBEdit;
    btngerar: TButton;
    dbedtID: TDBEdit;
    lb1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    bvl2: TBevel;
    btntermo: TBitBtn;
    btnExport: TBitBtn;
    btnconecta: TBitBtn;
    btnDesconecta: TBitBtn;
    btnCadastra: TBitBtn;
    btnDigital: TBitBtn;
    dsBIp: TDataSource;
    ibqryBIP: TIBQuery;
    ibqryBIPID_IPS: TIntegerField;
    ibqryBIPSERIE: TSmallintField;
    ibqryBIPTURMA: TIBStringField;
    ibqryBIPIP: TIBStringField;
    SockCad: TClientSocket;
    edt1: TEdit;
    lbl6: TLabel;
    SpeedButton3: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label97: TLabel;
    Button3: TButton;
    up_st: TIBSQL;
    QBuscaBoleto: TIBQuery;
    DsBuscaBoleto: TDataSource;
    QBuscaBoletoNOSSO_NUMERO: TIntegerField;
    Label30: TLabel;
    DBEdit29: TDBEdit;
    Label27: TLabel;
    DBEdit20: TDBEdit;
    Tab7: TTabSheet;
    QBuscaBoletoALUNO: TIntegerField;
    QBuscaBoletoPARCELA: TSmallintField;
    QBuscaBoletoEMISSAO: TDateField;
    QBuscaBoletoVENCIMENTO: TDateField;
    QBuscaBoletoVALOR: TIBBCDField;
    QBuscaBoletoPAGAMENTO: TDateField;
    QBuscaBoletoVALOR_PAGO: TIBBCDField;
    QBuscaBoletoMENSALIDADE: TIBBCDField;
    QBuscaBoletoMATERIAL: TIBBCDField;
    QBuscaBoletoDESCONTO: TIBBCDField;
    QBuscaBoletoTIPO_PG: TSmallintField;
    QBuscaBoletoANO_DV: TIBStringField;
    QBuscaBoletoDESCONTO_ANT: TIBBCDField;
    QBuscaBoletoMENSALIDADE_ANT: TIBBCDField;
    QBuscaBoletoVALOR_ANT: TIBBCDField;
    QBuscaBoletoBAULA_AD: TIBStringField;
    QBuscaBoletoST: TIBStringField;
    QBuscaBoletoTP: TIntegerField;
    QBuscaBoletoMOTIVO: TIBStringField;
    QBuscaBoletoDATA_LIMITE: TDateField;
    Delete_Boleto: TIBQuery;
    Ds_DeleteBoleto: TDataSource;
    Label31: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Label70: TLabel;
    QBuscaBoletoNEGOCIACAO: TIntegerField;
    DBEdit13: TDBEdit;
    DBEdit31: TDBEdit;
    DBDateEdit4: TDBDateEdit;
    DBEdit36: TDBEdit;
    Button4: TButton;
    Button5: TButton;
    Label96: TLabel;
    DBText12: TDBText;
    Button6: TButton;
    Label98: TLabel;
    Ds_UpNegociacao: TDataSource;
    UP_Negociacao: TIBQuery;
    Shape1: TShape;
    Label99: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Shape2: TShape;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    DBMemo2: TDBMemo;
    Label108: TLabel;
    Button7: TButton;
    UltimaParcela: TIBQuery;
    Ds_UltimaParcela: TDataSource;
    UltimaParcelaTOTAL: TSmallintField;
    BitBtn6: TBitBtn;
    DBEdit53: TDBEdit;
    Label110: TLabel;
    BitBtn7: TBitBtn;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    Label114: TLabel;
    Button8: TButton;
    DBEdit9: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    BitBtn8: TBitBtn;
    DBEdit56: TDBEdit;
    Label20: TLabel;
    DBEdit57: TDBEdit;
    Label100: TLabel;
    AlunosAntCODIGO: TIntegerField;
    AlunosAntNOME: TIBStringField;
    AlunosAntCODIGO_ESCOLA: TIntegerField;
    AlunosAntENDERECO: TIBStringField;
    AlunosAntCOMPLEMENTO: TIBStringField;
    AlunosAntBAIRRO: TIBStringField;
    AlunosAntCIDADE: TIBStringField;
    AlunosAntUF: TIBStringField;
    AlunosAntCEP: TIBStringField;
    AlunosAntRG: TIBStringField;
    AlunosAntNASC_DATA: TDateField;
    AlunosAntNASC_CIDADE: TIBStringField;
    AlunosAntNASC_UF: TIBStringField;
    AlunosAntSEXO: TIBStringField;
    AlunosAntPAI_NOME: TIBStringField;
    AlunosAntPAI_PROFISSAO: TIBStringField;
    AlunosAntPAI_NASCIMENTO: TDateField;
    AlunosAntMAE_NOME: TIBStringField;
    AlunosAntMAE_PROFISSAO: TIBStringField;
    AlunosAntMAE_NASCIMENTO: TDateField;
    AlunosAntFONE: TIBStringField;
    AlunosAntDATA_MATRICULA: TDateField;
    AlunosAntBIMESTRE: TSmallintField;
    AlunosAntCURSO: TIntegerField;
    AlunosAntSERIE: TSmallintField;
    AlunosAntTURMA: TIBStringField;
    AlunosAntCHAMADA: TSmallintField;
    AlunosAntSTATUS: TIBStringField;
    AlunosAntDATA_SAIDA: TDateField;
    AlunosAntBOLSA: TIBBCDField;
    AlunosAntOBS_HIST: TMemoField;
    AlunosAntSACADO: TIBStringField;
    AlunosAntFINAL: TIBStringField;
    AlunosAntMATERIAL: TSmallintField;
    AlunosAntVENCIMENTO: TSmallintField;
    AlunosAntANO: TSmallintField;
    AlunosAntCURSINHO: TSmallintField;
    AlunosAntBLOQUETO_1SEM: TSmallintField;
    AlunosAntBLOQUETO_2SEM: TSmallintField;
    AlunosAntMES_MATERIAL: TSmallintField;
    AlunosAntSENHA: TIBStringField;
    AlunosAntSACADO_RG: TIBStringField;
    AlunosAntSACADO_CPF: TIBStringField;
    AlunosAntMOD_ESPORTIVA: TIBStringField;
    AlunosAntH_ANO1: TIntegerField;
    AlunosAntH_ESCOLA1: TIBStringField;
    AlunosAntH_CIDADE1: TIBStringField;
    AlunosAntH_UF1: TIBStringField;
    AlunosAntH_ANO2: TIntegerField;
    AlunosAntH_ESCOLA2: TIBStringField;
    AlunosAntH_CIDADE2: TIBStringField;
    AlunosAntH_UF2: TIBStringField;
    AlunosAntH_ANO3: TIntegerField;
    AlunosAntH_ESCOLA3: TIBStringField;
    AlunosAntH_CIDADE3: TIBStringField;
    AlunosAntH_UF3: TIBStringField;
    AlunosAntBOLSA_OBS: TIBStringField;
    AlunosAntCODIGO_SP: TIBStringField;
    AlunosAntCONT_TOL: TIntegerField;
    AlunosAntTIPO_LOGADOURO: TIntegerField;
    AlunosAntNUMERO: TSmallintField;
    AlunosAntCOMPLEMENTO_RG: TSmallintField;
    AlunosAntDATA_EXP_IDENT: TDateField;
    AlunosAntUF_IDENTIDADE: TIntegerField;
    AlunosAntORGAO_EMIS_IDE: TIntegerField;
    AlunosAntNACIONALIDADE: TIntegerField;
    AlunosAntDATA_ENTR_PAIS: TDateField;
    AlunosAntMUNICIPIO_NAS: TSmallintField;
    AlunosAntCERTIDAO_CIVIL: TSmallintField;
    AlunosAntDATA_EMI_CERT: TDateField;
    AlunosAntNOME_CART_EXP: TIBStringField;
    AlunosAntCPF: TIBStringField;
    AlunosAntCOR: TIntegerField;
    AlunosAntEDU_ESPECIAL: TIBStringField;
    AlunosAntTIPO_EDU_ESP: TSmallintField;
    AlunosAntINC_CLASSE_COMU: TSmallintField;
    AlunosAntAPOIO_PED_ESPE: TSmallintField;
    AlunosAntCONDIC_ALUNO: TSmallintField;
    AlunosAntCORR_FLUXO: TSmallintField;
    AlunosAntBOLSA_FAMILIA: TSmallintField;
    AlunosAntTRANSP_PUBLICO: TSmallintField;
    AlunosAntZONA_RESID: TSmallintField;
    AlunosAntCONCLUINTE: TSmallintField;
    AlunosAntRECLASS_INGR: TSmallintField;
    AlunosAntTRANSP_PUB_OFER: TSmallintField;
    AlunosAntRECLASS_DEST: TSmallintField;
    AlunosAntADMI_APOS_CENSO: TSmallintField;
    AlunosAntMOV_REND_ESCOL: TSmallintField;
    AlunosAntAT_ED_ESPECIALI: TSmallintField;
    AlunosAntDATA_IGRESSO: TDateField;
    AlunosAntCURSO_NOR_NM: TSmallintField;
    AlunosAntUF_MEC: TIntegerField;
    AlunosAntORGAO_EMISSOR: TIntegerField;
    AlunosAntSEXO_E: TIntegerField;
    AlunosAntTIPOCERTIDAO: TIntegerField;
    AlunosAntUFCARTORIO: TIntegerField;
    AlunosAntNUMERO_TERMO: TIntegerField;
    AlunosAntFOLHA: TIBStringField;
    AlunosAntLIVRO: TIBStringField;
    AlunosAntCARTORIO_UF: TIntegerField;
    AlunosAntPALOGIN: TIBStringField;
    AlunosAntPASENHA: TIBStringField;
    AlunosAntTIPOSANGUINEO: TIntegerField;
    AlunosAntSITUACAO: TIBStringField;
    AlunosAntUSUARIO: TIntegerField;
    AlunosAntOPCAO_ESPANHOL: TIBStringField;
    AlunosAntCELULAR: TIBStringField;
    AlunosAntTEL_RESIDENCIAL: TIBStringField;
    AlunosAntTEL_CONTATO: TIBStringField;
    AlunosAntE_MAIL: TIBStringField;
    AlunosAntFORMATURA: TIBStringField;
    AlunosAntBOLSA_AD: TIBBCDField;
    AlunosAntAULA_AD: TIBStringField;
    AlunosAntID: TIBStringField;
    AlunosAntORIUNDO_ESCOLA: TIntegerField;
    AlunosAntOBS_TEL: TIBStringField;
    AlunosAntEMAIL_ALUNO: TIBStringField;
    AlunosAntEMAIL_MAE: TIBStringField;
    BitBtn9: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FichaOcorrClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CodigoChange(Sender: TObject);
    procedure NomeChange(Sender: TObject);
    procedure FiltroOff(Sender: TObject);
    procedure PesquisaClick(Sender: TObject);
    procedure OrdemClick(Sender: TObject);
    procedure Tab4Show(Sender: TObject);
    procedure Label46DblClick(Sender: TObject);
    procedure ContratoClick(Sender: TObject);
    procedure RequerimentoClick(Sender: TObject);
    procedure Tab2Show(Sender: TObject);
    procedure Turma2Change(Sender: TObject);
    procedure AtualizaClick(Sender: TObject);
    procedure Tab5Exit(Sender: TObject);
    procedure PuxaDadosClick(Sender: TObject);
    procedure Codigo2Change(Sender: TObject);
    procedure TrocaSenhaClick(Sender: TObject);
    procedure Codigo2Exit(Sender: TObject);
    procedure PaiClick(Sender: TObject);
    procedure MaeClick(Sender: TObject);
    procedure Tab6Show(Sender: TObject);
    procedure ImpHistoricoClick(Sender: TObject);
    procedure RxDBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure PesqAluno2Change(Sender: TObject);
    procedure EstatisticaClick(Sender: TObject);
    procedure IRDeclClick(Sender: TObject);
    procedure EstatTurClick(Sender: TObject);
    procedure EtAvulsaClick(Sender: TObject);
    procedure ImportaNumSPClick(Sender: TObject);
    procedure FotoClick(Sender: TObject);
    procedure PesqAlunoChange(Sender: TObject);
    procedure Tab1Show(Sender: TObject);
    procedure PesqAlunoCloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Tab5Show(Sender: TObject);
    procedure ImageTClick(Sender: TObject);
    procedure RxDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBGrid2Enter(Sender: TObject);
    procedure RxDBGrid2Exit(Sender: TObject);
    procedure RxDBGrid2CellClick(Column: TColumn);
    procedure RxDBGrid2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure RxDBGrid2ColEnter(Sender: TObject);
    procedure RxDBGrid2ColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure RxDBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBEdit36Exit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBESerieExit(Sender: TObject);
    procedure DBETurmaExit(Sender: TObject);
    procedure BcoresClick(Sender: TObject);
    procedure RxLabel1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btntermoClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnconectaClick(Sender: TObject);
    procedure btnDesconectaClick(Sender: TObject);
    procedure btnCadastraClick(Sender: TObject);
    procedure btnDigitalClick(Sender: TObject);
    procedure ClienteCadError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure proEnviarPacote;
    procedure SockCadRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure SockCadError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure ReciboClick(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure btngerarClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
  private
   { Private declarations }
    procedure AtualizaSitFin;
    procedure AtualizaSitFin2;
    procedure AtualizaHistNotas;
    procedure AtualizaFoto;
    procedure AtualizaFotoTurma;
 end;

   TClienteCadSock = class(TClientSocket)

   public

    // overload: evita stack overflow
   constructor Create; reintroduce; overload;

    // Executa ao conectar com o servidor
    procedure doOnConnect(Sender : TObject; Socket : TCustomWinSocket);

    // Executa quando o servidor respondeu à uma requisição
   procedure doOnRead(Sender : TObject; Socket : TCustomWinSocket);


 end;
   TByteArray = array of byte;
   procedure Delay(MSec: Cardinal);

var
  Cad_Alunos: TCad_Alunos;
  ClienteCad : TClienteCadSock;
  comando, parc, dia_l : string;

implementation

uses UDM, URel_QRFicha_Ocorrencia, UDoc_ContratoQR, UDoc_RequerimentoQR,
  UDoc_ReciboQR, UMenu, UCad_Alunos_Ant, UDoc_HistoricoQR,
  UDoc_CertificadoQR, ULst_EstatisticaQR, UDoc_IRDeclQR,
  ULst_EstatisticaTurQR, UCad_AlunosFoto, Ucores, UDM2, Uend_cob,
  UEtiq_SPQR, Urelacaosenhapais, UDoc_ContratoSemiQR, UDoc_TermoCompromisso,
  Umensagem, UCad_orgaos, UCadastroescola, Uprematricula, UDoc_ContratoQR1,
  UDoc_ContratoQR2, UDoc_ContratoQR3, Ufparametrosbloqueto, Ufautorizacao,
  UTermo_Resp, USelectAproveitamento, USelecDoc, UHistorico_new;

{$R *.DFM}

//============================================================== SHOW / CLOSE


constructor  TClienteCadSock.Create;
begin
  inherited Create(nil);
end;

procedure TCad_Alunos.ClienteCadError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
 ErrorCode := 0;
end;


procedure TClienteCadSock.doOnConnect(Sender: TObject; Socket: TCustomWinSocket);
{ Muda o status da tela ao conectar com o equipamento. }
begin
//  frmClienteCadGPRS.stbrStatus.SimpleText := 'Conectado à ' + ClienteCad.Host;
//  frmClienteCadGPRS.btnConectar.Caption := 'Desconectar';
end;


procedure Delay(MSec: Cardinal);
{ Determina o tempo que o programa irá ficar parado. }
var
  Start: Cardinal;
begin
  Start := GetTickCount;
  repeat
    Application.ProcessMessages;
  until (GetTickCount - Start) >= MSec;
end;



procedure TClienteCadSock.doOnRead(Sender: TObject; Socket: TCustomWinSocket);
{ Realiza a leitura dos dados quando o servidor responde. }
var
  _rPacoteBytes : array of byte;
  _rPacoteString, _gPacoteResponse, temp : string;
  i, _rTamanhoPacote: integer;
  _rRele,_rCodREON : String;  // Grupo de String utilizado no Evento Online.
begin
  try
    _rTamanhoPacote := Socket.ReceiveBuf(Pointer(nil)^, -1);
    SetLength(_rPacoteBytes, _rTamanhoPacote);
    Socket.ReceiveBuf(Pointer(_rPacoteBytes)^, Length(_rPacoteBytes));

    // Converte e mostra o pacote recebido em hexadecimal
    for i := 0 to _rTamanhoPacote - 1 do
      _rPacoteString := _rPacoteString + IntToHex(_rPacoteBytes[i], 2) + ' ';
//    frmClienteCadGPRS.mmRecebidos.Lines.Add(_rPacoteString);
      ShowMessage('Hora e data atualizada: '+ (_rPacoteString));
//    frmClienteCadGPRS.mmRecebidos.Lines.Add('');
    // Converte e motra o pacote recebido em string
    SetLength(_rPacoteString, 0);
    for i := 3 to _rTamanhoPacote - 3 do
  	  _rPacoteString := _rPacoteString + Chr(_rPacoteBytes[i]);
    _gPacoteResponse := _rPacoteString;

      Sleep(1000);
      if ('01+RD+00+D]' = (Copy(_rPacoteString,1,11))) then    //comando para devolver a digital
      begin
        if Length(_rPacoteString) > 10 then
        begin
           dm.ibDigital.Open;
           dm.ibDigital.Append;
           dm.ibDigitalALUNO.Value := dm.AlunosCODIGO.Value;
           dm.ibDigitalIMPRESSAO.Value := (Copy(_rPacoteString,23,1000));
           dm.ibDigital.Post;
           dm.IBTr_ANGLO.CommitRetaining;
           _rPacoteString :=  '';
           _rTamanhoPacote := 0;
           _rPacoteBytes := nil;
          end;
         begin
          ShowMessage('Cadastro do aluno: '+ DM.ibDigitalALUNO.AsString +' concluida com sucesso.');
         end;
      end;
  Except
    begin
      ShowMessage('Falha ao receber dados do equipamento.');
      fmensagem.Close;
    end;
 end;
end;



function stringToBytes(pPackage : String) : TByteArray;
{ Recebe o pacote de dados no formato texto e converte para um array de bytes,
  adicionando o byte inicial e final, calculando o checksum e convertendo cada
  caracter da string em inteiro. Retorna o array de bytes convertido. }
  procedure NextByte(var pByteArray : TByteArray; var index : Integer);
  { Disponibiliza mais um byte em um array de bytes, alocando um novo espaço e
    incrementando o índice. }
  begin
    SetLength(pByteArray, Length(pByteArray) + 1);
    inc(index);
  end;

const
  CONST_START_BYTE = 02; // Byte inicial.
  CONST_END_BYTE = 03; // Byte final.
var
  _rChecksum, i, idx : Integer;
begin
  // Inicializa o índice do array e o checksum.
  idx := 0;
  SetLength(Result, 1);
  _rChecksum := 0;

  // Carrega o byte inicial
  Result[idx] := CONST_START_BYTE;

  // Calcula e carrega o tamanho do pacote
  NextByte(Result, idx);
  Result[idx] := Length(pPackage) and $FF;
  NextByte(Result, idx);
  Result[idx] := (Length(pPackage) shr 8) and $FF;

  // Converte cada caracter da string recebida em inteiro e carrega no array
  NextByte(Result, idx);
  for i := 1 to Length(pPackage) do
  begin
    Result[idx] := Ord(pPackage[i]);
    NextByte(Result, idx);
  end;

  // Realiza o cálculo do checksum com os bytes do pacote e com o seu tamanho,
  // e após calcular ele é carregado no array
  for i := 0 to Length(pPackage) do
    _rChecksum := _rChecksum xor Ord(pPackage[i]);
  _rChecksum := _rChecksum xor (Length(pPackage) and $FF);
  _rChecksum := _rChecksum xor ((Length(pPackage) shr 8) and $FF);
  Result[idx] := _rChecksum;

  // Carrega o byte final
  NextByte(Result, idx);
  Result[idx] := CONST_END_BYTE;
end;


procedure tcad_alunos.proEnviarPacote;
{ Envia o pacote selecionado ao equipamento. }
var
  _rPacoteBytes : TByteArray;
  _rPacoteHex  : string;
  i : Integer;
begin
  try
    _rPacoteBytes := stringToBytes(comando);
    for i := 0 to Length(_rPacoteBytes) -1 do
     _rPacoteHex := _rPacoteHex + IntToHex(_rPacoteBytes[i], 2) + ' ';
//     ClienteCad.Socket.SendBuf(Pointer(_rPacoteBytes)^, Length(_rPacoteBytes));
     SockCad.Socket.SendBuf(Pointer(_rPacoteBytes)^, Length(_rPacoteBytes));
  Except
    ShowMessage('Erro ao enviar dados.');
  end;
end;


procedure TCad_Alunos.FormShow(Sender: TObject);
begin
  ConsTurma.Active := True;
  PageControl1.ActivePageIndex := 0;
  DM.Alunos.Close;
  DM.Alunos.SelectSQL.Strings[3] := 'order by nome collate pxw_intl850';
  DM.Turmas.Open;
  DM.Alunos.Open;
  if not dm.AlunosCODIGO.IsNull then  DM.TotAl.Open;
  DM.Cores.Open;
  DM.logadouro.Open;
  DM.orgao.Open;
  DM.pais.Open;
  DM.qMunicipio.Open;
  dm.estado.Open;
  dm.tiposanguineo.Open;
  dm2.iqescola.Open;
  dm.Autorizacao.Open;

  AtualizaFoto;
  if (principal.Ano.Caption = '2009')  then
      cad_alunos.RxDBGrid1.Columns[4].FieldName := 'VALOR_ANT'
  Else
      cad_alunos.RxDBGrid1.Columns[4].FieldName := 'VALOR';

   Tab7.TabVisible := False;
  { Para linitar o aceso aos descontos - Somente esses usuários podem dar descontos.}
  case DM2.qy_usuarioCODIGO.Value of
  9:begin
         Tab7.TabVisible := True;
    end;
  6:begin
         Tab7.TabVisible := True;
     end;
  23:begin
          Tab7.TabVisible := True;
     end;


  end;
end;

procedure TCad_Alunos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.Alunos.Modified then DM.Alunos.Post;
  if dm.TotAl.State in [dsEdit, dsInsert] Then  DM.TotAl.Close;
  DM.Alunos.Close;
  DM.Turmas.Close;
  DM.Grade.Close;
  DM.HistNotas.Close;
  DM.BloquetosQ.Close;
  DM.AlunosT.Close;
  DM.Cores.Close;
  dm2.iqescola.Close;
  DM.IBTr_Anglo.CommitRetaining;
  DM.Alunos.SelectSQL.Strings[0] := 'select *';
  DM.Alunos.SelectSQL.Strings[1] := 'from ALUNOS';
  DM.Alunos.SelectSQL.Strings[2] := 'where Codigo > 0';
  DM.Alunos.SelectSQL.Strings[3] := 'order by Codigo';
  ClienteCad.Active := False;
  ClienteCad.Free;
end;

procedure TCad_Alunos.AtualizaFoto;
begin
  if (not DM.AlunosCODIGO.IsNull) then
    if FileExists('G:\Fotos\'+DM.AlunosCODIGO.AsString+'.jpg') then
       Foto.Picture.LoadFromFile('G:\Fotos\'+DM.AlunosCODIGO.AsString+'.jpg')
     else   if FileExists('G:\Fotos\'+'SemFoto.jpg') then
      Foto.Picture.LoadFromFile('G:\Fotos\SemFoto.jpg');
 { if DM.AlunosCODIGO.IsNull then
    Foto.Picture.LoadFromFile('g:\Fotos\SemFoto.jpg');}
end;

//=============================================================Atualiza Fotos Turma

procedure TCad_Alunos.AtualizaFotoTurma;
begin
  if not DM.AlunosTCODIGO.IsNull then
    if FileExists('g:\Fotos\'+DM.AlunosTCODIGO.AsString+'.jpg') then
      ImageT.Picture.LoadFromFile('g:\Fotos\'+DM.AlunosTCODIGO.AsString+'.jpg')
     else
      ImageT.Picture.LoadFromFile('g:\Fotos\SemFoto.jpg');
  if DM.AlunosTCODIGO.IsNull then
    ImageT.Picture.LoadFromFile('g:\Fotos\SemFoto.jpg');
end;


//==================================================================== GERAL
procedure TCad_Alunos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
     Perform(WM_NextDlgCtl,0,0);   Key := #0;
  end;
end;

procedure TCad_Alunos.OrdemClick(Sender: TObject);
begin
  if Ordem.ItemIndex = 0 then
     DM.Alunos.SelectSQL.Strings[3] := 'order by codigo'
   else DM.Alunos.SelectSQL.Strings[3] := 'order by nome collate pxw_intl850';
  Filtro.StateOn := false;
  DM.Alunos.Close;  DM.Alunos.Open;
end;

procedure TCad_Alunos.FichaOcorrClick(Sender: TObject);
begin
  Application.CreateForm(TRel_TermoResp,Rel_TermoResp);
  Try
    Rel_TermoResp.Rl_Termo.Preview;
  Finally
    Rel_TermoResp.Rl_Termo.Free;
  End;
end;

procedure TCad_Alunos.ContratoClick(Sender: TObject);
begin
   if dm.Alunos.State in [dsInsert, dsEdit] then
      dm.alunos.post;
      begin
          Try
            Application.CreateForm(TDoc_ContratoQR1, Doc_ContratoQR1);
            Doc_ContratoQR1.Preview;
          Finally
            Doc_ContratoQR1.Free;
          End;
      end;
end;


procedure TCad_Alunos.RequerimentoClick(Sender: TObject);
begin
  Application.CreateForm(TDoc_RequerimentoQR, Doc_RequerimentoQR);
  Try
    dm2.iqRequerimento.Close;
    dm2.iqRequerimento.Params[0].Value := dm.AlunosCODIGO.Value;
    dm2.iqRequerimento.Open;
    Doc_RequerimentoQR.Preview;
  Finally
    Doc_RequerimentoQR.Free;
  End;
end;

procedure TCad_Alunos.IRDeclClick(Sender: TObject);
begin
    Application.CreateForm(TDoc_IRDeclQR, Doc_IRDeclQR);
  Try
    AtualizaSitFin;
    Doc_IRDeclQR.Preview;
  Finally
    Doc_IRDeclQR.Free;
  End;
end;

procedure TCad_Alunos.EtAvulsaClick(Sender: TObject);
begin
  Application.CreateForm(TfSelecAproveitamento, fSelecAproveitamento);
  Try
    fSelecAproveitamento.ShowModal;
  Finally
    fSelecAproveitamento.Free;
  End;
end;

procedure TCad_Alunos.PaiClick(Sender: TObject);
begin
  if DM.Alunos.State = dsBrowse then DM.Alunos.Edit;
  DM.AlunosSACADO.Value := DM.AlunosPAI_NOME.Value;
end;

procedure TCad_Alunos.MaeClick(Sender: TObject);
begin
  if DM.Alunos.State = dsBrowse then DM.Alunos.Edit;
  DM.AlunosSACADO.Value := DM.AlunosMAE_NOME.Value;
end;

//====================================================== TELA DE DADOS PESSOAIS
procedure TCad_Alunos.Tab1Show(Sender: TObject);
begin
//  AtualizaFoto;
end;

procedure TCad_Alunos.PesqAlunoChange(Sender: TObject);
begin
  AtualizaFoto;
end;

procedure TCad_Alunos.PesqAlunoCloseUp(Sender: TObject);
begin
  AtualizaFoto;
end;

procedure TCad_Alunos.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  BitBtn1.SetFocus;
  if Button = nbInsert then begin
    PageControl1.ActivePageIndex := 0;
    DBEdit2.Enabled := True;
    DBEdit2.SetFocus;
    dm.AlunosUSUARIO.Value := Codigouser;
    DBDateEdit1.Date := now;
    DBRadioGroup4.ItemIndex := 0;
  end;
  if Button in [nbNext,nbPrior,nbFirst,nbLast] then begin
    AtualizaSitFin;
    PesqAluno.ResetField;
    dm.Alunos.Edit;
    dm.Alunos.Post;
  end;
  if (Button in [nbNext,nbPrior,nbFirst,nbLast]) and
     (PageControl1.ActivePageIndex = 5) then begin
     AtualizaHistNotas;
     dm.Alunos.Edit;
     dm.Alunos.Post;
  end;
  if (Button in [nbEdit]) then begin
     DBEdit2.Enabled := True;
     dm.AlunosUSUARIO.Value := codigouser;
  end;
  if (Button in [nbPost]) then
   Begin
     If DBESerie.Text = ' ' Then
      Begin
       ShowMessage ('Por favor digite a série.');
       DBESerie.SetFocus;
      End;
      dm.Alunos.Edit;
      dm.AlunosUSUARIO.Value := codigouser;
      dm.Alunos.Post;
      DBEdit2.Enabled := False;
    End;
    if (Button in [nbCancel]) Then
       DBEdit2.Enabled := False;
end;


procedure TCad_Alunos.FotoClick(Sender: TObject);
begin
  if not DM.AlunosCODIGO.IsNull then
    if FileExists('G:\Fotos\'+DM.AlunosCODIGO.AsString+'.jpg') then //Mudei aqui
      Cad_AlunosFoto.Foto.Picture.LoadFromFile('G:\Fotos\'+DM.AlunosCODIGO.AsString+'.jpg')
     else
      Cad_AlunosFoto.Foto.Picture.LoadFromFile('G:\Fotos\SemFoto.jpg');
  Cad_AlunosFoto.ShowModal;
end;

//==================================================================== CONSULTA
procedure TCad_Alunos.CodigoChange(Sender: TObject);
begin
  if Codigo.Text <> '' then begin
    Nome.Clear;
    DM.Alunos.SelectSQL.Strings[2] := 'where Codigo = :codigo';
    DM.Alunos.ParamByName('codigo').AsInteger := StrToInt(Codigo.Text);
    DM.Alunos.Close;  DM.Alunos.Open;
    Filtro.StateOn := true;
  end;
end;

procedure TCad_Alunos.Codigo2Change(Sender: TObject);
begin
  if Codigo2.Text <> '' then begin
    DM.Alunos.SelectSQL.Strings[2] := 'where Codigo = :codigo';
    DM.Alunos.ParamByName('codigo').AsInteger := StrToInt(Codigo2.Text);
    DM.Alunos.Close;  DM.Alunos.Open;
    Filtro.StateOn := true;
    AtualizaFoto;
  end;
end;

procedure TCad_Alunos.NomeChange(Sender: TObject);
begin
  if Nome.Text <> '' then begin
    Codigo.Clear;
    DM.Alunos.SelectSQL.Strings[2] := 'where Nome starting with :nome';
    DM.Alunos.ParamByName('nome').AsString := Nome.Text;
    DM.Alunos.Close;  DM.Alunos.Open;
    Filtro.StateOn := true;
  end;
end;

procedure TCad_Alunos.PesquisaClick(Sender: TObject);
begin
  Codigo.Clear;
  DM.Alunos.SelectSQL.Strings[2] := 'where upper(nome) like upper(:nome)';
  DM.Alunos.ParamByName('nome').AsString := '%'+Nome.Text+'%';
  DM.Alunos.Close;  DM.Alunos.Open;
  Filtro.StateOn := true;
end;

procedure TCad_Alunos.FiltroOff(Sender: TObject);
begin
  Codigo.Clear;  Nome.Clear;  Codigo2.Clear;
  DM.Alunos.SelectSQL.Strings[2] := 'where Codigo > 0';
  DM.Alunos.Close;  DM.Alunos.Open;
end;


//=============================================================== CONVERSÃO

procedure TCad_Alunos.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Gerar Bloquetos?', mtConfirmation, mbOKCancel, 0) = mrOK then begin
  DM.Alunos.First;
  while (not DM.Alunos.Eof) do
  if DM.AlunosBLOQUETO_1SEM.Value = 9 then
   begin
    DM.Alunos.Edit;
    DM.AlunosBLOQUETO_1SEM.Value := 1;
    DM.Alunos.Post;
    dm.Alunos.Next;
   end
  else
  Begin
     ShowMessage('Esse boleto ainda não existe ou já foi processado.');
     dm.Alunos.Next;
  end;
  end;
end;

procedure TCad_Alunos.ImportaNumSPClick(Sender: TObject);
begin
end;

//================================================================ FINANCEIRO
procedure TCad_Alunos.Tab4Show(Sender: TObject);
begin
  AtualizaSitFin;
end;

procedure TCad_Alunos.AtualizaSitFin;
begin
  with DM.BloquetosQ do begin
    Close;
    SQL.Clear;
    SQL.Add('select Blq.*, Alu.CODIGO, Alu.NOME, Alu.FONE, Alu.CEP, Alu.ENDERECO,');
    SQL.Add('Alu.SERIE, Alu.TURMA, Alu.BOLSA, Alu.MATERIAL, Alu.BOLSA_AD, Alu.SACADO, Alu.SACADO_CPF, Alu.SACADO_RG');
    SQL.Add('from BLOQUETOS Blq join ALUNOS Alu on Blq.ALUNO = Alu.CODIGO');
    SQL.Add('where (Blq.ALUNO = :Aluno) and (Alu.STATUS <> ''R'')');
    SQL.Add('order by Blq.PARCELA');
    ParamByName('Aluno').Value := DM.AlunosCODIGO.Value;
    Open;
  end;
end;

procedure TCad_Alunos.AtualizaSitFin2;
begin
  with DM.BloquetosQ do begin
    Close;
    SQL.Clear;
    SQL.Add('select Blq.*, Alu.CODIGO, Alu.NOME, Alu.FONE, Alu.CEP, Alu.ENDERECO,');
    SQL.Add('Alu.SERIE, Alu.TURMA, Alu.BOLSA, Alu.MATERIAL, Alu.BOLSA_AD, Alu.SACADO, Alu.SACADO_CPF, Alu.SACADO_RG');
    SQL.Add('from BLOQUETOS Blq join ALUNOS Alu on Blq.ALUNO = Alu.CODIGO');
    SQL.Add('where (Blq.ALUNO = :Aluno) and (STATUS <> ''R'')');
    SQL.Add('order by Blq.PARCELA');
    ParamByName('Aluno').Value := DM.AlunosCODIGO.Value;
    Open;
  end;
end;


procedure TCad_Alunos.Label46DblClick(Sender: TObject);
begin
  DM.Alunos.FetchAll;
  Gauge2.MaxValue := DM.Alunos.RecordCount;
  DM.Alunos.First;
  Gauge2.Show;
  while not DM.Alunos.Eof do begin
    DM.Alunos.Edit;
    DM.AlunosSENHA.Value := DM.Senha;
    DM.Alunos.Post;
    DM.Alunos.Next;
    Gauge2.Progress:=Gauge2.Progress+1;
  end;
  Gauge2.Hide;
end;

procedure TCad_Alunos.Tab2Show(Sender: TObject);
begin
  DataDoc.Date := now;
  dm.Autorizacao.Close;
  dm.Autorizacao.ParamByName('codigo').value := dm.AlunosCODIGO.Value;
  dm.Autorizacao.Open;
end;

procedure TCad_Alunos.Turma2Change(Sender: TObject);
begin
  DM.AlunosT.Close;
  DM.AlunosT.ParamByName('serie').Value := DM.TurmasSERIE.Value;
  DM.AlunosT.ParamByName('turma').Value := DM.TurmasTURMA.Value;
  DM.AlunosT.Open;
  DM.AlunosT.FetchAll;
end;

procedure TCad_Alunos.AtualizaClick(Sender: TObject);
begin
  if DM.AlunosT.Modified = true then DM.AlunosT.Post;
  DM.AlunosT.Close;
  DM.AlunosT.Open;
  DM.AlunosT.FetchAll;
end;

procedure TCad_Alunos.Tab5Exit(Sender: TObject);
begin
  if DM.AlunosT.Modified = true then DM.AlunosT.Post;
end;

procedure TCad_Alunos.PuxaDadosClick(Sender: TObject);
begin
  if DM.Alunos.Modified then
    MessageDlg('Alteração de aluno pendente!',mtWarning,[mbOK],0)
   else begin
    DM.AlunosSERIE.Required := false;
    DM.AlunosMOD_ESPORTIVA.Required := false;
    Application.CreateForm(TCad_Alunos_Ant, Cad_Alunos_Ant);
    Try
     Cad_Alunos_Ant.ShowModal;
    Finally
     Cad_Alunos_Ant.Free;
    End;
    DM.AlunosSERIE.Required := true;
    DM.AlunosMOD_ESPORTIVA.Required := true;
  end;
end;

procedure TCad_Alunos.TrocaSenhaClick(Sender: TObject);
begin
   if MessageDlg('Troca senha do aluno?',mtConfirmation,mbOKCancel,0) = mrOK then begin
    DM.Alunos.Edit;
    DM.AlunosSENHA.Value := DM.Senha;
    DM.Alunos.Post;
  end;
end;

procedure TCad_Alunos.Codigo2Exit(Sender: TObject);
begin
  Codigo2.Clear;
end;

//=================================================================== HISTÓRICO
procedure TCad_Alunos.AtualizaHistNotas;
begin
  DataHist.Date := now;
  DM.HistNotas.Close;
  DM.HistNotas.ParamByName('codigo').Value := DM.AlunosCODIGO.Value;
  DM.HistNotas.Open;
  DM.HistNotas.FetchAll;
  if DM.HistNotasCODIGO.IsNull then begin
    DM.Grade.Close;
    DM.Grade.SelectSQL.Strings[2] := 'where SERIE = :serie and TIPO<>''NO''';
    DM.Grade.ParamByName('serie').AsInteger := DM.AlunosSERIE.Value;
    DM.Grade.Open;
    while not DM.Grade.eof do begin
      DM.HistNotas.Insert;
      DM.HistNotasCODIGO.Value := DM.AlunosCODIGO.Value;
      DM.HistNotasDISCIPLINA.Value := DM.GradeDISCIPLINA.Value;
      case DM.AlunosSERIE.Value of
        1 : begin
              DM.HistNotasNOTA1.Value := 0;
              DM.HistNotasCH1.Value := DM.GradeCH_OFICIAL.Value;
            end;
        2 : begin
              DM.HistNotasNOTA2.Value := 0;
              DM.HistNotasCH2.Value := DM.GradeCH_OFICIAL.Value;
            end;
        3 : begin
              DM.HistNotasNOTA3.Value := 0;
              DM.HistNotasCH3.Value := DM.GradeCH_OFICIAL.Value;
            end;
      end;
      DM.HistNotas.Post;
      DM.Grade.Next;
    end;
  end;
  DM.HistNotas.First;
end;

procedure TCad_Alunos.Tab6Show(Sender: TObject);
var dia, mes, ano :word;
begin
DecodeDate(now, ano, mes, dia);
//if ((mes > 2) and (Principal.Ano.Caption = IntToStr(ano))) then
  begin
    DataHist.Date := now;
    AtualizaHistNotas;
    dm.Alunos.Open;
    dm.Alunos.Edit;
    dm.Alunos.Post;
    dm.HistNotas.Open;
  end;
  dm.HistNotas.Open;
end;

procedure TCad_Alunos.ImpHistoricoClick(Sender: TObject);
begin
if dm.Alunos.State in [dsEdit, dsInsert] Then dm.Alunos.Post;
case RadioGroup1.ItemIndex of
    0 : begin
          Application.CreateForm(TDoc_HistoricoQR, Doc_HistoricoQR);
          Doc_HistoricoQR.Titulo.Caption := 'Certificado de conclusão';
          Doc_HistoricoQR.Preview;
          Doc_HistoricoQR.Free;
        end;
    1 : begin
          Application.CreateForm(TDoc_HistoricoQR, Doc_HistoricoQR);
          Doc_HistoricoQR.Titulo.Caption := 'Guia de Transferência';
          Doc_HistoricoQR.Preview;
          Doc_HistoricoQR.Free;
        end;
    2 : begin
          Application.CreateForm(TDoc_CertificadoQR, Doc_CertificadoQR);
          Doc_CertificadoQR.Preview;
          Doc_CertificadoQR.Free;
        end;
  end;
end;

procedure TCad_Alunos.RxDBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if DM.HistNotas.State = dsEdit then DM.HistNotas.Post
      else DM.HistNotas.Edit;
  if key = '.' then key := ',';
end;

procedure TCad_Alunos.PesqAluno2Change(Sender: TObject);
begin
  AtualizaSitFin;
end;



procedure TCad_Alunos.EstatisticaClick(Sender: TObject);
begin
  DM.Estatistica.Open;
  Application.CreateForm(TLst_EstatisticaQR, Lst_EstatisticaQR);
  Try
    Lst_EstatisticaQR.Preview;
  Finally
    Lst_EstatisticaQR.Free;
  End;
  DM.Estatistica.Close;
end;

procedure TCad_Alunos.EstatTurClick(Sender: TObject);
begin
  DM.EstatTur.Open;
  Application.CreateForm(TLst_EstatisticaTurQR, Lst_EstatisticaTurQR);
  Try
    Lst_EstatisticaTurQR.Preview;
  Finally
    Lst_EstatisticaTurQR.Free;
  End;
  DM.EstatTur.Close;
end;

procedure TCad_Alunos.Button1Click(Sender: TObject);
var cont, w_aluno  :integer;
begin
      w_aluno :=  DM.AlunosCODIGO.Value;
      cont:=1;
      While (cont <> 21) do
       begin
         DM.qatualizaPuxaNotas.Close;
         DM.qatualizaPuxaNotas.ParamByName('cod').AsInteger    := w_aluno;
         DM.qatualizaPuxaNotas.ParamByName('serie').AsInteger  := 3;
         DM.qatualizaPuxaNotas.ParamByName('disc').AsInteger   := cont;
         DM.qatualizaPuxaNotas.Open;
         If ((DM.qatualizaPuxaNotasRESULTADO.Value = 'Aprovado') or (DM.qatualizaPuxaNotasRESULTADO.Value = 'Aprovada')) Then
          begin
          DM.HistNotas.First;
          while not DM.HistNotas.Eof do
          Begin
           If (DM.qatualizaPuxaNotasDisc.value = DM.HistNotasDISCIPLINA.Value)
           and (DM.HistNotasCODIGO.Value=DM.qatualizaPuxaNotasALU_COD.Value)
           and (DM.AlunosSERIE.Value = 3) Then
           Begin
             DM.HistNotas.Open;
             DM.HistNotas.Edit;
             DM.qatualizaPuxaNotas.Close;
             DM.qatualizaPuxaNotas.Open;
             DM.HistNotasNOTA3.Value:=DM.qatualizaPuxaNotasM_ANUAL.Value;
             DM.HistNotas.Post;
             DM.qatualizaPuxaNotas.Close;
               If  DM.qatualizaPuxaNotasM_ANUAL.Value = 0 then
               Begin
                DM.HistNotas.Open;
                DM.HistNotas.Edit;
                DM.qatualizaPuxaNotas.Close;
                DM.qatualizaPuxaNotas.Open;
                DM.HistNotas.Post;
               end;
             DM.HistNotas.Next;
           end;
           DM.HistNotas.Next;
         end;
       end;
        Inc(cont);
      end;
end;




procedure TCad_Alunos.Tab5Show(Sender: TObject);
begin
  AtualizaFoto;
end;

procedure TCad_Alunos.ImageTClick(Sender: TObject);
begin
  if not DM.AlunosTCODIGO.IsNull then
    if FileExists('Z:\Fotos\'+DM.AlunosTCODIGO.AsString+'.jpg') then
      Cad_AlunosFoto.Foto.Picture.LoadFromFile('Z:\Fotos\'+DM.AlunosTCODIGO.AsString+'.jpg')
     else
      Cad_AlunosFoto.Foto.Picture.LoadFromFile('Z:\Fotos\SemFoto.jpg');
      Cad_AlunosFoto.ShowModal;
end;

procedure TCad_Alunos.RxDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  AtualizaFotoTurma;
end;

procedure TCad_Alunos.RxDBGrid2Enter(Sender: TObject);
begin
  AtualizaFotoTurma;
end;

procedure TCad_Alunos.RxDBGrid2Exit(Sender: TObject);
begin
  AtualizaFotoTurma;
end;

procedure TCad_Alunos.RxDBGrid2CellClick(Column: TColumn);
begin
  AtualizaFotoTurma;
end;

procedure TCad_Alunos.RxDBGrid2DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  AtualizaFotoTurma;
end;

procedure TCad_Alunos.RxDBGrid2ColEnter(Sender: TObject);
begin
  AtualizaFotoTurma;
end;

procedure TCad_Alunos.RxDBGrid2ColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
  AtualizaFotoTurma;
end;

procedure TCad_Alunos.RxDBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  AtualizaFotoTurma;
end;

procedure TCad_Alunos.RxDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
AtualizaFotoTurma;
end;

procedure TCad_Alunos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  //Grid Zebrado
  If not odd(DM.Alunos.RecNo) Then //se for impar
  Begin
    //se a célula não está selecionada
    If not (gdSelected in state) Then
     //define uma cor de fundo
     DBGrid1.Canvas.Brush.Color := $00FFEFDF;
     DBGrid1.Canvas.FillRect(Rect); //Pinta a célula
     //Pinta o texto padrão
     DBGrid1.DefaultDrawDataCell(rect,Column.Field,State);
    end;
end;

procedure TCad_Alunos.DBEdit36Exit(Sender: TObject);
begin
//   dm.Alunos.Post;
end;

procedure TCad_Alunos.DBEdit22Exit(Sender: TObject);
begin
     if DBEdit22.Text = '' then
      begin
       ShowMessage ('Por favor inserir o bimestre da matricula !!');
       DBEdit22.SetFocus;
      end;
end;

procedure TCad_Alunos.DBESerieExit(Sender: TObject);
begin
   if DBESerie.Text = '' then
    begin
      ShowMessage ('Por favor inserir a série do aluno !!');
      DBESerie.SetFocus;
    end;

end;

procedure TCad_Alunos.DBETurmaExit(Sender: TObject);
begin
     if DBETurma.Text = '' then
      begin
       ShowMessage ('Por favor inserir a turma do aluno !!');
       DBETurma.SetFocus;
      end;
end;

procedure TCad_Alunos.BcoresClick(Sender: TObject);
begin
  Try
   Application.CreateForm(TFCores, FCores);
   FCores.ShowModal;
  Finally
   FCores.Free;
  End;
end;

procedure TCad_Alunos.RxLabel1Click(Sender: TObject);
begin
   Application.CreateForm(Tfend_cob, fend_cob);
  Try
   fend_cob.ShowModal;
  Finally
   fend_cob.Free;
  End;

end;

procedure TCad_Alunos.BitBtn2Click(Sender: TObject);
var Imp : TextFile;
    Linha,T, diap, mesp, dia_ide_pro, mes_ide_pro, dia_al, mes_al, dia_em_al, mes_em_al, dia_in_al, mes_in_al  : String;
    S     :Integer;
    ano, mes, dia, iano, imes, idia, aano, ames, adia, anoemal, mesemal, diaemal,anoinal, mesinal, diainal   :Word;
    contpd, contpm, c_iden_dia_pro, c_iden_mes_pro, c_mes_al, c_dia_al, c_dia_em_al, c_mes_in_al, c_dia_in_al, c_mes_em_al   :integer;
begin
  if MessageDlg('Gera arquivo Alunos.mec?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    save1.Execute;
    AssignFile(Imp,Save1.FileName + '.mec');
    dm.Alunos.Open;
    Rewrite(Imp);
    Linha := '00|50016628|2010|CADMEC|1|ESCOLA ANGLO UNIGRAN|5003702|   |26012006|1130|                    |';
    WriteLn(Imp,Linha);
    dm.Professores.Open;
    dm.Professores.First;
    while not dm.Professores.Eof do
    begin
    //*******************************Coloca o zero na frente do dia e do mês na frente da data*******
      DecodeDate(dm.ProfessoresDATA_NASC.Value, ano, mes, dia);
      contpd := Length(IntToStr(dia));
      if contpd = 1 then
          diap := '0'+IntToStr(dia) else
          diap := IntToStr(dia);
      contpm := Length(IntToStr(mes));
      if contpm = 1 then
          mesp := '0'+IntToStr(mes) Else
          mesp := IntToSTr(mes);
      DecodeDate(dm.ProfessoresDATAEMISSAOIDENT.Value, iano, imes, idia);
      c_iden_dia_pro := Length(IntToStr(idia));
      if c_iden_dia_pro = 1 then
         dia_ide_pro := '0'+IntToStr(idia) else
         dia_ide_pro := IntToStr(idia);
      c_iden_mes_pro := Length(IntToStr(imes));
      if c_iden_mes_pro = 1 then
          mes_ide_pro := '0'+IntToStr(imes) else
          mes_ide_pro := IntToStr(imes);

     //*****************************************************************************************************
      Linha := DM.TextoDOS('10|50016628|2010||') + (dm.ProfessoresNOME.Text) + '|'+diap+mesp+IntToStr(ano)+'|'+
               (dm.ProfessoresSEXO.Text)+'|'+dm.ProfessoresMAE.Text+'|'+dm.ProfessoresTIPO_LOGADOURO.AsString+
               '|'+dm.ProfessoresENDERECO.Text+'|'+dm.ProfessoresNIMERO.Text+'|'+dm.ProfessoresCOMPLEMENTO.Text+'|'+
               dm.ProfessoresBAIRRO.Text+'|'+dm.ProfessoresUF.AsString+'|'+dm.ProfessoresMUNICIPIO.AsString+'|'+
               Copy(dm.ProfessoresCEP.AsString,1,5)+ Copy(dm.ProfessoresCEP.AsString,6,3)+'|010||'+dm.ProfessoresUF_NAS.AsString+'|'+dm.ProfessoresMUN_NAS.AsString+'|2||||||||1|'+
               dm.ProfessoresNUMEROIDENTIDADE.AsString+'|'+dm.ProfessoresCOMPLEMENTOIDENTI.AsString+'|'+dia_ide_pro+mes_ide_pro+IntToStr(iano)+'|'
               +dm.ProfessoresUFIDENTIDADE.AsString+'|81|2|||||2||2||||'+dm.ProfessoresDATAADMISSAO.AsString+'|'+
               (dm.ProfessoresFUNCAO.Text)+'|'+(dm.ProfessoresFUNCAO_AUX.Text)+'|'+ dm.ProfessoresESCOLARIDADE.AsString +'|||'+(dm.ProfessoresENSINO_FUND_5A8.Text) +
               '|' + (dm.ProfessoresENSINO_FUND_1A4.Text)+'|'+(dm.ProfessoresENSINO_FUND_1A5.Text)+'|'+(dm.ProfessoresENSINO_FUND_6A9.Text)+'|'+(dm.ProfessoresENSINO_MEDIO_INT.Text)+'||'+
               (dm.ProfessoresEDUC_JOVENS_1A4.Text)+'|'+(dm.ProfessoresEDUC_JOVENS_5A8.Text)+'|'+(dm.ProfessoresEDUC_JOVENS_ADULTOS_MEDIO.Text)+'|'+
               (dm.ProfessoresEDU_JOVENS_ADULTOS_TECN.Text)+'|'+(dm.ProfessoresNEES.Text)+'|                    |';
        WriteLn(Imp,Linha);
        dm.Professores.Next;
      end;
    dm.Turmas.First;
    While not dm.Turmas.Eof do
     Begin
        T := dm.TurmasTURMA.Text;
        S := dm.TurmasSERIE.Value;
        Linha := '20|50016628|2010|1||4|2|2|2||' + IntToStr(S) + '|'+ T +'|07|15|12|20||||';
        WriteLn(Imp,LInha);
        dm.Alunos.First;
    while not dm.Alunos.Eof do
    begin
     If (dm.AlunosSerie.Value = S) and (DM.AlunosTURMA.Text = T) Then
     Begin
    //*******************************Coloca o zero na frente do dia e do mês na frente da data*******
      DecodeDate(dm.AlunosNASC_DATA.Value, aano, ames, adia);
      c_dia_al := Length(IntToStr(adia));
      if c_dia_al = 1 then
         dia_al := '0'+IntToStr(adia) else
         dia_al := IntToStr(adia);
      c_mes_al := Length(IntToStr(ames));
      if c_mes_al = 1 then
         mes_al := '0'+IntToStr(ames) else
         mes_al := IntToStr(ames);

     DecodeDate(dm.AlunosDATA_EMI_CERT.Value, anoemal, mesemal, diaemal);
     c_dia_em_al := Length(IntToStr(diaemal));
     if c_dia_em_al = 1 then
        dia_em_al := '0'+IntToStr(diaemal) else
        dia_em_al := IntToStr(diaemal);
     if c_mes_em_al = 1 then
        mes_em_al := '0'+IntToStr(mesemal) else
        mes_em_al := IntToStr(mesemal);

     DecodeDate(dm.AlunosDATA_IGRESSO.Value, anoinal, mesinal, diainal);
     c_dia_in_al := Length(IntToStr(diainal));
     c_mes_in_al := Length(IntToStr(mesinal));
     if c_dia_in_al = 1 then
        dia_in_al := '0'+IntToStr(diainal) else
        dia_in_al := IntToStr(diainal);
     if c_mes_in_al = 1 then
        mes_in_al := '0'+IntToStr(mesinal) else
        mes_in_al := IntToStr(mesinal);
    //***********************************************************************************************
      Linha := DM.TextoDOS('21|50016628|2010|')+(dm.AlunosNOME.Text)+'||'+dia_al+mes_al+IntToStr(aano)+
               '|'+(dm.AlunosSEXO_E.AsString)+'|'+(dm.AlunosMAE_NOME.Text)+'|'+ (dm.AlunosPAI_NOME.Text)+'|081|'+
               (dm.AlunosENDERECO.Text)+'|||'+(dm.AlunosBAIRRO.Text)+'|50|5003702|79800000|010||50|5003702|1|1|'+ dm.AlunosNUMERO_TERMO.AsString+
               '|'+ dm.AlunosFOLHA.AsString+'|'+dm.AlunosLIVRO.AsString+'|'+dia_em_al+mes_em_al+IntToStr(anoemal)+'|'+dm.AlunosUFCARTORIO.AsString+
               '|'+dm.AlunosNOME_CART_EXP.AsString+'|2||||||2||'+dia_in_al+mes_in_al+IntToStr(anoinal)+'|1||2|||||2|2|||2|||1|||1|3||';
        WriteLn(Imp,Linha);
      end;
        dm.Alunos.Next;
     end;
     dm.Turmas.Next;
    End;
   end;
    Linha := '99|50016628|2010|CADMEC|29|11|493|                    |';
    WriteLn(Imp,Linha);
    CloseFile(Imp);
  end;


procedure TCad_Alunos.BitBtn5Click(Sender: TObject);
begin
   dm.Alunos.First;
   While not dm.Alunos.Eof do
    Begin
      dm.Alunos.Edit;
      dm.AlunosPASENHA.Value := dm.SenhaPais;
      dm.Alunos.Post;
      dm.Alunos.Next;
    End;

end;

procedure TCad_Alunos.Button2Click(Sender: TObject);
begin
  dm.Alunos.Close;
  dm.Alunos.selectSql[3] := 'order by mae_nome';
  dm.Alunos.Open;
  Try
   Application.CreateForm(Tfrelacaosenhapais, frelacaosenhapais);
   frelacaosenhapais.rlsenhapais.Preview;
  Finally
   frelacaosenhapais.rlsenhapais.Destroy;
   dm.Alunos.Close;
   dm.Alunos.selectSql[3] := 'order by codigo';
   dm.Alunos.Open;
  End;

end;

procedure TCad_Alunos.SpeedButton1Click(Sender: TObject);
begin
//fpaises.ShowModal;
end;

procedure TCad_Alunos.SpeedButton2Click(Sender: TObject);
begin
   if MessageDlg('Troca senha do pai do aluno?',mtConfirmation,mbOKCancel,0) = mrOK then
   begin
      DM.Alunos.Edit;
      DM.AlunosPASENHA.Value := DM.SenhaPais;
      DM.Alunos.Post;
   end;
end;

procedure TCad_Alunos.btntermoClick(Sender: TObject);
begin
  try
    Application.CreateForm(Tfprematricula, fprematricula);
    fprematricula.RLReport1.Preview;
  finally
    fprematricula.RLReport1.Destroy;
  end;
end;

procedure TCad_Alunos.btnExportClick(Sender: TObject);
 var ArqTexto : TextFile;
     Linha    : string;
 begin
    Save1.Execute;
    AssignFile (ArqTexto, Save1.FileName +'.txt');
    dm.Alunos.Open;
    dm.Alunos.First;
    Rewrite(ArqTexto);
    while not (dm.Alunos.Eof) do
    begin
      Linha := ('4+1+I[['+dm.AlunosCODIGO.AsString+'[[[[1[1[[[[[[[[[[');
      WriteLn(ArqTexto,Linha);
      dm.Alunos.Next;
    end;
    CloseFile(ArqTexto);
 end;


procedure TCad_Alunos.FormActivate(Sender: TObject);
begin
  ClienteCad := TClienteCadSock.Create;
  ClienteCad.ClientType := ctNonBlocking;
  ClienteCad.OnConnect := ClienteCad.doOnConnect;
  ClienteCad.OnRead := ClienteCad.doOnRead;
  ClienteCad.OnError := ClienteCadError;
end;

procedure TCad_Alunos.btnconectaClick(Sender: TObject);
begin
//Busca o número do ip
{dm.ibSerieIps.Close;
dm.ibSerieIps.SelectSQL.Clear;
dm.ibSerieIps.SelectSQL.Add('Select *');
DM.ibSerieIps.SelectSQL.Add('From Serie_IPs');
dm.ibSerieIps.SelectSQL.Add('Where Turma = :bturma and Serie = :bserie');
dm.ibSerieIps.Params[0].Value := dm.AlunosTURMA.Value;
dm.ibSerieIps.Params[1].Value := dm.AlunosSERIE.Value;
dm.ibSerieIps.Open;}
//*********************************************************************
SockCad.Host :=  edt1.Text;//'192.168.0.215'; //dm.ibSerieIpsIP.Value;
SockCad.Port := 3000;
SockCad.Active := True;
btnconecta.Caption := 'Conectado';
btnconecta.Enabled := False;
btnDesconecta.Enabled := True;
btnCadastra.Enabled := True;
btnDigital.Enabled := True;
end;

procedure TCad_Alunos.btnDesconectaClick(Sender: TObject);
begin
   SockCad.Socket.Disconnect(ClienteCad.Socket.SocketHandle);
   SockCad.Socket.Close;
   SockCad.Active := False;
   btnconecta.Enabled := True;
   btnDesconecta.Enabled := False;
   btnCadastra.Enabled := False;
   btnDigital.Enabled := False;
end;

procedure TCad_Alunos.btnCadastraClick(Sender: TObject);
var Aluno : string;
begin
   Aluno := IntToStr(dm.AlunosCODIGO.Value);
   SockCad.Active := True;
   comando := ('04+ECAR+4+1+I[['+Aluno+'[[[[1[1[[[[[[[[[[');   //Cadastra o aluno.
//      comando := ('04+ECAR+4+1+I[['+Aluno+'[[[[6[1[[[[[[[[[['); para mestre
   proEnviarPacote;
   if MessageDlg('Deseja cadastrar a digital do código: '+Aluno +'?', mtConfirmation, [mbYes,mbCancel],0)=mrYes then
   begin
     Aluno := IntToStr(dm.AlunosCODIGO.Value);
     comando := ('00+CB+00+'+Aluno); //Cadastra a digital
     proEnviarPacote;
   end;
   if MessageDlg('Após o procedimento de cadastro clique em OK para confirmar: '+Aluno +'?', mtConfirmation, [mbYes],0)=mrYes then
   begin
    comando:= '01+RD+00+D]'+Aluno;  //Para receber a digital que foi cadastrada.
    proEnviarPacote;
   end;
end;

procedure TCad_Alunos.btnDigitalClick(Sender: TObject);
var Aluno : string;
begin
   Aluno := IntToStr(dm.AlunosCODIGO.Value);
   comando := ('00+CB+00+'+Aluno); //Cadastra a digital
   proEnviarPacote;
   Delay(200);
   if MessageDlg('Após o procedimento de cadastro clique em OK para confirmar: '+Aluno +'?', mtConfirmation, [mbYes],0)=mrYes then
   begin
     comando:= '01+RD+00+D]'+Aluno;  //Para receber a digital que foi cadastrada.
     proEnviarPacote;
     Delay(200);
   end;
end;

procedure TCad_Alunos.SockCadRead(Sender: TObject;
  Socket: TCustomWinSocket);
Var
  _rPacoteBytes : array of byte;
  _rPacoteString, _gPacoteResponse, temp : string;
  i, _rTamanhoPacote: integer;
  _rRele,_rCodREON : String;  // Grupo de String utilizado no Evento Online.
begin
  try
    _rTamanhoPacote := Socket.ReceiveBuf(Pointer(nil)^, -1);
    SetLength(_rPacoteBytes, _rTamanhoPacote);
    Socket.ReceiveBuf(Pointer(_rPacoteBytes)^, Length(_rPacoteBytes));

    // Converte e mostra o pacote recebido em hexadecimal
    for i := 0 to _rTamanhoPacote - 1 do
      _rPacoteString := _rPacoteString + IntToHex(_rPacoteBytes[i], 2) + ' ';
//    frmClienteCadGPRS.mmRecebidos.Lines.Add(_rPacoteString);
      ShowMessage('Hora e data atualizada: '+ (_rPacoteString));
//    frmClienteCadGPRS.mmRecebidos.Lines.Add('');
    // Converte e motra o pacote recebido em string
    SetLength(_rPacoteString, 0);
    for i := 3 to _rTamanhoPacote - 3 do
  	  _rPacoteString := _rPacoteString + Chr(_rPacoteBytes[i]);
    _gPacoteResponse := _rPacoteString;

      Sleep(1000);
      if ('01+RD+00+D]' = (Copy(_rPacoteString,1,11))) then    //comando para devolver a digital
      begin
        if Length(_rPacoteString) > 10 then
        begin
           dm.ibDigital.Open;
           dm.ibDigital.Append;
           dm.ibDigitalALUNO.Value := dm.AlunosCODIGO.Value;
           dm.ibDigitalIMPRESSAO.Value := (Copy(_rPacoteString,23,1000));
           dm.ibDigital.Post;
           dm.IBTr_ANGLO.CommitRetaining;
           _rPacoteString :=  '';
           _rTamanhoPacote := 0;
           _rPacoteBytes := nil;
          end;
         begin
          ShowMessage('Cadastro do aluno: '+ DM.ibDigitalALUNO.AsString +' concluida com sucesso.');
         end;
      end;
  Except
    begin
      ShowMessage('Falha ao receber dados do equipamento.');
    end;
 end;
end;

procedure TCad_Alunos.SockCadError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
 ErrorCode := 0;
end;



procedure TCad_Alunos.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(Tfcad_orgaos, fcad_orgaos );
  Try
   fcad_orgaos.ShowModal;
  Finally
   fcad_orgaos.Free;
  End;
end;

procedure TCad_Alunos.Button3Click(Sender: TObject);
begin
  Application.CreateForm(Tfcadastroescola, fcadastroescola);
  Try
   fcadastroescola.ShowModal;
  Finally
   fcadastroescola.Free;
End;

end;

procedure TCad_Alunos.DBLookupComboBox1DropDown(Sender: TObject);
begin
  dm2.iqEscola.FetchAll;
end;


Procedure CopiaBoleto;
Begin
   while not Cad_Alunos.QBuscaBoleto.Eof do
       Begin
         dm.Bloquetos_Delete.Open;
         dm.Bloquetos_Delete.Insert;
         dm.Bloquetos_DeleteNOSSO_NUMERO.Value := Cad_Alunos.QBuscaBoletoNOSSO_NUMERO.Value;
         dm.Bloquetos_DeleteALUNO.Value   := Cad_Alunos.QBuscaBoletoALUNO.Value;
         dm.Bloquetos_DeletePARCELA.Value := Cad_Alunos.QBuscaBoletoPARCELA.Value;
         dm.Bloquetos_DeleteEMISSAO.Value := Cad_Alunos.QBuscaBoletoEMISSAO.Value;
         dm.Bloquetos_DeleteVENCIMENTO.Value := Cad_Alunos.QBuscaBoletoVENCIMENTO.Value;
         dm.Bloquetos_DeleteVALOR.Value  := Cad_Alunos.QBuscaBoletoVALOR.Value;
         dm.Bloquetos_DeletePAGAMENTO.Value := Cad_Alunos.QBuscaBoletoPAGAMENTO.Value;
         dm.Bloquetos_DeleteVALOR_PAGO.Value := Cad_Alunos.QBuscaBoletoVALOR_PAGO.Value;
         dm.Bloquetos_DeleteMENSALIDADE.Value  := Cad_Alunos.QBuscaBoletoMENSALIDADE.Value;
         dm.Bloquetos_DeleteMATERIAL.Value := Cad_Alunos.QBuscaBoletoMATERIAL.Value;
         dm.Bloquetos_DeleteDESCONTO.Value := Cad_Alunos.QBuscaBoletoDESCONTO.Value;
         dm.Bloquetos_DeleteTIPO_PG.Value  := Cad_Alunos.QBuscaBoletoTIPO_PG.Value;
         dm.Bloquetos_DeleteANO_DV.Value  := Cad_Alunos.QBuscaBoletoANO_DV.Value;
         dm.Bloquetos_DeleteDESCONTO_ANT.Value := Cad_Alunos.QBuscaBoletoDESCONTO_ANT.Value;
         dm.Bloquetos_DeleteMENSALIDADE_ANT.Value := Cad_Alunos.QBuscaBoletoMENSALIDADE_ANT.Value;
         dm.Bloquetos_DeleteVALOR_ANT.Value := Cad_Alunos.QBuscaBoletoVALOR_ANT.Value;
         dm.Bloquetos_DeleteBAULA_AD.Value := Cad_Alunos.QBuscaBoletoBAULA_AD.Value;
         dm.Bloquetos_DeleteST.Value := Cad_Alunos.QBuscaBoletoST.Value;
         dm.Bloquetos_DeleteTP.Value := Cad_Alunos.QBuscaBoletoTP.Value;
         dm.Bloquetos_DeleteMOTIVO.Value  := Cad_Alunos.QBuscaBoletoMOTIVO.Value;
         dm.Bloquetos_DeleteDATA_LIMITE.Value := Cad_Alunos.QBuscaBoletoDATA_LIMITE.Value;
         Cad_Alunos.QBuscaBoleto.Next;
       end;
       if dm.Bloquetos_Delete.State in [dsEdit, dsInsert] then
       dm.Bloquetos_Delete.Post;
end;



Procedure GeraBoletoMatricula;
var dia, mes, ano, d_dia :word;
   Begin
       DecodeDate(now, ano, mes, dia);
       dm.Bloquetos.Open;
       dm.Bloquetos.Active := True;
       dm2.iqParametros_B.Open;
       Case dm.AlunosSerie.Value of
       1: begin
              DM.Bloquetos.Insert;
              dm2.sql_gen.Open;
              DM.BloquetosNOSSO_NUMERO.AsInteger := DM2.sql_genCONTADOR.Value;
              dm2.sql_gen.Close;
              DM.BloquetosALUNO.AsInteger := DM.AlunosCODIGO.AsInteger;
              DM.BloquetosPARCELA.AsInteger := 1;
              DM.BloquetosEMISSAO.Value := now;
              DM.BloquetosANO_DV.Value  := Copy(IntToStr(ano),3,2);
              DM.BloquetosMENSALIDADE.Value := dm.ParametrosMENSALIDADE_1.Value;
              DM.BloquetosVALOR.Value       := dm.ParametrosMENSALIDADE_1.Value;
              DM.BloquetosVALOR_ANT.Value   := DM.ParametrosMENSALIDADE_1.Value;
              DM.BloquetosTP.Value := 1;
              DM.BloquetosST.Value := 'G';
              DM.BloquetosVENCIMENTO.Value := now + 10;
              if DayOfWeek(dm.BloquetosVENCIMENTO.Value)= 1 then  DM.BloquetosVENCIMENTO.Value := (DM.BloquetosVENCIMENTO.Value + 1);
              if DayOfWeek(dm.BloquetosVENCIMENTO.Value)= 7 then DM.BloquetosVENCIMENTO.Value := (DM.BloquetosVENCIMENTO.Value + 2);
              DM.BloquetosDATA_LIMITE.Value := now + 3;
              if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 1 then DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 1);
              if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 7 then DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 2);
              DM.Alunos.Edit;
              DM.AlunosBLOQUETO_1SEM.Value := 3;
              DM.Alunos.Post;
          end;
       2: begin
              DM.Bloquetos.Insert;
              dm2.sql_gen.Open;
              DM.BloquetosNOSSO_NUMERO.AsInteger := DM2.sql_genCONTADOR.Value;
              DM2.sql_gen.Close;
              DM.BloquetosALUNO.AsInteger := DM.AlunosCODIGO.AsInteger;
              DM.BloquetosPARCELA.AsInteger := 1;
              DM.BloquetosEMISSAO.Value := now;
              DM.BloquetosANO_DV.Value  := Copy(IntToStr(ano),3,2);
              DM.BloquetosMENSALIDADE.Value := dm.ParametrosMENSALIDADE_2.Value;
              DM.BloquetosVALOR.Value       := dm.ParametrosMENSALIDADE_2.Value;
              DM.BloquetosVALOR_ANT.Value   := DM.ParametrosMENSALIDADE_2.Value;
              DM.BloquetosTP.Value := 1;
              DM.BloquetosST.Value := 'G';
              DM.BloquetosVENCIMENTO.Value := now + 10;
              if DayOfWeek(dm.BloquetosVENCIMENTO.Value)= 1 then  DM.BloquetosVENCIMENTO.Value := (DM.BloquetosVENCIMENTO.Value + 1);
              if DayOfWeek(dm.BloquetosVENCIMENTO.Value)= 7 then DM.BloquetosVENCIMENTO.Value := (DM.BloquetosVENCIMENTO.Value + 2);
              DM.BloquetosDATA_LIMITE.Value := now + 3;
              if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 1 then DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 1);
              if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 7 then DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 2);
              DM.Alunos.Edit;
              DM.AlunosBLOQUETO_1SEM.Value := 3;
              DM.Alunos.Post;
          end;
       3: begin
              DM.Bloquetos.Insert;
              dm2.sql_gen.Open;
              DM.BloquetosNOSSO_NUMERO.AsInteger := DM2.sql_genCONTADOR.Value;
              dm2.sql_gen.Close;
              DM.BloquetosALUNO.AsInteger := DM.AlunosCODIGO.AsInteger;
              DM.BloquetosPARCELA.AsInteger := 1;
              DM.BloquetosEMISSAO.Value := now;
              DM.BloquetosANO_DV.Value  := Copy(IntToStr(ano),3,2);
              DM.BloquetosMENSALIDADE.Value := dm.ParametrosMENSALIDADE_3.Value;
              DM.BloquetosVALOR.Value       := dm.ParametrosMENSALIDADE_3.Value;
              DM.BloquetosVALOR_ANT.Value   := DM.ParametrosMENSALIDADE_3.Value;
              DM.BloquetosTP.Value := 1;
              DM.BloquetosST.Value := 'G';
              DM.BloquetosVENCIMENTO.Value := now + 10;
              if DayOfWeek(dm.BloquetosVENCIMENTO.Value)= 1 then  DM.BloquetosVENCIMENTO.Value := (DM.BloquetosVENCIMENTO.Value + 1);
              if DayOfWeek(dm.BloquetosVENCIMENTO.Value)= 7 then DM.BloquetosVENCIMENTO.Value := (DM.BloquetosVENCIMENTO.Value + 2);
              DM.BloquetosDATA_LIMITE.Value := now + 3;
              if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 1 then DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 1);
              if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 7 then DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 2);
              DM.Alunos.Edit;
              DM.AlunosBLOQUETO_1SEM.Value := 3;
              DM.Alunos.Post;
            end;
         end; //case
       DM.Bloquetos.Post;
       dm.IBTr_ANGLO.CommitRetaining;
       ShowMessage('Operação realizada com sucesso!!');
end;

procedure TCad_Alunos.ReciboClick(Sender: TObject);
begin
 if Application.MessageBox('Deseja realmente gerar o boleto de matrícula','Título',MB_YESNO + MB_ICONQUESTION) = IdYes then
    GeraBoletoMatricula;
end;


procedure TCad_Alunos.RxDBGrid1DblClick(Sender: TObject);
begin
if Application.MessageBox('Deseja mudar o status do boleto para negociado','Título',MB_YESNO + MB_ICONQUESTION) = IdYes then
 begin
   dm.Bloquetos.Close;
   dm.Bloquetos.SelectSQL.Clear;
   dm.Bloquetos.SelectSQL.Add  ('select *');
   dm.Bloquetos.SelectSQL.Add  ('from bloquetos');
   dm.Bloquetos.SelectSQL.Add  ('where nosso_numero = :bnossonumero');
   dm.Bloquetos.Params[0].Value := DM.BloquetosQNOSSO_NUMERO.Value;
   dm.Bloquetos.Open;
   dm.Bloquetos.Edit;
   dm.BloquetosST.Value := 'N';
   dm.Bloquetos.Post;
   dm.BloquetosQ.close;
   dm.BloquetosQ.Open;
   dm.Bloquetos.Close;
   dm.Bloquetos.SelectSQL.Clear;
   dm.Bloquetos.SelectSQL.Add  ('select *');
   dm.Bloquetos.SelectSQL.Add  ('from BLOQUETOS');
   dm.Bloquetos.SelectSQL.Add  ('where NOSSO_NUMERO > 0');
   dm.Bloquetos.SelectSQL.Add  ('order by NOSSO_NUMERO');
   dm.Bloquetos.Open;
 end else
   Begin
   dm.Bloquetos.Close;
   dm.Bloquetos.SelectSQL.Clear;
   dm.Bloquetos.SelectSQL.Add  ('select *');
   dm.Bloquetos.SelectSQL.Add  ('from bloquetos');
   dm.Bloquetos.SelectSQL.Add  ('where nosso_numero = :bnossonumero');
   dm.Bloquetos.Params[0].Value := DM.BloquetosQNOSSO_NUMERO.Value;
   dm.Bloquetos.Open;
   dm.Bloquetos.Edit;
   dm.BloquetosST.Value := 'E';
   dm.Bloquetos.Post;
   dm.BloquetosQ.close;
   dm.BloquetosQ.Open;
   dm.Bloquetos.Close;
   dm.Bloquetos.SelectSQL.Clear;
   dm.Bloquetos.SelectSQL.Add  ('select *');
   dm.Bloquetos.SelectSQL.Add  ('from BLOQUETOS');
   dm.Bloquetos.SelectSQL.Add  ('where NOSSO_NUMERO > 0');
   dm.Bloquetos.SelectSQL.Add  ('order by NOSSO_NUMERO');
   dm.Bloquetos.Open;
  end;
end;

procedure TCad_Alunos.Button4Click(Sender: TObject);
begin
   dm.Negociacao.Open;
   dm.Negociacao.Insert;
   dm.NegociacaoALUNO.Value := dm.AlunosCODIGO.Value;
   DBEdit13.Enabled := True;
   DBEdit31.Enabled := True;
   DBDateEdit4.Enabled := True;
   DBEdit36.Enabled := True;
   Button4.Enabled := False;
   Button6.Enabled := True;
   Button7.Enabled := True;
end;

procedure TCad_Alunos.Button6Click(Sender: TObject);
begin
   dm.Negociacao.Post;
   dm.IBTr_ANGLO.CommitRetaining;
   DBEdit13.Enabled := False;
   DBEdit31.Enabled := False;
   DBDateEdit4.Enabled := False;
   DBEdit36.Enabled := False;
   Button6.Enabled := False;
   Button5.Enabled := True;
   Button7.Enabled := True;
end;

procedure TCad_Alunos.Button5Click(Sender: TObject);
var i :integer;
    w_ano, w_mes, w_dia :word;
begin
  dm.Bloquetos.Open;
  dm.Bloquetos.Last;
  DecodeDate(now, w_ano, w_mes, w_dia);
  dm2.iqParametros_B.Active := True;
  dm2.iqParametros_B.Open;
     UltimaParcela.Close;
     UltimaParcela.Params[0].Value := dm.AlunosCODIGO.Value;
     UltimaParcela.Open;

  for i:=1 to dm.NegociacaoQUANT.AsInteger do
  begin
       dm2.sql_gen.Active := True;
       dm2.sql_gen.Open;
       DM.Bloquetos.Insert;
       DM.BloquetosNOSSO_NUMERO.AsInteger := dm2.sql_genCONTADOR.Value;
       dm2.sql_gen.Close;
        DM.BloquetosALUNO.AsInteger := DM.AlunosCODIGO.AsInteger;
        DM.BloquetosPARCELA.AsInteger := UltimaParcelaTOTAL.AsInteger + i;
        DM.BloquetosEMISSAO.Value := now;
        DM.BloquetosANO_DV.Value  :=  Copy(IntTostr(w_ano),3,2);
        DM.BloquetosMENSALIDADE.Value := DM.NegociacaoVALOR.Value;
        DM.BloquetosVALOR.Value       := DM.NegociacaoVALOR.Value;
        DM.BloquetosVALOR_ANT.Value := DM.NegociacaoVALOR.Value;

        if (i=1) then
        Begin
          DM.BloquetosDATA_LIMITE.Value  := (DM.NegociacaoDATA.Value);
          DM.BloquetosVENCIMENTO.Value := (DM.NegociacaoDATA.Value + 7);
        end;

        if (i=2) then
        Begin
           DM.BloquetosDATA_LIMITE.Value  := (DM.NegociacaoDATA.Value) + dm.NegociacaoDIAS.Value;
           DM.BloquetosVENCIMENTO.Value := ((DM.NegociacaoDATA.Value + dm.NegociacaoDIAS.Value) + 7);
        end;

        if (i>2) then
        Begin
           DM.BloquetosDATA_LIMITE.Value  := (DM.NegociacaoDATA.Value + (dm.NegociacaoDIAS.Value * (i-1)));
           DM.BloquetosVENCIMENTO.Value := (DM.NegociacaoDATA.Value + (dm.NegociacaoDIAS.Value * (i-1)) + 7);
        End;
        DM.BloquetosST.Value := 'G';
        DM.BloquetosTP.Value := 08; //negociado
//        DM.BloquetosVENCIMENTO.Value := ((DM.NegociacaoDATA.Value + (dm.NegociacaoDIAS.Value*i)) + 7);  //Vencimento tem que ser no minimo 7 dias a mais que a data limite
        DM.BloquetosNEGOCIACAO.Value := dm.NegociacaoCOD_NEGOCIACAO.Value;
        DM.Bloquetos.Post;
        dm2.TSUsuario.CommitRetaining;
   end;
   UP_Negociacao.Close;
   UP_Negociacao.ParamByName('baluno').Value := dm.AlunosCODIGO.Value;
   UP_Negociacao.ParamByName('codigo').Value := dm.NegociacaoCOD_NEGOCIACAO.Value;
   UP_Negociacao.Open;
   Button5.Enabled := False;
   Button4.Enabled := True;
   Button7.Enabled := False;
   ShowMessage('Negociação gerada com sucesso!!!');
end;

procedure TCad_Alunos.btngerarClick(Sender: TObject);
var w_sql1, w_sql2, w_sql3, w_aluno :string;
begin
{w_aluno := dm.AlunosCODIGO.AsString;
w_sql1 := 'update bloquetos ';
w_sql2 := 'set st = ''S'' ';
w_sql3 :=  'where aluno = '+ w_aluno + ' and pagamento is null';}

  if MessageDlg('Deseja Gerar Bloquetos do Aluno ?' + #13 + dm.AlunosNome.asstring, mtConfirmation, mbOKCancel, 0) = mrOK then begin
    begin
      DM.Alunos.Edit;
      DM.AlunosBLOQUETO_1SEM.Value := 1;
      DM.Alunos.Post;
    end;
  end;
end;

procedure TCad_Alunos.BitBtn3Click(Sender: TObject);
begin
    Application.CreateForm(Tfparametrosbloqueto, fparametrosbloqueto);
    Try
     fparametrosbloqueto.ShowModal;
    Finally
     fparametrosbloqueto.Free;
    End;
end;




procedure TCad_Alunos.Button7Click(Sender: TObject);
begin
   dm.Negociacao.CancelUpdates;
   DBEdit13.Enabled := False;
   DBEdit31.Enabled := False;
   DBDateEdit4.Enabled := False;
   DBEdit36.Enabled := False;
   Button4.Enabled := True;
   Button6.Enabled := False;
   Button7.Enabled := False;

end;

procedure TCad_Alunos.BitBtn6Click(Sender: TObject);
begin
  if MessageDlg('Deseja reprocessar Bloquetos do Aluno ?' + #13 + dm.AlunosNome.asstring, mtConfirmation, mbOKCancel, 0) = mrOK then begin
    if (DM.AlunosBLOQUETO_1SEM.Value = 10) then
    begin
    DM.Alunos.Edit;
    DM.AlunosBLOQUETO_1SEM.Value := 2;
    DM.Alunos.Post;
    end;
    if dm.AlunosBLOQUETO_1SEM.Value = 0 then
    ShowMessage('Esse boleto ainda não existe ele não pode ser reprocessado!!!');
    end;
end;

procedure TCad_Alunos.BitBtn7Click(Sender: TObject);
begin
  Try
      Application.CreateForm(TDoc_TermoCompromisso, Doc_TermoCompromisso);
      Doc_TermoCompromisso.rlCompromisso.Preview;
    Finally
      Doc_TermoCompromisso.rlCompromisso.Free;
    End;
end;

procedure TCad_Alunos.Button8Click(Sender: TObject);
begin
  Try
      Application.CreateForm(Tfautorizacao, fautorizacao);
      fautorizacao.ShowModal;
    Finally
      fautorizacao.Free;
    End;
end;

procedure TCad_Alunos.BitBtn8Click(Sender: TObject);
begin
  Try
      Application.CreateForm(TfSelcDoc, fSelcDoc);
      fSelcDoc.ShowModal;
    Finally
      fSelcDoc.Free;
    End;
end;

procedure TCad_Alunos.BitBtn9Click(Sender: TObject);
begin
if dm.Alunos.State in [dsEdit, dsInsert] Then dm.Alunos.Post;
case RadioGroup1.ItemIndex of
    0 : Begin
       Try
          Application.CreateForm(TDoc_historico_new, Doc_historico_new);
          Doc_historico_new.QTemp.Close;
          Doc_historico_new.QTemp.Params[0].Value:= dm.AlunosCODIGO.Value;
          Doc_historico_new.QTemp.Open;
          Doc_historico_new.RLLabel1.Caption := 'Histórico Escolar';
          Doc_historico_new.RLHistorico_New.Preview;
        Finally
          fSelcDoc.Free;
        End;
       End;
    1 : begin
       Try
          Application.CreateForm(TDoc_historico_new, Doc_historico_new);
          Doc_historico_new.QTemp.Close;
          Doc_historico_new.QTemp.Params[0].Value:= dm.AlunosCODIGO.Value;
          Doc_historico_new.QTemp.Open;
          Doc_historico_new.RLLabel1.Caption := 'Guia de Transferência';          
          Doc_historico_new.RLHistorico_New.Preview;
        Finally
          fSelcDoc.Free;
        End;
       End;
End;

end;

end.



