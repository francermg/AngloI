unit UFin_Baixa_Bloq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, IBCustomDataSet, Placemnt, Mask, ToolEdit,
  CurrEdit, RXCtrls, Grids, Outline, DirOutln, DBCtrls, ExtCtrls, RXDBCtrl;

type
  TFin_Baixa_Bloq = class(TForm)
    FS1: TFormStorage;
    Bloquetos: TIBDataSet;
    dsBloquetos: TDataSource;
    BloquetosNOSSO_NUMERO: TIntegerField;
    BloquetosALUNO: TIntegerField;
    BloquetosPARCELA: TSmallintField;
    BloquetosEMISSAO: TDateField;
    BloquetosVENCIMENTO: TDateField;
    BloquetosVALOR: TIBBCDField;
    BloquetosPAGAMENTO: TDateField;
    BloquetosVALOR_PAGO: TIBBCDField;
    BloquetosMENSALIDADE: TIBBCDField;
    BloquetosMATERIAL: TIBBCDField;
    BloquetosDESCONTO: TIBBCDField;
    BloquetosNOMEALUNO: TIBStringField;
    BloquetosTIPO_PG: TSmallintField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label5: TLabel;
    NossoNCompl: TLabel;
    Label6: TLabel;
    DBText3: TDBText;
    Label7: TLabel;
    DBText4: TDBText;
    Label8: TLabel;
    DBText5: TDBText;
    Label10: TLabel;
    DBText7: TDBText;
    Label11: TLabel;
    DBText8: TDBText;
    Label12: TLabel;
    DBText9: TDBText;
    Bevel1: TBevel;
    Label9: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    PrefBloq: TLabel;
    Baixa: TBitBtn;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Cancela: TBitBtn;
    Memo1: TMemo;
    TipoPG: TRadioGroup;
    Fecha: TBitBtn;
    Entra: TBitBtn;
    Senha: TEdit;
    BloquetosANO_DV: TIBStringField;
    Exclui: TBitBtn;
    BloquetosST: TIBStringField;
    BloquetosDESCONTO_ANT: TIBBCDField;
    BloquetosMENSALIDADE_ANT: TIBBCDField;
    BloquetosVALOR_ANT: TIBBCDField;
    BloquetosBAULA_AD: TIBStringField;
    BloquetosTP: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CurrencyEdit2Exit(Sender: TObject);
    procedure BaixaClick(Sender: TObject);
    procedure CancelaClick(Sender: TObject);
    procedure EntraClick(Sender: TObject);
    procedure ExcluiClick(Sender: TObject);
    procedure CurrencyEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure SenhaKeyPress(Sender: TObject; var Key: Char);
    procedure CurrencyEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    procedure LimpaBaixa(Op:String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fin_Baixa_Bloq: TFin_Baixa_Bloq;
  DataBX : TDate;

implementation

uses UDM, UMenu;

{$R *.DFM}

//====================================================== CLOSE / OPEN / KeyPress
procedure TFin_Baixa_Bloq.FormShow(Sender: TObject);
begin
  DataBX := date;
  Memo1.Clear;
  PrefBloq.Caption := Principal.AnoP.Caption+'/2';
  Application.OnMessage := nil;
end;

procedure TFin_Baixa_Bloq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.OnMessage := Principal.ProcessaMsg;
  DM.IBTr_ANGLO.CommitRetaining;
end;

procedure TFin_Baixa_Bloq.FormKeyPress(Sender: TObject; var Key: Char);
begin
{  if Key = #13 then begin
     Perform(WM_NextDlgCtl,0,0);   Key := #0;
  end;}
  if key = '.' then key := ',';
end;

//====================================================== Campos de Edição
procedure TFin_Baixa_Bloq.LimpaBaixa(Op:String);
begin
  if (Op='Baixado') or (Op='Reaberto') then begin
    if Bloquetos.State in [dsEdit,dsInsert] then begin
      if Op='Baixado' then BloquetosTIPO_PG.Value := TipoPG.ItemIndex;
      Bloquetos.Post;
      Memo1.Lines.Add(NossoNCompl.Caption+' -> '+Op);
    end; end
   else
    if Bloquetos.State in [dsEdit,dsInsert] then Bloquetos.Cancel;
  Bloquetos.Close;
  NossoNCompl.Hide;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit1.SetFocus;
end;

procedure TFin_Baixa_Bloq.CurrencyEdit2Exit(Sender: TObject);
var NossoNumX,dvX : string;
begin
  if CurrencyEdit2.Text = '' then ShowMessage('DV em branco');
  Bloquetos.Close;
  Bloquetos.ParamByName('Nosso_Numero').Value := CurrencyEdit1.Value;
  Bloquetos.Open;
////////// acerto - liberar a linha abaixo e apagar a gambiarra abaixo
////////  NossoNumX := '0903'+'01'+'10582'+Principal.AnoP.Caption+'2'+FormatFloat('00000',CurrencyEdit1.Value); conta antiga
////////  NossoNumX := '0903'+'01'+'26431'+Principal.AnoP.Caption+'2'+FormatFloat('00000',CurrencyEdit1.Value); conta nova
//========================================================= GAMBIARRA
  NossoNumX := '0903'+'02'+'26431'+BloquetosANO_DV.Value+'2'+FormatFloat('00000',CurrencyEdit1.Value);  
  PrefBloq.Caption := BloquetosANO_DV.Value+'/2';
//=========================================================
  dvX := DM.DvMod11(NossoNumX);
////////// acerto - liberar a linha abaixo e apagar a gambiarra abaixo
////////  NossoNumX := Principal.AnoP.Caption+'/2'+FormatFloat('00000',CurrencyEdit1.Value)+'-'+dvX;
//========================================================= GAMBIARRA
  NossoNumX := BloquetosANO_DV.Value+'/2'+FormatFloat('00000',CurrencyEdit1.Value)+'-'+dvX;
//=========================================================
  NossoNCompl.Caption := NossoNumX;
  NossoNCompl.Show;
  if BloquetosNOSSO_NUMERO.IsNull then begin
    NossoNCompl.Hide;
    ShowMessage('Bloqueto Inválido!');
    CurrencyEdit1.SetFocus; abort;
  end;
  if CurrencyEdit2.Text <> dvX then begin
    ShowMessage('DV Inválido!');
    CurrencyEdit1.SetFocus; abort;
  end;
  if (not BloquetosPAGAMENTO.IsNull) and (BloquetosPAGAMENTO.Value <> 0) then begin
    if MessageDlg('Bloqueto PAGO!'+#10+#13+'Deseja Reabrir?',
       mtConfirmation, [mbOK,mbCancel], 0) = mrOK then
       begin
         Bloquetos.Edit;
         BloquetosPAGAMENTO.Clear;
         BloquetosVALOR_PAGO.Clear;
         BloquetosTIPO_PG.Clear;
         Bloquetos.Post;
         LimpaBaixa('Reaberto');
         Memo1.Lines.Add(NossoNCompl.Caption+' -> Reaberto');
       end
      else
       LimpaBaixa('CANCELA');
       CurrencyEdit1.SetFocus; abort;
  end;
  Bloquetos.Edit;
  BloquetosPAGAMENTO.Value := DataBX;
  BloquetosVALOR_PAGO.Value := BloquetosVALOR.Value;
  BloquetosST.AsString := 'S';
  {
  'S' Selecionado 
  'E' Enviado
  }
end;

procedure TFin_Baixa_Bloq.BaixaClick(Sender: TObject);
begin
  DataBX := BloquetosPAGAMENTO.Value;
  LimpaBaixa('Baixado');
  
  DM.IBTr_ANGLO.CommitRetaining;
end;

procedure TFin_Baixa_Bloq.CancelaClick(Sender: TObject);
begin
  LimpaBaixa('CANCELA');
end;

procedure TFin_Baixa_Bloq.ExcluiClick(Sender: TObject);
begin
  if not (BloquetosPAGAMENTO.OldValue = null) then
    MessageDlg('Bloqueto PAGO, impossível apagar!', mtWarning, [mbOK], 0)
   else
    if Bloquetos.State in [dsEdit,dsInsert] then begin
      if MessageDlg('Exclui Bloqueto?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
        Bloquetos.Delete;
        Memo1.Lines.Add(NossoNCompl.Caption+' -> Excluído');
        DM.IBTr_ANGLO.CommitRetaining;
      end;
    end;
  LimpaBaixa('DELETA');
end;

procedure TFin_Baixa_Bloq.EntraClick(Sender: TObject);
begin
  if Senha.Text <> DM.ParametrosTAXA.Value then begin
    MessageDlg('Senha Inválida!'+#10+#13+'Tente novamente.', mtError, [mbOK], 0);
    Senha.SetFocus; end
   else begin
    Senha.Hide;
    Entra.Hide;
    Panel1.Show;
    CurrencyEdit1.SetFocus;
  end;
end;

procedure TFin_Baixa_Bloq.CurrencyEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then begin
     Perform(WM_NextDlgCtl,0,0);   Key := #0;
  end;
end;

procedure TFin_Baixa_Bloq.SenhaKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then begin
     Perform(WM_NextDlgCtl,0,0);   Key := #0;
  end;
end;

procedure TFin_Baixa_Bloq.CurrencyEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then begin
     Perform(WM_NextDlgCtl,0,0);   Key := #0;
  end;
end;

procedure TFin_Baixa_Bloq.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
     Perform(WM_NextDlgCtl,0,0);   Key := #0;
  end;
end;

procedure TFin_Baixa_Bloq.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
     Perform(WM_NextDlgCtl,0,0);   Key := #0;
  end;

end;

end.
