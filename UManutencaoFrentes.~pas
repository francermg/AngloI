unit UManutencaoFrentes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXCtrls, Placemnt, RxLookup, StdCtrls, Mask, DBCtrls, Buttons, Db,
  IBCustomDataSet, IBQuery, Grids, DBGrids, RxDBComb, RzLabel, ExtCtrls,
  RXSplit;

type
  TfmanutencaoFrentes = class(TForm)
    FP: TFormPlacement;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Cdisciplina: TRxDBLookupCombo;
    BSInserir: TSpeedButton;
    BSSalvar: TSpeedButton;
    DBGrid1: TDBGrid;
    BSEditar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    BSAvancar: TSpeedButton;
    BSSair: TSpeedButton;
    Label3: TLabel;
    CSerie: TRxDBComboBox;
    CTurma: TRxDBComboBox;
    SpeedButton2: TSpeedButton;
    RzLabel1: TRzLabel;
    rxspl1: TRxSplitter;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CSerieExit(Sender: TObject);
    procedure BSInserirClick(Sender: TObject);
    procedure BSSalvarClick(Sender: TObject);
    procedure BSEditarClick(Sender: TObject);
    procedure BSAvancarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BSSairClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure rxlokBnomeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmanutencaoFrentes: TfmanutencaoFrentes;

implementation

uses UDM, Usenhaprofessores;

{$R *.DFM}


procedure tratabotoes;
Begin
  with fmanutencaoFrentes do
  Begin
   BSInserir.Enabled := not BSInserir.Enabled;
   BSSalvar.Enabled := not BSSalvar.Enabled;
   BSEditar.Enabled := not BSEditar.Enabled;
   SpeedButton1.Enabled := not SpeedButton1.Enabled;
   BSAvancar.Enabled := not BSAvancar.Enabled;
   BSSair.Enabled := not BSSair.Enabled;
   SpeedButton2.Enabled := not SpeedButton2.Enabled;
  End;
End;

procedure trataedits;
Begin
  with fmanutencaoFrentes do
  Begin
    Cdisciplina.Enabled := not Cdisciplina.Enabled;
    cserie.Enabled := not cserie.Enabled;
    CTurma.Enabled := not CTurma.Enabled;
    DBEdit4.Enabled := not DBEdit4.Enabled;
  End;
End;



procedure TfmanutencaoFrentes.FormShow(Sender: TObject);
begin
   dm.qManutencaoFrentes.Open;
   dm.Disciplinas.Open;
   dm.Turmas.Open;
   dm.qManutencaoFrentes.First;
end;

procedure TfmanutencaoFrentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   dm.qManutencaoFrentes.Close;
   dm.Disciplinas.Close;
   dm.Turmas.Close;
end;

procedure TfmanutencaoFrentes.CSerieExit(Sender: TObject);
begin
  dm.qManutencaoFrentesTURMAF.Value := dm.TurmasTURMA.Value;
end;

procedure TfmanutencaoFrentes.BSInserirClick(Sender: TObject);
begin
  trataedits;
  dm.qManutencaoFrentes.Append;
  Cdisciplina.SetFocus;
  tratabotoes;
end;

procedure TfmanutencaoFrentes.BSSalvarClick(Sender: TObject);
begin
  if DM.qManutencaoFrentes.state in [dsInsert, dsEdit] Then
  Begin
    dm.qManutencaoFrentes.Post;
    dm.IBTr_ANGLO.CommitRetaining;
    tratabotoes;
    trataedits;
    dm.qManutencaoFrentes.SQL[3] := 'order by SERIEF, TURMAF, DISCIPLINA';
    ShowMessage('Registro salvo com sucesso!!!');
    dm.qManutencaoFrentes.Open;
  End
end;

procedure TfmanutencaoFrentes.BSEditarClick(Sender: TObject);
begin
  trataedits;
  dm.qManutencaoFrentes.Edit;
  tratabotoes;
  Cdisciplina.SetFocus;
end;

procedure TfmanutencaoFrentes.BSAvancarClick(Sender: TObject);
begin
  dm.qManutencaoFrentes.Next;
end;

procedure TfmanutencaoFrentes.SpeedButton1Click(Sender: TObject);
begin
  dm.qManutencaoFrentes.Prior;

end;

procedure TfmanutencaoFrentes.BSSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfmanutencaoFrentes.SpeedButton2Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
  dm.qManutencaoFrentes.Delete;
end;

procedure TfmanutencaoFrentes.rxlokBnomeChange(Sender: TObject);
begin
  dm.qManutencaoFrentes.Close;
  dm.qManutencaoFrentes.SQL[3] := 'order by  DISCIPLINA, SERIEF, TURMAF';
  dm.qManutencaoFrentes.Open;
end;

end.
