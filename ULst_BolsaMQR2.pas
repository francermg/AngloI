unit ULst_BolsaMQR2;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, Placemnt, QrAngLbl, TeEngine, Series, TeeProcs, Chart, DBChart,
  QrTee;

type
  TLst_BolsaMQR2 = class(TQuickRep)
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
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape12: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    ATIVOS: TQRLabel;
    QRDBText1: TQRDBText;
    Ano: TQRLabel;
    PORC: TQRDBText;
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetNotaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Lst_BolsaMQR2: TLst_BolsaMQR2;
  TotAtivos : Integer;

implementation

uses UDM, UMenu, ULst_Alunos, UDM2, UBolsas, ULst_BolsaMQR;

{$R *.DFM}

procedure TLst_BolsaMQR2.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  TotAtivos := 0;
  Ano.Caption := Principal.Ano.Caption;
  if Bolsas.Senha.Text = DM.ParametrosTAXA.Value then
     begin
      Lst_BolsaMQR2.QRBand2.Enabled := true;
      Lst_BolsaMQR2.TitleBand1.Enabled := true;
      Lst_BolsaMQR2.DetNota.Enabled := True;
     end;
end;

procedure TLst_BolsaMQR2.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value;
end;

procedure TLst_BolsaMQR2.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetNota.Color = clWhite then  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  DetNota.Color := clWhite;
    TotAtivos := TotAtivos + 1;
end;

procedure TLst_BolsaMQR2.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Ativos.Caption := IntToStr(TotAtivos);
end;

end.
