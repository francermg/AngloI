unit UAproveitamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, jpeg;

type
  Tfaproveitamento = class(TForm)
    RLAproveitamento: TRLReport;
    RLBand1: TRLBand;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLBand2: TRLBand;
    Texto: TRLMemo;
    Ano: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLBand4: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel3: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw2: TRLDraw;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    NOME: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    procedure RLAproveitamentoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  faproveitamento: Tfaproveitamento;

implementation

uses UMenu, UDM, UDM2;

{$R *.DFM}

procedure Tfaproveitamento.RLAproveitamentoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  var Txt0 :String;
begin
   DM2.iqAproveitamento.Close;
   DM2.iqAproveitamento.Params[0].Value := DM.AlunosCODIGO.Value;
   DM2.iqAproveitamento.Open;
   Ano.Caption := 'Ano: '+Principal.Ano.Caption;
   Txt0 := Texto.Lines.Text;
   if DM.AlunosSEXO.Value = 'M' then Txt0 := StringReplace(Txt0, '{ALUNO}', 'O aluno ', []);
   if DM.AlunosSEXO.Value = 'F' then Txt0 := StringReplace(Txt0, '{ALUNO}', 'A aluna ', []);
   Txt0 := StringReplace(Txt0, '{NOME}', DM2.iqAproveitamentoNOME.AsString, [rfReplaceAll]);
   Txt0 := StringReplace(Txt0, '{NOME_PAI}', DM2.iqAproveitamentoPAI_NOME.AsString, [rfReplaceAll]);
   Txt0 := StringReplace(Txt0, '{NOME_MAE}', DM2.iqAproveitamentoMAE_NOME.AsString, [rfReplaceAll]);
   Txt0 := StringReplace(Txt0, '{NASC_DATA}', DM2.iqAproveitamentoNASC_DATA.AsString, [rfReplaceAll]);
   Txt0 := StringReplace(Txt0, '{NASC_CIDADE}', DM2.iqAproveitamentoNASC_CIDADE.AsString, [rfReplaceAll]);
   Txt0 := StringReplace(Txt0, '{NASC_UF}', DM2.iqAproveitamentoNASC_UF.AsString, [rfReplaceAll]);
   Txt0 := StringReplace(Txt0, '{CIDADE}', DM2.iqAproveitamentoCIDADE.AsString, [rfReplaceAll]);
   Txt0 := StringReplace(Txt0, '{UF}', DM2.iqAproveitamentoUF.AsString, [rfReplaceAll]);
   Txt0 := StringReplace(Txt0, '{LOG}', DM2.iqAproveitamentoNOME_LOGADOURO.AsString, [rfReplaceAll]);
   Txt0 := StringReplace(Txt0, '{ENDERECO}', DM2.iqAproveitamentoENDERECO.AsString, [rfReplaceAll]);
   Txt0 := StringReplace(Txt0, '{NUMERO_CASA}', DM2.iqAproveitamentoNUMERO.AsString, [rfReplaceAll]);
   Txt0 := StringReplace(Txt0, '{BAIRRO}', DM2.iqAproveitamentoBAIRRO.AsString, [rfReplaceAll]);
   Txt0 := StringReplace(Txt0, '{CEP}', DM2.iqAproveitamentoCEP.AsString, [rfReplaceAll]);
   Txt0 := StringReplace(Txt0, '{FONE}', DM2.iqAproveitamentoCELULAR.AsString, [rfReplaceAll]);
   Txt0 := StringReplace(Txt0, '{RG}', DM2.iqAproveitamentoRG.AsString, [rfReplaceAll]);
   Txt0 := StringReplace(Txt0, '{CPF}', DM2.iqAproveitamentoCPF.AsString, [rfReplaceAll]);
   Txt0 := StringReplace(Txt0, '{SERIE_EXT}', ' na ' + DM2.iqAproveitamentoSERIE.AsString + 'ª série do Ensino Médio ', [rfReplaceAll]);
   Texto.Lines.Text := Txt0;
   nome.Caption :=   DM2.iqAproveitamentoNOME.AsString;
end;
end.
