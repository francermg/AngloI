unit UCad_Calendario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, StdCtrls, Buttons, Grids, DBGrids, RXDBCtrl;

type
  TCad_Calendario = class(TForm)
    BitBtn1: TBitBtn;
    FS1: TFormStorage;
    RxDBGrid1: TRxDBGrid;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_Calendario: TCad_Calendario;

implementation

uses UDM;

{$R *.DFM}

procedure TCad_Calendario.FormShow(Sender: TObject);
begin
  DM.Bimestres.Open;
end;

procedure TCad_Calendario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Bimestres.Close;
end;

end.
