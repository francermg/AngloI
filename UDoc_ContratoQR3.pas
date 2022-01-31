unit UDoc_ContratoQR3;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, QrAngLbl, Placemnt, ECC_Extenso, ECC_Justifica, jpeg;

type
  TDoc_ContratoQR3 = class(TQuickRep)
    Rodape: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel1: TQRLabel;
    Ano: TQRLabel;
    QRImage1: TQRImage;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
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
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRMemo1: TQRMemo;
    QRSubDetail1: TQRSubDetail;
    QRMemo2: TQRMemo;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    DataExt: TQRECC_DataExtenso;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    procedure RodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Doc_ContratoQR3: TDoc_ContratoQR3;

implementation

uses UDM, UcadParametros, UCad_Alunos, UMenu, UDoc_ContratoQR;

{$R *.DFM}

procedure TDoc_ContratoQR3.RodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Ano.Caption := 'Ano: '+Principal.Ano.Caption;
  DataExt.Data := Cad_Alunos.DataDoc.Date;
end;

end.
