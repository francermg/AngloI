unit UDoc_AtaQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, ECC_Extenso, jpeg;

type
  TDoc_AtaQR = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRImage1: TQRImage;
    QRLabel12: TQRLabel;
    DetNota: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    M01: TQRDBText;
    M02: TQRDBText;
    M03: TQRDBText;
    M04: TQRDBText;
    M05: TQRDBText;
    M06: TQRDBText;
    M07: TQRDBText;
    M08: TQRDBText;
    M09: TQRDBText;
    M10: TQRDBText;
    M11: TQRDBText;
    M12: TQRDBText;
    M13: TQRDBText;
    M14: TQRDBText;
    M15: TQRDBText;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRBand2: TQRBand;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    D01: TQRLabel;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    D18: TQRLabel;
    D17: TQRLabel;
    D16: TQRLabel;
    D15: TQRLabel;
    D14: TQRLabel;
    D13: TQRLabel;
    D12: TQRLabel;
    D11: TQRLabel;
    D10: TQRLabel;
    D09: TQRLabel;
    D08: TQRLabel;
    D07: TQRLabel;
    D06: TQRLabel;
    D05: TQRLabel;
    D04: TQRLabel;
    D03: TQRLabel;
    D02: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    M18: TQRDBText;
    M17: TQRDBText;
    M16: TQRDBText;
    QRDBText22: TQRDBText;
    AnoX: TQRLabel;
    C18: TQRLabel;
    C17: TQRLabel;
    C16: TQRLabel;
    C15: TQRLabel;
    C14: TQRLabel;
    C13: TQRLabel;
    C12: TQRLabel;
    C11: TQRLabel;
    C10: TQRLabel;
    C09: TQRLabel;
    C08: TQRLabel;
    C07: TQRLabel;
    C06: TQRLabel;
    C05: TQRLabel;
    C04: TQRLabel;
    C03: TQRLabel;
    C02: TQRLabel;
    C01: TQRLabel;
    DataExt: TQRECC_DataExtenso;
    TxtSecretaria: TQRLabel;
    Tit1: TQRLabel;
    Tit2: TQRLabel;
    QRBand1: TQRBand;
    E01: TQRLabel;
    E02: TQRLabel;
    E03: TQRLabel;
    E04: TQRLabel;
    E06: TQRLabel;
    E05: TQRLabel;
    E07: TQRLabel;
    E08: TQRLabel;
    E09: TQRLabel;
    E10: TQRLabel;
    E11: TQRLabel;
    E12: TQRLabel;
    E13: TQRLabel;
    E14: TQRLabel;
    E15: TQRLabel;
    E16: TQRLabel;
    E17: TQRLabel;
    E18: TQRLabel;
    F01: TQRLabel;
    F02: TQRLabel;
    F03: TQRLabel;
    F04: TQRLabel;
    F05: TQRLabel;
    F06: TQRLabel;
    F07: TQRLabel;
    F08: TQRLabel;
    F09: TQRLabel;
    F10: TQRLabel;
    F11: TQRLabel;
    F12: TQRLabel;
    F13: TQRLabel;
    F14: TQRLabel;
    F15: TQRLabel;
    F16: TQRLabel;
    F17: TQRLabel;
    F18: TQRLabel;
    QRLabel2: TQRLabel;
    Observacao: TQRMemo;
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetNotaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure M01Print(sender: TObject; var Value: String);
    procedure M09Print(sender: TObject; var Value: String);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Doc_AtaQR: TDoc_AtaQR;

implementation

uses UDM, UcadParametros, UDoc_Ata, UMenu;

{$R *.DFM}

procedure TDoc_AtaQR.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var dia,mes,ano : word;
    diaX : string;
    anodoc :Integer;
begin
  anodoc := StrToInt(Principal.Ano.Caption);
  if (anodoc <= 2014) then   QRLabel1.Caption := 'ESCOLA DECISIVO';
  DataExt.Data :=Now;
  //Doc_Ata.DataDoc.Date;
  TxtSecretaria.Caption := StringReplace(TxtSecretaria.Caption, '{SECRETARIA}', Doc_Ata.Secretaria.Text, [rfReplaceAll]);
  DecodeDate(Doc_Ata.DataDoc.Date,ano,mes,dia);
  if dia = 1 then diaX := '1º' else
   diaX := FormatFloat('00',dia);
  Tit1.Caption := StringReplace(Tit1.Caption, '{DIA}', diaX, [rfReplaceAll]);
  Tit1.Caption := StringReplace(Tit1.Caption, '{MES}', DM.MesExtS(Doc_Ata.DataDoc.Date), [rfReplaceAll]);
  Tit1.Caption := StringReplace(Tit1.Caption, '{ANO}', IntToStr(ano), [rfReplaceAll]);
  Tit1.Caption := StringReplace(Tit1.Caption, '{SERIE}', DM.TurmasSERIE.AsString, [rfReplaceAll]);
  Tit1.Caption := StringReplace(Tit1.Caption, '{TURMA}', DM.TurmasTURMA.AsString, [rfReplaceAll]);
  AnoX.Caption := 'Ano Letivo de '+Principal.Ano.Caption;
  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value;
end;

procedure TDoc_AtaQR.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetNota.Color = clWhite then DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
   else DetNota.Color := clWhite;
end;

procedure TDoc_AtaQR.M01Print(sender: TObject; var Value: String);
Var divisao :Real;
begin
     if StrToFloat(Value) = -1 then
         Value := '---  ';
end;


procedure TDoc_AtaQR.M09Print(sender: TObject; var Value: String);
begin
   if StrToFloat(Value) = -1 then
    Value := '---  ';
   if dm.MedAtaMODALIDADE.Value = 'DME' Then
      Value := 'Disp.';
end;

procedure TDoc_AtaQR.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   if (DM.TurmasSERIE.Value = 1) then
      QrLabel2.Caption := 'Total em horas aula = 1320';
   if (DM.TurmasSERIE.Value = 2) then
      QrLabel2.Caption := 'Total em horas aula = 1240';
   if (DM.TurmasSERIE.Value = 3) then
      QrLabel2.Caption := 'Total em horas aula = 1440';
end;

end.
