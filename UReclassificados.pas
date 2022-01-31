unit UReclassificados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, RXCtrls, Grids, DBGrids;

type
  TFReclassificados = class(TForm)
    DBGrid1: TDBGrid;
    RxLabel1: TRxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReclassificados: TFReclassificados;

implementation

uses UDM2;

{$R *.DFM}

end.
