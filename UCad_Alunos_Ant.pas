unit UCad_Alunos_Ant;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, Grids, DBGrids, Mask, ToolEdit, CurrEdit, StdCtrls, Buttons,
  ExtCtrls, Db, IBCustomDataSet, IBQuery;

type
  TCad_Alunos_Ant = class(TForm)
    FS1: TFormStorage;
    AlunosAnt: TIBQuery;
    Panel1: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    Nome: TEdit;
    Pesquisa: TBitBtn;
    Codigo: TCurrencyEdit;
    DBGrid1: TDBGrid;
    Cancela: TBitBtn;
    DSAlunosAnt: TDataSource;
    AlunosAntCODIGO: TIntegerField;
    AlunosAntNOME: TIBStringField;
    AlunosAntSERIE: TSmallintField;
    AlunosAntTURMA: TIBStringField;
    AlunosAntSerieX: TStringField;
    OK: TBitBtn;
    ConsAluno: TIBQuery;
    ConsAlunoCODIGO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CodigoChange(Sender: TObject);
    procedure NomeChange(Sender: TObject);
    procedure AlunosAntCalcFields(DataSet: TDataSet);
    procedure PesquisaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure CancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_Alunos_Ant: TCad_Alunos_Ant;
  canc : boolean;

implementation

uses UCad_Alunos, UMenu, UDM;

{$R *.DFM}



procedure TCad_Alunos_Ant.FormShow(Sender: TObject);
begin
  AlunosAnt.Open;
  Caption := 'Puxa Dados de '+IntToStr((StrToInt(Principal.Ano.Caption)-1));
  canc := false;
end;

