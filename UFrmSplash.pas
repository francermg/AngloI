unit UFrmSplash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXCtrls, RxGIF, ExtCtrls, Gauges, IniFiles, jpeg;

type
  TFrmSplash = class(TForm)
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    GSplash: TGauge;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSplash: TFrmSplash;

implementation

uses UMenu, UDM;


{$R *.DFM}


end.


