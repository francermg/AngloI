unit UFin_Baixa_Recibo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, DBCtrls, Mask, Buttons, RXCtrls, RXDBCtrl, ToolEdit,
  CurrEdit, Placemnt, RzButton;

type
  TFin_Baixa_Recibo = class(TForm)
    eSenha: TEdit;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    Painel_Recibo: TPanel;
    Image1: TImage;
    RxLabel1: TRxLabel;
    nRecibo: TEdit;
    Label5: TLabel;
    Label1: TLabel;
    DBText2: TDBText;
    Label2: TLabel;
    DBText3: TDBText;
    Label3: TLabel;
    DBText1: TDBText;
    Valor_pago: TDBEdit;
    Label4: TLabel;
    BBaixa: TButton;
    Label7: TLabel;
    DBText4: TDBText;
    DBDateEdit1: TDBDateEdit;
    Label8: TLabel;
    BitBtn2: TBitBtn;
    Fecha: TBitBtn;
    Rtipo: TRadioGroup;
    FP: TFormPlacement;
    encodaluno: TEdit;
    Label9: TLabel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure nReciboChange(Sender: TObject);
    procedure Valor_pagoChange(Sender: TObject);
    procedure BBaixaClick(Sender: TObject);
    procedure nReciboExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure encodalunoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fin_Baixa_Recibo: TFin_Baixa_Recibo;

implementation

uses UDM, UDoc_Matricula, UMenu;

{$R *.DFM}

procedure TFin_Baixa_Recibo.BitBtn1Click(Sender: TObject);
begin
  If eSenha.Text = dm.ParametrosTAXA.Text then
    Begin
     Painel_Recibo.Visible := True;
     eSenha.Clear;
     eSenha.Visible := False;
     BitBtn1.Visible := False;
     Label6.Visible := False;
     nRecibo.SetFocus;
    End

     Else
       showmessage ('Senha Inválida');
       eSenha.Clear;
end;

procedure TFin_Baixa_Recibo.nReciboChange(Sender: TObject);
begin
 if nRecibo.Text <> '' then
  Begin
   dm.Recibo.Close;
   dm.Recibo.SelectSQL.Strings[2] := 'Where n_recibo = :buscacodigor';
   dm.Recibo.ParamByName('buscacodigor').Value :=  StrToInt(nRecibo.Text);
   dm.Recibo.Open;
   encodaluno.Text := dm.ReciboCOD_ALUNO.Text;
  End;
end;

procedure TFin_Baixa_Recibo.Valor_pagoChange(Sender: TObject);
begin
  DBDateEdit1.Date := now;
end;

procedure TFin_Baixa_Recibo.BBaixaClick(Sender: TObject);
begin
  dm.Recibo.Edit;
  dm.ReciboSITUACAO.Value := 'OK';
  dm.Recibo.Post;
  nRecibo.Clear;
  encodaluno.Clear;
end;

procedure TFin_Baixa_Recibo.nReciboExit(Sender: TObject);
begin
//   if dm.ReciboN_RECIBO.IsNull then
//     ShowMessage ('Recibo não encontrado!!!');
end;

