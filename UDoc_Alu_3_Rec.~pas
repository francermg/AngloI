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
    D12: TQRLabel;
    D13: TQRLabel;
    D19: TQRLabel;
    D20: TQRLabel;
    D26: TQRLabel;
    D27: TQRLabel;
    QRShape44: TQRShape;
    D28: TQRLabel;
    D29: TQRLabel;
    D30: TQRLabel;
    D31: TQRLabel;
    D33: TQRLabel;
    D34: TQRLabel;
    D35: TQRLabel;
    D36: TQRLabel;
    D37: TQRLabel;
    D38: TQRLabel;
    detalhes: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRShape55: TQRShape;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    D50: TQRLabel;
    QRShape46: TQRShape;
    QRShape43: TQRShape;
    QRShape42: TQRShape;
    QRShape41: TQRShape;
    QRShape47: TQRShape;
    QRShape40: TQRShape;
    QRShape39: TQRShape;
    QRShape36: TQRShape;
    QRShape38: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape48: TQRShape;
    QRShape31: TQRShape;
    QRShape30: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape32: TQRShape;
    QRShape25: TQRShape;
    QRShape24: TQRShape;
    QRShape23: TQRShape;
    QRShape22: TQRShape;
    QRShape26: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape20: TQRShape;
    QRShape27: TQRShape;
    QRShape33: TQRShape;
    QRShape45: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape21: TQRShape;
    QRShape37: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
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
