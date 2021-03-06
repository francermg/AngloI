unit UDoc_Notas_BimestraisQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, Placemnt, QrAngLbl, jpeg;

type
  TDoc_Notas_BimestraisQR = class(TQuickRep)
    TitleBand1: TQRBand;
    Bimestre: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    Titulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRImage1: TQRImage;
    QRLabel12: TQRLabel;
    DetNota: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    NomeTurma: TQRLabel;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText1: TQRDBText;
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
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
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
    QRShape20: TQRShape;
    QRShape21: TQRShape;
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
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    qrlblD01: TQRLabel;
    qrlblD02: TQRLabel;
    qrlblD03: TQRLabel;
    qrlblD04: TQRLabel;
    qrlblD05: TQRLabel;
    qrlblD06: TQRLabel;
    qrlblD07: TQRLabel;
    qrlblD08: TQRLabel;
    qrlblD09: TQRLabel;
    qrlblD10: TQRLabel;
    qrlblD11: TQRLabel;
    qrlblD12: TQRLabel;
    qrlblD13: TQRLabel;
    qrlblD14: TQRLabel;
    qrlblD15: TQRLabel;
    qrlblD16: TQRLabel;
    QRShape40: TQRShape;
    qrlblD17: TQRLabel;
    QRShape41: TQRShape;
    qrlblD18: TQRLabel;
    QRShape42: TQRShape;
    qrlblD19: TQRLabel;
    QRShape43: TQRShape;
    qrlblD20: TQRLabel;
    QRShape44: TQRShape;
    qrlblD21: TQRLabel;
    QRShape45: TQRShape;
    qrlblD22: TQRLabel;
    QRShape46: TQRShape;
    qrlblD23: TQRLabel;
    QRShape47: TQRShape;
    qrlblD24: TQRLabel;
    QRShape48: TQRShape;
    qrlblD25: TQRLabel;
    QRShape49: TQRShape;
    qrlblD26: TQRLabel;
    QRShape50: TQRShape;
    qrlblD27: TQRLabel;
    QRShape51: TQRShape;
    qrlblD28: TQRLabel;
    QRShape52: TQRShape;
    qrlblD29: TQRLabel;
    QRShape53: TQRShape;
    QRDBText19: TQRDBText;
    QRShape54: TQRShape;
    QRDBText20: TQRDBText;
    QRShape55: TQRShape;
    QRDBText21: TQRDBText;
    QRShape56: TQRShape;
    QRDBText22: TQRDBText;
    QRShape57: TQRShape;
    QRDBText23: TQRDBText;
    QRShape58: TQRShape;
    QRDBText24: TQRDBText;
    QRShape59: TQRShape;
    QRDBText25: TQRDBText;
    QRShape60: TQRShape;
    QRDBText26: TQRDBText;
    QRShape61: TQRShape;
    QRDBText27: TQRDBText;
    QRShape62: TQRShape;
    QRDBText28: TQRDBText;
    QRShape63: TQRShape;
    QRDBText29: TQRDBText;
    QRShape64: TQRShape;
    QRDBText30: TQRDBText;
    QRShape65: TQRShape;
    QRDBText31: TQRDBText;
    QRShape66: TQRShape;
    QRDBText32: TQRDBText;
    QRShape67: TQRShape;
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetNotaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Doc_Notas_BimestraisQR: TDoc_Notas_BimestraisQR;

implementation

uses UDM, UcadParametros;

{$R *.DFM}

procedure TDoc_Notas_BimestraisQR.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value;
end;

procedure TDoc_Notas_BimestraisQR.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetNota.Color = clWhite then  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  DetNota.Color := clWhite;
end;

end.
