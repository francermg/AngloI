unit UBolsas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Mask, ToolEdit,
  RXDBCtrl;

type
  TBolsas = class(TForm)
    Edit1: TEdit;
    Imprime: TBitBtn;
    Fecha: TBitBtn;
    FS1: TFormStorage;
    Label1: TLabel;
    Label2: TLabel;
    Tipo: TRadioGroup;
    Senha: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DInicial: TDateEdit;
    DFinal: TDateEdit;
    procedure FechaClick(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TipoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Bolsas: TBolsas;

implementation

uses UDM2, ULst_bolsas, UDM, ULst_BolsaMQR, ULst_BolsaMQR2;

{$R *.DFM}

procedure TBolsas.FechaClick(Sender: TObject);
begin
  Close;
end;

procedure TBolsas.ImprimeClick(Sender: TObject);
begin
  if Tipo.ItemIndex = 0 then
  begin
   DM2.Bolsas.Close;
   DM2.Bolsas.ParamByName('valor_bolsas').Value := StrToInt(Edit1.Text);
   DM2.Bolsas.Open;
   Application.CreateForm(TLst_Bolsas, Lst_Bolsas);
   Lst_Bolsas.QRLabel4.Caption:=Edit1.Text;
   DM2.Bolsas.FetchAll;
   Lst_Bolsas.Preview;
   Lst_Bolsas.Free;
  end;
  if (Tipo.ItemIndex = 1) then
  begin
   DM2.BolsaM.Close;
   DM2.BolsaM.ParamByName('Dini').Value := DInicial.Date;
   DM2.BolsaM.ParamByName('Dfim').Value := DFinal.Date;
   DM2.BolsaM.Open;
   Application.CreateForm(TLst_BolsaMQR, Lst_BolsaMQR);
   DM2.Bolsas.FetchAll;
   Lst_BolsaMQR.Preview;
   Lst_BolsaMQR.Free;
  end;
end;

procedure TBolsas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
     Perform(WM_NextDlgCtl,0,0);   Key := #0;
  end;
end;

procedure TBolsas.TipoClick(Sender: TObject);
begin
 If tipo.itemindex = 0 then
  begin
   Label4.Visible := False;
   Label5.Visible := False;
   Dinicial.Visible := False;
   DFinal.Visible := False;
   Edit1.Visible := False;
   Label1.Caption := 'Digite a porcentagem da bolsa';
   Label2.visible := True;
   Edit1.Visible := True;
  end;
 if tipo.itemindex = 1 then
  begin
   Edit1.Visible := False;
   Label2.visible := False;
   Label1.Caption := 'Entre com o periodo de matricula';
   Label4.Visible := True;
   Label5.Visible := True;
   Dinicial.Visible := True;
   DFinal.Visible := True;
   DInicial.SetFocus;
  end;
end;

end.
