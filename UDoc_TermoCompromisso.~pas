unit UDoc_TermoCompromisso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, jpeg;

type
  TDoc_TermoCompromisso = class(TForm)
    rlCompromisso: TRLReport;
    rlbCompromisso: TRLBand;
    imgCompromisso: TRLImage;
    rlbl1: TRLLabel;
    rlm1: TRLMemo;
    rlm2: TRLMemo;
    rlbl2: TRLLabel;
    rldrw1: TRLDraw;
    rlbl3: TRLLabel;
    rlsystmnf1: TRLSystemInfo;
    rldrw2: TRLDraw;
    rldrw3: TRLDraw;
    rlbl4: TRLLabel;
    rldrw4: TRLDraw;
    procedure rlbCompromissoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Doc_TermoCompromisso: TDoc_TermoCompromisso;


implementation

uses UDM;

{$R *.DFM}

procedure TDoc_TermoCompromisso.rlbCompromissoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var   Txt0 :string;
begin
Txt0 := '       Eu {SACADO} , responsável {PELOALUNO} {ALUNO} , {MATRICULA} na {SERIE} ,';
Txt0 := Txt0 +' no período matutino, estou ciente de que {A} possui desconto de';
Txt0 := Txt0 + ' {PORCENTO} % no valor da mensalidade, estando este desconto vinculado às seguintes normas:';
Txt0 := StringReplace(Txt0, '{SACADO}', DM.AlunosSACADO.Value, [rfReplaceAll]);
if dm.AlunosSEXO.Value = 'F' then Txt0 := StringReplace(Txt0, '{PELOALUNO}', 'pela aluna ' , []);
if dm.AlunosSEXO.Value = 'M' then Txt0 := StringReplace(Txt0, '{PELOALUNO}', 'pelo aluno ' , []);
Txt0 := StringReplace(Txt0, '{ALUNO}', DM.AlunosNOME.Value, [rfReplaceAll]);
if dm.AlunosSEXO.Value = 'F' then Txt0 := StringReplace(Txt0, '{MATRICULA}', ' matriculada ', []);
if dm.AlunosSEXO.Value = 'M' then Txt0 := StringReplace(Txt0, '{MATRICULA}', ' matriculado ', []);
Txt0 := StringReplace(Txt0, '{SERIE}', DM.AlunosSerieX.Value, [rfReplaceAll]);
if dm.AlunosSEXO.Value = 'F' then Txt0 := StringReplace(Txt0, '{A}', 'a mesma ' , []);
if dm.AlunosSEXO.Value = 'M' then Txt0 := StringReplace(Txt0, '{A}', 'o mesmo ' , []);
Txt0 := StringReplace(Txt0, '{PORCENTO}', FloatToStr(DM.AlunosBOLSA.Value), [rfReplaceAll]);
rlm1.Lines.Text := Txt0;
end;


end.
