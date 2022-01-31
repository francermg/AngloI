unit ULst_AlunosQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, Placemnt, QrAngLbl, jpeg;

type
  TLst_AlunosQR = class(TQuickRep)
    DetNota: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBText6: TQRDBText;
    QRShape4: TQRShape;
    QRShape12: TQRShape;
    QRLabStatus: TQRLabel;
    QRLabel11: TQRLabel;
    ATIVOS: TQRLabel;
    Alunos: TIBQuery;
    dsAlunos: TDataSource;
    AlunosCODIGO: TIntegerField;
    AlunosCHAMADA: TSmallintField;
    AlunosNOME: TIBStringField;
    AlunosSTATUS: TIBStringField;
    AlunosBOLSA: TIBBCDField;
    AlunosMATERIAL: TSmallintField;
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
    NomeTurma: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel13: TQRLabel;
    Ano: TQRLabel;
    LabelModEsp: TQRLabel;
    LabelSexo: TQRLabel;
    QRDBText1: TQRDBText;
    AlunosCODIGO_SP: TIBStringField;
    QRLabel7: TQRLabel;
    QRShape14: TQRShape;
    QRShape9: TQRShape;
    QRDBText5: TQRDBText;
    AlunosDATA_MATRICULA: TDateField;
    QRShape13: TQRShape;
    QRShape15: TQRShape;
    AlunosSENHA: TIBStringField;
    AlunosCELULAR: TIBStringField;
    AlunosTEL_RESIDENCIAL: TIBStringField;
    AlunosTEL_CONTATO: TIBStringField;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel14: TQRLabel;
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
  Lst_AlunosQR: TLst_AlunosQR;
  TotAtivos : Integer;

implementation

uses UDM, UMenu, ULst_Alunos;

{$R *.DFM}

procedure TLst_AlunosQR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  TotAtivos := 0;
  Ano.Caption := Principal.Ano.Caption;
end;

procedure TLst_AlunosQR.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value;
end;

procedure TLst_AlunosQR.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetNota.Color = clWhite then  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  DetNota.Color := clWhite;
  QRLabStatus.Caption := '';
  if AlunosSTATUS.Value = 'A' then begin
    QRLabStatus.Caption := 'Ativo';
    TotAtivos := TotAtivos + 1;
  end;
  Begin
    if AlunosSTATUS.Value = 'D' then QRLabStatus.Caption := 'Desistente';
    if AlunosSTATUS.Value = 'T' then QRLabStatus.Caption := 'Transferido';
    if AlunosSTATUS.Value = 'O' then QRLabStatus.Caption := 'Outros';
    if AlunosSTATUS.Value = 'R' then QRLabStatus.Caption := 'Reclass.';
  end;
end;

procedure TLst_AlunosQR.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Ativos.Caption := IntToStr(TotAtivos);
end;

end.
