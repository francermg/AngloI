unit Ufextratomensal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, Qrctrls, QuickRpt, RLFilters, RLPDFFilter;

type
  Tfextratomensal = class(TForm)
    rlextratomensal: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLBand3: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw2: TRLDraw;
    RLBand4: TRLBand;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLSystemInfo2: TRLSystemInfo;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLBand5: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel5: TRLLabel;
    RlMes: TRLLabel;
    RLBand6: TRLBand;
    RLDBResult3: TRLDBResult;
    RLLabel6: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    procedure rlextratomensalBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup1AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fextratomensal: Tfextratomensal;

implementation

uses UDM, UDM2, UfrmmenRecNRec;

{$R *.DFM}

procedure Tfextratomensal.rlextratomensalBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    RLLabel7.Caption := 'Alunos que não quitaram a mensalidade no mês de '+ frmREcNREc.ComboMes.Text+'.';
    if frmREcNREc.CheckBox1.Checked Then
       RLLabel7.Caption := 'Alunos que não quitaram a mensalidade no periodo de '+ frmREcNREc.ComboMes.Text+' à '+frmREcNREc.ComboFinal.Text+'.';
end;

procedure Tfextratomensal.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 if dm2.ibNaopagantesPARCELA.Value = 2 then
    RlMes.Caption := 'Fevereiro';
 if dm2.ibNaopagantesPARCELA.Value = 3 then
    RlMes.Caption := 'Março';
 if dm2.ibNaopagantesPARCELA.Value = 4 then
    RlMes.Caption := 'Abril';
 if dm2.ibNaopagantesPARCELA.Value = 5 then
    RlMes.Caption := 'Maio';
 if dm2.ibNaopagantesPARCELA.Value = 6 then
    RlMes.Caption := 'Junho';
 if dm2.ibNaopagantesPARCELA.Value = 7 then
    RlMes.Caption := 'Julho';
 if dm2.ibNaopagantesPARCELA.Value = 8 then
    RlMes.Caption := 'Agosto';
 if dm2.ibNaopagantesPARCELA.Value = 9 then
    RlMes.Caption := 'Setembro';
 if dm2.ibNaopagantesPARCELA.Value = 10 then
    RlMes.Caption := 'Outubro';
 if dm2.ibNaopagantesPARCELA.Value = 11 then
    RlMes.Caption := 'Novembro';
 if dm2.ibNaopagantesPARCELA.Value = 12 then
    RlMes.Caption := 'Dezembro'; 
end;

procedure Tfextratomensal.RLGroup1AfterPrint(Sender: TObject);
begin
  if RLGroup1.Color = clWhite then
     RLGroup1.Color := clSilver else
     RLGroup1.Color := clWhite;
end;

end.
