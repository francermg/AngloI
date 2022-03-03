unit UMov_Notas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, RxLookup, Grids, DBGrids, RXDBCtrl,
  ComCtrls, DB, IBCustomDataSet, IBStoredProc, IBQuery, IBInstall, Placemnt,
  Menus, RXCtrls, RzDBGrid;


type
  TMov_Notas = class(TForm)
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    RxDBGrid1: TRxDBGrid;
    Disciplina: TRxDBLookupCombo;
    Label1: TLabel;
    Bimestre: TRadioGroup;
    Label2: TLabel;
    Turma: TRxDBLookupCombo;
    Verifica_Notas: TIBStoredProc;
    BimestreA: TRadioGroup;
    RxDBGrid2: TRxDBGrid;
    Label3: TLabel;
    Aluno: TRxDBLookupCombo;
    Label5: TLabel;
    FS1: TFormStorage;
    Verifica_Notas_A: TIBStoredProc;
    Pop1: TPopupMenu;
    PrxAlunoTurma1: TMenuItem;
    Turma2: TRxDBLookupCombo;
    ProxAlu: TBitBtn;
    RepeteNotaA: TBitBtn;
    RepeteNota1: TMenuItem;
    Label4: TLabel;
    CodAlu: TEdit;
    RepeteNotaD: TBitBtn;
    TabSheet3: TTabSheet;
    EdProtocolo: TEdit;
    Label8: TLabel;
    BProtocolo: TBitBtn;
    IBAtualiza: TIBStoredProc;
    rxprotocolo: TRxLabel;
    Bevel1: TBevel;
    Label6: TLabel;
    Bevel2: TBevel;
    Label7: TLabel;
    Bevel3: TBevel;
    Label9: TLabel;
    Bevel4: TBevel;
    Label10: TLabel;
    Label11: TLabel;
    Grade: TIBQuery;
    GradeTOTAL: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TurmaChange(Sender: TObject);
    procedure RxDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure AlunoChange(Sender: TObject);
    procedure BimestreAClick(Sender: TObject);
    procedure RxDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure PageControl1Change(Sender: TObject);
    procedure Turma2Change(Sender: TObject);
    procedure ProxAluClick(Sender: TObject);
    procedure CodAluKeyPress(Sender: TObject; var Key: Char);
    procedure CodAluExit(Sender: TObject);
    procedure RepeteNotaDClick(Sender: TObject);
    procedure RepNotaD;
    procedure RepNotaA;
    procedure BProtocoloClick(Sender: TObject);
    procedure EdProtocoloEnter(Sender: TObject);
    procedure RxDBGrid2ColEnter(Sender: TObject);
    procedure Turma2CloseUp(Sender: TObject);
    procedure AlunoCloseUp(Sender: TObject);
    procedure btnEditarnotasClick(Sender: TObject);
    procedure btnSalvarNotasClick(Sender: TObject);
    procedure BimestreClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure Atualiza;
    procedure AtualizaA;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Mov_Notas: TMov_Notas;

implementation

uses UDM, USenhaNotas, UMenu, Ufvisualizanotas, UDM2;

{$R *.DFM}

//============================================================== SHOW / CLOSE
procedure TMov_Notas.FormShow(Sender: TObject);
begin
  FSenhaNotas.Close;
  PageControl1.ActivePageIndex := 0;
  DM.Alunos.SelectSQL.Strings[2] := 'where SERIE = :Serie and TURMA = :Turma';
  DM.Alunos.SelectSQL.Strings[3] := 'order by Chamada';
  DM.Disciplinas.Open;
  DM.Grade.Open;
  DM.Turmas.Open;
  Atualiza;
end;

procedure TMov_Notas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  BitBtn1.SetFocus;
  If DM.Notas.Modified then DM.Notas.Post;
  If DM.NotasA.Modified then DM.NotasA.Post;
  DM.Disciplinas.Close;
  DM.Alunos.Close;
  DM.Grade.Close;
  DM.Turmas.Close;
  DM.Notas.Close;
  DM.NotasA.Close;
  DM.IBTr_Anglo.CommitRetaining;
  DM.Alunos.SelectSQL.Strings[2] := 'where Codigo > 0';
  DM.Alunos.SelectSQL.Strings[3] := 'order by Codigo';
