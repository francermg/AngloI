unit UCad_Disciplinas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Placemnt, Mask, DBCtrls, ComCtrls, ExtCtrls, Grids,
  DBGrids, RXDBCtrl, IBSQLMonitor, Db, IBCustomDataSet, IBStoredProc,
  RxLookup;

type
  TCad_Disciplinas = class(TForm)
    BitBtn1: TBitBtn;
    FS1: TFormStorage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    RxDBGrid1: TRxDBGrid;
    Label5: TLabel;
    TabSheet3: TTabSheet;
    Label8: TLabel;
    Bimestre: TRadioGroup;
    DBText1: TDBText;
    Serie: TRadioGroup;
    DBMemo1: TDBMemo;
    Label0: TLabel;
    VerificaMat: TIBStoredProc;
    Label6: TLabel;
    DBFrentes: TDBRadioGroup;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SerieClick(Sender: TObject);
    procedure BimestreClick(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    procedure AtualizaMat;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_Disciplinas: TCad_Disciplinas;

implementation

uses UDM, UArea_conhecimento;

{$R *.DFM}

//============================================================== SHOW / CLOSE
procedure TCad_Disciplinas.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DM.Disciplinas.Open;
  dm.Areas.Open;
end;

procedure TCad_Disciplinas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.Disciplinas.Modified then DM.Disciplinas.Post;
  DM.Disciplinas.Close;
  if DM.Mat_Lecionada.Modified then DM.Mat_Lecionada.Post;
  DM.Mat_Lecionada.Close;
  DM.IBTr_Anglo.CommitRetaining;
end;

//==================================================================== GERAL
procedure TCad_Disciplinas.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  if Key = #13 then begin
//     Perform(WM_NextDlgCtl,0,0);   Key := #0;
//  end;
end;

procedure TCad_Disciplinas.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbInsert then begin
    DBEdit1.Enabled := true;
    PageControl1.ActivePageIndex := 0;
    DBEdit1.SetFocus; end
   else begin
    DBEdit1.Enabled := false;
  end;
  if Button = nbPost then BitBtn1.SetFocus;
  if PageControl1.ActivePageIndex = 2 then AtualizaMat;
end;

//==================================================================== CONTEÚDO
procedure TCad_Disciplinas.AtualizaMat;
begin
  if DM.Disciplinas.Active = true then begin
    VerificaMat.ParamByName('serie').Value := Serie.ItemIndex + 1;
    VerificaMat.ParamByName('bimestre').Value := Bimestre.ItemIndex + 1;
    VerificaMat.ParamByName('disciplina').Value := DM.DisciplinasCODIGO.Value;
    VerificaMat.ExecProc;
    if DM.Mat_Lecionada.Modified then DM.Mat_Lecionada.Post;
    DM.Mat_Lecionada.Close;
    DM.Mat_Lecionada.ParamByName('serie').Value := Serie.ItemIndex + 1;
    DM.Mat_Lecionada.ParamByName('bimestre').Value := Bimestre.ItemIndex + 1;
    DM.Mat_Lecionada.ParamByName('disciplina').Value := DM.DisciplinasCODIGO.Value;
    DM.Mat_Lecionada.Open;
  end;
  Label0.Caption  := IntToStr(Serie.ItemIndex+1)+'ª Série / '+
            IntToStr(Bimestre.ItemIndex+1)+'º Bimestre';
end;

procedure TCad_Disciplinas.SerieClick(Sender: TObject);
begin
  AtualizaMat;
end;

procedure TCad_Disciplinas.BimestreClick(Sender: TObject);
begin
  AtualizaMat;
end;

procedure TCad_Disciplinas.TabSheet3Show(Sender: TObject);
begin
  AtualizaMat;
end;

procedure TCad_Disciplinas.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(Tfarea_conhecimento, farea_conhecimento);
  Try
   farea_conhecimento.ShowModal;
  Finally
   farea_conhecimento.Free;
  End;
end;

end.
