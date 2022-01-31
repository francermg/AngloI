unit UDoc_ColecCanhotoQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QrAngLbl, ECC_Extenso;

type
  TDoc_ColecCanhotoQR = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape10: TQRShape;
    Serie1: TQRLabel;
    DetNota: TQRBand;
    QRDBText2: TQRDBText;
    Nota: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape41: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape1: TQRShape;
    QRBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRShape13: TQRShape;
    QRLabel15: TQRLabel;
    Ano1: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape9: TQRShape;
    QRShape14: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape2: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    Ano2: TQRLabel;
    Serie2: TQRLabel;
    Ano3: TQRLabel;
    Serie3: TQRLabel;
    Ano4: TQRLabel;
    Serie4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    Ano5: TQRLabel;
    Serie5: TQRLabel;
    QRDBText10: TQRDBText;
    Serie6: TQRLabel;
    QRDBText11: TQRDBText;
    Ano7: TQRLabel;
    Serie7: TQRLabel;
    Ano6: TQRLabel;
    QRLabel22: TQRLabel;
    Faltas: TQRDBText;
    QRShape11: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape28: TQRShape;
    QRLabel26: TQRLabel;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape32: TQRShape;
    QRLabel30: TQRLabel;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape35: TQRShape;
    QRLabel34: TQRLabel;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape38: TQRShape;
    QRLabel38: TQRLabel;
    QRShape39: TQRShape;
    QRShape43: TQRShape;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRShape44: TQRShape;
    QRLabel42: TQRLabel;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRShape12: TQRShape;
    QRLabel45: TQRLabel;
    QRShape29: TQRShape;
    QRShape42: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText15: TQRDBText;
    QRShape5: TQRShape;
    QRShape40: TQRShape;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRDBText19: TQRDBText;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRDBText23: TQRDBText;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRDBText27: TQRDBText;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRDBText35: TQRDBText;
    QRShape65: TQRShape;
    QRLabel2: TQRLabel;
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetNotaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Tot_FaltasPrint(sender: TObject; var Value: String);
    procedure NotaPrint(sender: TObject; var Value: String);
    procedure FaltasPrint(sender: TObject; var Value: String);
    procedure QRDBText25Print(sender: TObject; var Value: String);
    procedure QRDBText27Print(sender: TObject; var Value: String);
    procedure QRDBText29Print(sender: TObject; var Value: String);
    procedure QRDBText33Print(sender: TObject; var Value: String);
    procedure QRDBText13Print(sender: TObject; var Value: String);
    procedure QRDBText15Print(sender: TObject; var Value: String);
    procedure QRDBText17Print(sender: TObject; var Value: String);
    procedure QRDBText19Print(sender: TObject; var Value: String);
    procedure QRDBText21Print(sender: TObject; var Value: String);
    procedure QRDBText23Print(sender: TObject; var Value: String);
  private

  public

  end;

var
  Doc_ColecCanhotoQR: TDoc_ColecCanhotoQR;

implementation

uses UDM, UDoc_Diario, UMenu;

{$R *.DFM}

procedure TDoc_ColecCanhotoQR.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Ano1.Caption := StringReplace(Ano1.Caption, '{ANO}', Principal.Ano.Caption, [rfReplaceAll]);
  Ano2.Caption := StringReplace(Ano2.Caption, '{ANO}', Principal.Ano.Caption, [rfReplaceAll]);
  Ano3.Caption := StringReplace(Ano3.Caption, '{ANO}', Principal.Ano.Caption, [rfReplaceAll]);
  Ano4.Caption := StringReplace(Ano4.Caption, '{ANO}', Principal.Ano.Caption, [rfReplaceAll]);
  Ano5.Caption := StringReplace(Ano5.Caption, '{ANO}', Principal.Ano.Caption, [rfReplaceAll]);
  Ano6.Caption := StringReplace(Ano6.Caption, '{ANO}', Principal.Ano.Caption, [rfReplaceAll]);
  Ano7.Caption := StringReplace(Ano7.Caption, '{ANO}', Principal.Ano.Caption, [rfReplaceAll]);
  Serie1.Caption := StringReplace(Serie1.Caption, '{SERIE}', DM.TurmasSERIE.AsString, [rfReplaceAll]);
  Serie1.Caption := StringReplace(Serie1.Caption, '{TURMA}', DM.TurmasTURMA.AsString, [rfReplaceAll]);
  Serie2.Caption := Serie1.Caption;
  Serie3.Caption := Serie1.Caption;
  Serie4.Caption := Serie1.Caption;
  Serie5.Caption := Serie1.Caption;
  Serie6.Caption := Serie1.Caption;
  Serie7.Caption := Serie1.Caption;

  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value;
