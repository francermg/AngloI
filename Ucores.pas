unit Ucores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, RXCtrls, RXDBCtrl, Grids,
  DBGrids;

type
  Tfcores = class(TForm)
    Fecha: TBitBtn;
    DBNavigator: TDBNavigator;
    DBcores: TDBEdit;
    RxLabel1: TRxLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcores: Tfcores;

implementation

uses UDM;

{$R *.DFM}

end.
