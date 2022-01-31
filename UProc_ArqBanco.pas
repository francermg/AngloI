unit UProc_ArqBanco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Placemnt, Mask, ToolEdit, RxRichEd, Grids, DBGrids,
  RXDBCtrl, Db, RxMemDS, Psock, NMpop3, IBCustomDataSet;

type
  TProc_ArqBanco = class(TForm)
    FS1: TFormStorage;
    BitBtn1: TBitBtn;
    Arquivo: TFilenameEdit;
    Label1: TLabel;
    RxDBGrid1: TRxDBGrid;
    Texto: TRxRichEdit;
    Proc: TBitBtn;
    Carrega: TBitBtn;
    ArqTemp: TRxMemoryData;
    ArqTempNUMERO: TStringField;
    ArqTempDATA: TDateField;
    ArqTempVALOR: TCurrencyField;
    dsArqTemp: TDataSource;
    Label2: TLabel;
    Tot: TLabel;
    Mail: TNMPOP3;
    Mails: TRxMemoryData;
    RxDBGrid2: TRxDBGrid;
    dsMails: TDataSource;
    LeMail: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    LabelQtMail: TLabel;
    LabelStatus: TLabel;
    MailsNUM: TIntegerField;
    MailsASSUNTO: TStringField;
    MailsDATA: TStringField;
    Memo1: TMemo;
    Bloquetos: TIBDataSet;
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
    BloquetosTIPO_PG: TSmallintField;
    Qt: TLabel;
    BloquetosANO_DV: TIBStringField;
    Bloquetos_deletados: TIBDataSet;
    Bloquetos_deletadosNOSSO_NUMERO: TIntegerField;
    Bloquetos_deletadosALUNO: TIntegerField;
    Bloquetos_deletadosPARCELA: TSmallintField;
    Bloquetos_deletadosEMISSAO: TDateField;
    Bloquetos_deletadosVENCIMENTO: TDateField;
    Bloquetos_deletadosVALOR: TIBBCDField;
    Bloquetos_deletadosPAGAMENTO: TDateField;
    Bloquetos_deletadosVALOR_PAGO: TIBBCDField;
    Bloquetos_deletadosMENSALIDADE: TIBBCDField;
    Bloquetos_deletadosMATERIAL: TIBBCDField;
    Bloquetos_deletadosDESCONTO: TIBBCDField;
    Bloquetos_deletadosTIPO_PG: TSmallintField;
    Bloquetos_deletadosANO_DV: TIBStringField;
    Bloquetos_deletadosDESCONTO_ANT: TIBBCDField;
    Bloquetos_deletadosMENSALIDADE_ANT: TIBBCDField;
    Bloquetos_deletadosVALOR_ANT: TIBBCDField;
    Bloquetos_deletadosBAULA_AD: TIBStringField;
    Bloquetos_deletadosST: TIBStringField;
    Bloquetos_deletadosTP: TIntegerField;
    Bloquetos_deletadosMOTIVO: TIBStringField;
    Bloquetos_deletadosDATA_LIMITE: TDateField;
    ArqTempDV: TStringField;
    BloquetosST: TIBStringField;
    procedure CarregaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LeMailClick(Sender: TObject);
    procedure RxDBGrid2DblClick(Sender: TObject);
    procedure ProcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Proc_ArqBanco: TProc_ArqBanco;
  Qtdade : integer;
  Total : currency;

implementation

uses UFin_Baixa_Bloq, UMenu;

{$R *.DFM}

procedure TProc_ArqBanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ArqTemp.Active = true then ArqTemp.Close;
  if Mails.Active = true then Mails.Close;
end;

procedure TProc_ArqBanco.CarregaClick(Sender: TObject);
var NumLinhas,i : Integer;
    Linha, T,  D, teste, teste2, teste3 : String;
begin
  Texto.Clear;
  Texto.Lines.LoadFromFile(Arquivo.FileName);
  NumLinhas := Texto.Lines.Count;
  ArqTemp.EmptyTable;
  ArqTemp.Open;
  Total := 0;
  Qtdade := 0;
  for i := 0 to NumLinhas do begin
    Linha := Texto.Lines[i];
//    if Copy(Linha,32,7) = 'Simples' then begin
    teste :=  (Copy(Linha,127,5));
    teste2 :=  (Copy(Linha,109,2));
    teste3 :=   (Copy(Linha,50,1));
    if ((Copy(Linha,109,2) = '06') and (Copy(Linha,50,1) = '2'))  then begin
      ArqTemp.Append;
//      ArqTempNUMERO.Value := Copy(Linha,1,11); antigo
      ArqTempNUMERO.Value := Copy(Linha,48,02) +'/' + Copy(Linha,50,06)+ '-' + Copy(Linha,56,1);
