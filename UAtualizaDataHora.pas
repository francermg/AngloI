unit UAtualizaDataHora;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ScktComp;

{  Buttons, Grids, DBGrids, DBCtrls, ExtCtrls, Mask, ComCtrls, Db,
  DBTables, Gauges, RxLookup, RXSwitch, ToolEdit, CurrEdit, RXDBCtrl,
  IBCustomDataSet, IBQuery, RxDBComb, OleServer, Word97, IBFilterDialog,
  TeeProcs, TeEngine, Chart, Placemnt, Spin, IBSQL, RXCtrls, IB, ScktComp, Math;}

type
  TfAtualizaDataHora = class(TForm)
    btnFechar: TButton;
    lstLista: TListBox;
    btnAtualizar: TButton;
    SockBio: TClientSocket;
    lblAviso: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure proEnviarPacote;
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TByteArray = array of byte;
  procedure Delay(MSec: Cardinal);

var
  fAtualizaDataHora: TfAtualizaDataHora;
  comando : string;

implementation

uses UDM;

{$R *.DFM}

function stringToBytes(pPackage : String) : TByteArray;
{ Recebe o pacote de dados no formato texto e converte para um array de bytes,
  adicionando o byte inicial e final, calculando o checksum e convertendo cada
  caracter da string em inteiro. Retorna o array de bytes convertido. }
  procedure NextByte(var pByteArray : TByteArray; var index : Integer);
  { Disponibiliza mais um byte em um array de bytes, alocando um novo espaço e
    incrementando o índice. }
  begin
    SetLength(pByteArray, Length(pByteArray) + 1);
    inc(index);
  end;

const
  CONST_START_BYTE = 02; // Byte inicial.
  CONST_END_BYTE = 03; // Byte final.
var
  _rChecksum, i, idx : Integer;
begin
  // Inicializa o índice do array e o checksum.
  idx := 0;
  SetLength(Result, 1);
  _rChecksum := 0;

  // Carrega o byte inicial
  Result[idx] := CONST_START_BYTE;

  // Calcula e carrega o tamanho do pacote
  NextByte(Result, idx);
  Result[idx] := Length(pPackage) and $FF;
  NextByte(Result, idx);
  Result[idx] := (Length(pPackage) shr 8) and $FF;

  // Converte cada caracter da string recebida em inteiro e carrega no array
  NextByte(Result, idx);
  for i := 1 to Length(pPackage) do
  begin
    Result[idx] := Ord(pPackage[i]);
    NextByte(Result, idx);
  end;

  // Realiza o cálculo do checksum com os bytes do pacote e com o seu tamanho,
  // e após calcular ele é carregado no array
  for i := 0 to Length(pPackage) do
    _rChecksum := _rChecksum xor Ord(pPackage[i]);
  _rChecksum := _rChecksum xor (Length(pPackage) and $FF);
  _rChecksum := _rChecksum xor ((Length(pPackage) shr 8) and $FF);
  Result[idx] := _rChecksum;

  // Carrega o byte final
  NextByte(Result, idx);
  Result[idx] := CONST_END_BYTE;
end;


procedure tfAtualizaDataHora.proEnviarPacote;
{ Envia o pacote selecionado ao equipamento. }
var
  _rPacoteBytes : TByteArray;
  _rPacoteHex  : string;
  i : Integer;
begin
  try
    _rPacoteBytes := stringToBytes(comando);
    for i := 0 to Length(_rPacoteBytes) -1 do
     _rPacoteHex := _rPacoteHex + IntToHex(_rPacoteBytes[i], 2) + ' ';
//     ClienteCad.Socket.SendBuf(Pointer(_rPacoteBytes)^, Length(_rPacoteBytes));
    SockBio.Socket.SendBuf(Pointer(_rPacoteBytes)^, Length(_rPacoteBytes));
  Except
    ShowMessage('Erro ao enviar dados.');
  end;
end;

procedure Delay(MSec: Cardinal);
{ Determina o tempo que o programa irá ficar parado. }
var
  Start: Cardinal;
begin
  Start := GetTickCount;
  repeat
    Application.ProcessMessages;
  until (GetTickCount - Start) >= MSec;
end;



procedure TfAtualizaDataHora.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfAtualizaDataHora.btnAtualizarClick(Sender: TObject);
var hora, min, seg, mseg, dia, mes, ano          :Word;
    sano, confere                                :string;
    status : Boolean;
begin
  lstLista.Items.clear;
  sano := '';
  DecodeDate(Date, ano, mes, dia);
  DecodeTime(Now, hora, min, seg, mseg);
  sano := Copy(IntToStr(ano), 3,2);
  Begin
      dm.ibSerieIps.Open;
      dm.ibSerieIps.First;

      while (not dm.ibSerieIps.Eof) do
      Begin
         SockBio.Active := False;
         SockBio.Host := '';
         SockBio.Host := dm.ibSerieIpsIP.AsString;
         SockBio.Port := 3000;
         status := true;

           try
              SockBio.Active := True;
           except
//          application.messagebox(pchar('Erro ao conectar ao IP '+dm.ibSerieIpsIP.AsString),'Erro',MB_ICONWARNING);
            lstLista.Items.Add('Falha ao conectar com o leitor da sala '+dm.ibSerieIpsSALA.asstring);
            status := false;
            Application.ProcessMessages();
           end;
           if (status) then
           begin
              comando :=  '01+EH+00+'+FormatFloat('00',dia)+'/'+FormatFloat('00',mes)+'/'+sano+' '+FormatFloat('00',hora)+':'+FormatFloat('00',min)+':00]00/00/00]00/00/00';
            //01+EH+00+09/07/12 16:44:00]00/00/00]00/00/00 comando para atualizar a data e hora.
            //01+RH+00 Para receber a data e hora o comando é do equipamento para o computador
              proEnviarPacote;
              Application.ProcessMessages();
              Delay(200);
              lstLista.Items.Add('Sucesso ao conectar com o leitor da sala '+dm.ibSerieIpsSALA.asstring);
              SockBio.Close;
              SockBio.Open;
        end;
         comando := '';
         dm.ibSerieIps.Next;
       end;
    end;
   ShowMessage('Atualização realizada com sucesso!!!');
end;

end.
