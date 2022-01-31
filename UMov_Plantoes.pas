unit UMov_Plantoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Placemnt, RxLookup, ComCtrls, DBCtrls, Mask, ToolEdit,
  Grids, DBGrids, RXDBCtrl, Db, IBCustomDataSet, IBQuery, ExtCtrls, ToolWin,
  SpeedBar;

type
  TMov_Plantoes = class(TForm)
    Fecha: TBitBtn;
    FS1: TFormStorage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Aluno: TRxDBLookupCombo;
    Disciplina: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    Data: TDateEdit;
    Label3: TLabel;
    RxDBGrid1: TRxDBGrid;
    Label4: TLabel;
    Confirma: TBitBtn;
    Cancela: TBitBtn;
    Apaga: TBitBtn;
    Inclui: TBitBtn;
    Professor: TEdit;
    DSem: TLabel;
    Label5: TLabel;
    Aluno2: TRxDBLookupCombo;
    Query1: TIBQuery;
    dsQuery1: TDataSource;
    DBText1: TDBText;
    Query1DATA: TDateField;
    Query1PROFESSOR: TIBStringField;
    Query1NOME: TIBStringField;
    Query1DSem: TStringField;
    Label6: TLabel;
    Label7: TLabel;
    DBText2: TDBText;
    Notebook1: TNotebook;
    RxDBGrid2: TRxDBGrid;
    RxDBGrid3: TRxDBGrid;
    Detalhado: TSpeedButton;
    Totalizado: TSpeedButton;
    Query2: TIBQuery;
    dsQuery2: TDataSource;
    Query2DISCIPLINA: TIBStringField;
    Query2QTDADE: TIntegerField;
    btn1: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DisciplinaCloseUp(Sender: TObject);
    procedure AlunoCloseUp(Sender: TObject);
    procedure ConfirmaClick(Sender: TObject);
    procedure CancelaClick(Sender: TObject);
    procedure ApagaClick(Sender: TObject);
    procedure DataChange(Sender: TObject);
    procedure DisciplinaChange(Sender: TObject);
    procedure IncluiClick(Sender: TObject);
    procedure DataKeyPress(Sender: TObject; var Key: Char);
    procedure ProfessorExit(Sender: TObject);
    procedure ProfessorKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DataExit(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Aluno2Change(Sender: TObject);
    procedure DetalhadoClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    procedure AtualizaPlantoes;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Mov_Plantoes: TMov_Plantoes;
  o_data : double;
  o_disc : integer;
  o_prof : string;
const
  DiaSemana : Array[1..7] of String = ('Domingo', 'Segunda-Feira',
           'Terça-Feira', 'Quarta-Feira', 'Quinta-Feira',
           'Sexta-Feira', 'Sábado');

implementation

uses UDM, URelFreqPlantoes;

{$R *.DFM}

procedure TMov_Plantoes.AtualizaPlantoes;
begin
  DM.Plantoes.Close;
  DM.Plantoes.ParamByName('data').AsDate := Data.Date;
  DM.Plantoes.ParamByName('disciplina').Value := Disciplina.KeyValue;
  DM.Plantoes.Open;
  if not DM.PlantoesPROFESSOR.IsNull then begin
    Professor.Text := DM.PlantoesPROFESSOR.Value;
    Professor.Enabled := false; end
   else begin
    Professor.Text := '';
    Professor.Enabled := true;
  end;
  o_data := Data.Date;
  o_disc := 0;
  if Disciplina.DisplayValue <> '' then
    o_disc := Disciplina.KeyValue;
end;

procedure TMov_Plantoes.FormCreate(Sender: TObject);
begin
  Data.Date := now;
end;

procedure TMov_Plantoes.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  NoteBook1.PageIndex := 0;
  DM.Alunos.SelectSQL.Strings[3] := 'order by nome';
  DM.Alunos.Open;
  DM.Disciplinas.Open;
  Data.SetFocus;
end;

procedure TMov_Plantoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Alunos.Close;
  DM.Disciplinas.Close;
  DM.Plantoes.Close;
  Query1.Close;
  DM.Alunos.SelectSQL.Strings[3] := 'order by Codigo';
  DM.IBTr_ANGLO.CommitRetaining;
end;

procedure TMov_Plantoes.DataKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    Perform(WM_NextDlgCtl,0,0);   Key := #0;
  end;
end;

procedure TMov_Plantoes.DataChange(Sender: TObject);
begin
  AtualizaPlantoes;
end;

procedure TMov_Plantoes.DataExit(Sender: TObject);
begin
  DSem.Caption := DiaSemana[DayOfWeek(Data.Date)];
end;

procedure TMov_Plantoes.DisciplinaChange(Sender: TObject);
begin
  AtualizaPlantoes;
end;

procedure TMov_Plantoes.DisciplinaCloseUp(Sender: TObject);
begin
  Perform(WM_NextDlgCtl,0,0);
end;

procedure TMov_Plantoes.ProfessorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    Perform(WM_NextDlgCtl,0,0);   Key := #0;
  end;
end;

procedure TMov_Plantoes.ProfessorExit(Sender: TObject);
begin
  o_prof := Professor.Text;
  Professor.Enabled := false;
end;

procedure TMov_Plantoes.AlunoCloseUp(Sender: TObject);
begin
  Perform(WM_NextDlgCtl,0,0);
end;

procedure TMov_Plantoes.IncluiClick(Sender: TObject);
begin
  if DM.Plantoes.Modified then DM.Plantoes.Post;
  DM.Plantoes.Append;
  DM.PlantoesDATA.Value := o_data;
  DM.PlantoesDISCIPLINA.Value := o_disc;
  DM.PlantoesPROFESSOR.Value := o_prof;
  Aluno.Enabled := true;
  Aluno.SetFocus;
end;

procedure TMov_Plantoes.ConfirmaClick(Sender: TObject);
begin
  if DM.Plantoes.Modified then DM.Plantoes.Post;
  Aluno.Enabled := false;
  Inclui.SetFocus;
  dm.Plantoes.Close;
  dm.Plantoes.RefreshSQL;
  dm.Plantoes.Open;
end;

procedure TMov_Plantoes.CancelaClick(Sender: TObject);
begin
  DM.Plantoes.Cancel;
  Aluno.Enabled := false;
end;

procedure TMov_Plantoes.ApagaClick(Sender: TObject);
begin
  if MessageDlg('Apaga o Registro?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
    DM.Plantoes.Delete;
end;

//===================================================================== CONSULTA
procedure TMov_Plantoes.Query1CalcFields(DataSet: TDataSet);
begin
  Query1DSem.Value := DiaSemana[DayOfWeek(Query1DATA.Value)];
end;

procedure TMov_Plantoes.Aluno2Change(Sender: TObject);
begin
  Query1.Close;
  Query1.ParamByName('aluno').Value := Aluno2.KeyValue;
  Query1.Open;
  Query2.Close;
  Query2.ParamByName('aluno').Value := Aluno2.KeyValue;
  Query2.Open;
  DBText1.Show;
  DBText2.Show;
end;

procedure TMov_Plantoes.DetalhadoClick(Sender: TObject);
begin
  if Detalhado.Down then NoteBook1.PageIndex := 0
   else NoteBook1.PageIndex := 1;
end;

procedure TMov_Plantoes.btn1Click(Sender: TObject);
begin
  Application.CreateForm(TRel_Freq_Plantoes, Rel_Freq_Plantoes);
  Try
   Rel_Freq_Plantoes.rlFreqPlantoes.Preview;
  Finally
   Rel_Freq_Plantoes.rlFreqPlantoes.Free;
  End;
end;

end.
