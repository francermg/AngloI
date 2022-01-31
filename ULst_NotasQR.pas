unit ULst_NotasQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, Placemnt, QrAngLbl;

type
  TLst_NotasQR = class(TQuickRep)
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
    DetNota: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape15: TQRShape;
    QRShape27: TQRShape;
    QRShape39: TQRShape;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape12: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    Ano: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape14: TQRShape;
    QRShape20: TQRShape;
    QRLabel8: TQRLabel;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel17: TQRLabel;
    N1: TQRDBText;
    N2: TQRDBText;
    N3: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel9: TQRLabel;
    Recup: TQRDBText;
    QRDBText4: TQRDBText;
    Disc: TQRLabel;
    QRLabel11: TQRLabel;
    Tur: TQRLabel;
    Ser: TQRLabel;
    Seri: TQRLabel;
    Turm: TQRLabel;
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
  Lst_NotasQR: TLst_NotasQR;
  TotAtivos : Integer;

implementation

uses UDM, UMenu, UDM2, ULst_alunos_Notas;

{$R *.DFM}

procedure TLst_NotasQR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Ano.Caption := Principal.Ano.Caption;
  Seri.Caption := DM2.IBNotas_AluSERIER.Text+'º';
  Turm.Caption := '" '+DM2.IBNotas_AluTURMAR.Text+' "';
end;

procedure TLst_NotasQR.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value;
end;

procedure TLst_NotasQR.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetNota.Color = clWhite then  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  DetNota.Color := clWhite;
end;

end.
