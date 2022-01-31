Unit URel_QRMens_RecebidasRes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, jpeg;

type
  TRel_QRMens_RecebidasRes = class(TQuickRep)
    TitleBand1: TQRBand;
    Selec: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    Titulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRImage1: TQRImage;
    SummaryBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRShape2: TQRShape;
    QRLabel15: TQRLabel;
    IBQuery1: TIBQuery;
    QRDBText1: TQRDBText;
    IBQuery1TIPO: TIBStringField;
    IBQuery1BANCO: TIBBCDField;
    IBQuery1TESOURARIA: TIBBCDField;
    IBQuery1TOTAL: TIBBCDField;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Rel_QRMens_RecebidasRes: TRel_QRMens_RecebidasRes;

implementation

uses UDM, UMenu;

{$R *.DFM}

procedure TRel_QRMens_RecebidasRes.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//
end;

end.
