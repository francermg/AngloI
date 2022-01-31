  unit ULst_Alunos7QR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, Placemnt, QrAngLbl, jpeg;

type
  TLst_Alunos7QR = class(TQuickRep)
    DetNota: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape39: TQRShape;
    Reuniao: TIBQuery;
    dsReuniao: TDataSource;
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
    QRBand2: TQRBand;
    Data: TQRSysData;
    QRLabel6: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel7: TQRLabel;
    ReuniaoNOME: TIBStringField;
    ReuniaoPAI_NOME: TIBStringField;
    ReuniaoMAE_NOME: TIBStringField;
    QRDBText1: TQRDBText;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRShape5: TQRShape;
    ReuniaoCELULAR: TIBStringField;
    ReuniaoTEL_RESIDENCIAL: TIBStringField;
    ReuniaoTEL_CONTATO: TIBStringField;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
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
  Lst_Alunos7QR: TLst_Alunos7QR;

implementation

uses UDM, UMenu, ULst_Alunos;

{$R *.DFM}

procedure TLst_Alunos7QR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Ano.Caption := Principal.Ano.Caption;
end;

procedure TLst_Alunos7QR.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value;
end;

procedure TLst_Alunos7QR.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetNota.Color = clWhite then  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  DetNota.Color := clWhite;
end;

end.
