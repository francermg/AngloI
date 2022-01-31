unit Usenhaprofessores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  USenhaNotas, Placemnt, StdCtrls, Buttons;

type
  Tfsenhaprofessores = class(TFSenhaNotas)
    procedure BtOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fsenhaprofessores: Tfsenhaprofessores;

implementation

uses Uprofessores;

{$R *.DFM}

procedure Tfsenhaprofessores.BtOkClick(Sender: TObject);
begin
  If EdSenha.Text = 'pro456' then
  begin
  Try
   Application.CreateForm(Tfprofessores, fprofessores);
   fprofessores.ShowModal;
   Finally
    if fsenhaprofessores <> nil then
    fprofessores.Free;
   End;
  End
  Else
   MessageDlg('Senha incorreta!!!!',mtError,[mbCancel],0);
   if fsenhaprofessores <> nil then
   EdSenha.SetFocus;
end;
end.
