unit UCad_Ips;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, RxLookup, ExtCtrls, Grids, DBGrids, Buttons;

type
  TfCad_ips = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    lkComboSERIE: TRxDBLookupCombo;
    lbl1: TLabel;
    dbgrd1: TDBGrid;
    btnInserir: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnCacelar: TSpeedButton;
    btnSair: TSpeedButton;
    btnExcluir: TSpeedButton;
    btn1: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnInserirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCacelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCad_ips: TfCad_ips;

implementation

uses UDM;

{$R *.DFM}

procedure TfCad_ips.FormShow(Sender: TObject);
begin
  dm.Turmas.Open;
  dm.ibSerieIps.Open;
end;

procedure TfCad_ips.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.Turmas.Close;
  dm.ibSerieIps.Close;
end;

procedure TfCad_ips.btnInserirClick(Sender: TObject);
begin
  dm.ibSerieIps.Insert;
  btnSalvar.Enabled := True;
  btnCacelar.Enabled := True;
  btnInserir.Enabled := False;
  btnSair.Enabled := False;
  lkComboSERIE.Enabled := True;
  DBEdit4.Enabled := True;
  lkComboSERIE.SetFocus;
end;

procedure TfCad_ips.btnSalvarClick(Sender: TObject);
begin
  dm.ibSerieIps.Post;
  btnSalvar.Enabled := False;
  btnCacelar.Enabled := False;
  btnInserir.Enabled := True;
  btnSair.Enabled := True;
  lkComboSERIE.Enabled := False;
  DBEdit4.Enabled := False;
end;

procedure TfCad_ips.btnCacelarClick(Sender: TObject);
begin
  dm.ibSerieIps.CancelUpdates;
  btnSalvar.Enabled := False;
  btnCacelar.Enabled := False;
  btnInserir.Enabled := True;
  btnSair.Enabled := True;
  lkComboSERIE.Enabled := False;
  DBEdit4.Enabled := False;
end;

procedure TfCad_ips.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfCad_ips.btnExcluirClick(Sender: TObject);
begin
  if  MessageDlg('Deseja realmente excluir este registro? ' +#13+
      'Turma: '+dm.ibSerieIpsTURMA.Value +' Série: '+dm.ibSerieIpsSERIE.AsString+'º', mtConfirmation, [mbYes, mbNo], 0)= mrYes then
  dm.ibSerieIps.Delete;
end;

procedure TfCad_ips.btn1Click(Sender: TObject);
begin
  dm.ibSerieIps.Edit;
end;

end.
