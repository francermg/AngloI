unit USenhaNotas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Placemnt;

type
  TFSenhaNotas = class(TForm)
    BtOk: TBitBtn;
    EdSenha: TEdit;
    BtAbort: TBitBtn;
    Label1: TLabel;
    FormPlacement1: TFormPlacement;
    procedure BtAbortClick(Sender: TObject);
    procedure BtOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSenhaNotas: TFSenhaNotas;

implementation

uses UMov_Notas;


{$R *.DFM}

procedure TFSenhaNotas.BtAbortClick(Sender: TObject);
begin
  Close;
end;

procedure TFSenhaNotas.BtOkClick(Sender: TObject);
begin
  If EdSenha.Text = 'ead2312' then
  begin
   Try
    Application.CreateForm(TMov_Notas, Mov_Notas);
    Mov_Notas.ShowModal;
   Finally
    if Mov_Notas <> nil then
    Mov_Notas.Free;
   End;
  End
   Else
     MessageDlg('Senha incorreta!!!!',mtError,[mbCancel],0);
     if Mov_Notas <> nil then
     EdSenha.SetFocus;
end;


end.
