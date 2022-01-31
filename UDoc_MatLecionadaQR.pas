unit UDoc_MatLecionadaQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, ECC_Extenso, jpeg;

type
  TDoc_MatLecionadaQR = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    DetNota: TQRBand;
    QRShape9: TQRShape;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRShape43: TQRShape;
    AnoX: TQRLabel;
    TxtSecretaria: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData1: TQRSysData;
    Tit2: TQRLabel;
    Tit1: TQRLabel;
    QRDBText1: TQRDBText;
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Doc_MatLecionadaQR: TDoc_MatLecionadaQR;

implementation

uses UDM, UcadParametros, UMenu, UDoc_MatLecionada;

{$R *.DFM}

procedure TDoc_MatLecionadaQR.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  Tit1.Caption := StringReplace(Tit1.Caption, '{DISCIPLINA}', DM.DisciplinasNOME.Value, [rfReplaceAll]);
  Tit2.Caption := StringReplace(Tit2.Caption, '{BIMESTRE}', IntToStr(Doc_MatLecionada.Bimestre.ItemIndex+1), [rfReplaceAll]);
  Tit2.Caption := StringReplace(Tit2.Caption, '{ANO}', Principal.Ano.Caption, [rfReplaceAll]);
  Tit2.Caption := StringReplace(Tit2.Caption, '{SERIE}', IntToStr(Doc_MatLecionada.Serie.ItemIndex+1), [rfReplaceAll]);
  AnoX.Caption := 'Ano Letivo de '+Principal.Ano.Caption;
end;

end.
