unit UDoc_FichaInd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, StdCtrls, Buttons, RxLookup, Db, IBCustomDataSet, IBQuery,
  Grids, DBGrids, RXCtrls, RXDBCtrl, RxLogin, Outlook8, Access97,
  OleServer, Word97, RxRichEd, ComCtrls, DBSecur, ExtCtrls;

type
  TDoc_FichaInd = class(TForm)
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
    Obs: TMemo;
    Label4: TLabel;
    Label5: TLabel;
    Bimestre: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TurmaChange(Sender: TObject);
  private
    procedure MostraFichaInd;
    procedure MostraFichaIndR;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Doc_FichaInd: TDoc_FichaInd;

implementation

uses UDM, UDoc_FichaInd_QR, UDoc_FichaIndR_QR;

{$R *.DFM}

procedure TDoc_FichaInd.FormShow(Sender: TObject);
begin
  DM.Turmas.Open;
end;

procedure TDoc_FichaInd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Turmas.Close;
  QAlunos.Close;
end;

procedure TDoc_FichaInd.TurmaChange(Sender: TObject);
begin
  QAlunos.Close;
  QAlunos.ParamByName('serie').Value := DM.TurmasSERIE.Value;
  QAlunos.ParamByName('turma').Value := DM.TurmasTURMA.Value;
  QAlunos.Open;
  Imprime.Enabled := true;
end;

procedure TDoc_FichaInd.ImprimeClick(Sender: TObject);
begin
  if DM.TurmasSERIE.Value = 1 then
    if DM.ParametrosRECUPBIM1.Value = 'X' then MostraFichaIndR
     else MostraFichaInd;
  if DM.TurmasSERIE.Value = 2 then
    if DM.ParametrosRECUPBIM2.Value = 'X' then MostraFichaIndR
     else MostraFichaInd;
  if DM.TurmasSERIE.Value = 3 then
    if DM.ParametrosRECUPBIM3.Value = 'X' then MostraFichaIndR
     else MostraFichaInd;
end;

procedure TDoc_FichaInd.MostraFichaInd;
begin
  Application.CreateForm(TDoc_FichaInd_QR, Doc_FichaInd_QR);
  Doc_FichaInd_QR.NomeTurma.Caption := IntToStr(DM.TurmasSERIE.Value)+'ª Série '+DM.TurmasTURMA.Value;
  DM.Boletim.ParamByName('serie').Value := DM.TurmasSERIE.Value;
  DM.Boletim.ParamByName('turma').Value := DM.TurmasTURMA.Value;
  if NomeIni.KeyValue = null then DM.Boletim.ParamByName('n_ini').Value := ''
   else DM.Boletim.ParamByName('n_ini').Value := NomeIni.KeyValue;
  if NomeFin.KeyValue = null then DM.Boletim.ParamByName('n_fin').Value := chr(255)
   else DM.Boletim.ParamByName('n_fin').Value := NomeFin.KeyValue;
  DM.Boletim.ParamByName('tp_bol').Value := 'F';
  DM.Boletim.ParamByName('bimestre').Value := Bimestre.ItemIndex + 1;
  DM.Boletim.ParamByName('tp_nota').Value := 0;
  DM.Boletim.ParamByName('media').Value := DM.ParametrosMEDIA.Value;
  DM.Boletim.Open;
  DM.Boletim.FetchAll;
  Doc_FichaInd_QR.Obs.Lines := Obs.Lines;
  Doc_FichaInd_QR.Preview;
  DM.Boletim.Close;
  Doc_FichaInd_QR.Free;
end;

procedure TDoc_FichaInd.MostraFichaIndR;
begin
  Application.CreateForm(TDoc_FichaIndR_QR, Doc_FichaIndR_QR);
  Doc_FichaIndR_QR.NomeTurma.Caption := IntToStr(DM.TurmasSERIE.Value)+'ª Série '+DM.TurmasTURMA.Value;
  DM.BoletimR.ParamByName('serie').Value := DM.TurmasSERIE.Value;
  DM.BoletimR.ParamByName('turma').Value := DM.TurmasTURMA.Value;
  if NomeIni.KeyValue = null then DM.BoletimR.ParamByName('n_ini').Value := ''
   else DM.BoletimR.ParamByName('n_ini').Value := NomeIni.KeyValue;
  if NomeFin.KeyValue = null then DM.BoletimR.ParamByName('n_fin').Value := chr(255)
   else DM.BoletimR.ParamByName('n_fin').Value := NomeFin.KeyValue;
  DM.BoletimR.ParamByName('tp_bol').Value := 'F';
  DM.BoletimR.ParamByName('bimestre').Value := Bimestre.ItemIndex + 1;
  DM.BoletimR.ParamByName('tp_nota').Value := 0;
  DM.BoletimR.ParamByName('tp_recbim').Value := 0;
  DM.BoletimR.ParamByName('media').Value := DM.ParametrosMEDIA.Value;
  DM.BoletimR.Open;
  DM.BoletimR.FetchAll;
  Doc_FichaIndR_QR.Obs.Lines := Obs.Lines;
  Doc_FichaIndR_QR.Preview;
  DM.BoletimR.Close;
  Doc_FichaIndR_QR.Free;
end;

end.
