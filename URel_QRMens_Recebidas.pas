unit URel_QRMens_Recebidas;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, jpeg;

type
  TRel_QRMens_Recebidas = class(TQuickRep)
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
    QRLabel11: TQRLabel;
    Titulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    DetailBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    Bloquetos: TIBQuery;
    BloquetosNOSSO_NUMERO: TIntegerField;
    BloquetosALUNO: TIntegerField;
    BloquetosVENCIMENTO: TDateField;
    BloquetosVALOR: TIBBCDField;
    BloquetosPAGAMENTO: TDateField;
    BloquetosVALOR_PAGO: TIBBCDField;
    BloquetosNOME: TIBStringField;
    dsBloquetos: TDataSource;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    NossoN: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRExpr1: TQRExpr;
    QRImage1: TQRImage;
    QRLabel10: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText8: TQRDBText;
    BloquetosTIPO_PG: TSmallintField;
    QRLabel13: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRExpr2: TQRExpr;
    QRShape2: TQRShape;
    QRExpr3: TQRExpr;
    QRLabel15: TQRLabel;
    anocorrente: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Rel_QRMens_Recebidas: TRel_QRMens_Recebidas;

implementation

uses UDM, UMenu;

{$R *.DFM}

procedure TRel_QRMens_Recebidas.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var NossoNumX : string;
begin
  NossoNumX := '0903'+'02'+'26431'+Principal.AnoP.Caption+'2'+FormatFloat('00000',BloquetosNOSSO_NUMERO.Value);
  NossoNumX := Principal.AnoP.Caption+'/2'+FormatFloat('00000',BloquetosNOSSO_NUMERO.Value)+
               '-'+DM.DvMod11(NossoNumX);
  NossoN.Caption := NossoNumX;
end;

procedure TRel_QRMens_Recebidas.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  anocorrente.Caption := 'Ano corrente: ' + Principal.Ano.Caption;
end;

end.
