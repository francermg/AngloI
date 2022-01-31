unit ULst_alunos_Notas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, Buttons, Placemnt;

type
  TLst_Alunos_Notas = class(TForm)
    Turma: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    Disciplina: TRxDBLookupCombo;
    FS: TFormStorage;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lst_Alunos_Notas: TLst_Alunos_Notas;

implementation

uses UDM, UDM2, ULst_NotasQR;

{$R *.DFM}

procedure TLst_Alunos_Notas.FormShow(Sender: TObject);
begin
  DM.Turmas.Open;
  DM.Disciplinas.Open;
end;

procedure TLst_Alunos_Notas.BitBtn1Click(Sender: TObject);
 begin
    DM2.IBNotas_Alu.Close;
    DM2.IBNotas_Alu.ParamByName('Serie').Value := DM.TurmasSERIE.Value;
    DM2.IBNotas_Alu.ParamByName('Turma').Value := DM.TurmasTURMA.Value;
    DM2.IBNotas_Alu.ParamByName('Disciplina').Value := DM.DisciplinasCODIGO.Value;
    DM2.IBNotas_Alu.Open;
    Lst_NotasQR.Preview;
end;


procedure TLst_Alunos_Notas.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