procedure TCad_Alunos_Ant.FormClose(Sender: TObject; var Action: TCloseAction);
var teste :string;
begin

  if (not canc) then begin
    ConsAluno.Close;
    ConsAluno.ParamByName('codigo').Value := AlunosAntCODIGO.Value;
    ConsAluno.Open;
    if not ConsAlunoCODIGO.IsNull then begin
      MessageDlg('Aluno já cadastrado!',mtWarning,[mbOK],0);
      abort; end
     else begin
      Cad_Alunos.AlunosAnt.Close;
      Cad_Alunos.AlunosAnt.ParamByName('codigo').Value := AlunosAntCODIGO.Value;
      Cad_Alunos.AlunosAnt.Open;
      if MessageDlg('Puxa dados do aluno '+Cad_Alunos.AlunosAntNOME.Value+#10+#13+
        'referentes ao ano '+IntToStr((StrToInt(Principal.Ano.Caption)-1))+' ?',
        mtConfirmation, mbOKCancel, 0) = mrOK then begin
        DM.Alunos.Append;
        DM.AlunosCODIGO.Value := Cad_Alunos.AlunosAntCODIGO.Value;                              //Código do aluno
        DM.AlunosID.Value := Cad_Alunos.AlunosAntID.Value;                                      //id Anterior
        DM.AlunosNOME.Value := Cad_Alunos.AlunosAntNOME.Value;                                  //Nome do aluno
        DM.AlunosENDERECO.Value := Cad_Alunos.AlunosAntENDERECO.Value;                          //Endereço
        DM.AlunosNUMERO.Value := Cad_Alunos.AlunosAntNUMERO.Value;                              //Número da casa
        DM.AlunosCOMPLEMENTO.Value := Cad_Alunos.AlunosAntCOMPLEMENTO.Value;                    //Complemento
        DM.AlunosBAIRRO.Value := Cad_Alunos.AlunosAntBAIRRO.Value;                              //Bairro
        DM.AlunosCIDADE.Value := Cad_Alunos.AlunosAntCIDADE.Value;                              //Cidade
        DM.AlunosUF.Value := Cad_Alunos.AlunosAntUF.Value;                                      //UF
        DM.AlunosTIPO_LOGADOURO.Value := Cad_Alunos.AlunosAntTIPO_LOGADOURO.Value;              //Logradouro
        DM.AlunosCEP.Value := Cad_Alunos.AlunosAntCEP.AsString;                                 //CEP
        DM.AlunosRG.Value := Cad_Alunos.AlunosAntRG.Value;                                      //RG do aluno
        DM.AlunosCPF.Value := Cad_Alunos.AlunosAntCPF.Value;                                    //CPF do aluno
        DM.AlunosNACIONALIDADE.Value := Cad_Alunos.AlunosAntNACIONALIDADE.Value;                //Nacionalidade do aluno
        DM.AlunosNASC_DATA.Value := Cad_Alunos.AlunosAntNASC_DATA.Value;                        //Data de nascimento
        DM.AlunosEMAIL_ALUNO.Value := Cad_Alunos.AlunosAntEMAIL_ALUNO.Value;                    //E-mail do aluno
        DM.AlunosTIPOSANGUINEO.Value := Cad_Alunos.AlunosAntTIPOSANGUINEO.Value;                //Tipo Saguineo
        DM.AlunosNASC_CIDADE.Value := Cad_Alunos.AlunosAntNASC_CIDADE.Value;                    //Cidade nascimento
        DM.AlunosNASC_UF.Value := Cad_Alunos.AlunosAntNASC_UF.Value;                            //Estado de nascimento
        DM.AlunosSEXO.Value := Cad_Alunos.AlunosAntSEXO.Value;                                  //Sexo do aluno
        DM.AlunosPAI_NOME.Value := Cad_Alunos.AlunosAntPAI_NOME.Value;                          //Pai nome
        DM.AlunosEMAIL_MAE.Value := Cad_Alunos.AlunosAntEMAIL_MAE.Value;                        //E-mail mãe do aluno
        DM.AlunosPAI_PROFISSAO.Value := Cad_Alunos.AlunosAntPAI_PROFISSAO.Value;                //Profissão pai
        DM.AlunosPAI_NASCIMENTO.Value := Cad_Alunos.AlunosAntPAI_NASCIMENTO.Value;              //Nascimento pai
        DM.AlunosMAE_NOME.Value := Cad_Alunos.AlunosAntMAE_NOME.Value;                          //Nome da mãe
        DM.AlunosMAE_PROFISSAO.Value := Cad_Alunos.AlunosAntMAE_PROFISSAO.Value;                //Profissão da mãe
        DM.AlunosMAE_NASCIMENTO.Value := Cad_Alunos.AlunosAntMAE_NASCIMENTO.Value;              //Nascimento da mãe
        DM.AlunosFONE.Value := Cad_Alunos.AlunosAntFONE.Value;                                  //Telefone
        DM.AlunosOBS_HIST.Value := Cad_Alunos.AlunosAntOBS_HIST.Value;                          //Observação histórico
        DM.AlunosSACADO.Value := Cad_Alunos.AlunosAntSACADO.Value;                              //Nome do sacado
        DM.AlunosSACADO_RG.Value := Cad_Alunos.AlunosAntSACADO_RG.Value;                        //RG do sacado
        DM.AlunosSACADO_CPF.Value := Cad_Alunos.AlunosAntSACADO_CPF.Value;                      //CPF do sacado **
        DM.AlunosSENHA.Value := Cad_Alunos.AlunosAntSENHA.Value;                                //Aluno senha   **
        DM.AlunosPASENHA.Value := Cad_Alunos.AlunosAntPASENHA.Value;                            //Pai senha
        DM.AlunosBOLSA.Value := Cad_Alunos.AlunosAntBOLSA.Value;                                //Valor Bolsa
        DM.AlunosDATA_IGRESSO.Value := Cad_Alunos.AlunosAntDATA_MATRICULA.Value;                //Data da matricula
        DM.AlunosTIPOCERTIDAO.Value := IntToStr(Cad_Alunos.AlunosAntTIPOCERTIDAO.Value);        //Tipode certidão
        DM.AlunosNUMERO_TERMO.Value := Cad_Alunos.AlunosAntNUMERO_TERMO.Value;                  //Número do termo
        DM.AlunosFOLHA.Value := Cad_Alunos.AlunosAntFOLHA.Value;                                //Número da folha
        DM.AlunosLIVRO.Value := Cad_Alunos.AlunosAntLIVRO.Value;                                //Número do livro
        DM.AlunosDATA_EMI_CERT.Value := Cad_Alunos.AlunosAntDATA_EMI_CERT.Value;                //Dta emissão da certidão
        DM.AlunosUFCARTORIO.Value := Cad_Alunos.AlunosAntUFCARTORIO.Value;                      //UF do cartório
        DM.AlunosNOME_CART_EXP.Value := Cad_Alunos.AlunosAntNOME_CART_EXP.Value;                //Nome da carteira expedida
        DM.AlunosEDU_ESPECIAL.Value := Cad_Alunos.AlunosAntEDU_ESPECIAL.Value;                  //Educação especial sim(x) ou não(x)
        DM.AlunosDATA_IGRESSO.Value := Cad_Alunos.AlunosAntDATA_IGRESSO.Value;                  //Data ingresso
        DM.AlunosTEL_RESIDENCIAL.Value := Cad_Alunos.AlunosAntTEL_RESIDENCIAL.Value;            //Telefone residencial
        DM.AlunosCELULAR.Value := Cad_Alunos.AlunosAntCELULAR.Value;                            //Telefone celular
        DM.AlunosTEL_CONTATO.Value := Cad_Alunos.AlunosAntTEL_CONTATO.Value;                    //Telefone para contato
        DM.AlunosMOD_ESPORTIVA.Value := Cad_Alunos.AlunosAntMOD_ESPORTIVA.Value;                //Modalidade esportiva
        DM.AlunosBOLSA_OBS.Value := Cad_Alunos.AlunosAntBOLSA_OBS.Value;                        //Observação da bolsa
        DM.AlunosORIUNDO_ESCOLA.Value  := Cad_alunos.AlunosAntORIUNDO_ESCOLA.Value;             //Oriundo de qual escola
        DM.AlunosOBS_TEL.Value := Cad_Alunos.AlunosAntOBS_TEL.Value;                            //Obsevação telefone
        DM.AlunosDATA_EFETUACAO.AsDateTime := Now;                                              //Data efetuação da rematricula
        if Cad_Alunos.AlunosAntCOR.IsNull then
        DM.AlunosCOR.Value := 1 else  DM.AlunosCOR.Value := Cad_Alunos.AlunosAntCOR.Value;      //Cor do aluno
