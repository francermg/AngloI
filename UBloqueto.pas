unit UBloqueto;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, jpeg, QRExport,
  RLFilters, RLPDFFilter;

type
  TBloqueto = class(TQuickRep)
    DetailBand1: TQRBand;
    QRShape57: TQRShape;
    QRShape42: TQRShape;
    QRLabel73: TQRLabel;
    QRShape34: TQRShape;
    QRShape2: TQRShape;
    QRShape20: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRShape12: TQRShape;
    QRShape5: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape7: TQRShape;
    QRLabel6: TQRLabel;
    QRShape10: TQRShape;
    QRShape23: TQRShape;
    QRShape6: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape8: TQRShape;
    QRShape19: TQRShape;
    QRDBText4: TQRDBText;
    QRShape18: TQRShape;
    QRLabel22: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel39: TQRLabel;
    QRShape35: TQRShape;
    QRShape33: TQRShape;
    QRShape32: TQRShape;
    QRShape31: TQRShape;
    QRShape9: TQRShape;
    QRShape47: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRShape56: TQRShape;
    QRShape55: TQRShape;
    QRShape54: TQRShape;
    QRShape53: TQRShape;
    QRShape49: TQRShape;
    QRDBText9: TQRDBText;
    QRLabel55: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape50: TQRShape;
    QRDBText11: TQRDBText;
    QRShape48: TQRShape;
    QRShape58: TQRShape;
    QRLabel56: TQRLabel;
    QRShape51: TQRShape;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRShape43: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRShape64: TQRShape;
    QRLabel69: TQRLabel;
    QRShape65: TQRShape;
    QRLabel70: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRDBText13: TQRDBText;
    QRShape52: TQRShape;
    QRDBText14: TQRDBText;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRShape66: TQRShape;
    QRDBText17: TQRDBText;
    QRLabel81: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel59: TQRLabel;
    QRShape44: TQRShape;
    QRSysData1: TQRSysData;
    QRShape46: TQRShape;
    QRShape45: TQRShape;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText31: TQRDBText;
    QRLabel91: TQRLabel;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRLabel97: TQRLabel;
    QRDBText39: TQRDBText;
    PeriodoX: TQRLabel;
    QRImage1: TQRImage;
    QRShape1: TQRShape;
    QRImage2: TQRImage;
    QRShape4: TQRShape;
    QRLabel1: TQRLabel;
    QRShape36: TQRShape;
    QRImage3: TQRImage;
    QRShape37: TQRShape;
    QRLabel2: TQRLabel;
    QRShape38: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel40: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel41: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel42: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel44: TQRLabel;
    QRShape39: TQRShape;
    QRLabel45: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel82: TQRLabel;
    QRDBText29: TQRDBText;
    QRShape21: TQRShape;
    MENSAGEM4: TQRDBText;
    MENSAGEM1: TQRLabel;
    MENSAGEM2: TQRLabel;
    MENSAGEM3: TQRLabel;
    v2: TQRLabel;
    v1: TQRLabel;
    v3: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Bloqueto: TBloqueto;

implementation

uses UDM, UMenu;

{$R *.DFM}

procedure TBloqueto.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  Var ano, mes, dia :word;
  mzero  :string;
begin
{  if (principal.Ano.Caption = '2006')  then
    Begin
      QRDBText37.DataField := 'VALOR_ANT';
      QRDBText38.DataField := 'VALOR_ANT';
      QRDBText13.DataField := 'VALOR_ANT';
    End
  Else
    Begin
      QRDBText37.DataField := 'VALOR';
      QRDBText38.DataField := 'VALOR';
      QRDBText13.DataField := 'VALOR';
    End;}
  if (principal.Ano.Caption = '2008') or (principal.Ano.Caption = '2009') then
   Begin
    Decodedate(dm.BloquetosQVENCIMENTO.Value, ano, mes, dia);
    if mes < 10 then
       mzero := '0' + InttoStr(mes)
       else
       mzero := IntToStr(mes);
    if mes = 2 then
     Begin
          MENSAGEM1.Caption := DM.ParametrosMENSAGEM1.Value +' '+ dm.ParametrosVCTOFEVEREIRO.AsString + '/'+ mzero + '/' + IntToStr(ano) + '     R$ ' +  DM.BloquetosQVALOR_ANT.Text;
          v1.Caption := dm.ParametrosVCTOFEVEREIRO.AsString  +'/'+ mzero + '/' + IntToStr(ano);
          v2.Caption := dm.ParametrosVCTOFEVEREIRO.AsString + mzero + '/' + IntToStr(ano);
          v3.Caption := dm.ParametrosVCTOFEVEREIRO.AsString + mzero + '/' + IntToStr(ano);
          MENSAGEM2.Caption := DM.ParametrosMENSAGEM2.Value + '  ' + FormatDateTime('dd/mm/yyyy',DM.BloquetosQVENCIMENTO.Value) + '     R$ ' + DM.BloquetosQVALOR.Text;
          MENSAGEM3.Caption := DM.ParametrosMENSAGEM3.Value + ' ' + FormatDateTime('dd/mm/yyyy',DM.BloquetosQVENCIMENTO.Value) + '     R$ ' + DM.BloquetosQVALOR.Text + ' + MULTA DE 2% +';
     End
    Else
      Begin
//        v1.Caption := ' 10/'+ mzero + '/' + IntToStr(ano); coloquei proposital a mando do Akira e esta errado
//        v2.Caption := ' 10/'+ mzero + '/' + IntToStr(ano); coloquei proposital a mando do Akira e esta errado
//        v3.Caption := ' 10/'+ mzero + '/' + IntToStr(ano); coloquei proposital a mando do Akira e esta errado
        MENSAGEM1.Caption := DM.ParametrosMENSAGEM1.Value + '  10/'+ mzero + '/' + IntToStr(ano) + '    R$ ' +  DM.BloquetosQVALOR_ANT.Text;
        MENSAGEM2.Caption := DM.ParametrosMENSAGEM2.Value + '  ' + FormatDateTime('dd/mm/yyyy',DM.BloquetosQVENCIMENTO.Value) + '     R$ ' + DM.BloquetosQVALOR.Text;
        MENSAGEM3.Caption := DM.ParametrosMENSAGEM3.Value + ' ' + FormatDateTime('dd/mm/yyyy', DM.BloquetosQVENCIMENTO.Value) + '     R$ ' + DM.BloquetosQVALOR.Text + ' + MULTA DE 2% +';
      end;
   end Else
   Begin
   MENSAGEM1.Caption := dm.ParametrosMENSAGEM1.Value;
   MENSAGEM2.Caption := dm.ParametrosMENSAGEM2.Value;
   MENSAGEM3.Caption := ' ';
   end;
end;

end.
