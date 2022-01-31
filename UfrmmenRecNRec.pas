unit UfrmmenRecNRec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, RXCtrls, StdCtrls, Buttons;

type
  TfrmREcNREc = class(TForm)
    bimprimir: TBitBtn;
    BitBtn1: TBitBtn;
    RxLabel1: TRxLabel;
    fs: TFormPlacement;
    ComboMes: TComboBox;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    chek: TCheckBox;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    ComboFinal: TComboBox;
    CheckBox1: TCheckBox;
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmREcNREc: TfrmREcNREc;

implementation

uses UmensaPNPQ, UDM, UDM2, Ufextratomensal;

{$R *.DFM}

procedure TfrmREcNREc.bimprimirClick(Sender: TObject);
begin
   Try
     Application.CreateForm(TmensaPNPQ, mensaPNPQ);
     mensaPNPQ.Qrecnrec.Close;
     mensaPNPQ.Qrecnrec.Params[0].Value := ComboMes.ItemIndex + 1;
     mensaPNPQ.Qrecnrec.Open;
     mensaPNPQ.Preview;
   Finally
     mensaPNPQ.Free;
   End;
end;

procedure TfrmREcNREc.BitBtn2Click(Sender: TObject);
begin
  if Edit1.Text = dm.ParametrosTAXA.Text Then
    Begin
      RxLabel1.Visible:= True;
      ComboMes.Visible:= True;
      bimprimir.Visible:= True;
      BitBtn1.Visible:= True;
      BitBtn3.Visible := True;
      chek.Visible := True;
      BitBtn2.Visible:= False;
      Edit1.Visible:= False;
      Label1.Visible := True;
      Label1.Caption := 'Selecione:';
      CheckBox1.Visible := True;
      Label2.Visible := False;
    end
    Else
     Begin
      MessageDlg('Senha incorreta!!!!',mtError,[mbCancel],0);
      Edit1.Clear;
      Edit1.SetFocus;
     end;
end;

procedure TfrmREcNREc.BitBtn3Click(Sender: TObject);
begin
   Try
     Application.CreateForm(Tfextratomensal, fextratomensal);
     dm2.ibNaopagantes.Close;
     dm2.ibNaopagantes.Params[0].Value := ComboMes.ItemIndex + 1;
     dm2.ibNaopagantes.Params[1].Value := ComboFinal.ItemIndex + 1;
     dm2.ibNaopagantes.Open;
     fextratomensal.rlextratomensal.Preview;
   Finally
     fextratomensal.rlextratomensal.Free;
   End;

end;

procedure TfrmREcNREc.FormShow(Sender: TObject);
begin
  edit1.SetFocus;
  Label2.Caption := 'Digite a senha e clique em entrar:';
end;

procedure TfrmREcNREc.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
     Label2.Visible := True;
     ComboFinal.Visible := True;
     BitBtn3.Visible := True;
     Label1.Caption := 'Mês Inicial';
     ComboMes.Text := '      <<Mês Final>>';
     Label2.Caption := 'Mês Final:';
  end else
  begin
     Label2.Visible := False;
     ComboFinal.Visible := False;
     BitBtn3.Visible := False;
     Label1.Caption := 'Selecione:';
     ComboMes.Text := '        << Selecione >>';
  end;
end;

end.
