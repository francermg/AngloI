unit URel_Mens_AReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, StdCtrls, Mask, ToolEdit, Buttons, ExtCtrls, RxLookup;

type
  TRel_Mens_AReceber = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Fecha: TBitBtn;
    Imprime: TBitBtn;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Ordem: TComboBox;
    FS1: TFormStorage;
    Turma: TRxDBLookupCombo;
    Label4: TLabel;
    Entra: TBitBtn;
    Senha: TEdit;
    Tipo: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImprimeClick(Sender: TObject);
    procedure EntraClick(Sender: TObject);
    procedure SenhaKeyPress(Sender: TObject; var Key: Char);
    procedure TipoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rel_Mens_AReceber: TRel_Mens_AReceber;

implementation

uses URel_QRMens_AReceber, UDM, UDM2, URel_QRMens_AReceberRes,
  UMensalidadesR, Ucupom;

{$R *.DFM}

procedure TRel_Mens_AReceber.FormShow(Sender: TObject);
begin
  Senha.SetFocus;
  DateEdit1.Date := date;
  DateEdit2.Date := date;
  Ordem.ItemIndex := 0;
  DM.Turmas.Open;
end;

procedure TRel_Mens_AReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Turmas.Close;
end;

procedure TRel_Mens_AReceber.ImprimeClick(Sender: TObject);
Begin  // 0
if Tipo.ItemIndex = 0 then
 begin // 1
  Try
   Application.CreateForm(TRel_QRMens_AReceber, Rel_QRMens_AReceber);
   if Turma.KeyValue = null then begin
     Rel_QRMens_AReceber.Bloquetos.SQL.Strings[12] := '';
     Rel_QRMens_AReceber.TurmaX.Caption := 'GERAL';
     end
    else begin
     Rel_QRMens_AReceber.Bloquetos.SQL.Strings[12] := 'and (A.SERIE = :serie) and (A.TURMA = :turma)';
     Rel_QRMens_AReceber.Bloquetos.ParamByName('serie').Value := DM.TurmasSERIE.Value;
     Rel_QRMens_AReceber.Bloquetos.ParamByName('turma').Value := DM.TurmasTURMA.Value;
     Rel_QRMens_AReceber.TurmaX.Caption := Turma.KeyValue;
   end;
   if Ordem.ItemIndex = 0 then begin
     Rel_QRMens_AReceber.Bloquetos.SQL.Strings[13] := 'order by B.VENCIMENTO, A.NOME, B.NOSSO_NUMERO';
     Rel_QRMens_AReceber.QRGroup1.Enabled := true;
     Rel_QRMens_AReceber.DetailBand1.Enabled := true;
    end
   else begin
     Rel_QRMens_AReceber.Bloquetos.SQL.Strings[13] := 'order by A.NOME';
     Rel_QRMens_AReceber.QRGroup1.Enabled := false;
     Rel_QRMens_AReceber.DetailBand1.Enabled := false;
   end;
   Rel_QRMens_AReceber.Selec.Caption := 'De: '+DateToStr(DateEdit1.Date)+' a '+DateToStr(DateEdit2.Date);
   Rel_QRMens_AReceber.Bloquetos.ParamByName('inicio').AsDate := DateEdit1.Date;
   Rel_QRMens_AReceber.Bloquetos.ParamByName('fim').AsDate := DateEdit2.Date;
   Rel_QRMens_AReceber.Bloquetos.Open;
   Rel_QRMens_AReceber.Preview;
   Rel_QRMens_AReceber.Bloquetos.Close;
  Finally
   Rel_QRMens_AReceber.Free;
  end;  // Finally
End; // 1

if Tipo.ItemIndex = 1 then
begin
    Application.CreateForm(TRel_QRMens_AReceberRes, Rel_QRMens_AReceberRes);
    Rel_QRMens_AReceberRes.Selec.Caption := 'De: '+DateToStr(DateEdit1.Date)+' a '+DateToStr(DateEdit2.Date);
    DM2.AReceberRes.ParamByName('inicio').AsDate := DateEdit1.Date;
    DM2.AReceberRes.ParamByName('fim').AsDate := DateEdit2.Date;
    DM2.AReceberRes.Open;
    Rel_QRMens_AReceberRes.Preview;
    DM2.AReceberRes.Close;
end;

if Tipo.ItemIndex = 2 then
 Begin //1
   Application.CreateForm(TfRel_MensalidadesR, fRel_MensalidadesR);
   fRel_MensalidadesR.Qpagos.Close;
   fRel_MensalidadesR.Qpagos.ParamByName('inicio').AsDate := DateEdit1.Date;
   fRel_MensalidadesR.Qpagos.ParamByName('fim').AsDate := DateEdit2.Date;
   fRel_MensalidadesR.Qpagos.Open;
  Try
   fRel_MensalidadesR.RM_Receber.Preview;
  Finally
   fcupom.Free;
  end; //Finally
 End; // 1
End; // 0

procedure TRel_Mens_AReceber.EntraClick(Sender: TObject);
begin
  if Senha.Text <> DM.ParametrosTAXA.Value then begin
    MessageDlg('Senha Inválida!'+#10+#13+'Tente novamente.', mtError, [mbOK], 0);
    Senha.SetFocus; end
   else begin
    Tipo.Visible := True;
    Imprime.Visible:=True;
    Imprime.Enabled:=True;
    Senha.Visible:=False;
    Entra.Visible:=False;
    end;
end;


procedure TRel_Mens_AReceber.SenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
     Perform(WM_NextDlgCtl,0,0);   Key := #0;
  end;
end;

procedure TRel_Mens_AReceber.TipoClick(Sender: TObject);
begin
case Tipo.ItemIndex of
     0:Begin
        DateEdit1.Visible := True;
        DateEdit2.Visible := True;
        Ordem.Visible := True;
        Turma.Visible := True;
        Label1.Visible:=True;
        Label2.Visible:=True;
        Label3.Visible:=True;
        Label4.Visible:=True;
      end;
      1:Begin
         DateEdit1.Visible := True;
         DateEdit2.Visible := True;
         Ordem.Visible := False;
         Turma.Visible := False;
         Label1.Visible:=True;
         Label2.Visible:=True;
         Label3.Visible:=False;
         Label4.Visible:=False;
        end;
      2:Begin
         DateEdit1.Visible := True;
         DateEdit2.Visible := True;
         Ordem.Visible := False;
         Turma.Visible := False;
         Label1.Visible:=True;
         Label2.Visible:=True;
         Label3.Visible:=False;
         Label4.Visible:=False;
        end;



     end; //case
end;
end.

