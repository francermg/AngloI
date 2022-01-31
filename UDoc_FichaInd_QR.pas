unit UDoc_FichaInd_QR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, jpeg;

type
  TDoc_FichaInd_QR = class(TQuickRep)
    Cabec: TQRGroup;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    DetNota: TQRSubDetail;
    Rodape: TQRBand;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    Ano: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape2: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape3: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape9: TQRShape;
    QRDBText7: TQRDBText;
    QRShape1: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape14: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape23: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    DAcima: TQRLabel;
    DAbaixo: TQRLabel;
    QRShape24: TQRShape;
    NomeTurma: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRDBText16: TQRDBText;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape44: TQRShape;
    QRLabel24: TQRLabel;
    Obs: TQRMemo;
    QRShape31: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    S1: TQRLabel;
    S2: TQRLabel;
    S3: TQRLabel;
    S4: TQRLabel;
    S5: TQRLabel;
    S6: TQRLabel;
    S7: TQRLabel;
    procedure DetNotaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure CabecBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Doc_FichaInd_QR: TDoc_FichaInd_QR;
  DiscAcima, DiscAbaixo : integer;

implementation

uses UDM, UcadParametros, UMenu;

{$R *.DFM}

procedure TDoc_FichaInd_QR.CabecBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value;
  DiscAcima := 0;
  DiscAbaixo := 0;
  Ano.Caption := 'Ano: '+Principal.Ano.Caption;
end;

procedure TDoc_FichaInd_QR.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetNota.Color = clWhite then  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  DetNota.Color := clWhite;
  if DM.BoletimACIMA_MEDIA.Value = 'S' then inc(DiscAcima);
  if DM.BoletimACIMA_MEDIA.Value = 'N' then inc(DiscAbaixo);


  if ((DM.BoletimRDis_Codigo.Value = 21) and (DM.BoletimROPCAOESPANHOL.Value = 'N')) Then
  Begin
     QRDBText6.visible := False;

     S1.Caption := ' opt.';
     S1.Enabled := True;

     S2.Caption := ' opt.';
     S2.Enabled:= True;

     S3.Caption := 'opt.';
     S3.Enabled:= True;

     S4.Caption := 'opt.';
     S4.Enabled:= True;

     S5.Caption := 'opt.';
     S5.Enabled:= True;

     S6.Caption := 'opt.';
     S6.Enabled:= True;

     S7.Caption := 'opt.';
     S7.Enabled:= True;

  End
  Else Begin
     S1.Enabled := False;
     S2.Enabled:= False;
     S3.Enabled:= False;
     S4.Enabled:= False;
     S5.Enabled:= False;
     S6.Enabled:= False;
     S7.Enabled:= False;
     End;
end;

procedure TDoc_FichaInd_QR.RodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DAbaixo.Caption := IntToStr(DiscAbaixo);
  DAcima.Caption := IntToStr(DiscAcima);
end;

end.
