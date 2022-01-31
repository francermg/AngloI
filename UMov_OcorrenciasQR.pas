unit UMov_OcorrenciasQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, Placemnt, QrAngLbl, jpeg;

type
  TMov_OcorrenciasQR = class(TQuickRep)
    DetNota: TQRBand;
    QRDBText2: TQRDBText;
    Texto: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape8: TQRShape;
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
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape27: TQRShape;
    Ano: TQRLabel;
    LabelAluno: TQRLabel;
    LabelPeriodo: TQRLabel;
    LabelSerie: TQRLabel;
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
  Mov_OcorrenciasQR: TMov_OcorrenciasQR;

implementation

uses UDM, UMenu, ULst_Alunos, UMov_Ocorrencias;

{$R *.DFM}

procedure TMov_OcorrenciasQR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Ano.Caption := Principal.Ano.Caption;
end;

procedure TMov_OcorrenciasQR.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value;
end;

procedure TMov_OcorrenciasQR.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  if DetNota.Color = clWhite then  Texto.Color := DM.ParametrosCOR_ZEBRADO.Value
//   else  Texto.Color := clWhite;
//  if DetNota.Color = clWhite then  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
//   else  DetNota.Color := clWhite;
end;

end.
