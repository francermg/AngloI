unit UDoc_FichaIndR_QR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, QrAngLbl, Placemnt, jpeg;

type
  TDoc_FichaIndR_QR = class(TQuickRep)
    DetNota: TQRSubDetail;
    Rodape: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape11: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    DAcima: TQRLabel;
    DAbaixo: TQRLabel;
    QRShape24: TQRShape;
    QRShape26: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText16: TQRDBText;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    Cabec: TQRGroup;
    QRLabel7: TQRLabel;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    Ano: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    NomeTurma: TQRLabel;
    QRShape25: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRDBText8: TQRDBText;
    QRShape1: TQRShape;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape13: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel13: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape23: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape36: TQRShape;
    QRShape22: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRShape44: TQRShape;
    Obs: TQRMemo;
    QRLabel33: TQRLabel;
    QRShape48: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    SU1: TQRLabel;
    SU2: TQRLabel;
    SU3: TQRLabel;
    SU4: TQRLabel;
    SU5: TQRLabel;
    SU6: TQRLabel;
    SU7: TQRLabel;
    SU8: TQRLabel;
    SU9: TQRLabel;
    SU10: TQRLabel;
    SU11: TQRLabel;
    SU12: TQRLabel;
    SU13: TQRLabel;
    SU14: TQRLabel;
    S1: TQRLabel;
    S2: TQRLabel;
    S3: TQRLabel;
    S4: TQRLabel;
    S5: TQRLabel;
    S6: TQRLabel;
    S7: TQRLabel;
    S8: TQRLabel;
    S9: TQRLabel;
    S10: TQRLabel;
    S11: TQRLabel;
    S12: TQRLabel;
    S13: TQRLabel;
    S14: TQRLabel;
    S15: TQRLabel;
    S16: TQRLabel;
    S17: TQRLabel;
    S18: TQRLabel;
    S19: TQRLabel;
    S20: TQRLabel;
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
  Doc_FichaIndR_QR: TDoc_FichaIndR_QR;
  DiscAcima, DiscAbaixo : integer;

implementation

uses UDM, UcadParametros, UMenu;

{$R *.DFM}

procedure TDoc_FichaIndR_QR.CabecBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value;
  DiscAcima := 0;
  DiscAbaixo := 0;
  Ano.Caption := 'Ano: '+Principal.Ano.Caption;
end;

procedure TDoc_FichaIndR_QR.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetNota.Color = clWhite then  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  DetNota.Color := clWhite;
  if DM.BoletimRACIMA_MEDIA.Value = 'S' then inc(DiscAcima);
  if DM.BoletimRACIMA_MEDIA.Value = 'N' then inc(DiscAbaixo);

 if ((dm.BoletimRDIS_NOME.Value = 'EDUCAÇÃO FISICA') and (dm.BoletimRMODALIDADE.Value = 'DME')) then
  Begin
     if not dm.BoletimRN1.IsNull Then Begin
     SU1.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU1.Enabled := True; End;

     if not dm.BoletimRR1.IsNull Then Begin
     SU2.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU2.Enabled:= True; End;

     if not dm.BoletimRM1.IsNull Then Begin
     SU3.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU3.Enabled:= True; End;


     if not dm.BoletimRN2.IsNull Then Begin
     SU4.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU4.Enabled:= True;  End;

     if not dm.BoletimRR2.IsNull Then Begin
     SU5.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU5.Enabled:= True;  End;

     if not dm.BoletimRM2.IsNull Then Begin
     SU6.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU6.Enabled:= True; End;


     if not dm.BoletimRN3.IsNull Then Begin
     SU7.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU7.Enabled:= True; End;

     if not dm.BoletimRR3.IsNull Then Begin
     SU8.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU8.Enabled:= True;End;

     if not dm.BoletimRM3.IsNull Then Begin
     SU9.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU9.Enabled:= True; End;

     if not dm.BoletimRN4.IsNull Then Begin
     SU10.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU10.Enabled:= True; End;

     if not dm.BoletimRR4.IsNull Then Begin
     SU11.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU11.Enabled:= True; End;

     if not dm.BoletimRM4.IsNull Then Begin
     SU12.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU12.Enabled:= True; End;

     if ((not dm.BoletimRMEDIA_FINAL.IsNull) or (dm.BoletimRMEDIA_FINAL.Value = 0)) Then Begin
     SU13.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU13.Enabled:= True;  End;

     if not dm.BoletimREXAME.IsNull Then Begin
     SU14.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU14.Enabled:= True;  End;

  End
  Else Begin
     SU1.Enabled := False;
     SU2.Enabled:= False;
     SU3.Enabled:= False;
     SU4.Enabled:= False;
     SU5.Enabled:= False;
     SU6.Enabled:= False;
     SU7.Enabled:= False;
     SU8.Enabled:= False;
     SU9.Enabled:= False;
     SU10.Enabled:= False;
     SU11.Enabled:= False;
     SU12.Enabled:= False;
     SU13.Enabled:= False;
     SU14.Enabled:= False;
     End;

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

     S8.Caption := 'opt.';
     S8.Enabled:= True;

     S9.Caption := 'opt.';
     S9.Enabled:= True;

     S10.Caption := 'opt.';
     S10.Enabled:= True;

     S11.Caption := 'opt.';
     S11.Enabled:= True;

     S12.Caption := 'opt.';
     S12.Enabled:= True;

     S13.Caption := 'opt.';
     S13.Enabled:= True;

     S14.Caption := 'opt.';
     S14.Enabled:= True;

     S15.Caption := 'opt.';
     S15.Enabled:= True;

     S16.Caption := 'opt.';
     S16.Enabled:= True;

     S17.Caption := 'opt.';
     S17.Enabled:= True;

     S18.Caption := 'opt.';
     S18.Enabled:= True;

     S19.Caption := 'opt.';
     S19.Enabled:= True;

     S20.Caption := 'opt.';
     S20.Enabled:= True;

  End
  Else Begin
     S1.Enabled := False;
     S2.Enabled:= False;
     S3.Enabled:= False;
     S4.Enabled:= False;
     S5.Enabled:= False;
     S6.Enabled:= False;
     S7.Enabled:= False;
     S8.Enabled:= False;
     S9.Enabled:= False;
     S10.Enabled:= False;
     S11.Enabled:= False;
     S12.Enabled:= False;
     S13.Enabled:= False;
     S14.Enabled:= False;
     S15.Enabled:= False;
     S16.Enabled:= False;
     S17.Enabled:= False;
     S18.Enabled:= False;
     S19.Enabled:= False;
     S20.Enabled:= False;
  End;
end;

procedure TDoc_FichaIndR_QR.RodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DAbaixo.Caption := IntToStr(DiscAbaixo);
  DAcima.Caption := IntToStr(DiscAcima);
end;

end.