end;

//======================================================= p/Disciplina
procedure TMov_Notas.TurmaChange(Sender: TObject);
begin
  Atualiza;
end;

procedure TMov_Notas.Atualiza;
var Tot : integer;
begin
dm2.IBNotas_Alu.Close;
dm2.IBNotas_Alu.ParamByName('serie').AsInteger := dm.TurmasSERIE.Value;
dm2.IBNotas_Alu.ParamByName('turma').AsString := dm.TurmasTURMA.Value;
dm2.IBNotas_Alu.ParamByName('disciplina').AsInteger := dm.DisciplinasCODIGO.Value;
dm2.IBNotas_Alu.Open;


  if (Bimestre.ItemIndex >= 0) and
    (Turma.KeyValue <> null) and
    (Disciplina.KeyValue > 0) then
    begin
    Grade.Close;
    Grade.ParamByName('serie').Value := DM.TurmasSERIE.Value;
    Grade.ParamByName('disciplina').Value := DM.DisciplinasCODIGO.Value;
    Grade.Open;
    Tot := GradeTOTAL.AsVariant;
    if Tot = 0 then begin
      MessageDlg('Disciplina inexistente na Grade!',mtError,[mbOK],0);
      abort;
    end;
    Verifica_Notas.ParamByName('serie').Value := DM.TurmasSERIE.Value;
    Verifica_Notas.ParamByName('turma').Value := DM.TurmasTURMA.Value;
    Verifica_Notas.ParamByName('disciplina').Value := DM.DisciplinasCODIGO.Value;
    Verifica_Notas.ParamByName('bimestre').Value := Bimestre.ItemIndex + 1;
    Verifica_Notas.ExecProc;
    If DM.Notas.Modified then DM.Notas.Post;
    DM.IBTr_Anglo.CommitRetaining;
    DM.Notas.Close;
    DM.Notas.SelectSQL.Clear;
    DM.Notas.SelectSQL.Add('select A.*, B.CODIGO, B.CHAMADA, B.NOME, Disc.FRENTES');
    DM.Notas.SelectSQL.Add('from NOTAS A');
    DM.Notas.SelectSQL.Add('inner join ALUNOS B on B.CODIGO = A.ALUNO');
    DM.Notas.SelectSQL.Add('inner join DISCIPLINAS Disc on Disc.CODIGO = A.DISCIPLINA');
    DM.Notas.SelectSQL.Add('where B.SERIE = :serie and B.TURMA = :turma and');
    DM.Notas.SelectSQL.Add('  A.DISCIPLINA = :disciplina and');
    DM.Notas.SelectSQL.Add('  A.BIMESTRE = :bimestre');
//    DM.Notas.SelectSQL.Add('order by B.CHAMADA,B.NOME');
    DM.Notas.SelectSQL.Add('order by nome collate PXW_INTL850');
    DM.Notas.ParamByName('serie').Value := DM.TurmasSERIE.Value;
    DM.Notas.ParamByName('turma').Value := DM.TurmasTURMA.Value;
    DM.Notas.ParamByName('disciplina').Value := DM.DisciplinasCODIGO.Value;
    DM.Notas.ParamByName('bimestre').Value := Bimestre.ItemIndex + 1;
    DM.Notas.Open;

//*********************************************
    DM.qNotasAnt.Close;
    DM.qNotasAnt.SQL.Clear;
    DM.qNotasAnt.SQL.Add('select A.*, B.CODIGO, B.CHAMADA, B.NOME, Disc.FRENTES');
    DM.qNotasAnt.SQL.Add('from Notas A');
    DM.qNotasAnt.SQL.Add('inner join ALUNOS B on B.CODIGO = A.ALUNO');
    DM.qNotasAnt.SQL.Add('inner join DISCIPLINAS Disc on Disc.CODIGO = A.DISCIPLINA');
    DM.qNotasAnt.SQL.Add('where B.SERIE = :serie and B.TURMA = :turma and');
    DM.qNotasAnt.SQL.Add('  A.DISCIPLINA = :disciplina and');
    DM.qNotasAnt.SQL.Add('  A.BIMESTRE = :bimestre');
    DM.qNotasAnt.SQL.Add('order by B.CHAMADA,B.NOME');
    DM.qNotasAnt.ParamByName('serie').Value := DM.TurmasSERIE.Value;
    DM.qNotasAnt.ParamByName('turma').Value := DM.TurmasTURMA.Value;
    DM.qNotasAnt.ParamByName('disciplina').Value := DM.DisciplinasCODIGO.Value;
    if ((Bimestre.ItemIndex = 0) or (Bimestre.ItemIndex = 1)) then
       DM.qNotasAnt.ParamByName('bimestre').Value := 1;
    if (Bimestre.ItemIndex = 2) then
        DM.qNotasAnt.ParamByName('bimestre').Value := 2;
    if (Bimestre.ItemIndex = 3) then
        DM.qNotasAnt.ParamByName('bimestre').Value := 3;
    DM.qNotasAnt.Open;
    end
   else
    DM.Notas.Close;
