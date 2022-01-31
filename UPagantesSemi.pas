unit UPagantesSemi;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQPagantesSemi = class(TQuickRep)
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel33: TQRLabel;
    QRBand2: TQRBand;
    QRNome: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand3: TQRBand;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRMes: TQRLabel;
    QRCodigo: TQRLabel;
    QRDCodigo: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRObs: TQRLabel;
    QRMesC: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  QPagantesSemi: TQPagantesSemi;

implementation

uses UCad_Semi_Extensivo, UDM;

{$R *.DFM}

procedure TQPagantesSemi.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRMes.Caption := DateToStr(Now);
//  Cad_Semi_Extensivo.CMes.Text;
end;

procedure TQPagantesSemi.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QRBand2.Color = clWhite then  QRBand2.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  QRBand2.Color := clWhite;
end;

end.

