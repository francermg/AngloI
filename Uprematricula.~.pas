unit Uprematricula;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, jpeg;

type
  Tfprematricula = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraw1: TRLDraw;
    RLMemo1: TRLMemo;
    RLDraw3: TRLDraw;
    RLImage1: TRLImage;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLImage2: TRLImage;
    RLLabel3: TRLLabel;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLMemo5: TRLMemo;
    RLMemo6: TRLMemo;
    RLMemo7: TRLMemo;
    RLMemo8: TRLMemo;
    RLLabel1: TRLLabel;
    RLLabel5: TRLLabel;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fprematricula: Tfprematricula;


implementation

uses UDM;

{$R *.DFM}

procedure Tfprematricula.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  var txt0, txt1, txt2 :string;
begin
   txt0 := 'Eu {sacadonome}, inscrito(a) no Cadastro de Pessoa Fisica sob o n° {sacadocpf}, com cedula de identidade n° {sacadorg}, declaro, ';
   txt1 := 'para os devidos fins, estar ciente e concordar com as disposições abaixo, correlatas à realização de pré-matricula do(a) ';
   txt2 := 'estudante: {nomealuno} na {serie} série do Ensino Médio do ano letivo de 2022.';



    txt0 := txt0 + txt1 + txt2;
    txt0 := StringReplace(txt0, '{sacadonome}', dm.AlunosSACADO.Value , [rfReplaceAll]);
    txt0 := StringReplace(txt0, '{sacadocpf}', dm.AlunosSACADO_CPF.Value , [rfReplaceAll]);
    txt0 := StringReplace(txt0, '{sacadorg}', dm.AlunosSACADO_RG.Value , [rfReplaceAll]);
    txt0 := StringReplace(txt0, '{nomealuno}', dm.AlunosNOME.Value , [rfReplaceAll]);
    txt0 := StringReplace(txt0, '{serie}', dm.AlunosSERIE.AsString+'°' , [rfReplaceAll]);
    RLMemo1.Lines.Text := txt0;
end;


end.