procedure TFin_Baixa_Recibo.BitBtn2Click(Sender: TObject);
begin
   If (Rtipo.ItemIndex = 0) then
     Begin
      Application.CreateForm(TDoc_Matricula, Doc_Matricula);
      dm.Recibo.Close;
      dm.Recibo.SelectSQL[2] := 'Where situacao = ''ABERT''';
      dm.Recibo.Open;
      doc_matricula.QRLabel6.Enabled := False;
      doc_matricula.QRDBText3.Enabled := False;
      doc_matricula.QRLabel8.Enabled := False;
      doc_matricula.QRDBText5.Enabled := False;
      doc_matricula.QRLabel12.Enabled := False;
      doc_matricula.QRExpr2.Enabled := False;
      doc_matricula.QRLabel10.Enabled := False;
      doc_matricula.QRLabel2.Caption := 'Relatório de Matriculas a Receber';
      Try
        Doc_Matricula.Preview;
       Finally
        Doc_Matricula.Free;
        dm.Recibo.Close;
      end;
     end;
      If (Rtipo.ItemIndex = 1) then
       Begin
        Application.CreateForm(TDoc_Matricula, Doc_Matricula);
        dm.Recibo.Close;
        dm.Recibo.SelectSQL[2] := 'Where situacao = ''OK''';
        dm.Recibo.Open;
        doc_matricula.QRLabel6.Enabled := True;
        doc_matricula.QRDBText3.Enabled := True;
        doc_matricula.QRLabel8.Enabled := True;
        doc_matricula.QRDBText5.Enabled := True;
        doc_matricula.QRLabel12.Enabled := True;
        doc_matricula.QRExpr2.Enabled := True;
        doc_matricula.QRLabel10.Enabled := True;
        doc_matricula.QRLabel2.Caption := 'Relatório de Matriculas Recebidas';
        Try
          Doc_Matricula.Preview;
         Finally
          Doc_Matricula.Free;
          dm.Recibo.Close;
       end;
     end;
   end;
procedure TFin_Baixa_Recibo.encodalunoChange(Sender: TObject);
begin
 if encodaluno.Text <> '' then
  Begin
   dm.Recibo.Close;
   dm.Recibo.SelectSQL.Strings[2] := 'Where cod_aluno = :buscacodigor';
   dm.Recibo.ParamByName('buscacodigor').Value :=  StrToInt(encodaluno.Text);
   dm.Recibo.Open;
   nRecibo.Text := dm.ReciboN_RECIBO.Text;
  End;
end;



procedure TFin_Baixa_Recibo.FormShow(Sender: TObject);
begin
  RxLabel1.Caption := 'Baixas de Recibos de Matriculas - '+ Principal.Ano.Caption;
end;

procedure TFin_Baixa_Recibo.RzBitBtn1Click(Sender: TObject);
begin
  dm.Recibo.Edit;
  dm.ReciboSITUACAO.Value := 'OK';
  dm.Recibo.Post;
  dm.IBTr_ANGLO.CommitRetaining;
  nRecibo.Clear;
  encodaluno.Clear;
end;

procedure TFin_Baixa_Recibo.RzBitBtn2Click(Sender: TObject);
begin
   If (Rtipo.ItemIndex = 0) then
     Begin
      Application.CreateForm(TDoc_Matricula, Doc_Matricula);
      dm.Recibo.Close;
      dm.Recibo.SelectSQL[2] := 'Where situacao = ''ABERT''';
      dm.Recibo.Open;
      doc_matricula.QRLabel6.Enabled := False;
      doc_matricula.QRDBText3.Enabled := False;
      doc_matricula.QRLabel8.Enabled := False;
      doc_matricula.QRDBText5.Enabled := False;
      doc_matricula.QRLabel12.Enabled := False;
      doc_matricula.QRExpr2.Enabled := False;
      doc_matricula.QRLabel10.Enabled := False;
      doc_matricula.QRLabel2.Caption := 'Relatório de matriculas';
      Try
        Doc_Matricula.Preview;
       Finally
        Doc_Matricula.Free;
        dm.Recibo.Close;
      end;
     end;
      If (Rtipo.ItemIndex = 1) then
       Begin
        Application.CreateForm(TDoc_Matricula, Doc_Matricula);
        dm.Recibo.Close;
        dm.Recibo.SelectSQL[2] := 'Where situacao = ''OK''';
        dm.Recibo.Open;
        doc_matricula.QRLabel6.Enabled := True;
        doc_matricula.QRDBText3.Enabled := True;
        doc_matricula.QRLabel8.Enabled := True;
        doc_matricula.QRDBText5.Enabled := True;
        doc_matricula.QRLabel12.Enabled := True;
        doc_matricula.QRExpr2.Enabled := True;
        doc_matricula.QRLabel10.Enabled := True;
        doc_matricula.QRLabel2.Caption := 'Relatório de matriculas';
        Try
          Doc_Matricula.Preview;
         Finally
          Doc_Matricula.Free;
          dm.Recibo.Close;
       end;
     end;
   end;


end.
