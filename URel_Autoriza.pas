unit URel_Autoriza;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, Db, IBCustomDataSet, IBQuery;

type
  TRel_autoriza = class(TForm)
    Rel_autorizacao: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    ds_RelAut: TDataSource;
    Q_RelAut: TIBQuery;
    Q_RelAutNOME: TIBStringField;
    Q_RelAutFORMAP: TIBStringField;
    Q_RelAutAUTORIZACAO: TIBStringField;
    Q_RelAutDATA_PAGAMENTO: TDateField;
    Q_RelAutPARCELAS: TIntegerField;
    Q_RelAutVALORP: TIBBCDField;
    Q_RelAutTotal: TCurrencyField;
    RLLabel2: TRLLabel;
    RLDraw1: TRLDraw;
    RLDBText2: TRLDBText;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDBText3: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDraw4: TRLDraw;
    RLBand3: TRLBand;
    RLMemo1: TRLMemo;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLDraw5: TRLDraw;
    RLBand4: TRLBand;
    RLLabel6: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    procedure Q_RelAutCalcFields(DataSet: TDataSet);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Rel_autorizacaoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rel_autoriza: TRel_autoriza;

implementation

uses UDM, UDM2, Ufautorizacao;

{$R *.DFM}

procedure TRel_autoriza.Q_RelAutCalcFields(DataSet: TDataSet);
begin
Q_RelAutTotal.Value := (Q_RelAutPARCELAS.Value * Q_RelAutVALORP.Value);
end;

procedure TRel_autoriza.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if RLBand2.Color = clWhite then  RLBand2.Color := clSilver
   else  RLBand2.Color := clWhite;

end;

procedure TRel_autoriza.Rel_autorizacaoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLLabel7.Caption := 'Relatório de pagamentos de material.';
end;

end.