end;

procedure TMov_Notas.RxDBGrid1KeyPress(Sender: TObject; var Key: Char);
Var ponto :TBookmark;
begin
  if Key = #13 then
    if DM.Notas.State = dsEdit then
    Begin
       DM.Notas.Post;
       ponto := dm.Notas.GetBookmark;
       dm.Notas.Close;
       dm.Notas.Open;
       dm.Notas.GotoBookmark(Ponto);
       dm.Notas.FreeBookmark(Ponto);
    end
      else DM.Notas.Edit;
  if key = '.' then key := ',';
end;

procedure TMov_Notas.RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (DM.NotasNOTA.Value < DM.ParametrosMEDIA.Value) and
     (not DM.NotasNOTA.IsNull)
  then
     BackGround := $00B3B3FF;
end;

//======================================================= p/Aluno
procedure TMov_Notas.Turma2Change(Sender: TObject);
begin
  DM.NotasA.Close;
  Aluno.ClearValue;
  DM.Alunos.Close;
  DM.Alunos.SelectSQL.Strings[2] := 'where SERIE = :Serie and TURMA = :Turma';
  DM.Alunos.SelectSQL.Strings[3] := 'Order by nome asc';
  if Turma2.KeyValue <> null then begin
    DM.Alunos.ParamByName('serie').Value := DM.TurmasSERIE.Value;
    DM.Alunos.ParamByName('turma').Value := DM.TurmasTURMA.Value;
    DM.Alunos.Open;
  end;
end;

procedure TMov_Notas.CodAluKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then begin
    DM.NotasA.Close;
    Aluno.ClearValue;
    DM.Alunos.Close;
    DM.Alunos.SelectSQL.Strings[2] := 'where CODIGO = :Codigo';
    DM.Alunos.ParamByName('codigo').Value := StrToInt(CodAlu.Text);
    DM.Alunos.Open;
    Aluno.KeyValue := DM.AlunosCODIGO.Value;
    AtualizaA;
    dm.qManutencaoFrentes.Close;
    dm.qManutencaoFrentes.SQL[2] := 'where disciplina = :bdisciplina and serief = :bserie';
    dm.qManutencaoFrentes.ParamByName('bdisciplina').Value := dm.NotasADISCIPLINA.Value;
    dm.qManutencaoFrentes.ParamByName('bserie').Value := dm.TurmasSERIE.Value;
    dm.qManutencaoFrentes.Open;
    CodAlu.Clear;
  end;
end;

procedure TMov_Notas.CodAluExit(Sender: TObject);
begin
//  CodAlu.Clear;
end;

procedure TMov_Notas.AlunoChange(Sender: TObject);
begin
  AtualizaA;
end;

procedure TMov_Notas.BimestreAClick(Sender: TObject);
begin
    dm.qManutencaoFrentes.Close;
    dm.qManutencaoFrentes.SQL[2] := 'where disciplina = :bdisciplina and serief = :bserie';
    dm.qManutencaoFrentes.ParamByName('bdisciplina').Value := dm.NotasADISCIPLINA.Value;
    dm.qManutencaoFrentes.ParamByName('bserie').Value := dm.TurmasSERIE.Value;
    dm.qManutencaoFrentes.Open;
    QuantidadeFrentes := dm.qManutencaoFrentesQFRENTES.Value;
    AtualizaA;
end;

