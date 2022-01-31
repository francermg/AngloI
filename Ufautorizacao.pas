unit Ufautorizacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXSpin, ToolEdit, RXDBCtrl, StdCtrls, Mask, DBCtrls, Db, IBCustomDataSet,
  IBQuery, Grids, DBGrids, Placemnt, Buttons, ExtCtrls, ComCtrls;

type
  Tfautorizacao = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    Contador: TRxSpinButton;
    RxDBGrid1: TRxDBGrid;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    FormStyle: TFormPlacement;
    BitBtn1: TBitBtn;
    Rdforma: TDBRadioGroup;
    MemoObs: TDBMemo;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    Brelatorio: TButton;
    Bcancelar: TButton;
    procedure ContadorBottomClick(Sender: TObject);
    procedure ContadorTopClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BrelatorioClick(Sender: TObject);
    procedure RdformaChange(Sender: TObject);
    procedure BcancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fautorizacao: Tfautorizacao;

implementation

uses UDM, URel_Autoriza;

{$R *.DFM}

procedure Tfautorizacao.ContadorBottomClick(Sender: TObject);
begin
    if dm.AutorizacaoPARCELAS.Value > 0 then
      dm.AutorizacaoPARCELAS.Value := dm.AutorizacaoPARCELAS.Value - 1 else
      ShowMessage('Valor menor que zero');
end;

procedure Tfautorizacao.ContadorTopClick(Sender: TObject);
begin
   dm.AutorizacaoPARCELAS.Value := dm.AutorizacaoPARCELAS.Value + 1;
end;

procedure Tfautorizacao.FormShow(Sender: TObject);
begin
 dm.Autorizacao.Close;
 dm.Autorizacao.ParamByName('codigo').Value := dm.AlunosCODIGO.Value;
 dm.Autorizacao.Open;
end;

procedure Tfautorizacao.Button2Click(Sender: TObject);
begin
 dm.Autorizacao.Post;
 Button1.Enabled := True;
 DBEdit1.Enabled := False;
 DBEdit2.Enabled := False;
 DBDateEdit1.Enabled := False;
 DBEdit4.Enabled := False;
 Contador.Enabled := False;
 Rdforma.Enabled := False;
 Label3.Enabled := False;
 MemoObs.Enabled := False;
 DBEdit3.Enabled := False;
end;

procedure Tfautorizacao.Button1Click(Sender: TObject);
begin
  dm.Autorizacao.Append;
  Button2.Enabled := True;
  Button1.Enabled := False;
  BitBtn1.Enabled := False;
  DBEdit1.Enabled := True;
  DBEdit2.Enabled := True;
  DBDateEdit1.Enabled := True;
  DBEdit4.Enabled := True;
  Contador.Enabled := True;
  Rdforma.Enabled := True;
  Label3.Enabled := True;
  MemoObs.Enabled := True;
  DBEdit1.SetFocus;
  DBEdit3.Enabled := True;
  Bcancelar.Enabled := True;
end;

procedure Tfautorizacao.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure Tfautorizacao.BitBtn1Click(Sender: TObject);
begin
  dm.Autorizacao.Edit;
  Button2.Enabled := True;
  Button1.Enabled := False;
  BitBtn1.Enabled := False;
  Bcancelar.Enabled := True;  
  DBEdit1.Enabled := True;
  DBEdit2.Enabled := True;
  DBDateEdit1.Enabled := True;
  DBEdit4.Enabled := True;
  Contador.Enabled := True;
  Rdforma.Enabled := True;
  Label3.Enabled := True;
  MemoObs.Enabled := True;
  DBEdit1.SetFocus;
  DBEdit3.Enabled := True;
end;

procedure Tfautorizacao.BrelatorioClick(Sender: TObject);
begin
   Try
      Application.CreateForm(TRel_autoriza, Rel_autoriza);
      Rel_autoriza.Q_RelAut.Close;
      Rel_autoriza.Q_RelAut.Open;
      Rel_autoriza.Rel_autorizacao.Preview;
    Finally
      Rel_autoriza.Rel_autorizacao.Free;
    End;
end;

procedure Tfautorizacao.RdformaChange(Sender: TObject);
begin
  if ((Rdforma.ItemIndex = 2) or (Rdforma.ItemIndex = 3)) then
      DBEdit1.Enabled := False Else
      DBEdit1.Enabled := True;
end;

procedure Tfautorizacao.BcancelarClick(Sender: TObject);
begin
  dm.Autorizacao.CancelUpdates;
  Button2.Enabled := False;
  Button1.Enabled := True;
  BitBtn1.Enabled := True;
  Bcancelar.Enabled := False;

  DBEdit2.Enabled := True;
  DBDateEdit1.Enabled := True;
  DBEdit4.Enabled := True;
  Contador.Enabled := True;
  Rdforma.Enabled := True;
  Label3.Enabled := True;
  MemoObs.Enabled := True;
  DBEdit1.SetFocus;
  DBEdit3.Enabled := True;

end;

end.
