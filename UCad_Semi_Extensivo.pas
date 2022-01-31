unit UCad_Semi_Extensivo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, RXSwitch, StdCtrls, ExtCtrls, DBCtrls, Buttons, ComCtrls,
  RxDBComb, Mask, RxLookup, ToolEdit, Grids, DBGrids, CurrEdit, RXDBCtrl,
  RXCtrls, Db, IBCustomDataSet, IBQuery, Gauges;

type
  TCad_Semi_Extensivo = class(TForm)
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    Ordem: TRadioGroup;
    FS: TFormStorage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label13: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DBEdit17: TDBEdit;
    Label17: TLabel;
    DBEdit20: TDBEdit;
    Label20: TLabel;
    Label25: TLabel;
    ComboStatus: TRxDBComboBox;
    Label26: TLabel;
    DBEdit28: TDBEdit;
    Label27: TLabel;
    DBEdit29: TDBEdit;
    Label70: TLabel;
    DBEdit13: TDBEdit;
    Label31: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label32: TLabel;
    DBEdit33: TDBEdit;
    DBEdit21: TDBEdit;
    Label7: TLabel;
    PesqAluno: TRxDBLookupCombo;
    Panel1: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    Nome: TEdit;
    Pesquisa: TBitBtn;
    DBGrid1: TDBGrid;
    Codigo: TCurrencyEdit;
    PuxaDados: TBitBtn;
    TabSheet3: TTabSheet;
    Requerimento: TBitBtn;
    Contrato: TBitBtn;
    Ddocumento: TDateEdit;
    GroupBox1: TGroupBox;
    Label23: TLabel;
    Label21: TLabel;
    DBComboBox1: TDBComboBox;
    ComboTurno: TRxDBComboBox;
    Label15: TLabel;
    BImprimir: TBitBtn;
    CMes: TComboBox;
    Label8: TLabel;
    Rordem: TRadioGroup;
    Label12: TLabel;
    rgresp: TRadioGroup;
    dbedtrg: TDBEdit;
    Label16: TLabel;
    dbedt1: TDBEdit;
    btn1: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure PesquisaClick(Sender: TObject);
    procedure NomeChange(Sender: TObject);
    procedure CodigoChange(Sender: TObject);
    procedure OrdemClick(Sender: TObject);
    procedure PuxaDadosClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RequerimentoClick(Sender: TObject);
    procedure ContratoClick(Sender: TObject);
    procedure BImprimirClick(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_Semi_Extensivo: TCad_Semi_Extensivo;
  i, mes :integer;

implementation

uses UDM, UDoc_ReqSemiQR, UDoc_ContratoSemiQR, UPuxaSemi, UDoc_ReciboSemiQR,
  UBloquetoSemiInd, UBloquetoSemiGR, UPagantesSemi, URel_QRMapa_Fin_Semi,
  URel_QRMapa_Fin, UMenu;

{$R *.DFM}

procedure VRecibo;
begin
  if DM.SemiTURNO.Value = 'N' Then
   Begin
     if DM.SemiBOLSA.Value = 100 Then
       begin
        DM.ReciboVALOR.Value := 85;
       end;
        if DM.SemiBOLSA.Value = 0 Then
         begin
          DM.ReciboVALOR.Value := 185;
         end;
          if (DM.SemiBOLSA.Value <> 0) and (DM.SemiBOLSA.Value <> 100) then
           begin
            DM.ReciboVALOR.Value := (100-((100 * DM.SemiBOLSA.Value) /100));
            If DM.SemiMATERIAL.Value = 1 Then
             begin
             DM.ReciboVALOR.Value := DM.ReciboVALOR.Value + 85;
            end;
         end;
     end
     Else
       If DM.SemiTURNO.Value = 'D' Then
       Begin
        if DM.SemiBOLSA.Value = 100 Then
        begin
         DM.ReciboVALOR.Value := 80;
        end;
         if DM.SemiBOLSA.Value = 0 Then
          begin
           DM.ReciboVALOR.Value := 350;
          end;
           if (DM.SemiBOLSA.Value <> 0) and (DM.SemiBOLSA.Value <> 100) then
            begin
             DM.ReciboVALOR.Value := (270-((270 * DM.SemiBOLSA.Value) /100));
             If DM.SemiMATERIAL.Value = 1 Then
              begin
              DM.ReciboVALOR.Value := DM.ReciboVALOR.Value + 80;
             end;
         end;
       end;
end;

procedure MesRef;
begin
  If i = 1 then
    mes := 8;
    if i = 2 then
    mes := 9;
      if i = 3 then
        mes := 10;
        if i = 4 then
          mes := 11;
          if i = 5 then
            mes := 12;
end;


procedure TCad_Semi_Extensivo.FormShow(Sender: TObject);
Begin
  PageControl1.ActivePageIndex := 0;
  DM.Semi.SelectSQL.Strings[3] := 'order by nome';
  DM.Semi.Open;
  DM.Alunos.Open;
end;

procedure TCad_Semi_Extensivo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Alunos.Close;
  DM.Semi.Close;
end;

procedure TCad_Semi_Extensivo.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  BitBtn1.SetFocus;
  if Button = nbInsert then begin
    PageControl1.ActivePageIndex := 0;
    DBEdit2.SetFocus;
    dm.SemiUSUARIO.Value := codigouser;
  end;
  if Button = nbEdit Then
  Begin
     dm.Semi.Edit;
     dm.SemiUSUARIO.Value := codigouser;
  end;
  if Button = nbPost Then
  Begin
     dm.Semi.Edit;
     dm.SemiUSUARIO.Value := codigouser;
     dm.Semi.Post;
  end;
end;


procedure TCad_Semi_Extensivo.PesquisaClick(Sender: TObject);
begin
  Codigo.Clear;
  DM.Semi.SelectSQL.Strings[2] := 'where upper(nome) like upper(:nome)';
  DM.Semi.ParamByName('nome').AsString := '%'+Nome.Text+'%';
  DM.Semi.Close;  DM.Semi.Open;
end;

procedure TCad_Semi_Extensivo.NomeChange(Sender: TObject);
begin
  if Nome.Text <> '' then begin
    Codigo.Clear;
    DM.Semi.SelectSQL.Strings[2] := 'where Nome starting with :nome';
    DM.Semi.ParamByName('nome').AsString := Nome.Text;
    DM.Semi.Close;  DM.Semi.Open;
end;
end;

procedure TCad_Semi_Extensivo.CodigoChange(Sender: TObject);
begin
  if Codigo.Text <> '' then begin
    Nome.Clear;
    DM.Semi.SelectSQL.Strings[2] := 'where Codigo = :codigo';
    DM.Semi.ParamByName('codigo').AsInteger := StrToInt(Codigo.Text);
    DM.Semi.Close;  DM.Semi.Open;
  end;
end;

procedure TCad_Semi_Extensivo.OrdemClick(Sender: TObject);
begin
  if Ordem.ItemIndex = 0 then
     DM.Semi.SelectSQL.Strings[3] := 'order by codigo'
   else DM.Semi.SelectSQL.Strings[3] := 'order by nome';
  DM.Semi.Close;  DM.Semi.Open;
end;

procedure TCad_Semi_Extensivo.PuxaDadosClick(Sender: TObject);
begin
  if DM.Semi.Modified then
    MessageDlg('Alteração de aluno pendente!',mtWarning,[mbOK],0)
   else begin
    Try
     Application.CreateForm(TPuxaSemi, PuxaSemi);
     PuxaSemi.ShowModal;
    Finally
     PuxaSemi.Free;
    End;
  end;
end;

procedure TCad_Semi_Extensivo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
     Perform(WM_NextDlgCtl,0,0);   Key := #0;
  end;
end;

procedure TCad_Semi_Extensivo.RequerimentoClick(Sender: TObject);
begin
  Try
    Application.CreateForm(TDoc_ReqSemiQR, Doc_ReqSemiQR);
    Doc_ReqSemiQR.Preview;
  Finally
    Doc_ReqSemiQR.Free;
  End;
end;

procedure TCad_Semi_Extensivo.ContratoClick(Sender: TObject);
begin
{  Try
    Application.CreateForm(TDoc_ContratoSemiQR, Doc_ContratoSemiQR);
    if rgresp.ItemIndex = 0 then
      Doc_ContratoSemiQR.QRDBText1.DataField := 'NOME';
    if rgresp.ItemIndex = 1 then
     Doc_ContratoSemiQR.QRDBText1.DataField := 'PAI_NOME';
    if rgresp.ItemIndex = 2 then
     Doc_ContratoSemiQR.QRDBText1.DataField := 'MAE_NOME';

    Doc_ContratoSemiQR.Preview;
  Finally
    Doc_ContratoSemiQR.Free;
  End;}
end;

procedure TCad_Semi_Extensivo.BImprimirClick(Sender: TObject);
begin
  if rordem.ItemIndex = 0 then
    begin
      dm.IBQGeral.Close;
      dm.IBQGeral.SQL.Strings[3] := 'Order By nome';
      dm.IBQGeral.Open;
    end
    else begin
      dm.IBQGeral.Close;
      dm.IBQGeral.SQL.Strings[3] := 'Order By codigo';
      dm.IBQGeral.Open;
    end;
  Application.CreateForm(TQPagantesSemi, QPagantesSemi);
  QPagantesSemi.Preview;
  QPagantesSemi.Free;
end;

procedure TCad_Semi_Extensivo.TabSheet1Show(Sender: TObject);
begin
  Ddocumento.Date := Now;
end;

procedure TCad_Semi_Extensivo.btn1Click(Sender: TObject);
begin
  Application.CreateForm(TDoc_ReciboSemiQR, Doc_ReciboSemiQR);
  Doc_ReciboSemiQR.ValorExtenso.Valor := dm.ParametrosMENSALIDADE_4.AsCurrency;
  Doc_ReciboSemiQR.qrlblreferencia1.Caption := 'Pagamento da matricula no Semi-Extensivo';
  Doc_ReciboSemiQR.qrlblreferencia2.Caption := 'Pagamento da matricula no Semi-Extensivo';
  Doc_ReciboSemiQR.Preview;
  Doc_ReciboSemiQR.Free;

end;

end.
