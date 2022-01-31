unit UMov_Frequencia_FaltasAluno_QR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery;

type
  TMov_Frequencia_FaltasAluno_QR = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    Titulo: TQRLabel;
    QRSysData1: TQRSysData;
    DetFaltas: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRImage1: TQRImage;
    SummaryBand1: TQRBand;
    Periodo: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel15: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    SerFone: TQRLabel;
    QRDBText1: TQRDBText;
    Aluno: TQRLabel;
  private

  public

  end;

var
  Mov_Frequencia_FaltasAluno_QR: TMov_Frequencia_FaltasAluno_QR;
  CodAlu : Integer;

implementation

uses UMov_Frequencia;

{$R *.DFM}

end.

