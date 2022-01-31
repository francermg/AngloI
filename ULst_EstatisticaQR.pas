unit ULst_EstatisticaQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TLst_EstatisticaQR = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    Titulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRImage1: TQRImage;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    DetNota: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape3: TQRShape;
    QRDBText5: TQRDBText;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    Ano: TQRLabel;
    QRShape20: TQRShape;
    QRLabel11: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel14: TQRLabel;
    QRShape10: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRLabel15: TQRLabel;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRDBText10: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Lst_EstatisticaQR: TLst_EstatisticaQR;

implementation

uses UDM, UMenu;

{$R *.DFM}

procedure TLst_EstatisticaQR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Ano.Caption := Principal.Ano.Caption;
end;

end.