//      ArqTempNUMERO.Value := Copy(Linha,48,09);
//      ArqTempDATA.Value := StrToDate(Copy(Linha,87,10)); antigo
      D := Copy(Linha,111,2)+'/'+ Copy(Linha,113,2) + '/' + FormatDateTime('yyyy',Now);
      ArqTempDATA.Value :=  StrToDate(D);
      ArqTempDV.Value := Copy(Linha,48,2);
      T := Copy(Linha,254,11);
      T := T + ',' +Copy(Linha,265,2);
      ArqTempVALOR.AsCurrency := StrToCurr(T);
      //StrToCurr(Copy(Linha,254,13));
      ArqTemp.Post;
      inc(Qtdade);
      Total := Total + ArqTempVALOR.Value;
     end;
{    if Copy(Linha,76,3) = '100' Then Begin antigo
     ArqTemp.Edit;
      T := (Copy(Linha,113,19));
      T := (Copy(Linha,254,13));
      T := StringReplace(T, '.', '',[]);
      ArqTempVALOR.Value := StrToFloat(T);
      ArqTemp.Post;
      inc(Qtdade);
      Total := Total + ArqTempVALOR.Value;
    End;           }
  end;
  Qt.Caption := IntToStr(Qtdade);
  Tot.Caption := FormatFloat('.,00',Total);
  Proc.Enabled := true;
end;

procedure TProc_ArqBanco.ProcClick(Sender: TObject);
var qt, cont  : integer;
    tot : currency;
//    f :textfile;
//    linha :string;
begin
  ArqTemp.First;
  qt := 0;
  tot := 0;
//  AssignFile(f,'c:\arquivo_qualquer2.txt');
//  Rewrite(f); //abre o arquivo para escrita
  while not ArqTemp.Eof do begin
    Bloquetos.ParamByName('num').Value := StrToInt(Copy(ArqTempNUMERO.Value,5,5));
    Bloquetos.ParamByName('anodv').Value :=  ArqTempDV.Value;
    Bloquetos.Open;
    if not (BloquetosNOSSO_NUMERO.IsNull) then begin
      Bloquetos.Edit;
      BloquetosPAGAMENTO.Value := ArqTempDATA.Value;
      BloquetosVALOR_PAGO.Value := ArqTempVALOR.Value;
      BloquetosTIPO_PG.Value := 0;
      BloquetosST.Value := 'P';      
      Bloquetos.Post;
      inc(qt);
      tot := tot + ArqTempVALOR.Value;
      end;
        Bloquetos_deletados.Close;
        Bloquetos_deletados.ParamByName('num').Value := StrToInt(Copy(ArqTempNUMERO.Value,5,5));
        Bloquetos_deletados.ParamByName('anodv').Value :=  ArqTempDV.Value;
        Bloquetos_deletados.Open;
        if not (Bloquetos_deletadosNOSSO_NUMERO.IsNull) then begin
           Bloquetos.Close;
           Bloquetos.SelectSQL.Strings[2] := 'where aluno = :baluno and parcela = :bparcela';
           Bloquetos.ParamByName('baluno').Value :=   Bloquetos_deletadosALUNO.Value;
           Bloquetos.ParamByName('bparcela').Value := Bloquetos_deletadosPARCELA.Value;
           Bloquetos.Open;
           if not (BloquetosNOSSO_NUMERO.IsNull) then
           Begin
            Bloquetos.Edit;
            BloquetosPAGAMENTO.Value := ArqTempDATA.Value;
            BloquetosVALOR_PAGO.Value := ArqTempVALOR.Value;
            BloquetosTIPO_PG.Value := 0;
            BloquetosST.Value := 'P';
            Bloquetos.Post;
            inc(qt);
            inc(cont);
            tot := tot + ArqTempVALOR.Value;
           end;
        end;
       Bloquetos.Close;
       Bloquetos.SelectSQL.Strings[2] := 'where nosso_numero = :num and ano_dv = :anodv';
       ArqTemp.Next;
end;
//  Closefile(f); //fecha o handle de arquivo
  MessageDlg('Processados '+IntToStr(qt)+' Bloquetos!'+#13+#13+
             'Valor Total: $ '+FormatFloat('.,00',tot),
             mtInformation, [mbOK], 0);
end;

procedure TProc_ArqBanco.LeMailClick(Sender: TObject);
var qt,i : integer;
begin
  Mail.Connect;
  LabelStatus.Caption := Mail.Status;
  qt := Mail.MailCount;
  Mails.Open;
  Mails.EmptyTable;
  for i := 1 to qt do begin
    Mail.GetSummary(i);
    Mails.Append;
    MailsNUM.Value := i;
    MailsASSUNTO.Value := Mail.Summary.Subject;
    MailsDATA.Value := Mail.Summary.Header.Values['date'];
    Mails.Post;
  end;
  LabelQtMail.Caption := IntToStr(qt);
  Mail.Disconnect;
end;

procedure TProc_ArqBanco.RxDBGrid2DblClick(Sender: TObject);
var S : string;
begin
  Mail.Connect;
  S := 'cacaca';
  Mail.GetMailMessage(MailsNUM.Value);
  Memo1.Clear;
  Mail.Disconnect;
end;

end.
