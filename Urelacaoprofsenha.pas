unit Urelacaoprofsenha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport;

type
  Tfrelacaoprofsenha = class(TForm)
    rlprosenha: TRLReport;
    RLBand1: TRLBand;
    imagenanglo: TRLImage;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLBand2: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frelacaoprofsenha: Tfrelacaoprofsenha;

implementation

uses UDM;

{$R *.DFM}

procedure Tfrelacaoprofsenha.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if RLBand2.Color = clWhite Then
    RLBand2.Color := clSilver
    Else
     RLBand2.Color := clWhite;
end;

end.
