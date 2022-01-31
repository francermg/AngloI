unit USelecionaSerie;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, Buttons, Placemnt;

type
  Tfselecionaserie = class(TForm)
    RxSelecionaSerie: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    FormPlacement1: TFormPlacement;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fselecionaserie: Tfselecionaserie;

implementation

uses UDM, ULst_LoginSenhaAluno;

{$R *.DFM}

procedure Tfselecionaserie.FormShow(Sender: TObject);
begin
 dm.Turmas.Open;
end;

procedure Tfselecionaserie.BitBtn1Click(Sender: TObject);
begin
   Application.CreateForm(TLst_LoginSenhaAluno, Lst_LoginSenhaAluno);
   Lst_loginsenhaaluno.QLoginSenha.Close;
   Lst_LoginSenhaAluno.QLoginSenha.ParamByName('serie').Value := Copy(RxSelecionaSerie.Text, 1,1);
   Lst_LoginSenhaAluno.QLoginSenha.ParamByName('turma').Value := Copy(RxSelecionaSerie.Text, 10,1);
   Lst_LoginSenhaAluno.QLoginSenha.Open;
  Try
   Lst_LoginSenhaAluno.RL_LoginSenhaAluno.Preview;
  Finally
    Lst_LoginSenhaAluno.RL_LoginSenhaAluno.Free;
  end;
end;

end.

