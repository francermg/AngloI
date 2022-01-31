unit Umensagem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  Tfmensagem = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmensagem: Tfmensagem;

implementation

{$R *.DFM}

procedure Tfmensagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fmensagem := nil;
end;

end.
