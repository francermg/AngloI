unit ULst_EstatisticaTurQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TLst_EstatisticaTurQR = class(TQuickRep)
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
    QRShape8: TQRShape;
    QRShape2: TQRShape;
    QRShape14: TQRShape;
    Ano: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    TotSerie: TQRBand;
    QRLabel6: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRExpr2: TQRExpr;
    QRShape3: TQRShape;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Lst_EstatisticaTurQR: TLst_EstatisticaTurQR;

implementation

uses UDM, UMenu;

{$R *.DFM}

procedure TLst_EstatisticaTurQR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Ano.Caption := Principal.Ano.Caption;
  QRShape3.Brush.Color := DM.ParametrosCOR_ZEBRADO.Value;
end;

end.
