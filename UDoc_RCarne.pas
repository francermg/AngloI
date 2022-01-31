unit UDoc_RCarne;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, StdCtrls, Buttons, RxLookup, Db, IBCustomDataSet, IBQuery,
  Grids, DBGrids, RXCtrls, RXDBCtrl, ExtCtrls, IBSQLMonitor, Mask,
  ToolEdit, CurrEdit, DBCtrls;

type
  TDoc_RCarne = class(TForm)
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
    Rsemestre: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TurmaChange(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Doc_RCarne: TDoc_RCarne;

implementation

uses UDM, UDoc_Boletim_QR, UDoc_BoletimR_QR, UDoc_RCarneQR;

{$R *.DFM}

procedure TDoc_RCarne.FormShow(Sender: TObject);
begin
  DM.Turmas.Open;
end;

procedure TDoc_RCarne.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Turmas.Close;
  QAlunos.Close;
  DM.Alunos.Close;
  DM.Alunos.SelectSQL.Strings[2] := 'where Codigo > 0';
end;

procedure TDoc_RCarne.TurmaChange(Sender: TObject);
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

procedure TDoc_RCarne.ImprimeClick(Sender: TObject);
begin
  Application.CreateForm(TDoc_RCarneQR, Doc_RCarneQR);
  DM.RCarne.Close;
  DM.RCarne.ParamByName('seriee').Value := DM.TurmasSERIE.Value;
  DM.RCarne.ParamByName('turmae').Value := DM.TurmasTURMA.Value;
  DM.RCarne.ParamByName('nome_ini').Value := Doc_RCarne.NomeIni.Value;
  DM.RCarne.ParamByName('nome_fim').Value := Doc_RCarne.NomeFin.Value;
  DM.RCarne.Open;
  DM.RCarne.FetchAll;
  Doc_RCarneQR.Preview;
  DM.RCarne.Close;
  Doc_RCarneQR.Free;
end;

end.
