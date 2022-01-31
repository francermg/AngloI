unit ULst_AlunosEtiqQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery;

type
  TLst_AlunosEtiqQR = class(TQuickRep)
    Alunos: TIBQuery;
    dsAlunos: TDataSource;
    AlunosCODIGO: TIntegerField;
    AlunosNOME: TIBStringField;
    AlunosSERIE: TSmallintField;
    AlunosTURMA: TIBStringField;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    AlunosSerieX: TStringField;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    procedure AlunosCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  Lst_AlunosEtiqQR: TLst_AlunosEtiqQR;

implementation

uses UDM;

{$R *.DFM}

procedure TLst_AlunosEtiqQR.AlunosCalcFields(DataSet: TDataSet);
begin
  AlunosSerieX.Value := AlunosSERIE.AsString+'ª Série '+AlunosTURMA.AsString;
end;

end.
