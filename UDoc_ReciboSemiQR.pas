unit UDoc_ReciboSemiQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, ECC_Extenso;

type
  TDoc_ReciboSemiQR = class(TQuickRep)
    TitleBand1: TQRBand;
    QRShape2: TQRShape;
    QRImage1: TQRImage;
    QRLabel33: TQRLabel;
    QRLabel1: TQRLabel;
    Ano: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabelExtenso: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRECC_DataExtenso1: TQRECC_DataExtenso;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRImage2: TQRImage;
    QRShape5: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    ValorExtenso: TQRECC_ValorExtenso;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabelExtenso2: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText9: TQRDBText;
    QRECC_DataExtenso2: TQRECC_DataExtenso;
    QRDBText10: TQRDBText;
    qrlblreferencia1: TQRLabel;
    qrlblreferencia2: TQRLabel;
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Doc_ReciboSemiQR: TDoc_ReciboSemiQR;

implementation

uses UMenu, UDM;

{$R *.DFM}

procedure TDoc_ReciboSemiQR.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Ano.Caption := 'Ano: '+Principal.Ano.Caption;
//  ValorExtenso.Valor := DM.Bloquetos_SemiVALOR.Value;
  QRLabelExtenso.Caption := '('+ValorExtenso.Caption+')';
  QRLabelExtenso2.Caption := '('+ValorExtenso.Caption+')';
end;

end.
