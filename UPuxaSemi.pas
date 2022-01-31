unit UPuxaSemi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, Grids, DBGrids, Mask, ToolEdit, CurrEdit, StdCtrls, Buttons,
  ExtCtrls, Db, IBCustomDataSet, IBQuery;

type
  TPuxaSemi = class(TForm)
    Panel1: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    Nome: TEdit;
    Pesquisa: TBitBtn;
    Codigo: TCurrencyEdit;
    DBGrid1: TDBGrid;
    Cancela: TBitBtn;
    OK: TBitBtn;
    FS1: TFormStorage;
    ConsSemi: TIBQuery;
    ConsSemiCODIGO: TIntegerField;
    Alunos: TIBQuery;
    AlunosCODIGO: TIntegerField;
    AlunosNOME: TIBStringField;
    AlunosSERIE: TSmallintField;
    AlunosTURMA: TIBStringField;
    AlunosSerieX: TStringField;
    DSAlunos: TDataSource;
    AlunosENDERECO: TIBStringField;
    AlunosCOMPLEMENTO: TIBStringField;
    AlunosBAIRRO: TIBStringField;
    AlunosCIDADE: TIBStringField;
    AlunosUF: TIBStringField;
    AlunosCEP: TIBStringField;
    AlunosRG: TIBStringField;
    AlunosNASC_DATA: TDateField;
    AlunosNASC_CIDADE: TIBStringField;
    AlunosNASC_UF: TIBStringField;
    AlunosSEXO: TIBStringField;
    AlunosPAI_NOME: TIBStringField;
    AlunosPAI_PROFISSAO: TIBStringField;
    AlunosPAI_NASCIMENTO: TDateField;
    AlunosMAE_NOME: TIBStringField;
    AlunosMAE_PROFISSAO: TIBStringField;
    AlunosMAE_NASCIMENTO: TDateField;
    AlunosFONE: TIBStringField;
    AlunosDATA_MATRICULA: TDateField;
    AlunosBIMESTRE: TSmallintField;
    AlunosCURSO: TIntegerField;
    AlunosCHAMADA: TSmallintField;
    AlunosSTATUS: TIBStringField;
    AlunosDATA_SAIDA: TDateField;
    AlunosBOLSA: TIBBCDField;
    AlunosOBS_HIST: TMemoField;
    AlunosSACADO: TIBStringField;
    AlunosFINAL: TIBStringField;
    AlunosMATERIAL: TSmallintField;
    AlunosVENCIMENTO: TSmallintField;
    AlunosANO: TSmallintField;
    AlunosBLOQUETO_1SEM: TSmallintField;
    AlunosBLOQUETO_2SEM: TSmallintField;
    AlunosMES_MATERIAL: TSmallintField;
    AlunosSENHA: TIBStringField;
    AlunosSACADO_RG: TIBStringField;
    AlunosSACADO_CPF: TIBStringField;
    AlunosMOD_ESPORTIVA: TIBStringField;
    AlunosH_ANO1: TIntegerField;
    AlunosH_ESCOLA1: TIBStringField;
    AlunosH_CIDADE1: TIBStringField;
    AlunosH_UF1: TIBStringField;
    AlunosH_ANO2: TIntegerField;
    AlunosH_ESCOLA2: TIBStringField;
    AlunosH_CIDADE2: TIBStringField;
    AlunosH_UF2: TIBStringField;
    S: TIntegerField;
    AlunosH_ESCOLA3: TIBStringField;
    AlunosH_CIDADE3: TIBStringField;
    AlunosH_UF3: TIBStringField;
    AlunosBOLSA_OBS: TIBStringField;
    AlunosCODIGO_SP: TIBStringField;
    AlunosCPF: TSmallintField;
    procedure OKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AlunosCalcFields(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CancelaClick(Sender: TObject);
    procedure CodigoChange(Sender: TObject);
    procedure NomeChange(Sender: TObject);
    procedure PesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PuxaSemi: TPuxaSemi;
  Canc    :Boolean;
implementation

uses UCad_Alunos, UDM, UMenu;

{$R *.DFM}

procedure TPuxaSemi.OKClick(Sender: TObject);
begin
  Close;
end;

procedure TPuxaSemi.FormShow(Sender: TObject);
begin
  Alunos.Open;
  canc := false;
end;

procedure TPuxaSemi.FormClose(Sender: TObject; var Action: TCloseAction);
var teste :string;
begin
  dm.Semi.Active := True;
  dm.Semi.Open;
  if (not canc) then begin
    ConsSemi.Close;
    ConsSemi.ParamByName('codigo').Value := AlunosCODIGO.Value;
    ConsSemi.Open;
    if not ConsSemiCODIGO.IsNull then begin
      MessageDlg('Aluno já cadastrado!',mtWarning,[mbOK],0);
      abort; end
     else begin
      if MessageDlg('Puxa dados do aluno '+AlunosNOME.Value+' ?',
        mtConfirmation, mbOKCancel, 0) = mrOK then begin
        DM.Semi.Insert;
        DM.SemiCODIGO.Text:=AlunosCODIGO.Text;
        DM.SemiNOME.Text:=AlunosNOME.Text;
        DM.SemiENDERECO.Text:=AlunosENDERECO.Text;
        DM.SemiCOMPLEMENTO.Text:=AlunosCOMPLEMENTO.Text;
        DM.SemiBAIRRO.Text:=AlunosBAIRRO.Text;
        DM.SemiCIDADE.Text:=AlunosCIDADE.Text;
        DM.SemiUF.Text:=AlunosUF.Text;
        DM.SemiCEP.Text:=AlunosCEP.Text;
        DM.SemiSACADO_CPF.Text:=AlunosSACADO_CPF.Text;
        DM.SemiCPF.Text := AlunosCPF.AsString;
        DM.SemiRG.Value:=AlunosRG.Value;
        DM.SemiNASC_DATA.Value:=AlunosNASC_DATA.Value;
        if DM.AlunosNASC_DATA.Value = 0 then DM.AlunosNASC_DATA.Clear;
        DM.SemiNASC_CIDADE.Text:=AlunosNASC_CIDADE.Text;
        DM.SemiNASC_UF.Text:=AlunosNASC_UF.Text;
        DM.SemiSEXO.Text:=AlunosSEXO.Text;
        DM.SemiPAI_NOME.Text:=AlunosPAI_NOME.Text;
        DM.SemiMAE_NOME.Text:=AlunosMAE_NOME.Text;
        DM.SemiFONE.Text:=AlunosFONE.Text;
        DM.SemiDATA_MATRICULA.Text:=AlunosDATA_MATRICULA.Text;
        DM.SemiSTATUS.Text:=AlunosSTATUS.Text;
        DM.SemiDATA_SAIDA.Text:=AlunosDATA_SAIDA.Text;
        DM.SemiBOLSA.Text:=AlunosBOLSA.Text;
        DM.SemiMATERIAL.Text:=AlunosMATERIAL.Text;
        DM.SemiVENCIMENTO.Text:=AlunosVENCIMENTO.Text;
        DM.SemiBOLSA_OBS.Text:=AlunosBOLSA_OBS.Text;
//        DM.SemiBLOQUETO.Value := 0;
        DM.SemiCURSO.Text:='SEMI';
        DM.Semi.Post;
      end;        // do if puxa alunos
    end;          // do if já cadastrado
  end;            // do if not canc
  Alunos.Close;
  ConsSemi.Close;
end;

procedure TPuxaSemi.AlunosCalcFields(DataSet: TDataSet);
begin
  AlunosSerieX.Value := IntToStr(AlunosSERIE.Value)+'ª Série '+AlunosTURMA.Value;
end;

procedure TPuxaSemi.DBGrid1DblClick(Sender: TObject);
begin
  Close;
end;

procedure TPuxaSemi.CancelaClick(Sender: TObject);
begin
  canc := true;
  Close;
end;

procedure TPuxaSemi.CodigoChange(Sender: TObject);
begin
  if Codigo.Text <> '' then begin
    Nome.Clear;
    Alunos.Close;
    Alunos.SQL.Strings[2] := 'where CODIGO = :codigo';
    Alunos.ParamByName('codigo').AsInteger := StrToInt(Codigo.Text);
    Alunos.Open;
  end;

end;

procedure TPuxaSemi.NomeChange(Sender: TObject);
begin
 if Nome.Text <> '' then begin
    Codigo.Clear;
    Alunos.Close;
    Alunos.SQL.Strings[2] := 'where NOME starting with :nome';
    Alunos.ParamByName('nome').AsString := Nome.Text;
    Alunos.Open;
  end;
end;      
procedure TPuxaSemi.PesquisaClick(Sender: TObject);
begin
  Codigo.Clear;
  Alunos.Close;
  Alunos.SQL.Strings[2] := 'where upper(NOME) like upper(:nome)';
  Alunos.ParamByName('nome').AsString := '%'+Nome.Text+'%';
  Alunos.Open;
end;

end.

