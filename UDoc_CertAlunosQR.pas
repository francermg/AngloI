unit UDoc_CertAlunosQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QrAngLbl, Db,
  IBCustomDataSet, IBQuery, ECC_Extenso, ECC_Justifica, jpeg;

type
  TDoc_CertAlunosQR = class(TQuickRep)
    QRBand1: TQRBand;
    Texto: TQRMemo;
    QRLabel2: TQRLabel;
    DataExt: TQRECC_DataExtenso;
    NascExt: TQRECC_DataExtenso;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Doc_CertAlunosQR: TDoc_CertAlunosQR;

implementation

uses UDM, UDoc_Alunos, UMenu;

{$R *.DFM}

procedure TDoc_CertAlunosQR.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var Txt0 : String;
begin
  Txt0 := DM.ParametrosTEXTO_CERTIFICADO.Value;
  NascExt.Data := DM.DocAlunosNASC_DATA.Value;
  NascExt.Cidade := ' ';
  Txt0 := StringReplace(Txt0, '{NOME}', DM.DocAlunosNOME.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{RG}', DM.DocAlunosRG.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{PAI_NOME}', DM.DocAlunosPAI_NOME.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{MAE_NOME}', DM.DocAlunosMAE_NOME.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{NASC_CIDADE}',DM.DocAlunosNASC_CIDADE.Value+'-'+DM.DocAlunosNASC_UF.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{DATA_EXTENSO}', NascExt.Caption, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{ANO_LETIVO}',   Doc_Alunos.AnoLetivo.Text, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{LEI}', 'da Lei Nº 7.044 de 18/10/1982 e', [rfReplaceAll]);
  if DM.DocAlunosSEXO.Value = 'M' then
    Txt0 := StringReplace(Txt0, '{AO}', 'o', [rfReplaceAll])
   else
    Txt0 := StringReplace(Txt0, '{AO}', 'a', [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '01º', '1º', [rfReplaceAll]);
  Texto.Lines.Text := Txt0;
  DataExt.Data := Doc_Alunos.DataHist.Date;
end;

end.
