unit UMensalidadesR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, Db, IBCustomDataSet, IBQuery, jpeg, QuickRpt, Qrctrls;

type
  TfRel_MensalidadesR = class(TForm)
    RM_Receber: TRLReport;
    RLBand1: TRLBand;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    dspago: TDataSource;
    Qpagos: TIBQuery;
    QpagosNOSSO_NUMERO: TIntegerField;
    QpagosALUNO: TIntegerField;
    QpagosVENCIMENTO: TDateField;
    QpagosVALOR: TIBBCDField;
    QpagosPAGAMENTO: TDateField;
    QpagosVALOR_PAGO: TIBBCDField;
    QpagosTIPO_PG: TSmallintField;
    QpagosANO_DV: TIBStringField;
    QpagosSACADO: TIBStringField;
    QpagosNOME: TIBStringField;
    QpagosCELULAR: TIBStringField;
    QpagosSERIE: TSmallintField;
    QpagosTURMA: TIBStringField;
    QpagosENDERECO: TIBStringField;
    QpagosNUMERO: TSmallintField;
    QpagosBAIRRO: TIBStringField;
    QpagosCIDADE: TIBStringField;
    QpagosUF: TIBStringField;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand3: TRLBand;
    NossoN: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    QpagosCEP: TIBStringField;
    RLDBText10: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLBand4: TRLBand;
    RLLabel9: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLDBResult2: TRLDBResult;
    RLLabel10: TRLLabel;
    procedure FormShow(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRel_MensalidadesR: TfRel_MensalidadesR;

implementation

uses UDM;

{$R *.DFM}

procedure TfRel_MensalidadesR.FormShow(Sender: TObject);
begin
  Qpagos.Open;
end;

procedure TfRel_MensalidadesR.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var NossoNumX : string;
begin
 NossoNumX := '0903'+'01'+'10582'+QpagosANO_DV.Value+'2'+FormatFloat('00000',QpagosNOSSO_NUMERO.Value);
  NossoNumX := QpagosANO_DV.Value +'/2'+FormatFloat('00000',QpagosNOSSO_NUMERO.Value)+
               '-'+DM.DvMod11(NossoNumX);
  NossoN.Caption := NossoNumX;

end;

end.
