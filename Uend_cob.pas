unit Uend_cob;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, RXCtrls, RxLookup, StdCtrls, Mask, DBCtrls, DB, Grids, DBGrids,
  Buttons;

type
  Tfend_cob = class(TForm)
    fp: TFormPlacement;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxLabel1: TRxLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    binserir: TBitBtn;
    bsalvar: TBitBtn;
    bapagar: TBitBtn;
    bsair: TBitBtn;
    DBGrid1: TDBGrid;
    uf: TDBText;
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure binserirClick(Sender: TObject);
    procedure bsalvarClick(Sender: TObject);
    procedure bsairClick(Sender: TObject);
    procedure bapagarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fend_cob: Tfend_cob;

implementation

uses UDM, UCad_Alunos;

{$R *.DFM}

procedure Tfend_cob.DBEdit1Exit(Sender: TObject);
begin
  dm.end_cobCOD_ALUNO.Value := StrToInt(Cad_Alunos.DBEdit1.Text);
//  dm.end_cobCOD_ALUNO.Value := dm.AlunosCODIGO.Value;
  DBEdit1.Enabled := False;
end;

procedure Tfend_cob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// if dm.end_cob.State in [dsInsert, dsEdit] Then
//    dm.end_cob.Post;
end;

procedure Tfend_cob.DBEdit1Enter(Sender: TObject);
begin
  if dm.end_cob.State in [dsBrowse] then
   dm.end_cob.Append;
end;

procedure Tfend_cob.FormShow(Sender: TObject);
begin
  dm.end_cob.Close;
  dm.end_cob.Params[0].Value := dm.AlunosCODIGO.Value;
  dm.end_cob.Open;
  if dm.end_cobCOD_ALUNO.IsNull Then
    Begin
     dm.end_cob.Open;
     dm.qMunicipio.Open;
     fend_cob.DBEdit1.Enabled := True;
    End
     Else
       Begin
         dm.end_cob.Open;
         dm.qMunicipio.Open;
      End;
end;

procedure Tfend_cob.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
     Perform(WM_NextDlgCtl,0,0);   Key := #0;
  end;
end;

procedure Tfend_cob.binserirClick(Sender: TObject);
begin
  dm.end_cob.Open;
  dm.qMunicipio.Open;
  dm.end_cob.Insert;
  bsalvar.Enabled:= True;
  bapagar.Enabled := False;
  bsair.Enabled := False;
  binserir.Enabled := False;
end;

procedure Tfend_cob.bsalvarClick(Sender: TObject);
begin
  dm.end_cob.Post;
  bsalvar.Enabled:= False;
  bapagar.Enabled := True;
  bsair.Enabled := True;
  binserir.Enabled := True;
end;

procedure Tfend_cob.bsairClick(Sender: TObject);
begin
  Close;
end;

procedure Tfend_cob.bapagarClick(Sender: TObject);
begin
  dm.end_cob.Delete;
end;

end.
