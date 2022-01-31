unit Urelacaosenhapais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, jpeg;

type
  Tfrelacaosenhapais = class(TForm)
    rlsenhapais: TRLReport;
    RLBand1: TRLBand;
    imagenanglo: TRLImage;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLLabel6: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraw7: TRLDraw;
    RLDBText4: TRLDBText;
    RLLabel7: TRLLabel;
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frelacaosenhapais: Tfrelacaosenhapais;

implementation

uses UDM;

{$R *.DFM}

procedure Tfrelacaosenhapais.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if dm.AlunosMAE_NOME.IsNull TheN
      RLDBText1.DataField := 'PAI_NOME'
      Else
       RLDBText1.DataField := 'MAE_NOME';
// if dm.AlunosMAE_NOME.IsNull and dm.AlunosPAI_NOME.IsNull Then    RLDBText1.Text := 'Intercâmbio';
  if RLBand2.Color = clWhite Then
    RLBand2.Color := clSilver
    Else
     RLBand2.Color := clWhite;
end;

end.
