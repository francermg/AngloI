unit UCadastroescola;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons, RxDBComb, db;

type
  Tfcadastroescola = class(TForm)
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcadastroescola: Tfcadastroescola;

implementation

uses UDM2, UDM;

{$R *.DFM}

procedure Tfcadastroescola.FormShow(Sender: TObject);
begin
  if dm2.iqescola.Active = False then
  dm2.iqescola.Open;
end;

procedure Tfcadastroescola.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dm2.iqescola.state in [dsInsert, dsBrowse] then
     dm.IBTr_ANGLO.CommitRetaining;
end;

end.

