unit UCad_Turmas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Placemnt, ToolEdit, RXDBCtrl, Mask, DBCtrls, ComCtrls,
  ExtCtrls, RxDBComb, Grids, DBGrids;

type
  TCad_Turmas = class(TForm)
    FS1: TFormStorage;
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    RxDBGrid1: TRxDBGrid;
    RxDBComboBox1: TRxDBComboBox;
    Label5: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label31: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_Turmas: TCad_Turmas;

implementation

uses UDM;

{$R *.DFM}

//============================================================== SHOW / CLOSE
procedure TCad_Turmas.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DM.Turmas.Open;
end;

procedure TCad_Turmas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If DM.Turmas.Modified then DM.Turmas.Post;
  DM.Turmas.Close;
  DM.IBTr_Anglo.CommitRetaining;
end;

//==================================================================== GERAL
procedure TCad_Turmas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
     Perform(WM_NextDlgCtl,0,0);   Key := #0;
  end;
end;

procedure TCad_Turmas.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbInsert then
  Begin
    DBEdit1.Enabled := True;
    DBEdit2.Enabled := True;
    PageControl1.ActivePageIndex := 0;
    DBEdit1.SetFocus;
  end;
//*************************************
  if Button = nbEdit Then
  Begin
  DBEdit1.Enabled := True;
  DBEdit2.Enabled := True;
  End;
//*************************************
  if Button = nbPost then
  Begin
     BitBtn1.SetFocus;
     DBEdit1.Enabled := False;;
     DBEdit2.Enabled := False;
  End;
//*************************************
  if Button = nbCancel Then
  Begin
     BitBtn1.SetFocus;
     DBEdit1.Enabled := False;;
     DBEdit2.Enabled := False;
  End;
end;

end.
