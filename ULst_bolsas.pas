unit ULst_bolsas;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TLst_bolsas = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    Titulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRImage1: TQRImage;
    QRShape9: TQRShape;
    QRShape15: TQRShape;
    QRShape27: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape14: TQRShape;
    Ano: TQRLabel;
    DetNota: TQRBand;
    QRDBText3: TQRDBText;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRShape39: TQRShape;
    QRShape13: TQRShape;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabelBolsa: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRShape6: TQRShape;
    QRDBText4: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetNotaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Lst_bolsas: TLst_bolsas;

implementation

uses UMenu, UDM, UBolsas;

{$R *.DFM}

procedure TLst_bolsas.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    Ano.Caption := Principal.Ano.Caption;
  if Bolsas.Senha.Text = DM.ParametrosTAXA.Value then
     begin
      Lst_Bolsas.TitleBand1.Enabled := True;
      Lst_Bolsas.DetNota.Enabled := True;
      Lst_Bolsas.QRBand2.Enabled := True;
     end;

end;

procedure TLst_bolsas.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetNota.Color = clWhite then  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  DetNota.Color := clWhite;
end;

end.
