unit UDoc_ReqSemiQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QrAngLbl, Db,
  IBCustomDataSet, IBQuery, ECC_Extenso, ECC_Justifica, jpeg;

type
  TDoc_ReqSemiQR = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel33: TQRLabel;
    QRLabel1: TQRLabel;
    Ano: TQRLabel;
    QRShape2: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText1: TQRDBText;
    DataExt: TQRECC_DataExtenso;
    QRImage1: TQRImage;
    Texto: TQRMemo;
    QRSemiTitu: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Doc_ReqSemiQR: TDoc_ReqSemiQR;

implementation

uses UDM, UCad_Semi_Extensivo, UMenu;

{$R *.DFM}

procedure TDoc_ReqSemiQR.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var Txt1, TTurno : String;
begin
  If DM.SemiTURNO.Value = 'N' Then
     TTurno := 'noturno'
     Else TTurno := 'diurno';
  Ano.Caption := 'Ano: '+Principal.Ano.Caption;
  Txt1 := DM.ParametrosTEXTO_REQ_SEMI.Value;
  Txt1 := StringReplace(Txt1, '{NOME}', DM.SemiNOME.Value, [rfReplaceAll]);
  Txt1 := StringReplace(Txt1, '{NUMERO}', DM.SemiCODIGO.AsString, [rfReplaceAll]);
  Txt1 := StringReplace(Txt1, '{PAI_NOME}', DM.SemiPAI_NOME.Value, [rfReplaceAll]);
  Txt1 := StringReplace(Txt1, '{MAE_NOME}', DM.SemiMAE_NOME.Value, [rfReplaceAll]);
  Txt1 := StringReplace(Txt1, '{NASC_DATA}', DM.DataExtS(DM.SemiNASC_DATA.Value), [rfReplaceAll]);
  Txt1 := StringReplace(Txt1, '{NASC_CIDADE}', DM.SemiNASC_CIDADE.Value, [rfReplaceAll]);
  Txt1 := StringReplace(Txt1, '{NASC_UF}', DM.SemiNASC_UF.Value, [rfReplaceAll]);
  Txt1 := StringReplace(Txt1, '{CIDADE}', DM.SemiCIDADE.Value, [rfReplaceAll]);
  Txt1 := StringReplace(Txt1, '{ENDERECO}', DM.SemiENDERECO.Value, [rfReplaceAll]);
  Txt1 := StringReplace(Txt1, '{BAIRRO}', DM.SemiBAIRRO.Value, [rfReplaceAll]);
  Txt1 := StringReplace(Txt1, '{UF}', DM.SemiUF.Value, [rfReplaceAll]);
  Txt1 := StringReplace(Txt1, '{CEP}', DM.SemiCEP.DisplayText, [rfReplaceAll]);
  Txt1 := StringReplace(Txt1, '{FONE}', DM.SemiFONE.Value, [rfReplaceAll]);
  Txt1 := StringReplace(Txt1, '{RG}', DM.SemiRG.Value, [rfReplaceAll]);
  Txt1 := StringReplace(Txt1, '{TURNO}', TTurno, [rfReplaceAll]);
  Texto.Lines.Text:=Txt1;
  DataExt.Data := Cad_Semi_Extensivo.Ddocumento.Date;
end;

end.
