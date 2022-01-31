Unit URel_QRMens_AReceberRes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, jpeg;

type
  TRel_QRMens_AReceberRes = class(TQuickRep)
    TitleBand1: TQRBand;
    Selec: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    Titulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRImage1: TQRImage;
    SummaryBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel15: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
  private

  public

  end;

var
  Rel_QRMens_AReceberRes: TRel_QRMens_AReceberRes;

implementation

uses UDM, UMenu, UDM2;

{$R *.DFM}

end.
