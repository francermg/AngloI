unit Uusuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, Placemnt;

type
  Tfusuarios = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    FormPlacement1: TFormPlacement;
    Label4: TLabel;
    Label5: TLabel;
    Shape1: TShape;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fusuarios: Tfusuarios;

implementation

uses UDM, UDM2;

{$R *.DFM}

procedure Tfusuarios.FormShow(Sender: TObject);
begin
  dm2.qy_usuario.Close;
  dm2.qy_usuario.SQL[2] := 'where codigo is not null';
  dm2.qy_usuario.Open;
end;

procedure Tfusuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure Tfusuarios.DBGrid1DblClick(Sender: TObject);
begin
  ShowMessage('Senha: '+dm2.qy_usuarioSENHA.Value);
end;

end.
