unit URel_QRMens_AReceber;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, jpeg;

type
  TRel_QRMens_AReceber = class(TQuickRep)
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
    QRLabel8: TQRLabel;
    QRExpr1: TQRExpr;
    QRImage1: TQRImage;
    QRLabel10: TQRLabel;
    QRDBText7: TQRDBText;
    BloquetosTIPO_PG: TSmallintField;
    SummaryBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRExpr2: TQRExpr;
    QRShape2: TQRShape;
    QRDBText6: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText8: TQRDBText;
    BloquetosSERIE: TSmallintField;
    BloquetosTURMA: TIBStringField;
    BloquetosSerTur: TStringField;
    TurmaX: TQRLabel;
    QRLabel15: TQRLabel;
    qrxpr1: TQRExpr;
    BloquetosANO_DV: TIBStringField;
    BloquetosCELULAR: TIBStringField;
    BloquetosSACADO: TIBStringField;
    QRDBText9: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    BloquetosENDERECO: TIBStringField;
    BloquetosNUMERO: TSmallintField;
    BloquetosBAIRRO: TIBStringField;
    BloquetosCIDADE: TIBStringField;
    BloquetosUF: TIBStringField;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure BloquetosCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  Rel_QRMens_AReceber: TRel_QRMens_AReceber;
  CodAlu : Integer;

implementation

uses UDM, URel_Mens_AReceber, UMenu;

{$R *.DFM}

procedure TRel_QRMens_AReceber.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var NossoNumX : string;
begin
  NossoNumX := '0903'+'01'+'10582'+BloquetosANO_DV.Value+'2'+FormatFloat('00000',BloquetosNOSSO_NUMERO.Value);
  NossoNumX := BloquetosANO_DV.Value +'/2'+FormatFloat('00000',BloquetosNOSSO_NUMERO.Value)+
               '-'+DM.DvMod11(NossoNumX);
  NossoN.Caption := NossoNumX;
  if Rel_Mens_AReceber.Ordem.ItemIndex = 1 then begin
    if BloquetosALUNO.Value = CodAlu then begin
      QRBand1.Frame.DrawTop := false;
      QRDBText2.Enabled := false;
      QRDBText3.Enabled := false;
      QRDBText6.Enabled := false;
      QRDBText8.Enabled := false;
      QRDBText9.Enabled := false;
      QRLabel16.Enabled := false; end
     else begin
      CodAlu := BloquetosALUNO.Value;
      QRBand1.Frame.DrawTop := true;
      QRDBText2.Enabled := true;
      QRDBText3.Enabled := true;
      QRDBText6.Enabled := true;
      QRDBText8.Enabled := true;
      QRDBText9.Enabled := true;
      QRLabel16.Enabled := true;
    end;
  end;
end;

procedure TRel_QRMens_AReceber.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  CodAlu := 0;
end;

procedure TRel_QRMens_AReceber.BloquetosCalcFields(DataSet: TDataSet);
begin
  BloquetosSerTur.Value := BloquetosSERIE.AsString+'ª '+BloquetosTURMA.AsString;
end;

end.

