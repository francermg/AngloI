unit Uflogin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, IBCustomDataSet, IBQuery, RxLookup, Placemnt,
  ExtCtrls;

type
  Tflogin = class(TForm)
    Esenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Bfecha: TBitBtn;
    ENome: TEdit;
    FormPlacement1: TFormPlacement;
    procedure BitBtn1Click(Sender: TObject);
    procedure BfechaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  flogin: Tflogin;
  fecha :Boolean;
implementation

uses UDM, UDM2, UMenu;

{$R *.DFM}


function GetStateK(Key :Integer): Boolean;
begin
 Result := Odd(GetKeyState(Key));
end;


procedure Tflogin.BitBtn1Click(Sender: TObject);
begin
          dm2.DBUsuario.Connected := True;
          dm2.qy_usuario.Close;
          dm2.qy_usuario.SQL[2] := 'Where login = :blogin and senha = :bsenha';
          dm2.qy_usuario.Params[0].Value := Enome.Text;
          dm2.qy_usuario.Params[1].Value := Esenha.Text;
          dm2.qy_usuario.Open;

          {**************************compara a senha e usuário******************}

          If (not dm2.qy_usuario.IsEmpty) Then
//            if ((dm2.qy_usuario.RecordCount>=1) and (not dm2.qy_usuarioLOGIN.IsNull)) Then
              Begin
                codigouser := dm2.qy_usuarioCODIGO.Value;
                ModalResult := mrOk;
              End
                Else
//          If (dm2.qy_usuario.RecordCount <= 0) Then
            MessageDlg('Confira se o Usuário e a Senha foram digitados corretamente.',mtError,[mbCancel],0);




end;

procedure Tflogin.BfechaClick(Sender: TObject);
begin
  fecha:= true;
  Application.Terminate;
end;

procedure Tflogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//VK_LMENU = Alt esquerdo
if GetStateK(VK_LMENU) and (Key = VK_F4) then
Begin
  fecha := False;
  ShowMessage('Clique em fechar para sair do programa');
  Application.Terminate;
  end;
end;

procedure Tflogin.FormShow(Sender: TObject);
begin
  ENome.SetFocus;
  dm2.qy_usuario.Open;
end;

end.
