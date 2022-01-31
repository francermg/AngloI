unit UDoc_ContratoQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, QrAngLbl, Placemnt, ECC_Extenso, ECC_Justifica, jpeg;

type
  TDoc_ContratoQR = class(TQuickRep)
    Rodape: TQRBand;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    Ano: TQRLabel;
    QRRichText1: TQRRichText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    DataExt: TQRECC_DataExtenso;
    QRImage1: TQRImage;
    QRDBText9: TQRDBText;
    QRMemo1: TQRMemo;
    QRLabel3: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape1: TQRShape;
    QRDBText13: TQRDBText;
    procedure RodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Doc_ContratoQR: TDoc_ContratoQR;

implementation

uses UDM, UcadParametros, UCad_Alunos, UMenu;

{$R *.DFM}

procedure TDoc_ContratoQR.RodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Ano.Caption := 'Ano: '+Principal.Ano.Caption;
  DataExt.Data := Cad_Alunos.DataDoc.Date;
end;

procedure TDoc_ContratoQR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var Txt0 : string;
begin
       Txt0 := Doc_ContratoQR.QRMemo1.Lines.Text;
       if dm.AlunosAULA_AD.Value = 'S' then
         Txt0 := StringReplace(Txt0, '{optante}', 'Aluno OPTANTE a sala de estudo individual.', [rfReplaceAll])
       else
         Txt0 := StringReplace(Txt0, '{optante}', 'Aluno NÃO OPTANTE a sala de estudo individual.', [rfReplaceAll]);

       Doc_ContratoQR.QRMemo1.Lines.Text := Txt0;
end;

end.
