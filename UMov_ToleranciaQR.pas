unit UMov_ToleranciaQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, Placemnt, QrAngLbl, jpeg;

type
  TMov_ToleranciaQR = class(TQuickRep)
    DetNota: TQRBand;
    QRDBText2: TQRDBText;
    Texto: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    QRExpr1: TQRExpr;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    Titulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRImage1: TQRImage;
    Ano: TQRLabel;
    LabelPeriodo: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetNotaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Mov_ToleranciaQR: TMov_ToleranciaQR;

implementation

uses UDM, UMenu, ULst_Alunos, UMov_Ocorrencias;

{$R *.DFM}

procedure TMov_ToleranciaQR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Ano.Caption := Principal.Ano.Caption;
end;

procedure TMov_ToleranciaQR.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value;
end;

procedure TMov_ToleranciaQR.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetNota.Color = clWhite then  Texto.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  Texto.Color := clWhite;
  if DetNota.Color = clWhite then  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  DetNota.Color := clWhite;
end;

end.
