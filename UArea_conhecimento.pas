unit UArea_conhecimento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons;

type
  Tfarea_conhecimento = class(TForm)
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  farea_conhecimento: Tfarea_conhecimento;

implementation

uses UDM;

{$R *.DFM}

procedure Tfarea_conhecimento.FormShow(Sender: TObject);
begin
  DM.Areas.Open;
end;

procedure Tfarea_conhecimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Areas.Close;
end;

end.
