unit UDoc_CertificadoQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QrAngLbl, Db,
  IBCustomDataSet, IBQuery, ECC_Extenso, ECC_Justifica, jpeg;

type
  TDoc_CertificadoQR = class(TQuickRep)
    QRBand1: TQRBand;
    Texto: TQRMemo;
    QRLabel2: TQRLabel;
    DataExt: TQRECC_DataExtenso;
    NascExt: TQRECC_DataExtenso;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape2: TQRShape;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Doc_CertificadoQR: TDoc_CertificadoQR;

implementation

uses UDM, UCad_Alunos, UMenu;

{$R *.DFM}

procedure TDoc_CertificadoQR.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var Txt0 : String;
begin
  Txt0 := DM.ParametrosTEXTO_CERTIFICADO.Value;
  NascExt.Data := DM.AlunosNASC_DATA.Value;
  Txt0 := StringReplace(Txt0, '{NOME}', DM.AlunosNOME.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{RG}', DM.AlunosRG.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{PAI_NOME}', DM.AlunosPAI_NOME.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{MAE_NOME}', DM.AlunosMAE_NOME.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{NASC_CIDADE}',
     DM.AlunosNASC_CIDADE.Value+'-'+DM.AlunosNASC_UF.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{DATA_EXTENSO}', NascExt.Caption, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{ANO_LETIVO}',   Principal.Ano.Caption, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{LEI}', 'e', [rfReplaceAll]);  
  if DM.AlunosSEXO.Value = 'M' then
    Txt0 := StringReplace(Txt0, '{AO}', 'o', [rfReplaceAll])
   else
    Txt0 := StringReplace(Txt0, '{AO}', 'a', [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '01º', '1º', [rfReplaceAll]);
  Texto.Lines.Text := Txt0;
  DataExt.Data := Cad_Alunos.DataHist.Date;
end;

end.
