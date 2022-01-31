unit Ufcadastrodocumentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons;

type
  Tfdocumentos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdocumentos: Tfdocumentos;

implementation

uses UDM2;

{$R *.DFM}

procedure Tfdocumentos.FormShow(Sender: TObject);
begin
  DBEdit2.SetFocus;
  dm2.iqDocumento.Open;
end;

procedure Tfdocumentos.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
