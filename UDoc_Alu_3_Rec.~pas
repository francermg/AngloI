unit UDoc_Alu_3_Rec;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QrAngLbl, jpeg;

type
  TDoc_Alu_3_Rec = class(TQuickRep)
    titulo: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    NomeTurma: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    detalhes: TQRBand;
    QRDBText1: TQRDBText;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape6: TQRShape;
    QRDBText4: TQRDBText;
    QRShape7: TQRShape;
    QRDBText5: TQRDBText;
    QRShape8: TQRShape;
    QRDBText6: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape11: TQRShape;
    QRDBText9: TQRDBText;
    QRShape12: TQRShape;
    QRDBText10: TQRDBText;
    QRShape13: TQRShape;
    QRDBText11: TQRDBText;
    QRShape14: TQRShape;
    QRDBText12: TQRDBText;
    QRShape15: TQRShape;
    QRDBText13: TQRDBText;
    QRShape16: TQRShape;
    QRDBText14: TQRDBText;
    QRShape17: TQRShape;
    QRDBText15: TQRDBText;
    QRShape18: TQRShape;
    QRDBText16: TQRDBText;
    QRShape19: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRShape21: TQRShape;
    QRShape20: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    data: TQRSysData;
    DataImpressao: TQRLabel;
    D1: TQRLabel;
    D2: TQRLabel;
    D3: TQRLabel;
    D4: TQRLabel;
    D5: TQRLabel;
    D6: TQRLabel;
    D7: TQRLabel;
    D8: TQRLabel;
    D9: TQRLabel;
    D10: TQRLabel;
    D11: TQRLabel;
    D12: TQRLabel;
    D13: TQRLabel;
    D14: TQRLabel;
    D15: TQRLabel;
    procedure detalhesBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Doc_Alu_3_Rec: TDoc_Alu_3_Rec;

implementation

uses UDM, UDM2;

{$R *.DFM}

procedure TDoc_Alu_3_Rec.detalhesBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if Detalhes.Color = clWhite then  Detalhes.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  Detalhes.Color := clWhite;
end;

end.
