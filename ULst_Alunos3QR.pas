unit ULst_Alunos3QR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, Placemnt, QrAngLbl, jpeg;

type
  TLst_Alunos3QR = class(TQuickRep)
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
    DetNota: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    NomeTurma: TQRLabel;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape15: TQRShape;
    QRShape27: TQRShape;
    QRShape39: TQRShape;
    QRLabel6: TQRLabel;
    Bolsa: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape12: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    ATIVOS: TQRLabel;
    Alunos: TIBQuery;
    dsAlunos: TDataSource;
    AlunosCODIGO: TIntegerField;
    AlunosCHAMADA: TSmallintField;
    AlunosNOME: TIBStringField;
    AlunosSTATUS: TIBStringField;
    AlunosBOLSA: TIBBCDField;
    AlunosFONE: TIBStringField;
    QRDBText1: TQRDBText;
    AlunosBOLSA_OBS: TIBStringField;
    Ano: TQRLabel;
    LabelModEsp: TQRLabel;
    LabelSexo: TQRLabel;
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
  Lst_Alunos3QR: TLst_Alunos3QR;
  TotAtivos : Integer;

implementation

uses UDM, UMenu, ULst_Alunos;

{$R *.DFM}

procedure TLst_Alunos3QR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  TotAtivos := 0;
  Ano.Caption := Principal.Ano.Caption;
  if Lst_Alunos.Senha.Text = DM.ParametrosTAXA.Value then Bolsa.Enabled := true;
end;

procedure TLst_Alunos3QR.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value;
end;

procedure TLst_Alunos3QR.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetNota.Color = clWhite then  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  DetNota.Color := clWhite;
  if AlunosSTATUS.Value = 'A' then begin
    TotAtivos := TotAtivos + 1;
  end;
end;

procedure TLst_Alunos3QR.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Ativos.Caption := IntToStr(TotAtivos);
end;

end.
