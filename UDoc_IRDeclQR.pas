unit UDoc_IRDeclQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QrAngLbl, Db,
  IBCustomDataSet, IBQuery, ECC_Extenso, ECC_Justifica, jpeg;

type
  TDoc_IRDeclQR = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel33: TQRLabel;
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    Texto: TQRMemo;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    Titulo: TQRLabel;
    QRShape1: TQRShape;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    DataExt: TQRECC_DataExtenso;
    Total: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    ValorExt: TQRECC_ValorExtenso;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    ValorJan: TQRLabel;
    qreferente: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Doc_IRDeclQR: TDoc_IRDeclQR;
  Tot0, Tot1 : currency;

implementation

uses UDM, UCad_Alunos, UMenu;

{$R *.DFM}

procedure TDoc_IRDeclQR.QRBand1BeforePrint(Sender: TQRCustomBand;  var PrintBand: Boolean);
var Txt0 : String;
    diaatual, mesatual, anoatual, anom, mesm, diam :word;
    //dia, mes, ano
begin
  Tot0 := 0;
//  DecodeDate(DM.AlunosDATA_MATRICULA.Value, ano, mes, dia);
  DecodeDate(Now, anoatual, mesatual, diaatual );
  DecodeDate(dm.AlunosDATA_MATRICULA.Value, anom, mesm, diam);
  Txt0 := Texto.Lines.Text;
  Txt0 := StringReplace(Txt0, '{SACADO}', DM.AlunosSACADO.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{ANO}', DM.AlunosANO.Text, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{CPF}', DM.AlunosSACADO_CPF.Text, [rfReplaceAll]);
  Texto.Lines.Text := Txt0;
  DataExt.Data := Cad_Alunos.DataDoc.Date;
{  if ((mesatual > 2) or (mesatual = 12) or (anoatual = 2018)) then
  begin
    case DM.AlunosSERIE.Value of
      1 : Tot0 := DM.ParametrosMENSALIDADE_1.Value;
      2 : Tot0 := DM.ParametrosMENSALIDADE_2.Value;
      3 : Tot0 := DM.ParametrosMENSALIDADE_3.Value; //Mudei de 550 para 490 a pedido da gislaine 23/03/2015
   //   else  Tot0 := 490;
    end;
     ValorJan.Caption := FormatFloat('R$ ,.00',Tot0);
{  end else if (mesm > 2) then
     begin
  //    ValorJan.Enabled := False;
     end;}

//  QRImage1.Picture.LoadFromFile(dm.ParametrosCaminho.Value);
//  end;
end;

procedure TDoc_IRDeclQR.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var dia, mes, ano :Word;
  var sql :string;
begin
      if dm.BloquetosQVALOR_PAGO.IsNull then
            dm.BloquetosQMesX.Value := '----';
       Tot0 := Tot0 + DM.BloquetosQVALOR_PAGO.Value;

      DecodeDate(dm.BloquetosQPAGAMENTO.Value, ano,mes,dia);
      if IntToStr(ano) <> Principal.Ano.Caption then
      begin
         qreferente.caption := 'Pago em: '+ DateToStr(dm.BloquetosQPAGAMENTO.Value) + ' Referente: '+ Principal.ano.Caption;
      end;
      if ((IntToStr(ano) = Principal.Ano.Caption) or (dm.BloquetosQPAGAMENTO.IsNull)) then
       qreferente.Caption := ' ';
end;

procedure TDoc_IRDeclQR.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Total.Caption := FormatFloat('R$ ,.00',Tot0);
  ValorExt.Valor := Tot0;
end;

end.
