unit UMov_Frequencia_FaltasPeriodo_QR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery;

type
  TMov_Frequencia_FaltasPeriodo_QR = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    Titulo: TQRLabel;
    QRSysData1: TQRSysData;
    DetFaltas: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRImage1: TQRImage;
    SummaryBand1: TQRBand;
    Dia: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel15: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    Obs: TQRLabel;
    Rodape: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText1: TQRDBText;
    procedure DetFaltasBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Mov_Frequencia_FaltasPeriodo_QR: TMov_Frequencia_FaltasPeriodo_QR;
  CodAlu : Integer;

implementation

uses UDM, UDM2;

{$R *.DFM}

procedure TMov_Frequencia_FaltasPeriodo_QR.DetFaltasBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if DM.FaltasDiaCURSINHO.Value = 0 then Obs.Caption := ''
   else Obs.Caption := 'Cursinho';
end;

end.

