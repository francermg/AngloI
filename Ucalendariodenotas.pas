unit Ucalendariodenotas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, RXDBCtrl, RXCtrls, ExtCtrls, Placemnt;

type
  Tfcalendariodenotas = class(TForm)
    senha: TEdit;
    Label1: TLabel;
    bsenha: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    RxLabel1: TRxLabel;
    FPcalendarionotas: TFormPlacement;
    lbl1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure bsenhaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcalendariodenotas: Tfcalendariodenotas;

implementation

uses UDM2;

{$R *.DFM}

procedure Tfcalendariodenotas.FormShow(Sender: TObject);
begin
  dm2.iqdatasnotas.Open;
end;

procedure Tfcalendariodenotas.bsenhaClick(Sender: TObject);
begin
   if senha.Text = 'ead2312' then
   Begin
      RxDBGrid1.Visible := True;
      lbl1.Visible := True;
      senha.Visible := False;
      label1.Visible := False;
      bsenha.Kind := bkClose;
   End
      else
        begin
         ShowMessage('Senha incorreta!!!');
         RxDBGrid1.Visible := False;
        end;
end;

procedure Tfcalendariodenotas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      dm2.iqdatasnotas.Open;
      dm2.iqdatasnotas.Edit;
      dm2.iqdatasnotas.Post;
end;

end.
