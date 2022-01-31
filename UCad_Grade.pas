unit UCad_Grade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, RXDBCtrl, Buttons, DBCtrls, ComCtrls,
  Db, IBCustomDataSet, IBQuery, Placemnt;

type
  TCad_Grade = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    QualSerie: TRadioGroup;
    ProxSeq: TIBQuery;
    ProxSeqULTSEQ: TSmallintField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    FS1: TFormStorage;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure QualSerieClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBGrid1ShowEditor(Sender: TObject; Field: TField;
      var AllowEdit: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_Grade: TCad_Grade;

implementation

uses UDM;

{$R *.DFM}

//============================================================== SHOW / CLOSE
procedure TCad_Grade.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DM.Grade.SelectSQL.Strings[2] := 'where SERIE = :serie';
  DM.Grade.ParamByName('serie').AsInteger := QualSerie.ItemIndex + 1;
  DM.Grade.Open;
  DM.Disciplinas.Open;
end;

procedure TCad_Grade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If DM.Grade.Modified then DM.Grade.Post;
  DM.Grade.Close;
  DM.Disciplinas.Close;
  DM.IBTr_Anglo.CommitRetaining;
end;

//==================================================================== GERAL
procedure TCad_Grade.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
     Perform(WM_NextDlgCtl,0,0);   Key := #0;
  end;
end;

procedure TCad_Grade.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbInsert then begin
    DM.GradeSERIE.Value := QualSerie.ItemIndex + 1;
    ProxSeq.ParamByName('serie').AsInteger := QualSerie.ItemIndex + 1;
    ProxSeq.Open;
    DM.GradeSEQUENCIA.Value := ProxSeqUltSeq.Value + 1;
    ProxSeq.Close;
  end;
  if Button = nbPost then BitBtn1.SetFocus;
end;

procedure TCad_Grade.QualSerieClick(Sender: TObject);
begin
  If DM.Grade.Modified then DM.Grade.Post;
  DM.Grade.Close;
  DM.Grade.ParamByName('serie').AsInteger := QualSerie.ItemIndex + 1;
  DM.Grade.Open;
end;

procedure TCad_Grade.BitBtn2Click(Sender: TObject);
var seq0 : integer;
begin
  seq0 := DM.GradeDISCIPLINA.Value;
  DM.Grade.Edit;
  DM.GradeSEQUENCIA.Value := DM.GradeSEQUENCIA.Value - 1;
  DM.Grade.Post;
  DM.Grade.Prior;
  DM.Grade.Edit;
  DM.GradeSEQUENCIA.Value := DM.GradeSEQUENCIA.Value + 1;
  DM.Grade.Post;
  DM.Grade.Close;
  DM.Grade.Open;
  DM.Grade.Locate('DISCIPLINA', seq0, [loPartialKey]);
end;

procedure TCad_Grade.BitBtn3Click(Sender: TObject);
var seq0 : integer;
begin
  seq0 := DM.GradeDISCIPLINA.Value;
  DM.Grade.Next;
  DM.Grade.Edit;
  DM.GradeSEQUENCIA.Value := DM.GradeSEQUENCIA.Value - 1;
  DM.Grade.Post;
  DM.Grade.Prior;
  DM.Grade.Edit;
  DM.GradeSEQUENCIA.Value := DM.GradeSEQUENCIA.Value + 1;
  DM.Grade.Post;
  DM.Grade.Close;
  DM.Grade.Open;
  DM.Grade.Locate('DISCIPLINA', seq0, [loPartialKey]);
end;

procedure TCad_Grade.RxDBGrid1ShowEditor(Sender: TObject; Field: TField;
  var AllowEdit: Boolean);
begin
{  if DM.Grade.State = dsInsert then DM.Grade.Cancel;
  AllowEdit := false;}
end;

end.
