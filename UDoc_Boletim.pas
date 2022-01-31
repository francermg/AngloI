unit UDoc_Boletim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, StdCtrls, Buttons, RxLookup, Db, IBCustomDataSet, IBQuery,
  Grids, DBGrids, RXCtrls, RXDBCtrl, ExtCtrls, IBSQLMonitor, Mask,
  ToolEdit, CurrEdit, DBCtrls;

type
  TDoc_Boletim = class(TForm)
    Fecha: TBitBtn;
    Imprime: TBitBtn;                     
    FS1: TFormStorage;
    Label2: TLabel;
    Turma: TRxDBLookupCombo;
    NomeIni: TRxDBLookupCombo;
    Label1: TLabel;
    Label3: TLabel;
    NomeFin: TRxDBLookupCombo;
    dsQAlunos: TDataSource;
    QAlunos: TIBQuery;
    QAlunosCODIGO: TIntegerField;
    QAlunosNOME: TIBStringField;
    Tipo: TRadioGroup;
    Label4: TLabel;
    Bimestre: TRadioGroup;
    TpRecBim: TRadioGroup;
    Codigo: TCurrencyEdit;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TurmaChange(Sender: TObject);
    procedure CodigoChange(Sender: TObject);
    procedure CodigoExit(Sender: TObject);
  private
    procedure MostraBoletim;
    procedure MostraBoletimR;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Doc_Boletim: TDoc_Boletim;

implementation

uses UDM, UDoc_Boletim_QR, UDoc_BoletimR_QR;

{$R *.DFM}

procedure TDoc_Boletim.FormShow(Sender: TObject);
begin
  DM.Turmas.Open;
end;

procedure TDoc_Boletim.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Turmas.Close;
  QAlunos.Close;
  DM.Alunos.Close;
  DM.Alunos.SelectSQL.Strings[2] := 'where Codigo > 0';
end;

procedure TDoc_Boletim.TurmaChange(Sender: TObject);
begin
  QAlunos.Close;
  Imprime.Enabled := false;
  if Turma.KeyValue <> null then begin
    QAlunos.SQL.Strings[2] := 'where SERIE = :serie and TURMA = :turma';
    QAlunos.ParamByName('serie').Value := DM.TurmasSERIE.Value;
    QAlunos.ParamByName('turma').Value := DM.TurmasTURMA.Value;
    QAlunos.Open;
    Imprime.Enabled := true;
  end;
end;

procedure TDoc_Boletim.CodigoChange(Sender: TObject);
begin
  if Codigo.Text <> '' then begin
    DM.Alunos.SelectSQL.Strings[2] := 'where CODIGO = :codigo';
    DM.Alunos.ParamByName('codigo').AsInteger := StrToInt(Codigo.Text);
    DM.Alunos.Close;
    Imprime.Enabled := false;
    DM.Alunos.Open;
    if not DM.AlunosCODIGO.IsNull then begin
      Turma.KeyValue := IntToStr(DM.AlunosSERIE.Value)+'ª '+DM.AlunosTURMA.Value+
        ' - Matutino';
      QAlunos.SQL.Strings[2] := 'where CODIGO = :codigo';
      QAlunos.ParamByName('codigo').Value := DM.AlunosCODIGO.Value;
      QAlunos.Open;
      NomeIni.KeyValue := DM.AlunosNOME.Value;
      NomeFin.KeyValue := DM.AlunosNOME.Value;
      Imprime.Enabled := true;
    end;
  end;
end;

procedure TDoc_Boletim.CodigoExit(Sender: TObject);
begin
  Codigo.Clear;
end;

procedure TDoc_Boletim.ImprimeClick(Sender: TObject);
begin
  if DM.TurmasSERIE.Value = 1 then
    if DM.ParametrosRECUPBIM1.Value = 'X' then MostraBoletimR
     else MostraBoletim;
  if DM.TurmasSERIE.Value = 2 then
    if DM.ParametrosRECUPBIM2.Value = 'X' then MostraBoletimR
     else MostraBoletim;
  if DM.TurmasSERIE.Value = 3 then
    if DM.ParametrosRECUPBIM3.Value = 'X' then MostraBoletimR
     else MostraBoletim;
end;

procedure TDoc_Boletim.MostraBoletim;
begin
  Application.CreateForm(TDoc_Boletim_QR, Doc_Boletim_QR);
  Doc_Boletim_QR.NomeTurma.Caption := IntToStr(DM.TurmasSERIE.Value)+'ª Série '+DM.TurmasTURMA.Value;
  DM.Boletim.ParamByName('serie').Value := DM.TurmasSERIE.Value;
  DM.Boletim.ParamByName('turma').Value := DM.TurmasTURMA.Value;
  if NomeIni.KeyValue = null then DM.Boletim.ParamByName('n_ini').Value := ''
   else DM.Boletim.ParamByName('n_ini').Value := NomeIni.KeyValue;
  if NomeFin.KeyValue = null then DM.Boletim.ParamByName('n_fin').Value := chr(255)
   else DM.Boletim.ParamByName('n_fin').Value := NomeFin.KeyValue;
  DM.Boletim.ParamByName('tp_bol').Value := 'B';
  DM.Boletim.ParamByName('bimestre').Value := Bimestre.ItemIndex + 1;
  DM.Boletim.ParamByName('tp_nota').Value := Tipo.ItemIndex;
  DM.Boletim.ParamByName('media').Value := DM.ParametrosMEDIA.Value;
  DM.Boletim.Open;
  DM.Boletim.FetchAll;
  Doc_Boletim_QR.Preview;
  DM.Boletim.Close;
  Doc_Boletim_QR.Free;
end;

procedure TDoc_Boletim.MostraBoletimR;
begin
  Application.CreateForm(TDoc_BoletimR_QR, Doc_BoletimR_QR);
  Doc_BoletimR_QR.NomeTurma.Caption := IntToStr(DM.TurmasSERIE.Value)+'ª Série '+DM.TurmasTURMA.Value;
  DM.BoletimR.ParamByName('serie').Value := DM.TurmasSERIE.Value;
  DM.BoletimR.ParamByName('turma').Value := DM.TurmasTURMA.Value;
  if NomeIni.KeyValue = null then DM.BoletimR.ParamByName('n_ini').Value := ''
   else DM.BoletimR.ParamByName('n_ini').Value := NomeIni.KeyValue;
  if NomeFin.KeyValue = null then DM.BoletimR.ParamByName('n_fin').Value := chr(255)
   else DM.BoletimR.ParamByName('n_fin').Value := NomeFin.KeyValue;
  DM.BoletimR.ParamByName('tp_bol').Value := 'B';
  DM.BoletimR.ParamByName('bimestre').Value := Bimestre.ItemIndex + 1;
  DM.BoletimR.ParamByName('tp_nota').Value := Tipo.ItemIndex;
  DM.BoletimR.ParamByName('media').Value := DM.ParametrosMEDIA.Value;
  DM.BoletimR.ParamByName('tp_recbim').Value := TpRecBim.ItemIndex;

  DM.BoletimR.Open;
  DM.BoletimR.FetchAll;
  Doc_BoletimR_QR.Preview;
  DM.BoletimR.Close;
  Doc_BoletimR_QR.Free;
end;

end.
