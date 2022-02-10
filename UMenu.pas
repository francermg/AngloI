unit UMenu;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, RxMenus, ComCtrls, Placemnt, RxGIF, ExtCtrls, RxGrdCpt, StdCtrls,
  RXShell, jpeg, RxLogin, RXCtrls, FileCtrl, Buttons, RXDBCtrl, AppEvnts,
  RxLookup, IniFiles, DB, IBQuery, IBCustomDataSet, ScktComp,
  DBCGrids, RxMemDS, Grids, DBGrids, Psock, NMsmtp;




type
  TPrincipal = class(TForm)
    MenuPrinc: TRxMainMenu;
    Cadastros1: TMenuItem;
    Movimentos1: TMenuItem;
    Relatrios1: TMenuItem;
    Ferramentas1: TMenuItem;
    FIM1: TMenuItem;
    Alunos1: TMenuItem;
    Turmas1: TMenuItem;
    Disciplinas1: TMenuItem;
    GradeCurricular1: TMenuItem;
    MapadeAula1: TMenuItem;
    Calendrio1: TMenuItem;
    Frequncia1: TMenuItem;
    Notas1: TMenuItem;
    StatusBar1: TStatusBar;
    RxGC1: TRxGradientCaption;
    Parmetros1: TMenuItem;
    RxTrayIcon1: TRxTrayIcon;
    RxPop: TRxPopupMenu;
    Mostrar1: TMenuItem;
    Fechar1: TMenuItem;
    Esconder1: TMenuItem;
    Financeiro1: TMenuItem;
    ProcessaBoletos1: TMenuItem;
    ImprimeBloquetos1: TMenuItem;
    BaixaBloquetos1: TMenuItem;
    MensalidadeRecebidas: TMenuItem;
    MensalidadesaReceber1: TMenuItem;
    CpiadeSegurana1: TMenuItem;
    Documentos1: TMenuItem;
    Boletim1: TMenuItem;
    FichaIndividual1: TMenuItem;
    NotasBimestrais1: TMenuItem;
    AlunosRecupBimestre1: TMenuItem;
    MapaFinanceiro1: TMenuItem;
    Ano: TRxLabel;
    ProcessaArquivoBanco1: TMenuItem;
    Listagens1: TMenuItem;
    MdiasAnuais1: TMenuItem;
    AtadeResultadosFinais1: TMenuItem;
    EtiquetasdeAlunos1: TMenuItem;
    DiriodeClasse1: TMenuItem;
    AnoP: TRxLabel;
    Plantoes1: TMenuItem;
    DiasLetivos1: TMenuItem;
    Ocorrncias1: TMenuItem;
    MatriaLecionada1: TMenuItem;
    SemiExtensivo1: TMenuItem;
    MalaDireta1: TMenuItem;
    AlunosNotas1: TMenuItem;
    RecibosCarns1: TMenuItem;
    Documentosantigos1: TMenuItem;
    AlunosBolsistas1: TMenuItem;
    Pai1: TMenuItem;
    Pai2: TMenuItem;
    Aluno1: TMenuItem;
    Comunicado1: TMenuItem;
    BaixaMatriculas1: TMenuItem;
    Sacado1: TMenuItem;
    Professores1: TMenuItem;
    EtiquetasEscola1: TMenuItem;
    MensalidadesPagaseNPagas1: TMenuItem;
    Manutenodefrentes1: TMenuItem;
    CalendrioNotas1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    Cadastro2: TMenuItem;
    Impressodefichas1: TMenuItem;
    Image1: TImage;
    Etiquetas1: TMenuItem;
    LoginSenha1: TMenuItem;
    Usurios1: TMenuItem;
    Alunosqueoptaramporespanhol1: TMenuItem;
    FormStorage1: TFormStorage;
    Ips1: TMenuItem;
    tmrReturn: TTimer;
    GerarArquivos1: TMenuItem;
    Remessa1: TMenuItem;
    HorriodePlanto1: TMenuItem;
    Cupom1: TMenuItem;
    Documento1: TMenuItem;
    procedure ProcessaMsg(Var Msg:TMsg;Var handled:Boolean);
    procedure FIM1Click(Sender: TObject);
    procedure Parmetros1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Mostrar1Click(Sender: TObject);
    procedure Esconder1Click(Sender: TObject);
    procedure Alunos1Click(Sender: TObject);
    procedure ProcessaBoletos1Click(Sender: TObject);
    procedure ImprimeBloquetos1Click(Sender: TObject);
    procedure Disciplinas1Click(Sender: TObject);
    procedure BaixaBloquetos1Click(Sender: TObject);
    procedure CpiadeSegurana1Click(Sender: TObject);
    procedure MensalidadeRecebidasClick(Sender: TObject);
    procedure MensalidadesaReceber1Click(Sender: TObject);
    procedure Turmas1Click(Sender: TObject);
    procedure GradeCurricular1Click(Sender: TObject);
    procedure Notas1Click(Sender: TObject);
    procedure MapadeAula1Click(Sender: TObject);
    procedure Boletim1Click(Sender: TObject);
    procedure Frequncia1Click(Sender: TObject);
    procedure FichaIndividual1Click(Sender: TObject);
    procedure NotasBimestrais1Click(Sender: TObject);
    procedure Calendrio1Click(Sender: TObject);
    procedure AlunosRecupBimestre1Click(Sender: TObject);
    procedure MapaFinanceiro1Click(Sender: TObject);
    procedure AnoClick(Sender: TObject);
    procedure ConectaBase;
    procedure ProcessaArquivoBanco1Click(Sender: TObject);
    procedure MdiasAnuais1Click(Sender: TObject);
    procedure Listagens1Click(Sender: TObject);
    procedure AtadeResultadosFinais1Click(Sender: TObject);
    procedure EtiquetasdeAlunos1Click(Sender: TObject);
    procedure DiriodeClasse1Click(Sender: TObject);
    procedure Plantoes1Click(Sender: TObject);
    procedure DiasLetivos1Click(Sender: TObject);
    procedure Ocorrncias1Click(Sender: TObject);
    procedure ColecionadordeCanhotos1Click(Sender: TObject);
    procedure MatriaLecionada1Click(Sender: TObject);
    procedure SemiExtensivo1Click(Sender: TObject);
    procedure SemiExtensivo2;
    Procedure ProcessaBloqueto;
    Procedure Bolsista;
    procedure AlunosNotas1Click(Sender: TObject);
    procedure RecibosCarns1Click(Sender: TObject);
    procedure Documentosantigos1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AlunosBolsistas1Click(Sender: TObject);
    procedure Pai2Click(Sender: TObject);
    procedure Pai1Click(Sender: TObject);
    procedure AtadeResultadosFinais2Click(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure Comunicado1Click(Sender: TObject);
    procedure BaixaMatriculas1Click(Sender: TObject);
    procedure Sacado1Click(Sender: TObject);
    procedure EtiquetasEscola1Click(Sender: TObject);
    procedure MensalidadesPagaseNPagas1Click(Sender: TObject);
    procedure Manutenodefrentes1Click(Sender: TObject);
    procedure NovoBoleto1Click(Sender: TObject);
    procedure CalendrioNotas1Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure Cadastro2Click(Sender: TObject);
    procedure Impressodefichas1Click(Sender: TObject);
    procedure Etiquetas1Click(Sender: TObject);
    procedure LoginSenha1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Alunosqueoptaramporespanhol1Click(Sender: TObject);
    procedure Ips1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure tmrReturnTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure conecta;
    procedure Remessa1Click(Sender: TObject);
    procedure HorriodePlanto1Click(Sender: TObject);
    procedure Cupom1Click(Sender: TObject);
    procedure Documento1Click(Sender: TObject);
//    Procedure ManipulaExcecoes(Sender: TObject; E: Exception);

  private
    { Private declarations }

  end;

   TClienteSock = class(TClientSocket)

   public

    // overload: evita stack overflow
   constructor Create; reintroduce; overload;

    // Executa ao conectar com o servidor
    procedure doOnConnect(Sender : TObject; Socket : TCustomWinSocket);

    // Executa quando o servidor respondeu à uma requisição
   procedure doOnRead(Sender : TObject; Socket : TCustomWinSocket);

 end;
   TByteArray = array of byte;

var
  Principal: TPrincipal;
  QuantidadeFrentes, i :Integer;
  y_anos :string;
  Cliente : TClienteSock;
  comando, sit : string;



implementation

uses UcadParametros, UCad_Alunos, UFin_Proc_Bloq, UFin_Imp_Bloq,
  UCad_Disciplinas, UFin_Baixa_Bloq, UFer_Backup_Splash,
  URel_Mens_Recebidas, URel_Mens_AReceber, UCad_Turmas, UCad_Grade,
  UMov_Notas, UCad_MapaAula, UDoc_Boletim, UMov_Frequencia, UDoc_FichaInd,
  UDoc_NotasBimestrais, UCad_Calendario, UDoc_AluRecup, UFin_Mapa,
  USelecAno, UDM, UProc_ArqBanco, ULst_Alunos, UDoc_Medias_Anuais, UDoc_Ata,
  ULst_AlunosEtiqQR, ULst_AlunosEtiq, UDoc_Diario, UMov_Plantoes,
  UCad_AlunosFoto, UMov_DiasLetivos, UMov_Ocorrencias, UDoc_MatLecionada,
  UCad_Semi_Extensivo, UBolsas, UDM2, ULst_PaisEtiqQR, ULst_alunos_Notas,
  UFrmSplash, USenhaNotas, UDoc_RCarne, UDoc_Alunos,
  UDoc_AtaRec, UReclassificados, UcomunicadoQ, UFin_Baixa_Recibo,
  Uprofessores, Uformpropaganda, Uimportadados, UfrmmenRecNRec,
  UManutencaoFrentes, u_print_bloqueto, Usenhaprofessores,
  Ucalendariodenotas, Ufichaprofessores, ULst_LoginSenhaAluno,
  USelecionaSerie, Uflogin, Uusuarios, Ufoptaramporespanhol, UCad_Ips,
  Umensagem, Ufremessa, Uhorarioplantao, Ucupom, UMensalidadesR,
  Ufcadastrodocumentos;

{$R *.DFM}


constructor  TClienteSock.Create;
begin
  inherited Create(nil);
end;



procedure TClienteSock.doOnConnect(Sender: TObject; Socket: TCustomWinSocket);
{ Muda o status da tela ao conectar com o equipamento. }
begin
//  frmClienteGPRS.stbrStatus.SimpleText := 'Conectado à ' + Cliente.Host;
//  frmClienteGPRS.btnConectar.Caption := 'Desconectar';
end;


procedure TClienteSock.doOnRead(Sender: TObject; Socket: TCustomWinSocket);
{ Realiza a leitura dos dados quando o servidor responde. }
var
  _rPacoteBytes : array of byte;
  _rPacoteString, _gPacoteResponse : string;
  i, _rTamanhoPacote: integer;
  _rRele,_rCodREON : String;  // Grupo de String utilizado no Evento Online.
begin
  try
    _rTamanhoPacote := Socket.ReceiveBuf(Pointer(nil)^, -1);
    SetLength(_rPacoteBytes, _rTamanhoPacote);
    Socket.ReceiveBuf(Pointer(_rPacoteBytes)^, Length(_rPacoteBytes));

    // Converte e mostra o pacote recebido em hexadecimal
    for i := 0 to _rTamanhoPacote - 1 do
      _rPacoteString := _rPacoteString + IntToHex(_rPacoteBytes[i], 2) + ' ';
//    frmClienteGPRS.mmRecebidos.Lines.Add(_rPacoteString);
//    frmClienteGPRS.mmRecebidos.Lines.Add('');

    // Converte e motra o pacote recebido em string
    SetLength(_rPacoteString, 0);
    for i := 3 to _rTamanhoPacote - 3 do
  	  _rPacoteString := _rPacoteString + Chr(_rPacoteBytes[i]);
    _gPacoteResponse := _rPacoteString;

  //  frmClienteGPRS.mmRecebidosAscii.Lines.Add(_rPacoteString);
  //  frmClienteGPRS.mmRecebidosAscii.Lines.Add('');

    { Verifica se existe um pedido de Aguardando Liberação do evento online.
    if '+REON+00+0' = Copy(_rPacoteString,3,10) then
    begin
      // Verefica qual rele esta ativado.
      if not((frmClienteGPRS.chbxRele1.Checked) and (frmClienteGPRS.chbxRele2.Checked) and (frmClienteGPRS.chbxRele3.Checked)) then
      begin
        _rRele:=''
      end;
      if (frmClienteGPRS.chbxRele1.Checked) then
      begin
        _rRele:='1'
      end;
      if (frmClienteGPRS.chbxRele2.Checked) then
      begin
        _rRele:='2'
      end;
      if (frmClienteGPRS.chbxRele3.Checked) then
      begin
        _rRele:='3'
      end;
      if (frmClienteGPRS.chbxRele1.Checked) and (frmClienteGPRS.chbxRele2.Checked) then
      begin
        _rRele:='12'
      end;
      if (frmClienteGPRS.chbxRele1.Checked) and (frmClienteGPRS.chbxRele3.Checked) then
      begin
        _rRele:='13'
      end;
      if (frmClienteGPRS.chbxRele2.Checked) and (frmClienteGPRS.chbxRele3.Checked) then
      begin
        _rRele:='23'
      end;
      if (frmClienteGPRS.chbxRele1.Checked) and (frmClienteGPRS.chbxRele2.Checked) and (frmClienteGPRS.chbxRele3.Checked) then
      begin
        _rRele:='123'
      end;
      // Verefica qual código de evento que deve ser retornado.
      if ((frmClienteGPRS.rdbtnLiberado.Checked) or (frmClienteGPRS.rdbtnNegado.Checked)) then
      begin
        if (frmClienteGPRS.rdbtnLiberado.Checked) then
        begin
          _rCodREON := '1';
        end;
        if (frmClienteGPRS.rdbtnNegado.Checked) then
        begin
          _rCodREON := '30';
        end;
      // Envia ao equipamento o pacote de resposta do evento online.
      frmClienteGPRS.edtConfirmarEnvio.Clear;
      frmClienteGPRS.edtConfirmarEnvio.Text := Copy(_rPacoteString,1,11)+
        _rCodREON+']'+frmClienteGPRS.edtSEG.Text+']'+frmClienteGPRS.edtMsg.Text+
        ']'+_rRele;
      proEnviarPacote;
      frmClienteGPRS.edtConfirmarEnvio.Clear}
//      tipo := Copy(_rPacoteString,0,11);
      Sleep(1000);
      if ('01+RD+00+D]' = (Copy(_rPacoteString,1,11))) then    //comando para devolver a digital
      begin
        if Length(_rPacoteString) > 10 then
        begin
           dm.ibDigital.Open;
           dm.ibDigital.Append;
           dm.ibDigitalALUNO.Value := dm.AlunosCODIGO.Value;
//           dm.ibDigitalIMPRESSAO.Value := _rPacoteString;
           dm.ibDigitalIMPRESSAO.Value := (Copy(_rPacoteString,23,1000));
           dm.ibDigital.Post;
           dm.IBTr_ANGLO.CommitRetaining;
           _rPacoteString :=  '';
           _rTamanhoPacote := 0;
           _rPacoteBytes := nil;
          end;
         begin
          ShowMessage('Cadastro concluida com exito!!!');
          fmensagem.Close;
         end;
      end;
  Except
    begin
      ShowMessage('Falha ao receber dados do equipamento.');
      fmensagem.Close;
    end;
 end;
end;



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


procedure proEnviarPacote;
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
     Cliente.Socket.SendBuf(Pointer(_rPacoteBytes)^, Length(_rPacoteBytes));
  Except
    ShowMessage('Erro ao enviar dados.');
  end;
end;



Function DataHora_Servidor(): TDateTime;
var
QryAux: TIBQuery;
begin
  QryAux := TIBQuery.Create(nil);
  try
    QryAux.database:= (dm.DB_ANGLO);
    QryAux.SQL.Add('Select getdate() as Data_Hora');
    QryAux.Open;
    Result := qryAux.FieldByName('Data_Hora').AsDateTime;
  finally
     QryAux.Close;
     QryAux.Free;
  end;
end;

procedure TPrincipal.conecta;
begin
//      tmr2.interval := 0;
      with Cliente do
      begin
         if not Active then
         begin
           dm.ibSerieIps.Open;
           DM.ibSerieIps.First;
           Host := dm.ibSerieIpsIP.AsString;
           Port := 3000;
         end;
         if Active then
            Close
         Else
         begin
           Open;
           Active := True;
//          repeat until Active;

         end;
      end;
end;




{Procedure TPrincipal.ManipulaExcecoes(Sender: TObject; E: Exception);
const NomeArqErro = 'LogErro.txt';
Var Tela : TBitmap;
    ArqErro: TextFile;
    R : TRect;
    DC : HDc;
    Canv : TCanvas;
    TelaJpg : TJPEGImage;
 Begin
   //...Captura e salva a tela atual do erro.
   DC:= GetDC(getDesktopWindow);
   Tela := TBitmap.Create;
   try
     Tela.width := getdevicecaps (DC,HORZRES);
     Tela.Height := getdevicecaps (DC,VERTRES);
     BitBlt(Tela.Canvas.Handle,0,0,Tela.width,Tela.height,DC,0,0,SRCCOPY);
   finally
     ReleaseDC (GetDeskTopWindow,DC);
   end;

   // Converte a tela para JPG. Declarar JPE nas uses
   with Tela do
   begin
      try
         TelaJPG := TJPEGImage.Create;
         with TelaJpg do
         begin
            assign(Tela);
            SaveToFile ('Y:/Errors/'+Copy(ExtractFilePath(Application.ExeName), 2, LastDelimiter('', ExtractFilePath(Application.ExeName)))+'LogErro-'+FormatDateTime('dd_mm_yyyy-hh"h"_nn"m"_ss"s"',Now)+'.jpeg');
            ShowMessage(Copy(ExtractFilePath(Application.ExeName), 2, LastDelimiter('', ExtractFilePath(Application.ExeName)))+'LogErro-'+FormatDateTime('dd_mm_yyyy-hh"h"_nn"m"_ss"s"',Now)+'.jpeg');
            Free;
         end;
      finally
         Free;
      end;
   end;

   // Grava o erro em um arquivo texto
   AssignFile(ArqErro,'Y:/Errors/'+NomeArqErro);
   if not FileExists('Y:/Errors/'+NomeArqErro) then
      ReWrite(ArqErro)
   else
      Append(ArqErro);
   writeln(ArqErro,DateTimeToStr(Now));
   writeln(ArqErro,E.Message);
   Writeln(ArqErro,'----------------------------------------------------------------');
   CloseFile(ArqErro);

   //...Messagem de erro do sistema
   MessageDlg(E.Message + #13#13 +'Informe o Analista de Sistemas:'#13 +'France R. M. Gonzaga'#13+'Email: france@unigran.br'#13+'Departamento de Informática: Ramal 4115',mtError, [mbOK], 0);
end;}




procedure TPrincipal.FormCreate(Sender: TObject);
Begin
 Application.OnMessage := ProcessaMsg;
 // Application.OnException := ManipulaExcecoes;
end;


//=========================================L/D Semi Extensivo Documentos Antigos//
Procedure TPrincipal.SemiExtensivo2;
var w_dia, w_mes, w_ano :word;
Begin
  DecodeDate(Now, w_ano, w_mes, w_dia);

  if (Ano.Caption <> '2010') and (Ano.Caption <> '2004') and (Ano.Caption <> '2013') and (Ano.Caption <> '2014') then
     SemiExtensivo1.Enabled:=False
     else
     SemiExtensivo1.Enabled:=True;

{   if (Ano.Caption = IntToStr(w_ano)) then
      Documentosantigos1.Enabled := True
      Else
      Documentosantigos1.Enabled := False;}
End;

//==========================================L/D Semi Extensivo Documentos Antigos

// ====================================Processa Bloquetos

Procedure TPrincipal.ProcessaBloqueto;
var anos, mes, dia :word;
Begin
{   DecodeDate(now, anos, mes, dia);
  if (Ano.Caption = IntToStr(anos))  then
      ProcessaBoletos1.Enabled := True
  Else
      ProcessaBoletos1.Enabled := False;}
End;


//========================================================L/D Bolsistas
Procedure TPrincipal.Bolsista;
Begin
{  if Ano.Caption<>'2004' then
    Begin
     AlunosBolsistas1.Enabled:=False;
    end
     else
     AlunosBolsistas1.Enabled:=True;}
End;
//========================================================L/D Bolsistas


//TAB PELO ENTER
procedure TPrincipal.ProcessaMsg(Var Msg:TMsg;Var handled:Boolean);
//var i: integer;
begin
 try
   if Msg.message=WM_KEYDOWN then
   begin
      if not (Screen.ActiveForm.ActiveControl.ClassNameIs('TDBMemo')) then
      begin
         Case Msg.wParam of
         VK_RETURN : begin
                        if (Screen.ActiveForm.ActiveControl.ClassNameIs('TRxDBLookupCombo')) then
                        begin
                            if not TRxDBLookupCombo(Screen.ActiveForm.ActiveControl ).IsDropDown then
                               Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
                        end
                        else
                           if (Screen.ActiveForm.ActiveControl.ClassNameIs('TRxLookupEdit;')) then
                           begin
                               if not TRxLookupEdit(Screen.ActiveForm.ActiveControl ).Showing then
                                  Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
                           end
                           else
                              if (not Screen.ActiveForm.ActiveControl.ClassNameIs('TRxRichEdit')) and
                                 (not Screen.ActiveForm.ActiveControl.ClassNameIs('TRxDBGrid')) then
                                 Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
                     end;
         VK_DOWN : begin
                      if (not Screen.ActiveForm.ActiveControl.ClassNameIs('TRxDBLookupCombo')) and
                         (not Screen.ActiveForm.ActiveControl.ClassNameIs('TDBRadioGroup')) and
                         (not Screen.ActiveForm.ActiveControl.ClassNameIs('TRxLookupEdit')) and
                         (not Screen.ActiveForm.ActiveControl.ClassNameIs('TRxDBGrid')) then
                         Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
                   end;
         VK_UP : begin
                      if (not Screen.ActiveForm.ActiveControl.ClassNameIs('TRxDBLookupCombo')) and
                         (not Screen.ActiveForm.ActiveControl.ClassNameIs('TDBRadioGroup')) and
                         (not Screen.ActiveForm.ActiveControl.ClassNameIs('TRxLookupEdit')) and
                         (not Screen.ActiveForm.ActiveControl.ClassNameIs('TRxDBGrid')) then
                         Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
                 end;
         end;
      end;
//      if Msg.wParam=VK_RETURN then
//      Keybd_event(VK_TAB,0,0,0);
   end;
 except
 end;
end;

//======================================================== Conecta Base
procedure TPrincipal.ConectaBase;
var
   config : TIniFile;
   params : string;
begin
  if ((dm.DB_ANGLO.DatabaseName = '/Anglo/Anglo.gdb') or (dm.DB_ANGLO.DatabaseName = 'servidor:c:/Anglo/Anglo_'+y_anos+'.gdb'))  then
     config := TIniFile.Create('c:/Ini/Anglo.ini')
  else
  config := TIniFile.Create('c:/Ini/Anglo.ini');
  params := config.ReadString('Database settings','database','');
  Ano.Caption := config.ReadString('TPrincipal','Ano_Caption','');
  DM.DB_ANGLO.Close;
  DM.DB_ANGLO.DatabaseName :=params+'Anglo_'+Ano.Caption+'.gdb'; //Servidor UNIGRAN
  DM.DB_ANGLO.Open;
  DM.Parametros.Open;
  AnoP.Caption := Copy(Ano.Caption,3,2);
  Statusbar1.Panels[0].Text :=  ':. '+ DM.DB_ANGLO.DatabaseName + ' .:';
  dm.DB_ANGLO.Connected := True;
  config.free;
end;

//======================================================== Show/Close


procedure TPrincipal.FormShow(Sender: TObject);
begin
  ConectaBase;
  SemiExtensivo2;
  ProcessaBloqueto;
//  Bolsista;
  Ano.Visible := True;
//  tmr2.Enabled := True;
  Application.CreateForm(TfLogin, fLogin);
  Try
    flogin.showmodal;
  finally
    flogin.free;
  End;
  if (dm2.qy_usuarioLOGIN.Value = 'AKIRA') Then
     Usurios1.Enabled := True;
  if  (dm2.qy_usuarioLOGIN.Value = 'FRANCE') Then
     Usurios1.Enabled := True;
     Principal.Caption := ':.Sistema de Controle de Alunos Colégio Anglo UNIGRAN.: - Usuário: '+dm2.qy_usuarioLOGIN.Value;
  case DM2.qy_usuarioCODIGO.Value of
    23: GerarArquivos1.Enabled := True;
    9 : GerarArquivos1.Enabled := True;
    6 : GerarArquivos1.Enabled := True;
  end;
end;


procedure TPrincipal.FIM1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TPrincipal.Mostrar1Click(Sender: TObject);
begin
  Principal.Show;
end;

procedure TPrincipal.Esconder1Click(Sender: TObject);
begin
  Principal.Hide;
end;

procedure TPrincipal.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TPrincipal.AnoClick(Sender: TObject);
begin
  Application.CreateForm(TSelecAno, SelecAno);
  Try
   SelecAno.ShowModal;
   SemiExtensivo2;
   ProcessaBloqueto;
//   Bolsista;
  Finally
   SelecAno.Free;
  End;
  ConectaBase;
end;

//======================================================== Menu

procedure TPrincipal.Alunos1Click(Sender: TObject);
begin
  Application.CreateForm(TCad_AlunosFoto, Cad_AlunosFoto);
  Application.CreateForm(TCad_Alunos, Cad_Alunos);
  Try
   Cad_Alunos.ShowModal;
  Finally
   Cad_Alunos.Free;
   Cad_AlunosFoto.Free;
  End;
end;

procedure TPrincipal.Turmas1Click(Sender: TObject);
begin
   Application.CreateForm(TCad_Turmas, Cad_Turmas);
  Try
   Cad_Turmas.ShowModal;
  Finally
   Cad_Turmas.Free;
  End;
end;

procedure TPrincipal.Disciplinas1Click(Sender: TObject);
begin
   Application.CreateForm(TCad_Disciplinas, Cad_Disciplinas);
  Try
   Cad_Disciplinas.ShowModal;
  Finally
   Cad_Disciplinas.Free;
  End;
end;

procedure TPrincipal.GradeCurricular1Click(Sender: TObject);
begin
   Application.CreateForm(TCad_Grade, Cad_Grade);
  Try
   Cad_Grade.ShowModal;
  Finally
   Cad_Grade.Free;
  End;
end;

procedure TPrincipal.Parmetros1Click(Sender: TObject);
begin
  Application.CreateForm(TCadParametros, CadParametros);
  Try
   CadParametros.ShowModal;
  Finally
  CadParametros.Free;
  End;
end;

procedure TPrincipal.ProcessaBoletos1Click(Sender: TObject);
begin
   Application.CreateForm(TFin_Proc_Bloq, Fin_Proc_Bloq);
  Try
   Fin_Proc_Bloq.ShowModal;
  Finally
   Fin_Proc_Bloq.Free;
  End;
end;

procedure TPrincipal.ImprimeBloquetos1Click(Sender: TObject);
begin
   Application.CreateForm(TFin_Imp_Bloq, Fin_Imp_Bloq);
  Try
   Fin_Imp_Bloq.ShowModal;
  Finally
   Fin_Imp_Bloq.Free;
  End;
end;

procedure TPrincipal.BaixaBloquetos1Click(Sender: TObject);
begin
   Application.CreateForm(TFin_Baixa_Bloq, Fin_Baixa_Bloq);
  Try
   Fin_Baixa_Bloq.ShowModal;
  Finally
   Fin_Baixa_Bloq.Free;
  End;
end;

procedure TPrincipal.CpiadeSegurana1Click(Sender: TObject);
begin
  Application.CreateForm(TFer_Backup_Splash, Fer_Backup_Splash);
  Fer_Backup_Splash.ShowModal;
  Fer_Backup_Splash.Free;
end;

procedure TPrincipal.MensalidadeRecebidasClick(Sender: TObject);
begin
   Application.CreateForm(TRel_Mens_Recebidas, Rel_Mens_Recebidas);
  Try
   Rel_Mens_Recebidas.ShowModal;
  Finally
   Rel_Mens_Recebidas.Free;
  End;
end;

procedure TPrincipal.MensalidadesaReceber1Click(Sender: TObject);
begin
   Application.CreateForm(TRel_Mens_AReceber, Rel_Mens_AReceber);
  Try
   Rel_Mens_AReceber.ShowModal;
  Finally
   Rel_Mens_AReceber.Free;
  End;
end;

procedure TPrincipal.Notas1Click(Sender: TObject);
begin
   Application.CreateForm(TFSenhaNotas, FSenhaNotas);
  Try
   FSenhaNotas.ShowModal;
  Finally
   FSenhaNotas.Free;
  End;
end;

procedure TPrincipal.Frequncia1Click(Sender: TObject);
begin
   Application.CreateForm(TMov_Frequencia, Mov_Frequencia);
  Try
   Mov_Frequencia.ShowModal;
  Finally
   Mov_Frequencia.Free;
  End;
end;

procedure TPrincipal.MapadeAula1Click(Sender: TObject);
begin
   Application.CreateForm(TCad_MapaAula, Cad_MapaAula);
  Try
   Cad_MapaAula.ShowModal;
  Finally
   Cad_MapaAula.Free;
  End;
end;

procedure TPrincipal.Boletim1Click(Sender: TObject);
begin
   Application.CreateForm(TDoc_Boletim, Doc_Boletim);
  Try
   Doc_Boletim.ShowModal;
  Finally
   Doc_Boletim.Free;
  End;
end;

procedure TPrincipal.FichaIndividual1Click(Sender: TObject);
begin
   Application.CreateForm(TDoc_FichaInd, Doc_FichaInd);
  Try
   Doc_FichaInd.ShowModal;
  Finally
   Doc_FichaInd.Free;
  End;
end;

procedure TPrincipal.NotasBimestrais1Click(Sender: TObject);
begin
   Application.CreateForm(TDoc_NotasBimestrais, Doc_NotasBimestrais);
  Try
   Doc_NotasBimestrais.ShowModal;
  Finally
   Doc_NotasBimestrais.Free;
  End;
end;

procedure TPrincipal.Calendrio1Click(Sender: TObject);
begin
   Application.CreateForm(TCad_Calendario, Cad_Calendario);
  Try
   Cad_Calendario.ShowModal;
  Finally
   Cad_Calendario.Free;
  End;
end;

procedure TPrincipal.AlunosRecupBimestre1Click(Sender: TObject);
begin
   Application.CreateForm(TDoc_AluRecup, Doc_AluRecup);
  Try
   Doc_AluRecup.ShowModal;
  Finally
   Doc_AluRecup.Free;
  End;
end;

procedure TPrincipal.MapaFinanceiro1Click(Sender: TObject);
begin
   Application.CreateForm(TFin_Mapa, Fin_Mapa);
  Try
   Fin_Mapa.ShowModal;
  Finally
   Fin_Mapa.Free;
  End;
end;

procedure TPrincipal.ProcessaArquivoBanco1Click(Sender: TObject);
begin
   Application.CreateForm(TProc_ArqBanco, Proc_ArqBanco);
  Try
   Proc_ArqBanco.ShowModal;
  Finally
   Proc_ArqBanco.Free;
  End;
end;

procedure TPrincipal.MdiasAnuais1Click(Sender: TObject);
begin
   Application.CreateForm(TDoc_Medias_Anuais, Doc_Medias_Anuais);
  Try
   Doc_Medias_Anuais.ShowModal;
  Finally
   Doc_Medias_Anuais.Free;
  End;
end;

procedure TPrincipal.Listagens1Click(Sender: TObject);
begin
   Application.CreateForm(TLst_Alunos, Lst_Alunos);
  Try
   Lst_Alunos.ShowModal;
  Finally
   Lst_Alunos.Free;
  End;
end;

procedure TPrincipal.AtadeResultadosFinais1Click(Sender: TObject);
begin
   Application.CreateForm(TDoc_Ata, Doc_Ata);
  Try
   Doc_Ata.ShowModal;
  Finally
   Doc_Ata.Free;
  End;
end;

procedure TPrincipal.EtiquetasdeAlunos1Click(Sender: TObject);
begin
   Application.CreateForm(TLst_AlunosEtiq, Lst_AlunosEtiq);
  Try
   Lst_AlunosEtiq.ShowModal;
  Finally
   Lst_AlunosEtiq.Free;
  End;
end;

procedure TPrincipal.DiriodeClasse1Click(Sender: TObject);
begin
   Application.CreateForm(TDoc_Diario, Doc_Diario);
  Try
   Doc_Diario.ShowModal;
  Finally
   Doc_Diario.Free;
  End;
end;

procedure TPrincipal.Plantoes1Click(Sender: TObject);
begin
   Application.CreateForm(TMov_Plantoes, Mov_Plantoes);
  Try
   Mov_Plantoes.ShowModal;
  Finally
   Mov_Plantoes.Free;
  End;
end;

procedure TPrincipal.DiasLetivos1Click(Sender: TObject);
begin
   Application.CreateForm(TMov_DiasLetivos, Mov_DiasLetivos);
  Try
   Mov_DiasLetivos.ShowModal;
  Finally
   Mov_DiasLetivos.Free;
  End;
end;

procedure TPrincipal.Ocorrncias1Click(Sender: TObject);
begin
   Application.CreateForm(TMov_Ocorrencias, Mov_Ocorrencias);
  Try
   Mov_Ocorrencias.ShowModal;
  Finally
   Mov_Ocorrencias.Free;
  End;
end;

procedure TPrincipal.ColecionadordeCanhotos1Click(Sender: TObject);
begin
{  Try
   Application.CreateForm(TDoc_ColCanhotos, Doc_ColCanhotos);
   Doc_ColCanhotos.ShowModal;
  Finally
   Doc_ColCanhotos.Free;
  End; }
end;

procedure TPrincipal.MatriaLecionada1Click(Sender: TObject);
begin
   Application.CreateForm(TDoc_MatLecionada, Doc_MatLecionada);
  Try
   Doc_MatLecionada.ShowModal;
  Finally
   Doc_MatLecionada.Free;
  End;
end;

procedure TPrincipal.SemiExtensivo1Click(Sender: TObject);
begin
   Application.CreateForm(TCad_Semi_Extensivo, Cad_Semi_Extensivo);
  Try
   Cad_Semi_Extensivo.ShowModal;
  Finally
   Cad_Semi_Extensivo.Free;
  End;
end;

procedure TPrincipal.AlunosNotas1Click(Sender: TObject);
begin
   Application.CreateForm(TLst_Alunos_Notas, Lst_Alunos_Notas);
  Try
   Lst_Alunos_Notas.ShowModal;
  Finally
    Lst_Alunos_Notas.Free;
  end;
end;

procedure TPrincipal.RecibosCarns1Click(Sender: TObject);
begin
   Application.CreateForm(TDoc_RCarne, Doc_RCarne);
  Try
   Doc_RCarne.ShowModal;
  Finally
    Doc_RCarne.Free;
  end;
end;

procedure TPrincipal.Documentosantigos1Click(Sender: TObject);
begin
   Application.CreateForm(TDoc_Alunos, Doc_Alunos);
  Try
   Doc_Alunos.ShowModal;
  Finally
    Doc_Alunos.Free;
  end;

end;


procedure TPrincipal.AlunosBolsistas1Click(Sender: TObject);
begin
   Application.CreateForm(TBolsas, Bolsas);
  Try
   Bolsas.ShowModal;
  Finally
   Bolsas.Free;
  End;
end;

procedure TPrincipal.Pai2Click(Sender: TObject);
begin
   Application.CreateForm(TLst_PaisEtiqQR, Lst_PaisEtiqQR);
  Try
   Lst_PaisEtiqQR.IBQPais.Open;
   Lst_PaisEtiqQR.Pai.Enabled := True;
   Lst_PaisEtiqQR.Preview;
  Finally
    Lst_PaisEtiqQR.Free;
  end;
end;

procedure TPrincipal.Pai1Click(Sender: TObject);
begin
   Application.CreateForm(TLst_PaisEtiqQR, Lst_PaisEtiqQR);
  Try
   Lst_PaisEtiqQR.IBQPais.Open;
   Lst_PaisEtiqQR.Mae_Nome.Enabled := True;
   Lst_PaisEtiqQR.Preview;
  Finally
    Lst_PaisEtiqQR.Free;
  end;
end;

procedure TPrincipal.AtadeResultadosFinais2Click(Sender: TObject);
begin
   Application.CreateForm(TDoc_AtaRec, Doc_AtaRec);
  Try
   Doc_AtaRec.ShowModal;
  Finally
   Doc_AtaRec.Free;
  End;
end;

procedure TPrincipal.Cadastro1Click(Sender: TObject);
begin
   Application.CreateForm(TFReclassificados, FReclassificados);
  Try
   FReclassificados.ShowModal;
  Finally
   FReclassificados.Free;
  End;
end;

procedure TPrincipal.Comunicado1Click(Sender: TObject);
begin
  dm.Alunos.Close;
  dm.Alunos.SelectSQL.Strings[3] := 'Order by codigo';
  dm.Alunos.Open;
  comunicadoq.preview;
end;

procedure TPrincipal.BaixaMatriculas1Click(Sender: TObject);
begin
   Application.CreateForm(TFin_Baixa_Recibo, Fin_Baixa_Recibo);
  Try
   Fin_Baixa_Recibo.ShowModal;
  Finally
   Fin_Baixa_Recibo.Free;
  End;
end;

procedure TPrincipal.Sacado1Click(Sender: TObject);
begin
  Try
   Application.CreateForm(TLst_PaisEtiqQR, Lst_PaisEtiqQR);
   Lst_PaisEtiqQR.IBQPais.Open;
   Lst_PaisEtiqQR.Sacado.Enabled := True;
   Lst_PaisEtiqQR.Preview;
  Finally
    Lst_PaisEtiqQR.Free;
  end;
end;

procedure TPrincipal.EtiquetasEscola1Click(Sender: TObject);
begin
   Application.CreateForm(Tfpropaganda, fpropaganda);
  Try
    fpropaganda.ShowModal;
  Finally
   fpropaganda.Free;
  End;
end;

procedure TPrincipal.MensalidadesPagaseNPagas1Click(Sender: TObject);
begin
    Application.CreateForm(TfrmREcNREc, frmREcNREc);
  Try
    frmREcNREc.ShowModal;
  Finally
   frmREcNREc.Free;
  End;
end;

procedure TPrincipal.Manutenodefrentes1Click(Sender: TObject);
begin
  Application.CreateForm(TfmanutencaoFrentes, fmanutencaoFrentes);
  Try
   fmanutencaoFrentes.showModal;
  Finally
   fmanutencaoFrentes.Free;
  End;
end;

procedure TPrincipal.NovoBoleto1Click(Sender: TObject);
begin
  Application.CreateForm(TfPrintBloqueto, fPrintBloqueto);
  Try
   fPrintBloqueto.RLReport1.Preview;
  Finally
   fPrintBloqueto.RLReport1.Free;
  end;
end;

procedure TPrincipal.CalendrioNotas1Click(Sender: TObject);
begin
  Application.CreateForm(Tfcalendariodenotas, fcalendariodenotas);
  Try
   fcalendariodenotas.ShowModal;
  Finally
   fcalendariodenotas.Free;
  end;
end;

procedure TPrincipal.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
Begin
//***********************************************************************
  if pos(upperCase('must have a value'), UpperCase(E.Message)) > 0 then
  begin
    beep;
    showmessage('Houve algum erro de gravação, volte a ação.');
    Exit;
  end;
 if pos(upperCase('violation of FOREIGN KEY constraint "FK_NOTAS3" on table "NOTAS"'), UpperCase(E.Message)) > 0 then
  begin
    beep;
    showmessage('Por favor defina o calendário anual, insira os bimestres.');
    Exit;
  end;
{   if  pos (UpperCase('Asynchronous socket error 10049'), UpperCase(E.Message)) > 0 then
   begin
    Beep;
    showmessage('Erro: Verifique se o leitor está ligado: ');
    Exit;
   end;}
end;


procedure TPrincipal.Cadastro2Click(Sender: TObject);
begin
   Application.CreateForm(Tfsenhaprofessores, fsenhaprofessores);
  Try
    fsenhaprofessores.ShowModal;
  Finally
   fsenhaprofessores.Free;
  End;
end;

procedure TPrincipal.Impressodefichas1Click(Sender: TObject);
begin
   Try
    Application.CreateForm(Tffichadosprofessores, ffichadosprofessores);
    ffichadosprofessores.RLReport1.Preview;
   Finally
    ffichadosprofessores.RLReport1.Destroy;
   End;
end;

{  Try
   Application.CreateForm(Tfrelacaoprofsenha, frelacaoprofsenha);
   frelacaoprofsenha.rlprosenha.Preview;
  Finally
   frelacaoprofsenha.rlprosenha.Destroy;
  End;}


procedure TPrincipal.Etiquetas1Click(Sender: TObject);
begin
   Application.CreateForm(TLst_PaisEtiqQR, Lst_PaisEtiqQR);
  Try
   Lst_PaisEtiqQR.IBQPais.Open;
   Lst_PaisEtiqQR.Filho.Enabled := True;
   Lst_PaisEtiqQR.Preview;
  Finally
    Lst_PaisEtiqQR.Free;
  end;
end;

procedure TPrincipal.LoginSenha1Click(Sender: TObject);
begin
   Application.CreateForm(Tfselecionaserie, fselecionaserie);
   dm.Alunos.Open;
  Try
   fselecionaserie.ShowModal;
  Finally
    fselecionaserie.Free;
  end;
end;

procedure TPrincipal.Usurios1Click(Sender: TObject);
begin
  fusuarios.ShowModal;
end;


procedure TPrincipal.Alunosqueoptaramporespanhol1Click(Sender: TObject);
begin
   Application.CreateForm(Tfoptaramespanhol, foptaramespanhol);
   Try
    foptaramespanhol.RLReport1.Preview;
   Finally
    foptaramespanhol.RLReport1.Free;
   End;
end;

procedure TPrincipal.Ips1Click(Sender: TObject);
begin
  Application.CreateForm(TfCad_ips, fCad_ips);
  Try
   fCad_ips.ShowModal;
  Finally
   fCad_ips.Free;
  End;
end;


procedure TPrincipal.FormActivate(Sender: TObject);
begin
  Cliente := TClienteSock.Create;
  Cliente.ClientType := ctNonBlocking;
  Cliente.OnConnect := Cliente.doOnConnect;
  Cliente.OnRead := Cliente.doOnRead;
end;

procedure TPrincipal.btn1Click(Sender: TObject);
begin
  conecta;
end;

procedure TPrincipal.tmrReturnTimer(Sender: TObject);
begin
  keybd_event(VK_RETURN,0,0,0);
end;

procedure TPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Cliente.Active := False;
  Cliente.Destroy;
end;

procedure TPrincipal.Remessa1Click(Sender: TObject);
begin
  Application.CreateForm(Tfremesa, fremesa);
  Try
   fremesa.ShowModal;
  Finally
   fremesa.Free;
  End;
end;

procedure TPrincipal.HorriodePlanto1Click(Sender: TObject);
begin
  Application.CreateForm(Tfhorarioplantao, fhorarioplantao);
  Try
   fhorarioplantao.ShowModal;
  Finally
   fhorarioplantao.Free;
  End;
end;

procedure TPrincipal.Cupom1Click(Sender: TObject);
begin
  Application.CreateForm(TfCupom, fCupom);
  Try
   fcupom.ShowModal;
  Finally
   fcupom.Free;
  End;
end;

procedure TPrincipal.Documento1Click(Sender: TObject);
begin
  Application.CreateForm(TfDocumentos, fDocumentos);
  Try
   fDocumentos.ShowModal;
  Finally
   fDocumentos.Free;
  End;

end;

end.
