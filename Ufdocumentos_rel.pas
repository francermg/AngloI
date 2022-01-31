unit Ufdocumentos_rel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, jpeg;

type
  TfDocumetos_rel = class(TForm)
    Rl_documentos: TRLReport;
    RLBand1: TRLBand;
    ImColegioUnigran: TRLImage;
    RLLabel1: TRLLabel;
    Ano: TRLLabel;
    RLBand2: TRLBand;
    RLLabel3: TRLLabel;
    RL_texto: TRLMemo;
    RLLabel4: TRLLabel;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw1: TRLDraw;
    NOME: TRLLabel;
    RLLabel5: TRLLabel;
    procedure Rl_documentosBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDocumetos_rel: TfDocumetos_rel;

implementation

uses UDM, UDM2, UMenu;

{$R *.DFM}

procedure TfDocumetos_rel.Rl_documentosBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var  Txt0 :String;
begin
  dm2.iqDoc_rel.Close;
  dm2.iqDoc_rel.Params[0].Value := dm.AlunosCODIGO.Value;
  dm2.iqDoc_rel.Open;
  Ano.Caption := 'Ano: '+Principal.Ano.Caption;
  Txt0 :=  RL_texto.Lines.Text;
  Txt0 := StringReplace(Txt0, '{NOME}', DM2.iqDoc_relSACADO.AsString, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{RG}', DM2.iqDoc_relSACADO_RG.AsString, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{ALUNO}', DM2.iqDoc_relNOME.AsString, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{SERIE}', DM2.iqDoc_relSERIE.AsString+'º', [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{DATA}', DateToStr(now), [rfReplaceAll]);
  RL_texto.Lines.Text := Txt0;
  nome.Caption := dm2.iqDoc_relSACADO.AsString;
end;

end.
