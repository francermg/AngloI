unit UDoc_BoletimR_QR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, QrAngLbl, Placemnt, jpeg, TeEngine, Series, TeeProcs, Chart,
  DBChart, QrTee;

type
  TDoc_BoletimR_QR = class(TQuickRep)
    DetNota: TQRSubDetail;
    Rodape: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape11: TQRShape;
    QRLabel20: TQRLabel;
    Resultado: TQRLabel;
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
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    Ano: TQRLabel;
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
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
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
    SU14: TQRLabel;
    SU15: TQRLabel;
    SU16: TQRLabel;
    img1: TQRImage;
    QRLabel3: TQRLabel;
    QRLabel21: TQRLabel;
    F1: TQRLabel;
    F2: TQRLabel;
    F3: TQRLabel;
    F4: TQRLabel;
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
  Doc_BoletimR_QR: TDoc_BoletimR_QR;
  DiscAcima, DiscAbaixo  : integer;
  Cursando, Exame, M_Media, w_paridade  : boolean;
  N_Exames : integer;
  nomedisc : string;

implementation

uses UDM, UcadParametros, UMenu;

{$R *.DFM}

procedure TDoc_BoletimR_QR.CabecBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value;
  DiscAcima := 0;
  DiscAbaixo := 0;
  Ano.Caption := 'Ano: '+Principal.Ano.Caption;
  Cursando := False;
  Exame := False;
  w_paridade := False;

  M_Media := False;
  N_Exames := 0;
  if FileExists('G:\Fotos\'+ IntToStr(DM.BoletimRCOD_ALU.Value)+'.jpg') then
//  imgAluno1.Picture.LoadFromFile('G:\Fotos\'+ IntToStr(DM.BoletimRCOD_ALU.Value)+'.jpg')
  else  if FileExists('G:\Fotos\'+'SemFoto.jpg') then
//           imgAluno1.Picture.LoadFromFile('G:\Fotos\SemFoto.jpg');


end;

procedure TDoc_BoletimR_QR.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetNota.Color = clWhite then  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  DetNota.Color := clWhite;
//cor listrada do boletin**********************************

  if (DM.BoletimRACIMA_MEDIA.Value = 'N') then
  begin
     inc(DiscAbaixo);    //vou inverter
  end;

  if DM.BoletimRACIMA_MEDIA.Value = 'S' then
  begin
    inc(DiscAcima);
  end;

if (not DM.BoletimREXAME.IsNull) then inc(N_Exames);

       //coloca o resultado dos exames

       if  ((dm.BoletimRMEDIA_FINAL.Value >= 6) and (DiscAbaixo = 0)and (w_paridade = False)) then
       begin
            if (DM.BoletimRSEXO.Value = 'M')  then Resultado.Caption := 'Aprovado'
            else if (DM.BoletimRSEXO.Value = 'F')  then Resultado.Caption := 'Aprovada';
       end;
       if  ((dm.BoletimRMEDIA_FINAL.Value < 6) and (DiscAbaixo = 0) and (dm.BoletimREXAME.IsNull) and (w_paridade = False)) then
            Resultado.Caption := 'Cursando';

       if  ((dm.BoletimRMEDIA_FINAL.Value < 5) and (DiscAbaixo > 0) and (w_paridade = False)) then
       begin
            if (DM.BoletimRSEXO.Value = 'M')  then Resultado.Caption := 'Reprovado'
            else if (DM.BoletimRSEXO.Value = 'F')  then Resultado.Caption := 'Reprovada';
            w_paridade := True;
       end;

       if dm.BoletimRN4.Value <= 1.5 then
          Begin
            Resultado.Caption := 'Reprovado';
            w_paridade := True;
          End;



  if ((dm.BoletimRDIS_NOME.Value = 'EDUCAÇÃO FISICA') and (dm.BoletimRMODALIDADE.Value = 'DME')) then
  Begin
     QRDBText6.visible := False;
     if not dm.BoletimRN1.IsNull Then Begin
     SU1.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU1.Caption := 'DM';
     SU1.Enabled := True;   End;

     if not dm.BoletimRN2.IsNull Then Begin
     SU2.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU2.Caption := 'DM';
     SU2.Enabled:= True;  end;

     if not dm.BoletimRN3.IsNull Then Begin
     SU3.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU3.Caption := 'DM';
     SU3.Enabled:= True; End;

     if not dm.BoletimRN4.IsNull Then Begin
     SU4.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU4.Caption := 'DM';
     SU4.Enabled:= True; End;

     if not dm.BoletimRR1.IsNull Then Begin
     SU5.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU5.Caption := 'DM';
     SU5.Enabled:= True; End;

     if not dm.BoletimRR2.IsNull Then Begin
     SU6.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU6.Caption := 'DM';
     SU6.Enabled:= True;  End;

     if not dm.BoletimRR3.IsNull Then Begin
     SU7.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU7.Caption := 'DM';
     SU7.Enabled:= True;End;

     if not dm.BoletimRN4.IsNull Then Begin
     SU8.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU8.Caption := 'DM';
     SU8.Enabled:= True; End;

     SU9.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU9.Enabled:= True;
     SU9.Caption := 'DM';

     if not dm.BoletimRM2.IsNull Then Begin
     SU10.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU10.Caption := 'DM';
     SU10.Enabled:= True; End;

     if not dm.BoletimRM3.IsNull Then Begin
     SU11.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU11.Caption := 'DM';
     SU11.Enabled:= True; End;

     if not dm.BoletimRR4.IsNull Then Begin
     SU12.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU12.Caption := 'DM';
     SU12.Enabled:= True; End;

     SU14.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU14.Enabled:= True;
     SU14.Caption := 'DM';

     if not dm.BoletimREXAME.IsNull Then Begin
     SU15.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU15.Caption := 'DM';
     SU15.Enabled:= True;   End;

     if not dm.BoletimRMEDIA_FINAL.IsNull Then Begin
     SU16.Color := dm.ParametrosCOR_ZEBRADO.Value;
     SU16.Caption := 'DM';
     SU16.Enabled:= True;  End;
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
     SU14.Enabled:= False;
     SU15.Enabled:= False;
     SU16.Enabled:= False;
     End;
  if ((DM.BoletimRDis_Codigo.Value = 21) and (DM.BoletimROPCAOESPANHOL.Value = 'N')) Then
  Begin
     QRDBText6.visible := False;

     SU1.Caption := ' opt.';
     SU1.Enabled := True;

     SU2.Caption := ' opt.';
     SU2.Enabled:= True;

     SU3.Caption := 'opt.';
     SU3.Enabled:= True;

     SU4.Caption := 'opt.';
     SU4.Enabled:= True;

     SU5.Caption := 'opt.';
     SU5.Enabled:= True;

     SU6.Caption := 'opt.';
     SU6.Enabled:= True;

     SU7.Caption := 'opt.';
     SU7.Enabled:= True;

     SU8.Caption := 'opt.';
     SU8.Enabled:= True;

     SU9.Caption := 'opt.';
     SU9.Enabled:= True;

     SU10.Caption := 'opt.';
     SU10.Enabled:= True;

     SU11.Caption := 'opt.';
     SU11.Enabled:= True;

     SU12.Caption := 'opt.';
     SU12.Enabled:= True;

     SU14.Caption := 'opt.';
     SU14.Enabled:= True;

     SU15.Caption := 'opt.';
     SU15.Enabled:= True;

     SU16.Caption := 'opt.';
     SU16.Enabled:= True;
  End
  Else
    Begin
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
       SU14.Enabled:= False;
       SU15.Enabled:= False;
       SU16.Enabled:= False;
    End;
end;


procedure TDoc_BoletimR_QR.RodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DAbaixo.Caption := IntToStr(DiscAbaixo);
  DAcima.Caption := IntToStr(DiscAcima);
end;

end.