end;

procedure TDoc_ColecCanhotoQR.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var statusX : string;
begin
  if DetNota.Color = clWhite then DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
   else DetNota.Color := clWhite;
  if (DM.DiarioALU_DATA_SAIDA.Value < DM.BimestresFIM.Value) and
     (not DM.DiarioALU_DATA_SAIDA.IsNull) then begin
    if DM.DiarioALU_STATUS.Value = 'T' then
      if DM.DiarioALU_SEXO.Value = 'M' then
        statusX := 'TRANSFERIDO' else statusX := 'TRANSFERIDA';
    if DM.DiarioALU_STATUS.Value = 'D' then statusX := 'DESISTENTE';
    if DM.DiarioALU_STATUS.Value = 'R' then
       if dm.DiarioALU_SEXO.Value = 'M' then
          statusX := 'RECLASSIFICADO' else statusX := 'RECLASSIFICADA';
  end;
end;

procedure TDoc_ColecCanhotoQR.Tot_FaltasPrint(sender: TObject;
  var Value: String);
begin
  if Value = '0' then Value := '-';
  if Doc_Diario.Bimestre.ItemIndex = 4 then Value := '-';
end;

procedure TDoc_ColecCanhotoQR.NotaPrint(sender: TObject;
  var Value: String);
begin
 if StrToFloat(Value) = -1 then Value := '-  ';
    if (dm.ColecCNBIMESTRE.Value > 1) then  Value := '- ';
end;

procedure TDoc_ColecCanhotoQR.FaltasPrint(sender: TObject;
  var Value: String);
begin
  if (Value = '0') then Value := '-';
  if (dm.ColecCNBIMESTRE.Value > 1) then  Value := '-';
  if dm.ColecCALU_STATUS.Value = 'R' then
     value := '-';
end;

procedure TDoc_ColecCanhotoQR.QRDBText25Print(sender: TObject;
  var Value: String);
begin
 if StrToFloat(Value) = -1 then Value := '-  ';
end;

procedure TDoc_ColecCanhotoQR.QRDBText27Print(sender: TObject;
  var Value: String);
begin
  if (Value = '0') then Value := '-';
   if dm.ColecCALU_STATUS.Value = 'R' then
     value := '-';
end;

procedure TDoc_ColecCanhotoQR.QRDBText29Print(sender: TObject;
  var Value: String);
begin
 if StrToFloat(Value) = -1 then Value := '-  ';
end;

procedure TDoc_ColecCanhotoQR.QRDBText33Print(sender: TObject;
  var Value: String);
begin
 if StrToFloat(Value) = -1 then Value := '-  ';
end;

procedure TDoc_ColecCanhotoQR.QRDBText13Print(sender: TObject;
  var Value: String);
begin
 if StrToFloat(Value) = -1 then Value := '-  ';
    if (dm.ColecCNBIMESTRE.Value > 2) then  Value := '- ';
end;

procedure TDoc_ColecCanhotoQR.QRDBText15Print(sender: TObject;
  var Value: String);
begin
  if (Value = '0') then Value := '-';
  if (dm.ColecCNBIMESTRE.Value > 2) then  Value := '-';
  if dm.ColecCALU_STATUS.Value = 'R' then
     value := '-';
end;

procedure TDoc_ColecCanhotoQR.QRDBText17Print(sender: TObject;
  var Value: String);
begin
 if StrToFloat(Value) = -1 then Value := '-  ';
    if (dm.ColecCNBIMESTRE.Value > 3) then  Value := '- ';
end;

procedure TDoc_ColecCanhotoQR.QRDBText19Print(sender: TObject;
  var Value: String);
begin
  if (Value = '0') then Value := '-';
  if (dm.ColecCNBIMESTRE.Value > 3) then  Value := '-';
  if dm.ColecCALU_STATUS.Value = 'R' then
     value := '-';
end;

procedure TDoc_ColecCanhotoQR.QRDBText21Print(sender: TObject;
  var Value: String);
begin
 if StrToFloat(Value) = -1 then Value := '-  ';
end;

procedure TDoc_ColecCanhotoQR.QRDBText23Print(sender: TObject;
  var Value: String);
begin
  if (Value = '0') then Value := '-';
  if (dm.ColecCNBIMESTRE.Value > 3) then  Value := '-';
  if dm.ColecCALU_STATUS.Value = 'R' then
     value := '-';

end;

end.
