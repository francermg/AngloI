unit Uhorarioplantao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Mask;

type
  Tfhorarioplantao = class(TForm)
    lbl1: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    dbnv1: TDBNavigator;
    dblkcbb1: TDBLookupComboBox;
    dblkcbb2: TDBLookupComboBox;
    lbl2: TLabel;
    btn1: TButton;
    dbcbb1: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure dbnv1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fhorarioplantao: Tfhorarioplantao;

implementation

uses UDM;

{$R *.DFM}

procedure Tfhorarioplantao.FormShow(Sender: TObject);
begin
  dm.thorarioplantao.Active := True;
  dm.Professores.Active := True;
  dm.Disciplinas.Active := True;
  dm.Turmas.Active := True;
  dm.Disciplinas.Open;
  dm.Professores.Open;
  dm.thorarioplantao.Open;
  dm.Turmas.Open;
end;

procedure Tfhorarioplantao.dbnv1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
 if Button = nbInsert then
    DBEdit2.SetFocus;
end;

procedure Tfhorarioplantao.btn1Click(Sender: TObject);
begin
 Close;
end;

end.
