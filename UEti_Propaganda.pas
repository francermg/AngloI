unit UEti_Propaganda;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, jpeg;

type
  TEti_Propaganda = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRImage1: TQRImage;
  private

  public

  end;

var
  Eti_Propaganda: TEti_Propaganda;

implementation

uses UDM, UDM2;

{$R *.DFM}

end.
