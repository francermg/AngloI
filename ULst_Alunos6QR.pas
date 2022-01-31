unit ULst_Alunos6QR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, Placemnt, QrAngLbl, jpeg;

type
  TLst_Alunos6QR = class(TQuickRep)
    DetNota: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape39: TQRShape;
    Alunos: TIBQuery;
    dsAlunos: TDataSource;
    AlunosCODIGO: TIntegerField;
    AlunosCHAMADA: TSmallintField;
    AlunosNOME: TIBStringField;
    AlunosSTATUS: TIBStringField;
    AlunosBOLSA: TIBBCDField;
    AlunosFONE: TIBStringField;
    AlunosMATERIAL: TSmallintField;
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    Titulo: TQRLabel;
    QRImage1: TQRImage;
    QRLabel12: TQRLabel;
    NomeTurma: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape27: TQRShape;
    Ano: TQRLabel;
    AlunosCODIGO_SP: TIBStringField;
    QRBand2: TQRBand;
    Data: TQRSysData;
    QRLabel6: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel7: TQRLabel;
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetNotaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Lst_Alunos6QR: TLst_Alunos6QR;

implementation

uses UDM, UMenu, ULst_Alunos;

{$R *.DFM}

procedure TLst_Alunos6QR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Ano.Caption := Principal.Ano.Caption;
end;

procedure TLst_Alunos6QR.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value;
end;

procedure TLst_Alunos6QR.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetNota.Color = clWhite then  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  DetNota.Color := clWhite;
end;

end.
