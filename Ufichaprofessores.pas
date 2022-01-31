unit Ufichaprofessores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport;

type
  Tffichadosprofessores = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLLabel27: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ffichadosprofessores: Tffichadosprofessores;

implementation

uses UDM;

{$R *.DFM}

procedure Tffichadosprofessores.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  dm.Professores.Open;
end;

end.