//        DM.Alunos.Post;
      end;        // do if puxa alunos
    end;          // do if já cadastrado
  end;            // do if not canc
  AlunosAnt.Close;
  ConsAluno.Close;
  Cad_Alunos_Ant.Close;
end;

procedure TCad_Alunos_Ant.CodigoChange(Sender: TObject);
begin
  if Codigo.Text <> '' then begin
    Nome.Clear;
    AlunosAnt.Close;
    AlunosAnt.SQL.Strings[2] := 'where CODIGO = :codigo';
    AlunosAnt.ParamByName('codigo').AsInteger := StrToInt(Codigo.Text);
    AlunosAnt.Open;
  end;
end;

procedure TCad_Alunos_Ant.NomeChange(Sender: TObject);
begin
  if Nome.Text <> '' then begin
    Codigo.Clear;
    AlunosAnt.Close;
    AlunosAnt.SQL.Strings[2] := 'where NOME starting with :nome';
    AlunosAnt.ParamByName('nome').AsString := Nome.Text;
    AlunosAnt.Open;
  end;
end;

procedure TCad_Alunos_Ant.AlunosAntCalcFields(DataSet: TDataSet);
begin
  AlunosAntSerieX.Value := IntToStr(AlunosAntSERIE.Value)+'ª Série '+AlunosAntTURMA.Value;
end;

procedure TCad_Alunos_Ant.PesquisaClick(Sender: TObject);
begin
  Codigo.Clear;
  AlunosAnt.Close;
  AlunosAnt.SQL.Strings[2] := 'where upper(NOME) like upper(:nome)';
  AlunosAnt.ParamByName('nome').AsString := '%'+Nome.Text+'%';
  AlunosAnt.Open;
end;

procedure TCad_Alunos_Ant.DBGrid1DblClick(Sender: TObject);
begin
  Close;
end;

procedure TCad_Alunos_Ant.OKClick(Sender: TObject);
begin
  Close;
end;

procedure TCad_Alunos_Ant.CancelaClick(Sender: TObject);
begin
  canc := true;
  Close;
end;

end.
