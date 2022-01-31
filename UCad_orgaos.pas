unit UCad_orgaos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  Tfcad_orgaos = class(TForm)
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcad_orgaos: Tfcad_orgaos;

implementation

uses UDM, UDM2;

{$R *.DFM}

procedure Tfcad_orgaos.FormShow(Sender: TObject);
begin
dm.orgao.Open;
end;

procedure Tfcad_orgaos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dm.IBTr_ANGLO.CommitRetaining;
end;

end.

