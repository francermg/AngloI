unit UCad_AlunosFoto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons;

type
  TCad_AlunosFoto = class(TForm)
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Foto: TImage;
    procedure FormShow(Sender: TObject);
    procedure FotoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_AlunosFoto: TCad_AlunosFoto;

implementation

uses UDM, UCad_Alunos;

{$R *.DFM}

procedure TCad_AlunosFoto.FormShow(Sender: TObject);
begin
  if Cad_Alunos.PageControl1.ActivePage.TabIndex = 0 then
    Caption := DM.AlunosNOME.Value
    else
     if Cad_Alunos.PageControl1.ActivePage.TabIndex = 4 then
        Caption := DM.AlunosTNOME.Value;
end;

procedure TCad_AlunosFoto.FotoClick(Sender: TObject);
begin
  Close;
end;

end.
