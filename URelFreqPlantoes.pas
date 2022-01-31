unit URelFreqPlantoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, jpeg, QuickRpt, Qrctrls;

type
  TRel_Freq_Plantoes = class(TForm)
    rlFreqPlantoes: TRLReport;
    rlb1: TRLBand;
    rlbl1: TRLLabel;
    img1: TRLImage;
    rlsystmnf1: TRLSystemInfo;
    rlbl2: TRLLabel;
    rlb2: TRLBand;
    rldrw1: TRLDraw;
    rlbl3: TRLLabel;
    rlbl4: TRLLabel;
    rldbtxtDATA: TRLDBText;
    rldbtxtPROFESSOR: TRLDBText;
    rldbtxtDSem: TRLDBText;
    rldrw2: TRLDraw;
    rlbl5: TRLLabel;
    rlbl6: TRLLabel;
    rlbl7: TRLLabel;
    rlb3: TRLBand;
    rldbrslt1: TRLDBResult;
    rlbl8: TRLLabel;
    rlbl9: TRLLabel;
    procedure rlb1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlb2AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rel_Freq_Plantoes: TRel_Freq_Plantoes;

implementation

uses UMov_Plantoes;

{$R *.DFM}

procedure TRel_Freq_Plantoes.rlb1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   rlbl4.Caption :=  Mov_Plantoes.Aluno2.Text;
end;

procedure TRel_Freq_Plantoes.rlb2AfterPrint(Sender: TObject);
begin
  if rlb2.Color = clwhite then
     rlb2.Color := clSilver else
     rlb2.Color := clWhite;
end;

end.
