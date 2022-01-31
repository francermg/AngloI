unit UMov_Frequencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, Mask, ToolEdit, ExtCtrls, RXCtrls, Placemnt,
  Db, IBCustomDataSet, IBStoredProc, IBQuery, Grids, DBGrids, RXDBCtrl,
  Menus, RxLookup, CurrEdit, DBCtrls, IBSQLMonitor, IBSQL, RxMemDS,
  RxRichEd, DBRichEd, Gauges;

type
  TMov_Frequencia = class(TForm)
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    NomeAluno: TRxLabel;
    Timer1: TTimer;
    Mensagem: TRxLabel;
    Turma: TRxLabel;
    IncFaltas: TIBStoredProc;
    GravaPresenca: TIBQuery;
    QtAulas: TIBQuery;
    DSem: TLabel;
    Data: TDateEdit;
    Label1: TLabel;
    LerCartoes: TBitBtn;
    TurmaF: TRxLabel;
    NomeAlunoF: TRxLabel;
    MensagemF: TRxLabel;
    LerCartoesF: TBitBtn;
    dsFaltas: TDataSource;
    Faltas: TIBDataSet;
    MensagemData: TRxLabel;
    RxDBGrid2: TRxDBGrid;
    dsMapa: TDataSource;
    Pop1: TPopupMenu;
    LerCart1: TMenuItem;
    MPresenca: TBitBtn;
    MFalta: TBitBtn;
    Mapa: TIBDataSet;
    Aula: TRadioGroup;
    RxDBGrid1: TRxDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    MapaAULA: TSmallintField;
    MapaDISCIPLINA: TIBStringField;
    FaltasAULA: TSmallintField;
    FaltasDISCIPLINA: TIBStringField;
    FaltasQTDADE: TSmallintField;
    Codigo: TRxLabel;
    CodigoF: TRxLabel;
    GravaFalta: TIBQuery;
    MapaDISCOD: TIntegerField;
    PesqCodigo: TCurrencyEdit;
    Label35: TLabel;
    DigitaCodigo1: TMenuItem;
    Imprime: TBitBtn;
    TabSheet4: TTabSheet;
    RxDBGrid4: TRxDBGrid;
    ImprimeA: TBitBtn;
    Label5: TLabel;
    PesqCodigo2: TCurrencyEdit;
    RxDBGrid3: TRxDBGrid;
    QtAulasTOTAULAS: TIntegerField;
    veFaltas: TIBQuery;
    veFaltasTOTFALTAS: TIntegerField;
    TpFaltasDia: TRadioGroup;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    TurmaCanc: TRxDBLookupCombo;
    BitBtn2: TBitBtn;
    dsFaltasAlu: TDataSource;
    FaltasAlu: TIBQuery;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label7: TLabel;
    FaltasAluAULA: TSmallintField;
    FaltasAluDATA: TDateField;
    FaltasAluQTDADE: TSmallintField;
    FaltasAluDISCIPLINA: TIBStringField;
    FaltasAluDiaSemanaX: TStringField;
    DelFaltas: TIBStoredProc;
    SerieAluno2: TLabel;
    FoneAluno2: TLabel;
    Abona: TBitBtn;
    Combo_Bim: TRxDBLookupCombo;
    IBSQL1: TIBSQL;
    PesqAluno2: TRxDBLookupCombo;
    PesqAluno: TRxDBLookupCombo;
    Label8: TLabel;
    PesqDisciplina: TRxDBLookupCombo;
    endereco: TCheckBox;
    TabSheet5: TTabSheet;
    BCarega: TBitBtn;
    TabelaFrequencia: TRxMemoryData;
    DsTabelaFrequencia: TDataSource;
    TabelaFrequenciaData: TDateField;
    TabelaFrequenciaHora: TTimeField;
    TabelaFrequenciaCodigo: TIntegerField;
    Arquivo: TFilenameEdit;
    RxDBGrid5: TRxDBGrid;
    Texto: TRxDBRichEdit;
    Label9: TLabel;
    Gauge: TGauge;
    RxLabel1: TRxLabel;
    bimporta: TBitBtn;
    ProcedurePresenca: TIBStoredProc;
    Label10: TLabel;
    Label11: TLabel;
    ibqpresenca: TIBQuery;
    ibqpresencaALU_PRESENCA: TIntegerField;
    ibqpresencaDATA: TDateField;
    ibqpresencaHORA: TTimeField;
    FPpresenca: TFormPlacement;
    DBCheckBox1: TDBCheckBox;
    Label12: TLabel;
    Shape1: TShape;
    FaltasAluOBS: TIBStringField;
    Cartao: TEdit;
    RPeriodo: TRadioGroup;
    LipaPresenca: TIBStoredProc;
    Limpapresenca1: TMenuItem;
    btnAtualiza: TButton;
    TabelaFrequenciaAluno: TStringField;
    Total: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure CartaoKeyPress(Sender: TObject; var Key: Char);
    procedure LerCartoesClick(Sender: TObject);
    procedure CartaoExit(Sender: TObject);
    procedure TabSheet2Hide(Sender: TObject);
    procedure TabSheet1Hide(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DataKeyPress(Sender: TObject; var Key: Char);
    procedure DataExit(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet3Hide(Sender: TObject);
    procedure MPresencaClick(Sender: TObject);
    procedure MFaltaClick(Sender: TObject);
    procedure PesqCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure DigitaCodigo1Click(Sender: TObject);
    procedure PesqCodigoExit(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AulaClick(Sender: TObject);
    procedure TpFaltasDiaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure PesqCodigo2KeyPress(Sender: TObject; var Key: Char);
    procedure FaltasAluCalcFields(DataSet: TDataSet);
    procedure TabSheet4Hide(Sender: TObject);
    procedure PesqCodigo2Exit(Sender: TObject);
    procedure AbonaClick(Sender: TObject);
    procedure ImprimeAClick(Sender: TObject);
    procedure Combo_BimChange(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure PesqAluno2Enter(Sender: TObject);
    procedure PesqAluno2CloseUp(Sender: TObject);
    procedure PesqAluno2Exit(Sender: TObject);
    procedure PesqCodigo2Enter(Sender: TObject);
    procedure PesqAlunoEnter(Sender: TObject);
    procedure PesqAlunoCloseUp(Sender: TObject);
    procedure PesqDisciplinaCloseUp(Sender: TObject);
    procedure BCaregaClick(Sender: TObject);
    procedure bimportaClick(Sender: TObject);
    procedure DBCheckBox1Exit(Sender: TObject);
    procedure RxDBGrid3DblClick(Sender: TObject);
    procedure PesqCodigoChange(Sender: TObject);
    procedure btnAtualizaClick(Sender: TObject);
  private
    procedure AtivaLerCartoes;
    procedure MarcaPresenca;
    procedure MarcaFalta;
    procedure MudaData;
    procedure SomOK;
    procedure SomErro;
    procedure AtualizaFaltasDia;
    procedure AtualizaFaltasAluno;
    procedure AtualizaFaltasPresencasAluno;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Mov_Frequencia: TMov_Frequencia;
  DataAnt,DataAnt2 : TDateTime;
  Tecla : Char;
  DiaSemana : Array[1..7] of String;

implementation

uses UDM, UMov_Frequencia_FaltasDia_QR, UMov_Frequencia_FaltasAluno_QR,
  UMenu, UDM2, UMov_Frequencia_FaltasPeriodo_QR, UAtualizaDataHora;

{$R *.DFM}

//============================================================== SHOW / CLOSE
procedure TMov_Frequencia.FormCreate(Sender: TObject);
begin
  Data.Date := now;
  DataAnt := Data.Date;
  DataAnt2 := Data.Date;
  DiaSemana[1] := 'Domingo';
  DiaSemana[2] := 'Segunda-Feira';
  DiaSemana[3] := 'Terça-Feira';
  DiaSemana[4] := 'Quarta-Feira';
  DiaSemana[5] := 'Quinta-Feira';
  DiaSemana[6] := 'Sexta-Feira';
  DiaSemana[7] := 'Sábado';
  QtAulas.Open;
end;

procedure TMov_Frequencia.FormShow(Sender: TObject);
var dia,mes,ano : word;
begin
  DecodeDate(now,ano,mes,dia);
  if StrToInt(Principal.Ano.Caption) <> ano then
    MessageDlg('O ANO Selecionado está diferente do ano Atual'+#10+#13+
               'VERIFIQUE!',mtWarning, [mbOK], 0);
  DM.Alunos.SelectSQL.Strings[2] := 'where Codigo = :codigo';
  DM.Alunos.SelectSQL.Strings[3] := 'order by Nome';
  DM.Disciplinas.Open;
  DM.Turmas.Open;
  DM.Bimestres.Open;
  MudaData;
  AtivaLerCartoes;
end;

procedure TMov_Frequencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Disciplinas.Close;
  DM.Alunos.Close;
  DM.Turmas.Close;
  DM.Bimestres.Close;
  DM.DiasLetivos.Close;
  DM.Alunos.SelectSQL.Strings[2] := 'where Codigo > 0';
  DM.IBTr_ANGLO.CommitRetaining;
end;

//==================================================================== GERAL
procedure TMov_Frequencia.PageControl1Change(Sender: TObject);
begin
  AtivaLerCartoes;
end;

procedure TMov_Frequencia.AtivaLerCartoes;
begin
  if PageControl1.ActivePageIndex = 0 then begin
    Mensagem.Caption := 'Passe o Cartão!';
    Cartao.SetFocus;
    Mensagem.Show;
  end;
  if PageControl1.ActivePageIndex = 1 then begin
    MensagemF.Caption := 'Passe o Cartão!';
    MensagemF.Show;
    NomeAlunoF.Hide;
    TurmaF.Hide;
    CodigoF.Hide;
    Mapa.Close;
    Faltas.Close;
  end;
  Cartao.Clear;
//  Cartao.SetFocus;
end;

procedure TMov_Frequencia.CartaoKeyPress(Sender: TObject; var Key: Char);
begin
  Tecla := Key;
  if Tecla = #13 then begin
    if PageControl1.ActivePageIndex = 0 then  MarcaPresenca;
    if PageControl1.ActivePageIndex = 1 then  MarcaFalta;
  end;
end;

procedure TMov_Frequencia.DataKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then MudaData;
end;

procedure TMov_Frequencia.DataExit(Sender: TObject);
begin
  MudaData;
end;

procedure TMov_Frequencia.MudaData;
var dia,mes,ano : word;
begin                 
  DecodeDate(now,ano,mes,dia);
  DSem.Caption := DiaSemana[DayOfWeek(Data.Date)];
  DM.DiasLetivos.Close;
  DM.DiasLetivos.SelectSQL.Strings[2] := 'where DATA =:data';
  DM.DiasLetivos.ParamByName('data').Value := Data.Date;
  DM.DiasLetivos.Open;
  if StrToInt(Principal.Ano.Caption) = ano then begin
    if DM.DiasLetivosDATA.IsNull then begin
      if (MessageDlg ('Dia '+DateToStr(Data.Date)+' / '+DSem.Caption+' - '+
           ' não cadastrado como Dia Letivo!'+#10+#13+'Cadastrar e Gerar Faltas?',
           mtConfirmation, mbOKCancel, 0) = mrOK) then
     begin
        MensagemData.Caption := 'Aguarde... Gerando Faltas!';
        MensagemData.Show;
        Application.ProcessMessages;
        IncFaltas.ParamByName('data').Value := Data.Date;
        IncFaltas.ExecProc;
        MensagemData.Hide;
        DataAnt := Data.Date;
        DM.IBTr_ANGLO.CommitRetaining;
      end;
    end;
  end;
  MensagemF.Hide;
  NomeAlunoF.Hide;
  TurmaF.Hide;
  CodigoF.Hide;
  Mapa.Close;
  Faltas.Close;
  if (PageControl1.ActivePageIndex = 2) and (DataAnt2 <> Data.Date) then begin
    AtualizaFaltasDia;
    DataAnt2 := Data.Date;
  end;
end;

procedure TMov_Frequencia.CartaoExit(Sender: TObject);
begin
  Mensagem.Caption := '';
  Mensagem.Hide;
  MensagemF.Caption := '';
  MensagemF.Hide;
end;

procedure TMov_Frequencia.SomOK;
begin
{Speak.PlaySound(DM.ParametrosSOM_OK_FREQUENCIA.Value,
        DM.ParametrosSOM_OK_DURACAO.Value);}
end;

procedure TMov_Frequencia.SomErro;
begin
{peak.PlaySound(DM.ParametrosSOM_ERRO_FREQUENCIA.Value,
        DM.ParametrosSOM_ERRO_DURACAO.Value);}
end;

//========================================================= CARTÕES / PRESENÇA

procedure TMov_Frequencia.Timer1Timer(Sender: TObject);
begin
  NomeAluno.Hide;
  Mensagem.Hide;
  Turma.Hide;
  Codigo.Hide;
  AtivaLerCartoes;
  Timer1.Enabled := false;
end;

{************************Marca Presença*****************}

procedure TMov_Frequencia.MarcaPresenca;
var a,b : string;
    DAtual, DAtual2  :TDateTime;
    Dia, Mes, Ano, Hor, Min, Seg, MSeg, Whor, WMin, WSeg, WMSeg, i_hora, i_min, i_seg, i_mseg :Word;
begin
  DAtual := Now;
  DAtual2 := Now;
  DecodeDate(DAtual, Dia, Mes, Ano);
  DecodeTime(DAtual2, WHor, WMin, WSeg, WMSeg);
  DecodeTime(DAtual, Hor, Min, Seg, MSeg);
  DecodeTime(now, i_hora, i_min, i_seg, i_mseg);
  Hor := 7;
  Min := 10;
  Seg := 0;
  MSeg := 0;
  DAtual :=EncodeDate(Dia, Mes, Ano) + EncodeTime(Hor, Min, Seg, MSeg);
  Timer1.Enabled := False;
  Mensagem.Caption := '';
  NomeAluno.Caption := '';
  Turma.Caption := '';
  Codigo.Caption := '';
  if Tecla = #13 then begin
    a := Copy(Cartao.Text,1,3);
    b := StringReplace(Cartao.Text,'?','',[rfReplaceAll]);
    b := Copy(b,4,5);
    if ((UpperCase(a) <> '%02') and (UpperCase(a) <> ';02')) then begin     //Mudar  o leitor de catões para ler somente uma trilha
      Mensagem.Caption := 'Cartão Inválido!';                               //Estou deixando assim só para resolver o problema temporáriamente.
      SomErro; end                                                          //Data 2/08/2012- Segunda feira.
     else if (UpperCase(a) = '%02') then
     begin
      DM.Alunos.Close;
      DM.Alunos.SelectSQL.Strings[2] := 'where Codigo = :codigo';
      try
        DM.Alunos.ParamByName('codigo').Value := StrToInt(b);
       except
        DM.Alunos.ParamByName('codigo').Value := 0;
      end;
      DM.Alunos.Open;
      if DM.AlunosCODIGO.IsNull then begin
        Mensagem.Caption := 'Aluno Inexistente!';
        SomErro; end
       else begin
        if DM.AlunosSTATUS.Value <> 'A' then begin
          Mensagem.Caption := 'Aluno Não Ativo!';
          SomErro; end
         else
         begin
          NomeAluno.Caption := DM.AlunosNOME.Value;
          Turma.Caption := IntToStr(DM.AlunosSERIE.Value)+'ª Série '+
                           DM.AlunosTURMA.Value;
          Codigo.Caption := DM.AlunosCODIGO.AsString;
          veFaltas.Close;
          veFaltas.ParamByName('aluno').Value := DM.AlunosCODIGO.Value;
          veFaltas.ParamByName('data').Value := Data.Date;
          veFaltas.Open;
          QtAulas.Close;
          QtAulas.ParamByName('serie').Value := DM.AlunosSERIE.Value;
          QtAulas.ParamByName('turma').Value := DM.AlunosTURMA.Value;
          QtAulas.ParamByName('data').Value := Data.Date;
          QtAulas.Open;
          if ((veFaltasTOTFALTAS.Value < QtAulasTOTAULAS.Value) and (i_hora < 13) or
          (veFaltasTOTFALTAS.Value = 0) And (i_hora>= 13)) then begin
            Mensagem.Caption := 'Presença Registrada!'+#13+'Período Matutino.';
            SomErro;
          end
          Else if ((veFaltasTOTFALTAS.Value = QtAulasTOTAULAS.Value) and (i_hora < 13)) or
                   ((veFaltasTOTFALTAS.Value < QtAulasTOTAULAS.Value) and (i_hora > 13) And
                   (QtAulasTOTAULAS.Value > 6)) then begin
                   Mensagem.Caption := 'Registrando presença!';
           if ((RPeriodo.ItemIndex = 1) and (Aula.ItemIndex = 0)) then
            Begin
              GravaPresenca.SQL.Strings[3] := '          (AULA >= :aula and AULA > 6) ';
              GravaPresenca.ParamByName('aluno').Value := DM.AlunosCODIGO.Value;
              GravaPresenca.ParamByName('data').Value := Data.Date;
              GravaPresenca.ParamByName('aula').Value := Aula.ItemIndex + 1;
            End;

           if ((RPeriodo.ItemIndex = 1) and (Aula.ItemIndex = 1)) then
            Begin
              GravaPresenca.SQL.Strings[3] := '          (AULA >= :aula and AULA > 7) ';
              GravaPresenca.ParamByName('aluno').Value := DM.AlunosCODIGO.Value;
              GravaPresenca.ParamByName('data').Value := Data.Date;
              GravaPresenca.ParamByName('aula').Value := Aula.ItemIndex + 1;
            End;

           if ((RPeriodo.ItemIndex = 1) and (Aula.ItemIndex = 2)) then
            Begin
              GravaPresenca.SQL.Strings[3] := '          (AULA >= :aula and AULA > 8) ';
              GravaPresenca.ParamByName('aluno').Value := DM.AlunosCODIGO.Value;
              GravaPresenca.ParamByName('data').Value := Data.Date;
              GravaPresenca.ParamByName('aula').Value := Aula.ItemIndex + 1;
            End;

           if ((RPeriodo.ItemIndex = 1) and (Aula.ItemIndex = 3)) then
            Begin
              GravaPresenca.SQL.Strings[3] := '          (AULA >= :aula and AULA > 9) ';
              GravaPresenca.ParamByName('aluno').Value := DM.AlunosCODIGO.Value;
              GravaPresenca.ParamByName('data').Value := Data.Date;
              GravaPresenca.ParamByName('aula').Value := Aula.ItemIndex + 1;
            End;
            if ((RPeriodo.ItemIndex = 2) and (Aula.ItemIndex = 0)) then
            Begin
              GravaPresenca.SQL.Strings[3] := '          (AULA >= :aula and AULA >= 1) ';
              GravaPresenca.ParamByName('aluno').Value := DM.AlunosCODIGO.Value;
              GravaPresenca.ParamByName('data').Value := Data.Date;
              GravaPresenca.ParamByName('aula').Value := Aula.ItemIndex + 1;
            End;


            if ((RPeriodo.ItemIndex = 0) and (Aula.ItemIndex = 0)) then
            Begin
              GravaPresenca.SQL.Strings[3] := '          (AULA >= :aula and AULA <= 6) ';
              GravaPresenca.ParamByName('aluno').Value := DM.AlunosCODIGO.Value;
              GravaPresenca.ParamByName('data').Value := Data.Date;
              GravaPresenca.ParamByName('aula').Value := Aula.ItemIndex + 1;
            End;
            if ((RPeriodo.ItemIndex = 0) and (Aula.ItemIndex = 1)) Then
            Begin
            GravaPresenca.SQL.Strings[3] := '          (AULA >= :aula and AULA <= 6) ';
            GravaPresenca.ParamByName('aluno').Value := DM.AlunosCODIGO.Value;
            GravaPresenca.ParamByName('data').Value := Data.Date;
            GravaPresenca.ParamByName('aula').Value := Aula.ItemIndex + 1;
//            if Aula.ItemIndex = 1 then //se chegar atrasado na 2º aula
//            begin
              DM.Ocorrencias.Open;
              DM.Ocorrencias.Insert;
              DM2.IOcorrencia.ParamByName('aluno').value := DM.AlunosCODIGO.Value;
              DM2.IOcorrencia.Open;
              DM.OcorrenciasALUNO.Value:=DM2.IOcorrenciaCodigo.Value;
              DM.OcorrenciasNOME.Text:=DM2.IOcorrenciaNome.Text;
              DM.OcorrenciasHORA.Value:=Now;
              DM.OcorrenciasTEXTO.Text:='Chegou atrasado.';
              DM.OcorrenciasTIPO.Text := 'N';
              DM.Ocorrencias.Post;
              DM2.IOcorrencia.Close;
            end;
            if ((RPeriodo.ItemIndex = 0) and (Aula.ItemIndex = 2)) then //se chegar atrasado na 3º aula
            begin
              GravaPresenca.SQL.Strings[3] := '          (AULA >= :aula and AULA <= 6) ';
              GravaPresenca.ParamByName('aluno').Value := DM.AlunosCODIGO.Value;
              GravaPresenca.ParamByName('data').Value := Data.Date;
              GravaPresenca.ParamByName('aula').Value := Aula.ItemIndex + 2;
              DM.Ocorrencias.Open;
              DM.Ocorrencias.Insert;
              DM2.IOcorrencia.ParamByName('aluno').value := DM.AlunosCODIGO.Value;
              DM2.IOcorrencia.Open;
              DM.OcorrenciasALUNO.Value:=DM2.IOcorrenciaCodigo.Value;
              DM.OcorrenciasNOME.Text:=DM2.IOcorrenciaNome.Text;
              DM.OcorrenciasHORA.Value:=Now;
              DM.OcorrenciasTEXTO.Text:='Chegou atrasado.';
              DM.OcorrenciasTIPO.Text := 'N';
              DM.Ocorrencias.Post;
              DM2.IOcorrencia.Close;
             end;
              if ((RPeriodo.ItemIndex = 0) and (Aula.ItemIndex = 3)) then //se chegar atrasado na 4º aula
               begin
                GravaPresenca.SQL.Strings[3] := '          (AULA >= :aula and AULA <= 6) ';
                GravaPresenca.ParamByName('aluno').Value := DM.AlunosCODIGO.Value;
                GravaPresenca.ParamByName('data').Value := Data.Date;
                GravaPresenca.ParamByName('aula').Value := Aula.ItemIndex + 3;
                DM.Ocorrencias.Open;
                DM.Ocorrencias.Insert;
                DM2.IOcorrencia.ParamByName('aluno').value := DM.AlunosCODIGO.Value;
                DM2.IOcorrencia.Open;
                DM.OcorrenciasALUNO.Value:=DM2.IOcorrenciaCodigo.Value;
                DM.OcorrenciasNOME.Text:=DM2.IOcorrenciaNome.Text;
                DM.OcorrenciasHORA.Value:=Now;
                DM.OcorrenciasTEXTO.Text:='Chegou atrasado.';
                DM.OcorrenciasTIPO.Text := 'N';
                DM.Ocorrencias.Post;
                DM2.IOcorrencia.Close;
               end;
                if ((RPeriodo.ItemIndex = 0) and (Aula.ItemIndex = 4)) then //se chegar atrasado na 5º aula
                  begin
                   GravaPresenca.SQL.Strings[3] := '          (AULA >= :aula and AULA <= 6) ';
                   GravaPresenca.ParamByName('aluno').Value := DM.AlunosCODIGO.Value;
                   GravaPresenca.ParamByName('data').Value := Data.Date;
                   GravaPresenca.ParamByName('aula').Value := Aula.ItemIndex + 4;
                   DM.Ocorrencias.Open;
                   DM.Ocorrencias.Insert;
                   DM2.IOcorrencia.ParamByName('aluno').value := DM.AlunosCODIGO.Value;
                   DM2.IOcorrencia.Open;
                   DM.OcorrenciasALUNO.Value:=DM2.IOcorrenciaCodigo.Value;
                   DM.OcorrenciasNOME.Text:=DM2.IOcorrenciaNome.Text;
                   DM.OcorrenciasHORA.Value:=Now;
                   DM.OcorrenciasTEXTO.Text:='Chegou atrasado.';
                   DM.OcorrenciasTIPO.Text := 'N';
                   DM.Ocorrencias.Post;
                   DM2.IOcorrencia.Close;
               end;
                  if ((RPeriodo.ItemIndex = 0) and (Aula.ItemIndex = 5)) then //se chegar atrasado na 6º aula
                  begin
                   GravaPresenca.SQL.Strings[3] := '          (AULA >= :aula and AULA <= 6) ';
                   GravaPresenca.ParamByName('aluno').Value := DM.AlunosCODIGO.Value;
                   GravaPresenca.ParamByName('data').Value := Data.Date;
                   GravaPresenca.ParamByName('aula').Value := Aula.ItemIndex + 5;
                   DM.Ocorrencias.Open;
                   DM.Ocorrencias.Insert;
                   DM2.IOcorrencia.ParamByName('aluno').value := DM.AlunosCODIGO.Value;
                   DM2.IOcorrencia.Open;
                   DM.OcorrenciasALUNO.Value:=DM2.IOcorrenciaCodigo.Value;
                   DM.OcorrenciasNOME.Text:=DM2.IOcorrenciaNome.Text;
                   DM.OcorrenciasHORA.Value:=Now;
                   DM.OcorrenciasTEXTO.Text:='Chegou atrasado.';
                   DM.OcorrenciasTIPO.Text := 'N';
                   DM.Ocorrencias.Post;
                   DM2.IOcorrencia.Close;
               end;
                 if ((RPeriodo.ItemIndex = 0) and (Aula.ItemIndex = 6)) then //se chegar dentro do tempo de tolerancia
                  begin
                   GravaPresenca.SQL.Strings[3] := '          (AULA >= :aula and AULA <= 6) ';
                   GravaPresenca.ParamByName('aluno').Value := DM.AlunosCODIGO.Value;
                   GravaPresenca.ParamByName('data').Value := Data.Date;
                   GravaPresenca.ParamByName('aula').Value := Aula.ItemIndex + 1;
                   DM.Alunos.Open;
                   DM.Alunos.Edit;
                   DM.AlunosCONT_TOL.Value := DM.AlunosCONT_TOL.Value + 1;
                   DM.Alunos.Post;
                   GravaPresenca.ParamByName('aula').Value := 1;
                   DM.Ocorrencias.Open;
                   DM.Ocorrencias.Insert;
                   DM2.IOcorrencia.ParamByName('aluno').value := DM.AlunosCODIGO.Value;
                   DM2.IOcorrencia.Open;
                   DM.OcorrenciasALUNO.Value:=DM2.IOcorrenciaCodigo.Value;
                   DM.OcorrenciasNOME.Text:=DM2.IOcorrenciaNome.Text;
                   DM.OcorrenciasHORA.Value:= DAtual;
                   DM.OcorrenciasTEXTO.Text:='Chegou no tempo toleravel.';
                   DM.OcorrenciasTIPO.Text := 'N';
                   DM.Ocorrencias.Post;
                   DM2.IOcorrencia.Close;
               end;
            end;
         end;
      end;
     end;
    Mensagem.Show;
    NomeAluno.Show;
    Turma.Show;
    Codigo.Show;
    Timer1.Interval := DM.ParametrosTEMPO_CARTAO.AsVariant + 1000;
    Timer1.Enabled := True;
    GravaPresenca.ExecSQL;
    DM.IBTr_ANGLO.CommitRetaining;
    SomOK;
    Cartao.Clear;
    Cartao.SetFocus;
  end;
end;


procedure TMov_Frequencia.LerCartoesClick(Sender: TObject);
begin
  AtivaLerCartoes;
end;

procedure TMov_Frequencia.TabSheet1Hide(Sender: TObject);
begin
  Mensagem.Hide;
  NomeAluno.Hide;
  Turma.Hide;
  Codigo.Hide;
end;

procedure TMov_Frequencia.AulaClick(Sender: TObject);
begin
  AtivaLerCartoes;
end;

procedure TMov_Frequencia.BitBtn2Click(Sender: TObject);
Var teste :string;
begin
 teste := RPeriodo.Items.Text[3];
  if (MessageDlg('CANCELAR FALTAS? - '+ TurmaCanc.Text+#10+#13+
       'Dia '+DateToStr(Data.Date)+' - '+DSem.Caption+'?',
       mtConfirmation, mbOKCancel, 0) = mrOK) then begin
    DelFaltas.ParamByName('data').Value := Data.Date;
    DelFaltas.ParamByName('serie').Value := DM.TurmasSERIE.Value;
    DelFaltas.ParamByName('turma').Value := DM.TurmasTURMA.Value;

    Case RPeriodo.ItemIndex of
       -1  :  MessageDlg ('         "Atenção"' +#13+ 'Selecione um período.',mtWarning,[mbCancel],0);
        0  :  DelFaltas.ParamByName('periodo').Value := 'M';
        1  :  DelFaltas.ParamByName('periodo').Value := 'V';
        2  :  DelFaltas.ParamByName('periodo').Value := 'T';
     end;

    if TurmaCanc.KeyValue = null then
      DelFaltas.ParamByName('serie').Value := 0;
    DelFaltas.ExecProc;
    DM.IBTr_ANGLO.CommitRetaining;
    MessageDlg('FALTAS CANCELADAS!', mtInformation, [mbOK], 0);
  end;
end;

//========================================================= CARTÕES / FALTAS

procedure TMov_Frequencia.MarcaFalta;
var a,b : string;
begin
  MensagemF.Caption := '';
  NomeAlunoF.Caption := '';
  TurmaF.Caption := '';
  CodigoF.Caption := '';
  if Tecla = #13 then begin
    Mapa.Close;
    Faltas.Close;
    a := Copy(Cartao.Text,1,3);
    b := StringReplace(Cartao.Text,'?','',[rfReplaceAll]);
    b := Copy(b,4,5);
    if (UpperCase(a) <> '%02') then begin
      MensagemF.Caption := 'Cartão Inválido!';
      SomErro; end
     else begin
      DM.Alunos.Close;
      DM.Alunos.SelectSQL.Strings[2] := 'where Codigo = :codigo';
      try
        DM.Alunos.ParamByName('codigo').Value := StrToInt(b);
       except
        DM.Alunos.ParamByName('codigo').Value := 0;
      end;
      DM.Alunos.Open;
      if DM.AlunosCODIGO.IsNull then begin
        MensagemF.Caption := 'Aluno Inexistente!';
        SomErro; end
       else begin
        if DM.AlunosSTATUS.Value <> 'A' then begin
          MensagemF.Caption := 'Aluno Não Ativo!';
          SomErro; end
         else begin
          NomeAlunoF.Caption := DM.AlunosNOME.Value;
          TurmaF.Caption := IntToStr(DM.AlunosSERIE.Value)+'ª Série '+
                           DM.AlunosTURMA.Value;
          CodigoF.Caption := DM.AlunosCODIGO.AsString;
          Mapa.ParamByName('serie').Value := DM.AlunosSERIE.Value;
          Mapa.ParamByName('turma').Value := DM.AlunosTURMA.Value;
          Mapa.ParamByName('data').Value := Data.Date;
          Mapa.Open;
          Mapa.FetchAll;
          Faltas.ParamByName('aluno').Value := DM.AlunosCODIGO.Value;
          Faltas.ParamByName('data').Value := Data.Date;
          Faltas.Open;
          Faltas.FetchAll;
          SomOK;
         end;
          end;
           end;
    MensagemF.Show;
    NomeAlunoF.Show;
    TurmaF.Show;
    CodigoF.Show;
    Cartao.Clear;
  end;
end;

procedure TMov_Frequencia.TabSheet2Hide(Sender: TObject);
begin
  MensagemF.Hide;
  NomeAlunoF.Hide;
  TurmaF.Hide;
  CodigoF.Hide;
  Mapa.Close;
  Faltas.Close;
end;

procedure TMov_Frequencia.MPresencaClick(Sender: TObject);
begin
  if not FaltasAULA.IsNull then begin
    GravaPresenca.SQL.Strings[3] := '         AULA = :aula ';
    GravaPresenca.ParamByName('aluno').Value := DM.AlunosCODIGO.Value;
    GravaPresenca.ParamByName('data').Value := Data.Date;
    GravaPresenca.ParamByName('aula').Value := FaltasAULA.Value;
    GravaPresenca.ExecSQL;
    Faltas.Close;
    Faltas.Open;
    DM.IBTr_ANGLO.CommitRetaining;
  end;
end;

procedure TMov_Frequencia.MFaltaClick(Sender: TObject);
begin
  if not MapaAULA.IsNull then begin
    GravaFalta.ParamByName('alu_codigo').Value := DM.AlunosCODIGO.Value;
    GravaFalta.ParamByName('dis_codigo').Value := MapaDISCOD.Value;
    GravaFalta.ParamByName('data').Value := Data.Date;
    GravaFalta.ParamByName('aula').Value := MapaAULA.Value;
    try
      GravaFalta.ExecSQL;
     except
    end;
    Faltas.Close;
    Faltas.Open;
    DM.IBTr_ANGLO.CommitRetaining;
    Mapa.Next;
  end;
end;

procedure TMov_Frequencia.AtualizaFaltasPresencasAluno;
begin
  if PesqCodigo.Text <> '' then begin
    DM.Alunos.SelectSQL.Strings[2] := 'where Codigo = :codigo';
    DM.Alunos.ParamByName('codigo').Value := PesqCodigo.Value;
    DM.Alunos.Close;  DM.Alunos.Open;
    Cartao.Text := '%02'+FormatFloat('00000',PesqCodigo.Value)+'?;%02'+ FormatFloat('00000',PesqCodigo.Value)+'?';
    MarcaFalta;
  end;
end;

procedure TMov_Frequencia.PesqCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Tecla := Key;
  if Tecla = #13 then begin
    AtualizaFaltasPresencasAluno;
  end;
end;

procedure TMov_Frequencia.PesqCodigoExit(Sender: TObject);
begin
  PesqCodigo.Clear;
end;

procedure TMov_Frequencia.PesqAlunoEnter(Sender: TObject);
begin
  DM.Alunos.Close;
  DM.Alunos.SelectSQL.Strings[2] := 'where Codigo is not null';
  DM.Alunos.Open;
  PesqAluno.ClearValue;
end;

procedure TMov_Frequencia.PesqAlunoCloseUp(Sender: TObject);
begin
  PesqCodigo.Value := DM.AlunosCODIGO.Value;
  Tecla := #13;
//  AtualizaFaltasPresencasAluno;
//  PesqCodigo.SetFocus;
end;

procedure TMov_Frequencia.DigitaCodigo1Click(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 1 then begin
    PesqCodigo.SetFocus;
    MensagemF.Caption := 'Digite o código do Aluno!';
    MensagemF.Show;
    NomeAlunoF.Hide;
    TurmaF.Hide;
    CodigoF.Hide;
    Mapa.Close;
    Faltas.Close;
  end;
end;

//========================================================= FALTAS / DIA
procedure TMov_Frequencia.TabSheet3Show(Sender: TObject);
begin
  AtualizaFaltasDia;
end;

procedure TMov_Frequencia.TabSheet3Hide(Sender: TObject);
begin
  DM.FaltasDia.Close;
end;

procedure TMov_Frequencia.ImprimeClick(Sender: TObject);
begin
  begin
  Application.CreateForm(TMov_Frequencia_FaltasDia_QR, Mov_Frequencia_FaltasDia_QR);
  Mov_Frequencia_FaltasDia_QR.Dia.Caption := 'Dia: '+DateToStr(Data.Date)+
      ' - '+DSem.Caption;
  case TpFaltasDia.ItemIndex of
    0 : Mov_Frequencia_FaltasDia_QR.Titulo.Caption := 'Faltas por Aluno - TODOS';
    1 : Mov_Frequencia_FaltasDia_QR.Titulo.Caption := 'Faltas por Aluno - Ausentes';
    2 : Mov_Frequencia_FaltasDia_QR.Titulo.Caption := 'Faltas por Aluno - Atrasados';
    3 : Mov_Frequencia_FaltasDia_QR.Titulo.Caption := 'Faltas por Aluno - Foram Embora';
  end;
  Mov_Frequencia_FaltasDia_QR.Preview;
  Mov_Frequencia_FaltasDia_QR.Free;
  end;
end;


procedure TMov_Frequencia.AtualizaFaltasDia;
var  w_hora, w_minuto, w_segundos, w_msegundos :word;
begin
  DM.FaltasDia.Close;
  case TpFaltasDia.ItemIndex of
    0 : DM.FaltasDia.SelectSQL.Strings[23] := ' ';
    1 : DM.FaltasDia.SelectSQL.Strings[23] := 'having SUM(F.QTDADE) >= 6';// and MAX(F.AULA) <= 6';// and MIN(F.AULA) = 1';
    2 : DM.FaltasDia.SelectSQL.Strings[23] := 'having SUM(F.QTDADE) < 6 and MIN(F.AULA) = 1';
    3 : DM.FaltasDia.SelectSQL.Strings[23] := 'having MIN(F.AULA) <> 1';
  end;
  DecodeTime(now, w_hora, w_minuto, w_segundos, w_msegundos);
  if (w_hora > 13) Then
  Begin
    case TpFaltasDia.ItemIndex of
      0 : DM.FaltasDia.SelectSQL.Strings[23] := ' ';
      1 : DM.FaltasDia.SelectSQL.Strings[23] := 'having SUM(F.QTDADE) >= 2 and SUM(F.QTDADE) <= 4 ';// and MAX(F.AULA) <= 6';// and MIN(F.AULA) = 1';
      2 : DM.FaltasDia.SelectSQL.Strings[23] := 'having SUM(F.QTDADE) < 6 and MIN(F.AULA) = 1';
      3 : DM.FaltasDia.SelectSQL.Strings[23] := 'having MIN(F.AULA) <> 1';
    end;
  end;


  DM.FaltasDia.ParamByName('data').AsDateTime := Data.Date;
  DM.FaltasDia.Open;
  DM.FaltasDia.FetchAll;
end;

procedure TMov_Frequencia.TpFaltasDiaClick(Sender: TObject);
begin 
   AtualizaFaltasDia;
end;

//========================================================= FALTAS / ALUNO
procedure TMov_Frequencia.AtualizaFaltasAluno;
begin
  if PesqCodigo2.Value <> 0 then begin
    PesqAluno2.KeyValue := PesqCodigo2.Value;
    SerieAluno2.Caption := IntToStr(DM.AlunosSERIE.Value)+'ª Série '+DM.AlunosTURMA.Value;
    FoneAluno2.Caption := DM.AlunosFONE.Value;
    if PesqAluno2.Value <> '0' then begin
      SerieAluno2.Show;
      FoneAluno2.Show;
    end;
  end;
  FaltasAlu.Close;
  if PesqDisciplina.KeyValue = null then
    FaltasAlu.SQL.Strings[10] := ''
   else begin
    FaltasAlu.SQL.Strings[10] := 'and F.DIS_CODIGO = :disciplina';
    FaltasAlu.ParamByName('disciplina').Value := PesqDisciplina.KeyValue;
  end;
  FaltasAlu.ParamByName('aluno').Value := PesqCodigo2.Value;
  FaltasAlu.ParamByName('data1').Value := DateEdit1.Date;
  FaltasAlu.ParamByName('data2').Value := DateEdit2.Date;
  FaltasAlu.Open;
  FaltasAlu.FetchAll;
  if FaltasAluDATA.Value <> null then begin
    Abona.Enabled := true;
    ImprimeA.Enabled := true;
  end;
end;

procedure TMov_Frequencia.TabSheet4Show(Sender: TObject);
begin
  PesqCodigo2.Clear;
  if DateEdit1.EditText = '  /  /    ' then DateEdit1.Date := now;
  if DateEdit2.EditText = '  /  /    ' then DateEdit2.Date := now;
end;

procedure TMov_Frequencia.TabSheet4Hide(Sender: TObject);
begin
  SerieAluno2.Hide;
  FoneAluno2.Hide;
  FaltasAlu.Close;
  DM.Alunos.Close;
  Abona.Enabled := false;
  ImprimeA.Enabled := false;
end;

procedure TMov_Frequencia.PesqCodigo2Enter(Sender: TObject);
begin
  DM.Alunos.Close;
  DM.Alunos.SelectSQL.Strings[2] := 'where Codigo is not null';
  DM.Alunos.Open;
end;

procedure TMov_Frequencia.PesqCodigo2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then begin
    AtualizaFaltasAluno;
  end;
end;

procedure TMov_Frequencia.PesqCodigo2Exit(Sender: TObject);
begin
  AtualizaFaltasAluno;
end;

procedure TMov_Frequencia.PesqAluno2Enter(Sender: TObject);
begin
  DM.Alunos.Close;
  DM.Alunos.SelectSQL.Strings[2] := 'where Codigo is not null';
  DM.Alunos.Open;
end;

procedure TMov_Frequencia.PesqAluno2CloseUp(Sender: TObject);
begin
  PesqCodigo2.Value := DM.AlunosCODIGO.Value;
  AtualizaFaltasAluno;
end;

procedure TMov_Frequencia.PesqAluno2Exit(Sender: TObject);
begin
  PesqCodigo2.Value := DM.AlunosCODIGO.Value;
  AtualizaFaltasAluno;
end;

procedure TMov_Frequencia.PesqDisciplinaCloseUp(Sender: TObject);
begin
  AtualizaFaltasAluno;
end;

procedure TMov_Frequencia.FaltasAluCalcFields(DataSet: TDataSet);
begin
  FaltasAluDiaSemanaX.Value := DiaSemana[DayOfWeek(FaltasAluData.Value)];
end;

procedure TMov_Frequencia.DateEdit1Change(Sender: TObject);
begin
  AtualizaFaltasAluno;
end;

procedure TMov_Frequencia.Combo_BimChange(Sender: TObject);
begin
  DateEdit1.Date := DM.BimestresINICIO.Value;
  DateEdit2.Date := DM.BimestresFIM.Value;
  AtualizaFaltasAluno;
end;

procedure TMov_Frequencia.AbonaClick(Sender: TObject);
var mensagem : string;
begin
 if DM.AlunosNOME.Value <> '' then
  mensagem := 'Abonar faltas do Aluno '+DM.AlunosNOME.Value+#10+
     'no período de '+DateToStr(DateEdit1.Date)+' a '+DateToStr(DateEdit2.Date)+#10
  else
  mensagem := 'Abonar faltas de todos os aluno no período de '+DateToStr(DateEdit1.Date)+' a '+DateToStr(DateEdit2.Date)+#10;
  if PesqDisciplina.KeyValue <> null then
    mensagem := mensagem + 'da Disciplina '+PesqDisciplina.DisplayValue
   else
    mensagem := mensagem + 'de TODAS as Disciplinas ';
  mensagem := mensagem+' ?';
  if (MessageDlg(mensagem,mtConfirmation, mbOKCancel, 0) = mrOK) then begin
    IBSQL1.SQL.Clear;
    IBSQL1.SQL.Add('delete from faltas where alu_codigo = :aluno and ');//alu_codigo = :aluno and
    IBSQL1.SQL.Add('  data between :data1 and :data2 ');
    if PesqCodigo2.Value = 0 then
      Begin
       IBSQL1.SQL.Clear;
       IBSQL1.SQL.Add('delete from faltas where data between :data1 and :data2 ');
      End;
    if PesqDisciplina.KeyValue <> null then begin
      Begin
       IBSQL1.SQL.Add( ' and dis_codigo = :disciplina ');
       IBSQL1.ParamByName('disciplina').Value := PesqDisciplina.KeyValue;
      End;
    end;
    if PesqCodigo2.Value = 0 then
    begin
      IBSQL1.ParamByName('data1').Value := DateEdit1.Date;
      IBSQL1.ParamByName('data2').Value := DateEdit2.Date;
    end else
    begin
    IBSQL1.ParamByName('data1').Value := DateEdit1.Date;
    IBSQL1.ParamByName('data2').Value := DateEdit2.Date;
    IBSQL1.ParamByName('aluno').Value := PesqCodigo2.Value;
    end;
    IBSQL1.ExecQuery;
    DM.IBTr_ANGLO.CommitRetaining;
    AtualizaFaltasAluno;
  end;
end;

procedure TMov_Frequencia.ImprimeAClick(Sender: TObject);
var
  BimX : String;
begin
  with Mov_Frequencia_FaltasAluno_QR do begin
    Application.CreateForm(TMov_Frequencia_FaltasAluno_QR, Mov_Frequencia_FaltasAluno_QR);
    Aluno.Caption := DM.AlunosNOME.Value+'   - Cód: '+
      FloatToStr(PesqCodigo2.Value);
    if Combo_Bim.KeyValue = null then BimX := ''
     else BimX := ' - '+Combo_Bim.DisplayValue;
    Periodo.Caption := 'De '+DateToStr(DateEdit1.Date)+
        ' a '+DateToStr(DateEdit2.Date)+BimX;
    SerFone.Caption := SerieAluno2.Caption+
      '  -  Fone: '+FoneAluno2.Caption;
    Preview;
    Free;
  end;
end;


procedure TMov_Frequencia.BCaregaClick(Sender: TObject);
var NumLinha, i :Integer;
    Linha, sql0       :String;
begin
if Arquivo.FileName = '' Then
  ShowMessage('Por favor selecione o arquivo gerado'+#13 + 'pelo aparelho de coleta.')
  Else
Begin
  Texto.Clear;
  Texto.Lines.LoadFromFile(Arquivo.FileName);
  NumLinha:=Texto.Lines.Count;
  TabelaFrequencia.EmptyTable;
  TabelaFrequencia.Open;
  for i := 0 to NumLinha - 1 do Begin
     Linha := Texto.Lines[i];
     TabelaFrequencia.Append;
     TabelaFrequenciaCodigo.Value := StrToInt(copy(Linha,31,5));
     TabelaFrequenciaData.Value := StrToDate(copy(Linha,37,10));
     TabelaFrequenciaHora.Value := StrToTime(copy(Linha,48,5));
     Begin
       dm.Alunos.Close;
       dm.Alunos.SelectSQL.Strings[2] := 'where codigo = :bcodigo';
       dm.Alunos.Params[0].Value := TabelaFrequenciaCodigo.Value;
       dm.Alunos.Open;
       if not dm.AlunosCODIGO.IsNull then
          TabelaFrequenciaAluno.Value := dm.AlunosNOME.Value
          else
            TabelaFrequenciaAluno.Value := 'Nome não encontrado!!';
      end;

     TabelaFrequencia.Post;
     TabelaFrequencia.First;
     Total.Caption := 'Total de alunos: '+ IntToStr(i + 1);
     

  End;
end;
       dm.Alunos.Close;
       dm.Alunos.SelectSQL.Strings[2] := 'Codigo is not null   and  STATUS <> ''R''';

end;

procedure TMov_Frequencia.bimportaClick(Sender: TObject);
var NumLinha, i :Integer;
    Linha       :String;
    CursorAnterior :TCursor;
begin
if Arquivo.FileName = '' Then
   ShowMessage('Por favor selecione o arquivo gerado'+#13+' pelo coletor.'+#13+
                'Após a seleção clique em Carrega/Arquivo.')
Else
Begin
  CursorAnterior := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  Gauge.Visible := True;
  Texto.Clear;
  Texto.Lines.LoadFromFile(Arquivo.FileName);
  NumLinha:=Texto.Lines.Count;
  dm2.iqpresenca.Open;
  Gauge.MaxValue := Numlinha;
  Gauge.MinValue := 0;
  for i := 0 to NumLinha - 1 do
   Begin
   Linha := Texto.Lines[i];
   if (linha <> '') Then
   Begin
       Begin
    //     Linha := Texto.Lines[i];
         dm.Faltas.Close;
         dm.Faltas.SelectSQL[2] := 'where alu_codigo = :bcod_alu and data = :w_data';
         dm.Faltas.ParamByName('bcod_alu').Value := strToInt(Copy(Linha,31,5));
         dm.Faltas.ParamByName('w_data').Value := StrtoDate(Copy(Linha,37,10)); // para comparar com a data o Alvaro tem que fazer a chamada todos os dias.
         dm.Faltas.Open;
         if not dm.FaltasALU_CODIGO.IsNull Then
         Begin
           dm2.iqpresenca.Insert;
           dm2.iqpresencaDATA.Value := StrToDate(Copy(Linha,37,10));
           dm2.iqpresencaHORA.Value := StrToTime(Copy(Linha,48,5));
           dm2.iqpresencaALU_PRESENCA.Value  := strToInt(Copy(Linha,31,5));
           dm2.iqpresenca.Post;
           Gauge.Progress := i;
         End;
         dm.Faltas.Close;
         dm.Faltas.SelectSQL[2] := 'where alu_codigo > 0';
         dm.Faltas.Open;
       End;
   End;
   Begin
      procedurePresenca.Prepare;
      ProcedurePresenca.ParamByName('w_data').Value := now;
      ProcedurePresenca.ExecProc;
      Label9.Visible := True;
      Label9.Caption := 'Foram inseridas '+IntToStr(i)+' presenças de alunos.';
      RxLabel1.Visible := True;
      Gauge.ForeColor := clRed;
      Screen.Cursor := CursorAnterior;
      RxLabel1.Caption:= 'Presenças atualizadas com sucesso.';
      Gauge.Progress := NumLinha;
      Gauge.ForeColor := clBlue;
      dm2.iqpresenca.First;
      LipaPresenca.ExecProc;
      dm.IBTr_ANGLO.CommitRetaining;
      dm2.TSUsuario.CommitRetaining;
   End;
   End;
  End;
End;

procedure TMov_Frequencia.DBCheckBox1Exit(Sender: TObject);
begin
  dm.Parametros.Post;
  dm.IBTr_ANGLO.CommitRetaining;
end;

procedure TMov_Frequencia.RxDBGrid3DblClick(Sender: TObject);
Var nome :string;
begin
  InputQuery('Anotação da falta','Digite aqui o motivo da falta',nome);
  dm.Faltas.Close;
  dm.Faltas.SelectSQL.Strings[2] := 'Where Alu_Codigo = :baluno and data = :bdata';
  dm.Faltas.Params[0].Value := dm.FaltasDiaCODIGO.Value;
  dm.Faltas.Params[1].Value := dm.FaltasDiaDATA.Value;
  dm.Faltas.Open;
  dm.Faltas.First;

  while (not dm.Faltas.Eof) do
  Begin
    dm.Faltas.Edit;
    dm.FaltasOBS.Value := nome;
    dm.Faltas.Post;
    dm.Faltas.Next;
  End;

  dm.IBTr_ANGLO.CommitRetaining;
  dm.FaltasDia.Close;
  dm.FaltasDia.Open;
  dm.Faltas.Close;
  dm.Faltas.SelectSQL.Strings[2] := 'Where ALU_CODIGO > 0';
  dm.Faltas.Open;
  AtualizaFaltasDia;
end;

procedure TMov_Frequencia.PesqCodigoChange(Sender: TObject);
begin
  if PesqCodigo.Text <> '' then begin
    DM.Alunos.Close;
    DM.Alunos.SelectSQL.Strings[2] := 'where Codigo = :codigo';
    DM.Alunos.ParamByName('codigo').AsInteger := PesqCodigo.AsInteger;
    DM.Alunos.Open;
    Tecla := #13;
    PesqAluno.KeyValue := DM.AlunosCODIGO.Value;
    AtualizaFaltasPresencasAluno;
    end;
end;

procedure TMov_Frequencia.btnAtualizaClick(Sender: TObject);
begin
  Application.CreateForm(TfAtualizaDataHora, fAtualizaDataHora);
  Try
    fatualizaDataHora.ShowModal;
  finally
    fAtualizaDataHora.Free;
  end;
end;

end.
