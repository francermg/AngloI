unit Ufoptaramporespanhol;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, Db, IBCustomDataSet, IBQuery;

type
  Tfoptaramespanhol = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    Qespanhol: TIBQuery;
    dsEspanhol: TDataSource;
    QespanholNOME: TIBStringField;
    RLDBText1: TRLDBText;
    RLBand3: TRLBand;
    RLLabel3: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel2: TRLLabel;
    QespanholSERIE: TSmallintField;
    QespanholTURMA: TIBStringField;
    RLDBText3: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    serie: TRLLabel;
    RLDraw1: TRLDraw;
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  foptaramespanhol: Tfoptaramespanhol;

implementation

uses UDM, UDM2;

{$R *.DFM}

procedure Tfoptaramespanhol.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if RLBand2.Color = clWhite Then
     RLBand2.Color := clSilver
     Else
       RLBand2.Color := clWhite;

  serie.Caption := QespanholSERIE.AsString + ' º';
end;

procedure Tfoptaramespanhol.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Qespanhol.Close;
  Qespanhol.Open;
end;

end.
