unit UMov_Ocorrencias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Placemnt, ComCtrls, RxLookup, Grids, DBGrids, RXDBCtrl,
  DBCtrls, Menus, ExtCtrls, Mask, ToolEdit, Db, IBCustomDataSet, IBQuery,
  ActnList;

type
  TMov_Ocorrencias = class(TForm)
    Fecha: TBitBtn;
    FS: TFormStorage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    DBTexto: TDBMemo;
    OK: TBitBtn;
    Label4: TLabel;
    DBText2: TDBText;
    RxDBGrid2: TRxDBGrid;
    DBText3: TDBText;
    Pop1: TPopupMenu;
    IncluiOcorrncia1: TMenuItem;
    Grava1: TMenuItem;
    Cancela: TBitBtn;
    DBText4: TDBText;
    Label5: TLabel;
    Cancela1: TMenuItem;
    Panel1: TPanel;
    PesqAluno: TRxDBLookupCombo;
    CodAlu: TEdit;
    Label1: TLabel;
    Inclui: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    Panel2: TPanel;
    Label6: TLabel;
    PesqAluno2: TRxDBLookupCombo;
    CodAlu2: TEdit;
    Imprime: TBitBtn;
    Pesquisa: TBitBtn;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label7: TLabel;
    Label8: TLabel;
    dsOcorr: TDataSource;
    Ocorr: TIBQuery;
    OcorrALUNO: TIntegerField;
    OcorrHORA: TDateTimeField;
    OcorrTEXTO: TIBStringField;
    OcorrNOME: TIBStringField;
    OcorrSERIE: TSmallintField;
    OcorrTURMA: TIBStringField;
    OcorrSerieX: TStringField;
    Label9: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    Label10: TLabel;
    DBText7: TDBText;
    OcorrHoraX: TStringField;
    Label11: TLabel;
    DBText8: TDBText;
    OcorrDSem: TStringField;
    Label12: TLabel;
    Faltou1: TMenuItem;
    ChegouAtrasado1: TMenuItem;
    MatouAula1: TMenuItem;
    Nofeztarefa1: TMenuItem;
    LevouAdvertncia1: TMenuItem;
    DBMemo1: TDBMemo;
    Label13: TLabel;
    TabSheet3: TTabSheet;
    Tolerancia: TIBQuery;
    dsTolerancia: TDataSource;
    Panel3: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    RxLookNome: TRxDBLookupCombo;
    EdCodigo: TEdit;
    TImp: TBitBtn;
    TPesq: TBitBtn;
    DInicial: TDateEdit;
    DFinal: TDateEdit;
    GTolerancia: TDBGrid;
    ToleranciaALUNO: TIntegerField;
    ToleranciaHORA: TDateTimeField;
    ToleranciaTEXTO: TIBStringField;
    ToleranciaNOME: TIBStringField;
    ToleranciaSERIE: TSmallintField;
    ToleranciaTURMA: TIBStringField;
    ToleranciaCODIGO: TIntegerField;
    ToleranciaCONT_TOL: TIntegerField;
    ToleranciaSerieX: TIBStringField;
    ToleranciaSemanaX: TIBStringField;
    ToleranciaHoraX: TIBStringField;
    OcorrTIPO: TIBStringField;
    OcorrFONE: TIBStringField;
    OcorrMAE_NOME: TIBStringField;
    OcorrPAI_NOME: TIBStringField;
    ToleranciaTIPO: TIBStringField;
    ToleranciaFONE: TIBStringField;
    ToleranciaMAE_NOME: TIBStringField;
    ToleranciaPAI_NOME: TIBStringField;
    ActionList1: TActionList;
    Apesquisa: TAction;
    APesquisa2: TAction;
    QTotalOcorrencias: TIBQuery;
    QTotalOcorrenciasTOTAL: TIntegerField;
    DsTotalOcorrencias: TDataSource;
    DBText9: TDBText;
    Label17: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CodAluKeyPress(Sender: TObject; var Key: Char);
    procedure IncluiClick(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure CancelaClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure CodAlu2KeyPress(Sender: TObject; var Key: Char);
    procedure ImprimeClick(Sender: TObject);
    procedure OcorrCalcFields(DataSet: TDataSet);
    procedure Faltou1Click(Sender: TObject);
    procedure TImpClick(Sender: TObject);
    procedure GToleranciaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RxDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RxLookNomeChange(Sender: TObject);
    procedure EdCodigoClick(Sender: TObject);
    procedure ToleranciaCalcFields(DataSet: TDataSet);
    procedure ApesquisaExecute(Sender: TObject);
    procedure APesquisa2Execute(Sender: TObject);
    procedure PesqAlunoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Mov_Ocorrencias: TMov_Ocorrencias;

const
  DiaSemana : Array[1..7] of String = ('Domingo', '2ª Feira', '3ª Feira',
          '4ª Feira', '5ª Feira', '6ª Feira', 'Sábado');

implementation

uses UDM, UMenu, UMov_OcorrenciasQR, UMov_ToleranciaQR;

{$R *.DFM}

procedure TMov_Ocorrencias.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DM.Alunos.SelectSQL.Strings[3] := 'order by nome';
  DM.Alunos.Open;
  DM.Ocorrencias.Open;
  CodAlu.SetFocus;
end;

procedure TMov_Ocorrencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fecha.SetFocus;
  if DM.Ocorrencias.Modified then DM.Ocorrencias.Post;
  DM.Ocorrencias.Close;
  DM.Alunos.Close;
  DM.Alunos.SelectSQL.Strings[3] := 'order by codigo';
  DM.IBTr_ANGLO.CommitRetaining;
end;

procedure TMov_Ocorrencias.CodAluKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    try
      PesqAluno.ClearValue;
      PesqAluno.KeyValue := StrToInt(CodAlu.Text);
      Perform(WM_NextDlgCtl,0,0);   Key := #0;
    except
      abort;
    end;
  end;
end;

procedure TMov_Ocorrencias.IncluiClick(Sender: TObject);
begin
  try
    DM.Ocorrencias.Insert;
    DM.OcorrenciasALUNO.Value := PesqAluno.KeyValue;
    DM.OcorrenciasTIPO.Value := 'F';
    DM.OcorrenciasHORA.Value := now;
    DBTexto.SetFocus;
  except
    DM.Ocorrencias.Cancel;
    abort;
  end;
end;

procedure TMov_Ocorrencias.OKClick(Sender: TObject);
begin
  OK.SetFocus;
  if DM.Ocorrencias.Modified then DM.Ocorrencias.Post;
  DM.Ocorrencias.Close;
  DM.Ocorrencias.Open;
  CodAlu.Clear;
  PesqAluno.ClearValue;
  CodAlu.SetFocus;
end;

procedure TMov_Ocorrencias.CancelaClick(Sender: TObject);
begin
  DM.Ocorrencias.Cancel;
  DM.Ocorrencias.Close;
  DM.Ocorrencias.Open;
  CodAlu.Clear;
  PesqAluno.ClearValue;
  CodAlu.SetFocus;
end;

//===========================================================--- Consulta Alunos
procedure TMov_Ocorrencias.PageControl1Change(Sender: TObject);
var anoP : word;
begin
  if PageControl1.ActivePageIndex = 0 then begin
    CodAlu.Clear;
    PesqAluno.ClearValue;
    CodAlu.SetFocus;
    PopupMenu := Pop1;
  end;
  if PageControl1.ActivePageIndex = 1 then begin
    anoP := StrToInt(Principal.Ano.Caption);
    DateEdit1.Date := EncodeDate(anoP,01,01);
    DateEdit2.Date := EncodeDate(anoP,12,31);
    CodAlu2.Clear;
    PesqAluno2.ClearValue;
    CodAlu2.SetFocus;
  end;
    if PageControl1.ActivePageIndex = 2 then begin
    anoP := StrToInt(Principal.Ano.Caption);
    DInicial.Date := EncodeDate(anoP,01,01);
    DFinal.Date := EncodeDate(anoP,12,31);
  end;

end;

procedure TMov_Ocorrencias.OcorrCalcFields(DataSet: TDataSet);
var dSem : Integer;
begin
  OcorrSerieX.Value := OcorrSERIE.AsString+'ª Série '+OcorrTURMA.AsString;
  OcorrHoraX.Value := FormatDateTime('dd/mm hh:mm',OcorrHORA.Value)+'h';
  dSem := DayOfWeek(OcorrHORA.Value);
  OcorrDSem.Value := DiaSemana[dSem];
end;

procedure TMov_Ocorrencias.CodAlu2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    try
      PesqAluno2.ClearValue;
      PesqAluno2.KeyValue := StrToInt(CodAlu2.Text);
      Perform(WM_NextDlgCtl,0,0);   Key := #0;
    except
      abort;
    end;
  end;
end;

procedure TMov_Ocorrencias.ImprimeClick(Sender: TObject);
begin
  Try
    Application.CreateForm(TMov_OcorrenciasQR, Mov_OcorrenciasQR);
    Mov_OcorrenciasQR.LabelAluno.Caption := 'Aluno: '+OcorrALUNO.AsString+
        ' - '+OcorrNOME.Value;
    Mov_OcorrenciasQR.LabelPeriodo.Caption := 'De '+DateToStr(DateEdit1.Date)+
        ' a '+DateToStr(DateEdit2.Date);
    Mov_OcorrenciasQR.LabelSerie.Caption := OcorrSerieX.Value;
    Mov_OcorrenciasQR.Preview;
  Finally
    Mov_OcorrenciasQR.Free;
  End;
end;

procedure TMov_Ocorrencias.Faltou1Click(Sender: TObject);
var i : integer;
    txt : string;
begin
  case (Sender as TMenuItem).Tag of
    1 : txt := 'Faltou ';
    2 : txt := 'Chegou atrasado ';
    3 : txt := 'Matou aula ';
    4 : txt := 'Não fez a tarefa ';
    5 : txt := 'Levou advertência ';
  end;
  if DBTexto.Focused then begin
    if DM.Ocorrencias.State = dsBrowse then DM.Ocorrencias.Edit;
    i := DBTexto.CaretPos.y;
    DBTexto.Lines[i] := DBTexto.Lines[i] + txt;
  end;
end;

procedure TMov_Ocorrencias.TImpClick(Sender: TObject);
begin
  Try
    Application.CreateForm(TMov_ToleranciaQR, Mov_ToleranciaQR);
    Mov_ToleranciaQR.LabelPeriodo.Caption := 'De '+DateToStr(DInicial.Date)+
        ' a '+DateToStr(DFinal.Date);
    Mov_ToleranciaQR.Preview;
  Finally
    Mov_ToleranciaQR.Free;
end;
end;

procedure TMov_Ocorrencias.GToleranciaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  //Grid Zebrado
  If not odd(Tolerancia.RecNo) Then //se for impar
  Begin
    //se a célula não está selecionada
    If not (gdSelected in state) Then
     //define uma cor de fundo
     GTolerancia.Canvas.Brush.Color := $00FFEFDF;
     GTolerancia.Canvas.FillRect(Rect); //Pinta a célula
     //Pinta o texto padrão
     GTolerancia.DefaultDrawDataCell(rect,Column.Field,State);
    end;
end;

procedure TMov_Ocorrencias.RxDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  //Grid Zebrado
  If not odd(DM.Ocorrencias.RecNo) Then //se for impar
  Begin
    //se a célula não está selecionada
    If not (gdSelected in state) Then
     //define uma cor de fundo
     RxDBGrid2.Canvas.Brush.Color := $00FFEFDF;
     RxDBGrid2.Canvas.FillRect(Rect); //Pinta a célula
     //Pinta o texto padrão
     RxDBGrid2.DefaultDrawDataCell(rect,Column.Field,State);
    end;
end;

procedure TMov_Ocorrencias.RxLookNomeChange(Sender: TObject);
begin
   EdCodigo.Clear;
   Tolerancia.SQL.Strings[11]:= 'where cast(HORA as date) between :inicio and :fim and cast(HORA as time) = ''7:00'' and A.NOME = :ALUNO';
end;

procedure TMov_Ocorrencias.EdCodigoClick(Sender: TObject);
begin
   RxLookNome.ClearValue;
   Tolerancia.SQL.Strings[11]:= 'where cast(HORA as date) between :inicio and :fim and cast(HORA as time) = ''7:00'' and A.CODIGO = :ALUNO';
end;

procedure TMov_Ocorrencias.ToleranciaCalcFields(DataSet: TDataSet);
Var DSem :Integer;
begin
  ToleranciaSerieX.Value := ToleranciaSERIE.AsString+'ª Série '+ToleranciaTURMA.AsString;
  ToleranciaHoraX.Value := FormatDateTime('dd/mm hh:mm',ToleranciaHORA.Value)+'h';
  DSem := DayOfWeek(ToleranciaHORA.Value);
  ToleranciaSemanaX.Value := DiaSemana[DSem];
end;

procedure TMov_Ocorrencias.ApesquisaExecute(Sender: TObject);
begin
  If (EdCodigo.Text <> '') and (RxLookNome.Text = 'Todos os alunos') then
  begin
   Tolerancia.SQL.Strings[11]:= 'where cast(HORA as date) between :inicio and :fim and cast(HORA as time) = ''7:10:00'' and A.CODIGO = :ALUNO';
   Tolerancia.Close;
   Tolerancia.ParamByName('aluno').Text := EdCodigo.Text;
   Tolerancia.ParamByName('inicio').Value := DInicial.Date;
   Tolerancia.ParamByName('fim').Value := DFinal.Date;
   Tolerancia.Open;
  end;
    If (EdCodigo.Text = '') and (RxLookNome.Text <> 'Todos os alunos') Then
     Begin
      Tolerancia.Close;
      Tolerancia.ParamByName('aluno').Text := RxLookNome.Text;
      Tolerancia.ParamByName('inicio').Value := DInicial.Date;
      Tolerancia.ParamByName('fim').Value := DFinal.Date;
      Tolerancia.Open;
     end;
  If (EdCodigo.Text = '') and (RxLookNome.Text = 'Todos os alunos') Then
     begin
      Tolerancia.SQL.Strings[11]:= 'where cast(HORA as date) between :inicio and :fim and cast(HORA as time) = ''7:10:00''';
      Tolerancia.Close;
      Tolerancia.ParamByName('inicio').Value := DInicial.Date;
      Tolerancia.ParamByName('fim').Value := DFinal.Date;
      Tolerancia.Open;
     end;
end;

procedure TMov_Ocorrencias.APesquisa2Execute(Sender: TObject);
begin
   Ocorr.Close;
   Ocorr.ParamByName('aluno').Value := PesqAluno2.KeyValue;
   Ocorr.ParamByName('inicio').Value := DateEdit1.Date;
   Ocorr.ParamByName('fim').Value := DateEdit2.Date;
   Ocorr.Open;
end;

procedure TMov_Ocorrencias.PesqAlunoChange(Sender: TObject);
begin
 if PesqAluno.Text <> '' Then
 Begin
  QTotalOcorrencias.Close;
  QTotalOcorrencias.Params[0].Value := PesqAluno.KeyValue;
  QTotalOcorrencias.Open;
 End;
end;

end.