procedure TMov_Notas.ProxAluClick(Sender: TObject);
begin
  DM.Alunos.Next;
  AtualizaA;
  Aluno.KeyValue := DM.AlunosCODIGO.Value;
end;

procedure TMov_Notas.RepeteNotaDClick(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then
    RepNotaD
   else
    RepNotaA;
end;

procedure TMov_Notas.RepNotaD;
var N,C : Integer;
    N_Rep : Real;
    NOME  : STRING[6];
begin
  N := RxDBGrid1.Col - 3;
  N_Rep := 0;
  C := RxDBGrid1.Col - 1;
  NOME := RxDBGrid1.Columns[C].Title.Caption;
  if (N < 1) or (N > 6) then
    ShowMessage('Selecione a coluna da nota a ser repetida!')
   else
    if MessageDlg('Repetir mesma para: ' +NOME+ ' para todos os alunos?',
//    IntToStr(N)+' para todos os Alunos?',
       mtConfirmation, mbOKCancel, 0) = mrOK then begin
      case N of
        1 : N_Rep := DM.NotasNOTA1.Value;
        2 : N_Rep := DM.NotasNOTA2.Value;
        3 : N_Rep := DM.NotasNOTA3.Value;
        4 : N_Rep := DM.NotasNOTA4.Value;
        5 : N_Rep := DM.NotasNOTA5.Value;
        6 : N_Rep := DM.NotasNOTA6.Value;
      end;
      if DM.Notas.Modified then DM.Notas.Post else DM.Notas.Next;
      while not (DM.Notas.Eof) do begin
        DM.Notas.Edit;
        case N of
          1 : DM.NotasNOTA1.Value := N_Rep;
          2 : DM.NotasNOTA2.Value := N_Rep;
          3 : DM.NotasNOTA3.Value := N_Rep;
          4 : DM.NotasNOTA4.Value := N_Rep;
          5 : DM.NotasNOTA5.Value := N_Rep;
          6 : DM.NotasNOTA6.Value := N_Rep;

       end;
        DM.Notas.Post;
      end;
    end;
  DM.IBTr_Anglo.CommitRetaining;
  Atualiza;
end;

procedure TMov_Notas.RepNotaA;
var N : Integer;
    N_Rep : Real;
begin
  N := RxDBGrid2.Col - 1;
  N_Rep := 0;
  if (N < 1) or (N > 6) then
    ShowMessage('Selecione a coluna da nota a ser repetida!')
   else
    if MessageDlg('Repetir mesma N'+IntToStr(N)+' para todas as Disciplinas?',
       mtConfirmation, mbOKCancel, 0) = mrOK then begin
      case N of
        1 : N_Rep := DM.NotasANOTA1.Value;
        2 : N_Rep := DM.NotasANOTA2.Value;
        3 : N_Rep := DM.NotasANOTA3.Value;
        4 : N_Rep := DM.NotasANOTA4.Value;
        5 : N_Rep := DM.NotasANOTA5.Value;
        6 : N_Rep := DM.NotasANOTA6.Value;
      end;
      if DM.NotasA.Modified then DM.NotasA.Post else DM.NotasA.Next;
      while not (DM.NotasA.Eof) do begin
        DM.NotasA.Edit;
        case N of
          1 : DM.NotasANOTA1.Value := N_Rep;
          2 : DM.NotasANOTA2.Value := N_Rep;
          3 : DM.NotasANOTA3.Value := N_Rep;
          4 : DM.NotasANOTA4.Value := N_Rep;
          5 : DM.NotasANOTA5.Value := N_Rep;
          6 : DM.NotasANOTA6.Value := N_Rep;
        end;
        DM.NotasA.Post;
      end;
    end;
  DM.IBTr_Anglo.CommitRetaining;
  Atualiza;
end;

procedure TMov_Notas.AtualizaA;
begin
  DM.NotasA.Close;
  if (BimestreA.ItemIndex >= 0) and
     (Aluno.KeyValue <> null) then begin
    Verifica_Notas_A.ParamByName('a_codigo').Value := DM.AlunosCODIGO.Value;
    Verifica_Notas_A.ParamByName('bimestre').Value := BimestreA.ItemIndex + 1;
    Verifica_Notas_A.ExecProc;
    If DM.NotasA.Modified then DM.NotasA.Post;
    DM.IBTr_Anglo.CommitRetaining;
    DM.NotasA.ParamByName('aluno').Value := DM.AlunosCODIGO.Value;
    DM.NotasA.ParamByName('serie').Value := DM.AlunosSERIE.Value;
    DM.NotasA.ParamByName('bimestre').Value := BimestreA.ItemIndex + 1;
    DM.NotasA.Open;
  end;
end;

procedure TMov_Notas.RxDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if DM.NotasA.State = dsEdit then DM.NotasA.Post else DM.NotasA.Edit;
  if key = '.' then key := ',';
end;

procedure TMov_Notas.RxDBGrid2GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (DM.NotasANOTA.Value < DM.ParametrosMEDIA.Value) and
     (not DM.NotasANOTA.IsNull) then
     BackGround := $00B3B3FF;
end;

procedure TMov_Notas.PageControl1Change(Sender: TObject);
begin
  If DM.Notas.Modified then DM.Notas.Post;
  If DM.NotasA.Modified then DM.NotasA.Post;
  DM.Notas.Close;
  DM.NotasA.Close;
  DM.IBTr_Anglo.CommitRetaining;
  Bimestre.ItemIndex := -1;
  BimestreA.ItemIndex := -1;
end;

procedure TMov_Notas.BProtocoloClick(Sender: TObject);
begin
  IBAtualiza.ParamByName('CODPROTOCOLO').Value := StrToInt(EdProtocolo.Text);
  IBAtualiza.ExecProc;
  rxprotocolo.Caption := 'Atualização de notas do protocolo número: '+EdProtocolo.Text+ ' foi concluido.';
  If DM.Notas.Modified then DM.Notas.Post;
  If DM.NotasA.Modified then DM.NotasA.Post;
  DM.Notas.Close;
  DM.NotasA.Close;
  DM.IBTr_Anglo.CommitRetaining;
  DM.Notas.Open;
  DM.NotasA.Open;
end;

procedure TMov_Notas.EdProtocoloEnter(Sender: TObject);
begin
  rxprotocolo.Caption := ' ';
end;

procedure TMov_Notas.RxDBGrid2ColEnter(Sender: TObject);
begin
    dm.qManutencaoFrentes.Close;
    dm.qManutencaoFrentes.SQL[2] := 'where disciplina = :bdisciplina and serief = :bserie';
    dm.qManutencaoFrentes.ParamByName('bdisciplina').Value := dm.NotasADISCIPLINA.Value;
    dm.qManutencaoFrentes.ParamByName('bserie').Value := dm.TurmasSERIE.Value;
    dm.qManutencaoFrentes.Open;
    QuantidadeFrentes := dm.qManutencaoFrentesQFRENTES.Value;
end;

procedure TMov_Notas.Turma2CloseUp(Sender: TObject);
begin
    dm.qManutencaoFrentes.Close;
    dm.qManutencaoFrentes.SQL[2] := 'where disciplina = :bdisciplina and serief = :bserie';
    dm.qManutencaoFrentes.ParamByName('bdisciplina').Value := dm.NotasADISCIPLINA.Value;
    dm.qManutencaoFrentes.ParamByName('bserie').Value := dm.TurmasSERIE.Value;
    dm.qManutencaoFrentes.Open;
end;

procedure TMov_Notas.AlunoCloseUp(Sender: TObject);
begin
    dm.qManutencaoFrentes.Close;
    dm.qManutencaoFrentes.SQL[2] := 'where disciplina = :bdisciplina and serief = :bserie';
    dm.qManutencaoFrentes.ParamByName('bdisciplina').Value := dm.NotasADISCIPLINA.Value;
    dm.qManutencaoFrentes.ParamByName('bserie').Value := dm.TurmasSERIE.Value;
    dm.qManutencaoFrentes.Open;
end;

procedure TMov_Notas.btnEditarnotasClick(Sender: TObject);
begin
  dm.Notas.Edit;
end;

procedure TMov_Notas.btnSalvarNotasClick(Sender: TObject);
begin
  dm.Notas.Post
end;
procedure TMov_Notas.BimestreClick(Sender: TObject);
begin
  Atualiza;
end;

procedure TMov_Notas.FormCreate(Sender: TObject);
begin
  FSenhaNotas.Visible := False;
end;

end.
