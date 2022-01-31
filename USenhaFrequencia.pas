unit USenhaFrequencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, md_cpTabXEnter, Placemnt;

type
  TFSenhaFrequencia = class(TForm)
    BtOk: TBitBtn;
    EdSenha: TEdit;
    BtAbort: TBitBtn;
    Label1: TLabel;
    TabEnter: TTabXEnter;
    FS: TFormPlacement;
    procedure BtAbortClick(Sender: TObject);
    procedure BtOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSenhaFrequencia: TFSenhaFrequencia;

implementation

uses UMov_Frequencia;

{$R *.DFM}

procedure TFSenhaFrequencia.BtAbortClick(Sender: TObject);
begin
  Close;
end;

procedure TFSenhaFrequencia.BtOkClick(Sender: TObject);
begin
 If EdSenha.Text = 'ead5620' then
  begin
   Try
    Application.CreateForm(TMov_Frequencia, Mov_Frequencia);

   Finally
    Mov_Frequencia.Free;
   End;
  End
   Else
     MessageDlg('Senha incorreta!!!!',mtError,[mbCancel],0);
     EdSenha.SetFocus;
end;

end.
