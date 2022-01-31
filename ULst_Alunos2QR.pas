unit ULst_Alunos2QR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, Placemnt, QrAngLbl, jpeg;

type
  TLst_Alunos2QR = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    Titulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRImage1: TQRImage;
    QRLabel12: TQRLabel;
    DetNota: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    NomeTurma: TQRLabel;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape15: TQRShape;
    QRShape27: TQRShape;
    QRShape39: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape12: TQRShape;
    QRLabel11: TQRLabel;
    ATIVOS: TQRLabel;
    Alunos: TIBQuery;
    dsAlunos: TDataSource;
    Bim: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel7: TQRLabel;
    QRLabStatus: TQRLabel;
    QRLabel6: TQRLabel;
    AlunosCODIGO: TIntegerField;
    AlunosCHAMADA: TSmallintField;
    AlunosNOME: TIBStringField;
    AlunosSTATUS: TIBStringField;
    Ano: TQRLabel;
    LabelModEsp: TQRLabel;
    LabelSexo: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel17: TQRLabel;
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetNotaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Lst_Alunos2QR: TLst_Alunos2QR;
  TotAtivos : Integer;

implementation

uses UDM, UMenu;

{$R *.DFM}

procedure TLst_Alunos2QR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  TotAtivos := 0;
  Ano.Caption := Principal.Ano.Caption;
end;

procedure TLst_Alunos2QR.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value;
end;

procedure TLst_Alunos2QR.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetNota.Color = clWhite then  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  DetNota.Color := clWhite;
  QRLabStatus.Caption := '';
  if AlunosSTATUS.Value = 'A' then begin
    QRLabStatus.Caption := 'Ativo';
    TotAtivos := TotAtivos + 1;
  end;
  if AlunosSTATUS.Value = 'D' then QRLabStatus.Caption := 'Desistente';
  if AlunosSTATUS.Value = 'T' then QRLabStatus.Caption := 'Transferido';
  if AlunosSTATUS.Value = 'O' then QRLabStatus.Caption := 'Outros';
end;

procedure TLst_Alunos2QR.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Ativos.Caption := IntToStr(TotAtivos);
end;

end.
