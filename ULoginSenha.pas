unit ULoginSenha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, RXSplit, RXCtrls, Mask, DBCtrls, DB;

type
  Tfsenhalogin = class(TForm)
    dbsenha: TDBEdit;
    dblogin: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    RxLabel1: TRxLabel;
    RxSplitter1: TRxSplitter;
    beditar: TBitBtn;
    bsalvar: TBitBtn;
    procedure beditarClick(Sender: TObject);
    procedure bsalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fsenhalogin: Tfsenhalogin;

implementation

uses UDM;

{$R *.DFM}

procedure Tfsenhalogin.beditarClick(Sender: TObject);
begin
  dm.Professores.Edit;
  dblogin.SetFocus;
end;

procedure Tfsenhalogin.bsalvarClick(Sender: TObject);
begin
  if dm.Professores.State in [dsInsert, dsEdit] Then
     dm.Professores.Post;
end;

end.
