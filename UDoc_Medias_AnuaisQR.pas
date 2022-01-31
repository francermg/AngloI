unit UDoc_Medias_AnuaisQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, jpeg;

type
  TDoc_Medias_AnuaisQR = class(TQuickRep)
    TitleBand1: TQRBand;
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
    M01: TQRDBText;
    NomeTurma: TQRLabel;
    M02: TQRDBText;
    M03: TQRDBText;
    M04: TQRDBText;
    M05: TQRDBText;
    M06: TQRDBText;
    M07: TQRDBText;
    M08: TQRDBText;
    M09: TQRDBText;
    M10: TQRDBText;
    M11: TQRDBText;
    M12: TQRDBText;
    M13: TQRDBText;
    M14: TQRDBText;
    M15: TQRDBText;
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
    QRBand2: TQRBand;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    D01: TQRLabel;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    D18: TQRLabel;
    D17: TQRLabel;
    D16: TQRLabel;
    D15: TQRLabel;
    D14: TQRLabel;
    D13: TQRLabel;
    D12: TQRLabel;
    D11: TQRLabel;
    D10: TQRLabel;
    D09: TQRLabel;
    D08: TQRLabel;
    D07: TQRLabel;
    D06: TQRLabel;
    D05: TQRLabel;
    D04: TQRLabel;
    D03: TQRLabel;
    D02: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    M18: TQRDBText;
    M17: TQRDBText;
    M16: TQRDBText;
    QRDBText22: TQRDBText;
    Ano: TQRLabel;
    C18: TQRLabel;
    C17: TQRLabel;
    C16: TQRLabel;
    C15: TQRLabel;
    C14: TQRLabel;
    C13: TQRLabel;
    C12: TQRLabel;
    C11: TQRLabel;
    C10: TQRLabel;
    C09: TQRLabel;
    C08: TQRLabel;
    C07: TQRLabel;
    C06: TQRLabel;
    C05: TQRLabel;
    C04: TQRLabel;
    C03: TQRLabel;
    C02: TQRLabel;
    C01: TQRLabel;
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetNotaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure M01Print(sender: TObject; var Value: String);
  private

  public

  end;

var
  Doc_Medias_AnuaisQR: TDoc_Medias_AnuaisQR;

implementation

uses UDM, UcadParametros, UMenu, UDoc_Medias_Anuais;

{$R *.DFM}

procedure TDoc_Medias_AnuaisQR.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  Ano.Caption := 'Ano: '+Principal.Ano.Caption;
  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value;
end;

procedure TDoc_Medias_AnuaisQR.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetNota.Color = clWhite then  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  DetNota.Color := clWhite;
end;

procedure TDoc_Medias_AnuaisQR.M01Print(sender: TObject;
  var Value: String);
begin
  if Doc_Medias_Anuais.Tipo.ItemIndex = 1 then
    if StrToFloat(Value) < DM.ParametrosMEDIA.Value then Value := 'X   '
     else Value := '';
end;

end.
