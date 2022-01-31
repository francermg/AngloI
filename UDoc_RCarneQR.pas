unit UDoc_RCarneQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, ECC_Extenso, jpeg;

type
  TDoc_RCarneQR = class(TQuickRep)
    Cabec: TQRGroup;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    Rodape: TQRBand;
    Texto: TQRMemo;
    QRECC_DataExtenso1: TQRECC_DataExtenso;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    procedure RodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Doc_RCarneQR: TDoc_RCarneQR;

implementation

uses UDM, UDoc_RCarne;

{$R *.DFM}

procedure TDoc_RCarneQR.RodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var Txt1 :String;
    Dia, Mes, Ano :word;
begin
  DecodeDate(Now,ano,mes,dia);
  If Doc_RCarne.Rsemestre.ItemIndex = 0 then
  begin
    Txt1 :='Eu {NOME} aluno(a) da série {SERIE} , declaro que nesta data retirei o carnê de mensalidade referente aos meses de Fevereiro a Junho /{ANO} e de estar ciente que o extravio acarretará na emissão da segunda via com custo de R$ 20,00(vinte reais).';
    Txt1 := StringReplace(Txt1, '{NOME}', DM.RCarneNOME.Value, [rfReplaceAll]);
    Txt1 := StringReplace(Txt1, '{SERIE}', DM.RCarneSERIE.Text+'º', [rfReplaceAll]);
    Txt1 := StringReplace(Txt1, '{TURMA}', DM.RCarneTURMA.Value, [rfReplaceAll]);
    Txt1 := StringReplace(Txt1, '{ANO}', FloatToStr(Ano), [rfReplaceAll]);
    Texto.Lines.Text:=Txt1;
    QRECC_DataExtenso1.Data := Now;
  end
  Else
    begin
      Txt1 :='Eu {NOME} aluno(a) da série {SERIE} , declaro que nesta data retirei o carnê de mensalidade referente aos meses de Julho a Dezembro /{ANO} e de estar ciente que o extravio acarretará na emissão da segunda via com custo de R$ 20,00(vinte reais).';
      Txt1 := StringReplace(Txt1, '{NOME}', DM.RCarneNOME.Value, [rfReplaceAll]);
      Txt1 := StringReplace(Txt1, '{SERIE}', DM.RCarneSERIE.Text+'º', [rfReplaceAll]);
      Txt1 := StringReplace(Txt1, '{TURMA}', DM.RCarneTURMA.Value, [rfReplaceAll]);
      Txt1 := StringReplace(Txt1, '{ANO}', FloatToStr(Ano), [rfReplaceAll]);
      Texto.Lines.Text:=Txt1;
      QRECC_DataExtenso1.Data := Now;
    end;  
end;

end.
