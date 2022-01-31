unit UFin_Imp_Bloq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Placemnt, Mask, RxCombos, RxDBComb, RxLookup,
  Grids, DBGrids, ToolEdit, CurrEdit;

type
  TFin_Imp_Bloq = class(TForm)
    Periodo: TRadioGroup;
    BitBtn1: TBitBtn;
    BtFiltra: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Bloq1: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    Bloq2: TMaskEdit;
    Label5: TLabel;
    Aluno: TRxDBLookupCombo;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    Parc1: TCurrencyEdit;
    Parc2: TCurrencyEdit;
    SerieTurma: TRxDBLookupCombo;
    FS1: TFormStorage;
    Codigo: TCurrencyEdit;
    Label47: TLabel;
    ImprimeBrc: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AlunoChange(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure PeriodoClick(Sender: TObject);
    procedure BtFiltraClick(Sender: TObject);
    procedure ImprimeBrcClick(Sender: TObject);
  private
    procedure Filtra;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fin_Imp_Bloq: TFin_Imp_Bloq;

implementation

uses UDM, UBloqueto, UBloquetoBrc, UMenu, u_print_bloqueto;

{$R *.DFM}

procedure TFin_Imp_Bloq.FormShow(Sender: TObject);
begin
  DM.Alunos.SelectSQL.Strings[3] := 'order by nome';
  DM.Alunos.Open;
  DM.Bloquetos.Open;
  DM.Turmas.Open;
//  Parc1.Value := 1;
//  Parc2.Value := 6;
  Bloq1.Text := '0';
  Bloq2.Text := '99999999';
  if (principal.Ano.Caption = '2006')  then
     Fin_Imp_Bloq.DBGrid1.Columns[7].FieldName := 'VALOR_ANT'
  Else
     Fin_Imp_Bloq.DBGrid1.Columns[7].FieldName := 'VALOR';
end;

procedure TFin_Imp_Bloq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Alunos.Close;
  DM.Bloquetos.Close;
  DM.BloquetosQ.Close;
  DM.Turmas.Close;
end;

procedure TFin_Imp_Bloq.AlunoChange(Sender: TObject);
begin
  if Aluno.KeyValue = null then begin
    SerieTurma.Enabled := true; end
   else begin
    SerieTurma.ClearValue;
    SerieTurma.Enabled := false;
    Codigo.Clear;
  end;
end;

procedure TFin_Imp_Bloq.BitBtn3Click(Sender: TObject);
begin
    Application.CreateForm(TfPrintBloqueto, fPrintBloqueto); 
  Try
   fPrintBloqueto.RLReport1.Preview;
  Finally
   fPrintBloqueto.RLReport1.Free;
  end;
end;

procedure TFin_Imp_Bloq.PeriodoClick(Sender: TObject);
begin
  if Periodo.ItemIndex = 0 then begin
    Parc1.Value := 1;  Parc2.Value := 6;  end
   else begin
    Parc1.Value := 7;  Parc2.Value := 12;  end;
end;

procedure TFin_Imp_Bloq.BtFiltraClick(Sender: TObject);
begin
  Filtra;
end;

procedure TFin_Imp_Bloq.Filtra;
begin
  with DM.BloquetosQ do begin
    SQL.Clear;
    SQL.Add('select Blq.*, Alu.CODIGO, Alu.NOME, Alu.FONE,');
    SQL.Add('Alu.SERIE, Alu.TURMA, Alu.BOLSA, Alu.MATERIAL,Alu.BOLSA_AD,Alu.SACADO, Alu.SACADO_CPF, Alu.SACADO_RG, Alu.CEP, Alu.ENDERECO');
    SQL.Add('from BLOQUETOS Blq, ALUNOS Alu');
    SQL.Add('where (Blq.ALUNO = Alu.CODIGO)');
    SQL.Add('  and (Blq.PARCELA >= :Parc1) and (Blq.PARCELA <= :Parc2)');
    SQL.Add('  and (Blq.NOSSO_NUMERO >= :Bloq1) and (Blq.NOSSO_NUMERO <= :Bloq2)');
    if (Codigo.Value > 0) or (Aluno.KeyValue <> null) then
      SQL.Add('  and (Blq.ALUNO = :Aluno)');
    if SerieTurma.KeyValue <> null then begin
      SQL.Add('  and (Alu.SERIE = :Serie)');
      SQL.Add('  and (Alu.TURMA = :Turma)');
    end;
    SQL.Add('order by SERIE,TURMA,NOME,NOSSO_NUMERO');
    ParamByName('Parc1').Value := Parc1.Value;
    ParamByName('Parc2').Value := Parc2.Value;
    if Trim(Bloq1.Text) <> '' then ParamByName('Bloq1').Value := StrToInt(Trim(Bloq1.Text));
    if Trim(Bloq2.Text) <> '' then ParamByName('Bloq2').Value := StrToInt(Trim(Bloq2.Text));
    if Codigo.Value > 0 then
      ParamByName('Aluno').Value := Codigo.Value
     else if Aluno.KeyValue <> null then ParamByName('Aluno').Value := Aluno.KeyValue;
    if SerieTurma.KeyValue <> null then begin
      ParamByName('Serie').Value := DM.TurmasSERIE.Value;
      ParamByName('Turma').Value := DM.TurmasTURMA.Value;
    end;
    Open;
  end;
  BitBtn3.Enabled := true;
end;

procedure TFin_Imp_Bloq.ImprimeBrcClick(Sender: TObject);
begin
  Try
    Application.CreateForm(TBloquetoBrc, BloquetoBrc);
    BloquetoBrc.Preview;
  Finally
    BloquetoBrc.Free;
  End;
end;

end.
