unit URel_Mens_Recebidas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, ToolEdit, Placemnt, Db, IBCustomDataSet, IBQuery,
  Grids, DBGrids, RXCtrls, RXDBCtrl, ExtCtrls;

type
  TRel_Mens_Recebidas = class(TForm)
    FS1: TFormStorage;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Detalhado: TBitBtn;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Ordem: TComboBox;
    TipoPG: TRadioGroup;
    Senha: TEdit;
    Entra: TBitBtn;
    Fecha: TBitBtn;
    Resumido: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetalhadoClick(Sender: TObject);
    procedure ResumidoClick(Sender: TObject);
    procedure EntraClick(Sender: TObject);
    procedure SenhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rel_Mens_Recebidas: TRel_Mens_Recebidas;

implementation

uses URel_QRMens_Recebidas, UDM, URel_QRMens_RecebidasRes;

{$R *.DFM}

procedure TRel_Mens_Recebidas.FormShow(Sender: TObject);
begin
  DateEdit1.Date := date;
  DateEdit2.Date := date;
  Ordem.ItemIndex := 0;
end;

procedure TRel_Mens_Recebidas.SenhaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then begin
     Perform(WM_NextDlgCtl,0,0);   Key := #0;
  end;
end;

procedure TRel_Mens_Recebidas.EntraClick(Sender: TObject);
begin
  if Senha.Text <> DM.ParametrosTAXA.Value then begin
    MessageDlg('Senha Inválida!'+#10+#13+'Tente novamente.', mtError, [mbOK], 0);
    Senha.SetFocus; end
   else begin
    Senha.Hide;
    Entra.Hide;
    Panel1.Show;
    DateEdit1.SetFocus;
  end;
end;

procedure TRel_Mens_Recebidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//
end;

procedure TRel_Mens_Recebidas.DetalhadoClick(Sender: TObject);
begin
  Try
   Application.CreateForm(TRel_QRMens_Recebidas, Rel_QRMens_Recebidas);
   if Ordem.ItemIndex = 0 then begin
     Rel_QRMens_Recebidas.Bloquetos.SQL.Strings[11] := 'order by B.PAGAMENTO, B.TIPO_PG, B.NOSSO_NUMERO';
     Rel_QRMens_Recebidas.QRGroup1.Enabled := true;
     Rel_QRMens_Recebidas.DetailBand1.Enabled := true;
    end
   else begin
     Rel_QRMens_Recebidas.Bloquetos.SQL.Strings[11] := 'order by A.NOME';
     Rel_QRMens_Recebidas.QRGroup1.Enabled := false;
     Rel_QRMens_Recebidas.DetailBand1.Enabled := false;
   end;
   Rel_QRMens_Recebidas.Selec.Caption := 'De: '+DateToStr(DateEdit1.Date)+' a '+DateToStr(DateEdit2.Date);
   Rel_QRMens_Recebidas.Bloquetos.ParamByName('inicio').AsDate := DateEdit1.Date;
   Rel_QRMens_Recebidas.Bloquetos.ParamByName('fim').AsDate := DateEdit2.Date;
   Rel_QRMens_Recebidas.Bloquetos.ParamByName('tipopg').AsInteger := TipoPG.ItemIndex;
   Rel_QRMens_Recebidas.Bloquetos.Open;
   Rel_QRMens_Recebidas.Preview;
   Rel_QRMens_Recebidas.Bloquetos.Close;
  Finally
   Rel_QRMens_Recebidas.Free;
  End;
end;

procedure TRel_Mens_Recebidas.ResumidoClick(Sender: TObject);
begin
  Try
   Application.CreateForm(TRel_QRMens_RecebidasRes, Rel_QRMens_RecebidasRes);
   Rel_QRMens_RecebidasRes.Selec.Caption := 'De: '+DateToStr(DateEdit1.Date)+' a '+DateToStr(DateEdit2.Date);
   Rel_QRMens_RecebidasRes.IBQuery1.ParamByName('inicio').Value := DateEdit1.Date;
   Rel_QRMens_RecebidasRes.IBQuery1.ParamByName('fim').Value := DateEdit2.Date;
   Rel_QRMens_RecebidasRes.IBQuery1.Open;
   Rel_QRMens_RecebidasRes.Preview;
   Rel_QRMens_RecebidasRes.IBQuery1.Close;
  Finally
   Rel_QRMens_RecebidasRes.Free;
  End;
end;

end.

