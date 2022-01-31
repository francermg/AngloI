unit Uprofessores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Placemnt, RxDBComb, ToolEdit, RXDBCtrl,
  RXCtrls, RxLookup, Grids, DBGrids, Buttons, DB, IB, RXSplit;

type
  Tfprofessores = class(TForm)
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
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    DBNavigator1: TDBNavigator;
    FS: TFormStorage;
    DBDateEdit1: TDBDateEdit;
    DBRadioGroup1: TDBRadioGroup;
    RxDBComboBox1: TRxDBComboBox;
    RxLabel1: TRxLabel;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    RxDBComboBox2: TRxDBComboBox;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit13: TDBEdit;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label24: TLabel;
    SBSalva: TSpeedButton;
    SBInserir: TSpeedButton;
    SBDeletar: TSpeedButton;
    SBCacelar: TSpeedButton;
    dblogin: TDBText;
    dbsenha: TDBText;
    Label28: TLabel;
    Label29: TLabel;
    TrocaSenha: TSpeedButton;
    Shape2: TShape;
    Label30: TLabel;
    RxSplitter1: TRxSplitter;
    SBgerador: TSpeedButton;
    Label31: TLabel;
    Label32: TLabel;
    bprofessor: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    brelacao: TBitBtn;
    bsair: TBitBtn;
    SBEditar: TSpeedButton;
    DBGrid1: TDBGrid;
    bfrentes: TBitBtn;
    dbcEstadoid: TDBComboBox;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    procedure FormShow(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SBSalvaClick(Sender: TObject);
    procedure SBInserirClick(Sender: TObject);
    procedure SBDeletarClick(Sender: TObject);
    procedure dgfrentesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SBCacelarClick(Sender: TObject);
    procedure TrocaSenhaClick(Sender: TObject);
    procedure SBgeradorClick(Sender: TObject);
    procedure RxDBLookupCombo6Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure brelacaoClick(Sender: TObject);
    procedure turmaCloseUp(Sender: TObject);
    procedure bsairClick(Sender: TObject);
    procedure SBEditarClick(Sender: TObject);
    procedure bfrentesClick(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fprofessores: Tfprofessores;

implementation

uses UDM, ULoginSenha, Urelacaoprofsenha, Usenhaprofessores, UMenu;

{$R *.DFM}

Procedure TrataBotoes;
Begin
  with fprofessores do
  Begin
    SBInserir.Enabled := not SBInserir.Enabled;
    SBEditar.Enabled := not SBEditar.Enabled;
    SBSalva.Enabled := not SBSalva.Enabled;
    SBDeletar.Enabled := SBDeletar.Enabled;
    SBCacelar.Enabled := not SBCacelar.Enabled;
  End;
End;

procedure Tfprofessores.FormShow(Sender: TObject);
begin
  dm.Professores.Open;
  dm.qMunicipio.Open;
  dm.ibGradeprofessor.Open;
  dm.orgao.Open;
  fprofessores.Height := 430;
  Application.OnMessage := nil;
end;

procedure Tfprofessores.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  If Button = nbInsert Then
   Begin
     dm.Turmas.Open;
     dm.Disciplinas.Open;
   End;
   If Button = nbEdit Then
    Begin
     dm.Turmas.Open;
     dm.Disciplinas.Open;
    End;
end;

procedure Tfprofessores.SBSalvaClick(Sender: TObject);
begin
  Try
    If dm.ibGradeprofessor.State in [dsInsert, dsEdit] Then
     Begin
       dm.ibGradeprofessor.Post;
       dm.IBTr_ANGLO.CommitRetaining;
       TrataBotoes;
     End;
   Except
     on  EIBInterBaseError do
         ShowMessage('Favor verifique se todos os campos foram preenchidos' +#13 +' ou se esta frente já esta cadastrada');
   end;
end;

procedure Tfprofessores.SBInserirClick(Sender: TObject);
begin
  dm.Turmas.Open;
  dm.Disciplinas.Open;
  TrataBotoes;
end;

procedure Tfprofessores.SBDeletarClick(Sender: TObject);
begin
   if MessageDlg('Deseja relamente excluir esta frente ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      dm.ibGradeprofessor.Delete;
end;

procedure Tfprofessores.dgfrentesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{  case key of
    13: key := 9;
  end;
 if ((Shift = [ssCtrl]) and (key = vk_delete)) THEN
    Abort;}
end;

procedure Tfprofessores.SBCacelarClick(Sender: TObject);
begin
  dm.ibGradeprofessor.Cancel;
  TrataBotoes;
end;

procedure Tfprofessores.TrocaSenhaClick(Sender: TObject);
begin
   Try
     Application.CreateForm(TfsenhaLogin, fsenhaLogin);
     fSenhaLogin.ShowModal;
   Finally
     fsenhaLogin.Free;
   End;
end;

procedure Tfprofessores.SBgeradorClick(Sender: TObject);
begin
  dm.Professores.Edit;
  dm.ProfessoresLOGIN.Value := dm.LoginProf;
  dm.ProfessoresSENHA.Value := dm.SenhaProf;
  dm.Professores.Post;
end;

procedure Tfprofessores.RxDBLookupCombo6Exit(Sender: TObject);
begin
 if dm.Professores.State in [dsInsert, dsEdit] Then
 Begin
  dm.Professores.Post;
  dm.Professores.Edit;
 End;
end;

procedure Tfprofessores.BitBtn1Click(Sender: TObject);
begin
   dm.Professores.First;
   While not dm.Professores.Eof do
    If dm.ProfessoresLOGIN.IsNull Then
    Begin
      dm.Professores.Edit;
      dm.ProfessoresLOGIN.Value := dm.LoginProf;
      dm.ProfessoresSENHA.Value := dm.SenhaProf;
      dm.Professores.Post;
      dm.Professores.Next;
    End;
end;

procedure Tfprofessores.brelacaoClick(Sender: TObject);
begin
  Try
   Application.CreateForm(Tfrelacaoprofsenha, frelacaoprofsenha);
   frelacaoprofsenha.rlprosenha.Preview;
  Finally
   frelacaoprofsenha.rlprosenha.Destroy;
  End;
end;

procedure Tfprofessores.turmaCloseUp(Sender: TObject);
begin
  DM.ibGradeprofessorTURMA.Value := dm.TurmasTURMA.Value;
end;

procedure Tfprofessores.bsairClick(Sender: TObject);
begin
  Close;
end;

procedure Tfprofessores.SBEditarClick(Sender: TObject);
begin
  dm.ibGradeprofessor.Edit;
  dm.Turmas.Open;
  dm.Disciplinas.Open;
  TrataBotoes;
end;

procedure Tfprofessores.bfrentesClick(Sender: TObject);
begin
if bfrentes.Caption = 'Cadastrar Setores' Then
  Begin
    fprofessores.Height := 600;
    dbgrid1.Visible := True;
    bfrentes.Caption := 'OK';
  End
  else
   Begin
    if dm.ibGradeprofessor.state in [dsInsert, dsEdit] Then  dm.ibGradeprofessor.Post;
    DBGrid1.Visible := False;
    fprofessores.Height := 430;
    bfrentes.Caption := 'Cadastrar Setores';
   End;
end;

procedure Tfprofessores.DBGrid1Exit(Sender: TObject);
begin
{  if dm.ibGradeprofessor.state in [dsinsert,dsedit] Then
     dm.ibGradeprofessor.Post;}
end;

procedure Tfprofessores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.OnMessage := Principal.ProcessaMsg;
  fsenhaprofessores.Close;
end;

procedure Tfprofessores.FormCreate(Sender: TObject);
begin
     fsenhaprofessores.Visible := False;
end;

end.
