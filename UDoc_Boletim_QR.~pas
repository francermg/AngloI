unit UDoc_Boletim_QR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, QRExport, jpeg;

type
  TDoc_Boletim_QR = class(TQuickRep)
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
    Resultado: TQRLabel;
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
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape31: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    procedure DetNotaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure CabecBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Doc_Boletim_QR: TDoc_Boletim_QR;
  DiscAcima, DiscAbaixo : integer;
  Cursando, Exame : boolean;
  N_Exames : integer;

implementation

uses UDM, UcadParametros, UMenu;

{$R *.DFM}

procedure TDoc_Boletim_QR.CabecBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value;
  DiscAcima := 0;
  DiscAbaixo := 0;
  Ano.Caption := 'Ano: '+Principal.Ano.Caption;
  Cursando := False;
  Exame := False;
  N_Exames := 0;
end;

procedure TDoc_Boletim_QR.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetNota.Color = clWhite then  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  DetNota.Color := clWhite;

  if DM.BoletimACIMA_MEDIA.Value = 'S' then        inc(DiscAcima);
  if DM.BoletimACIMA_MEDIA.Value = 'N' then begin  inc(DiscAbaixo);




    if ((DM.BoletimRDis_Codigo.Value = 21) and (DM.BoletimROPCAOESPANHOL.Value = 'N')) Then
    Begin
       QRDBText6.Enabled := False;
       QRDBText7.Enabled := False;
       QRDBText8.Enabled := False;
       QRDBText9.Enabled := False;
       QRDBText10.Enabled := False;
       QRDBText11.Enabled := False;
       QRDBText12.Enabled := False;
       QRDBText13.Enabled := False;
       QRDBText1.Enabled := False;
       QRDBText16.Enabled := False;  //  dfsdfsdfsdfsdfsdfsd
       QRDBText14.Enabled := False;
       QRDBText15.Enabled := False;
       QRDBText5.Enabled := False;
    end
    Else
      Begin
       QRDBText6.Enabled := True;
       QRDBText7.Enabled := True;
       QRDBText8.Enabled := True;
       QRDBText9.Enabled := True;
       QRDBText10.Enabled := True;
       QRDBText11.Enabled := True;
       QRDBText12.Enabled := True;
       QRDBText13.Enabled := True;
       QRDBText1.Enabled := True;
       QRDBText16.Enabled := True;
       QRDBText14.Enabled := True;
       QRDBText15.Enabled := True;
       QRDBText5.Enabled := True;
   End;
  end;
{  if ((DM.BoletimN1.IsNull) or (DM.BoletimN2.IsNull) or
     (DM.BoletimN3.IsNull) or (DM.BoletimN4.IsNull) and
     (dm.AlunosOPCAO_ESPANHOL.Value = 'S')) then
     Cursando := True;}



  if not DM.BoletimEXAME.IsNull then inc(N_Exames);
end;

procedure TDoc_Boletim_QR.RodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{  if (DM.BoletimRSEXO.Value= 'M') then Resultado.Caption := 'Aprovado'
   else Resultado.Caption := 'Aprovada';}

  if Exame then
  if N_Exames = 0 then
     Resultado.Caption := 'Exame';

  if Cursando then Resultado.Caption := 'Cursando';


{     else
      if DM.BoletimRSEXO.Value = 'M' then Resultado.Caption := 'Reprovado'
       else Resultado.Caption := 'Reprovada';}


  DAbaixo.Caption := IntToStr(DiscAcima);
  DAcima.Caption := IntToStr(DiscAbaixo);
end;

procedure TDoc_Boletim_QR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
//     QRImage1.Picture.LoadFromFile(dm.ParametrosCaminho.Value);
end;

end.
