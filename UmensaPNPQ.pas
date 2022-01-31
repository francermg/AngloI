unit UmensaPNPQ;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery;

type
  TMensaPNPQ = class(TQuickRep)
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand2: TQRBand;
    dsrecnrec: TDataSource;
    Qrecnrec: TIBQuery;
    QrecnrecMVRECEBIDO: TIBBCDField;
    QrecnrecMPTRECEBIDO: TIntegerField;
    QrecnrecMVDEVEDOR: TIBBCDField;
    QrecnrecMPTDEVEDOR: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRSysData1: TQRSysData;
    cabecalho: TQRLabel;
    QRShape3: TQRShape;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  MensaPNPQ: TMensaPNPQ;

implementation

uses UDM, UfrmmenRecNRec;

{$R *.DFM}

procedure TMensaPNPQ.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    if (frmREcNREc.chek.Checked = True) Then
     Begin
       QRLabel2.Enabled := False;
       QRDBText1.Enabled := False;
       QRLabel4.Enabled := False;
       QRDBText2.Enabled := False;
       QRShape2.Enabled := False;
     end;
  If frmREcNREc.ComboMes.ItemIndex >= 1 Then
   Begin
    cabecalho.Left := 165;
    cabecalho.Caption := 'Relatório de no mês de '+ frmREcNREc.ComboMes.Text;
   End
    Else
     Begin
      cabecalho.Left := 165;
      cabecalho.Caption := 'Relatório corrente mês de '+ frmREcNREc.ComboMes.Text +' referente a matricula';
     End;
end;

end.
