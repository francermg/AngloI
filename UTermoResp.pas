unit UTermoResp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, jpeg;

type
  TRel_TermoResp = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLMemo1: TRLMemo;
    RLDraw1: TRLDraw;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rel_TermoResp: TRel_TermoResp;

implementation

{$R *.DFM}

end.
