unit USelectAproveitamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Buttons, StdCtrls;

type
  TfSelecAproveitamento = class(TForm)
    Disciplinas: TDBGrid;
    Adiciona: TSpeedButton;
    Retira: TSpeedButton;
    Aproveitamento: TDBGrid;
    Button1: TButton;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdicionaClick(Sender: TObject);
    procedure RetiraClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSelecAproveitamento: TfSelecAproveitamento;

implementation

uses UDM, UDM2, UAproveitamento;

{$R *.DFM}

procedure TfSelecAproveitamento.FormShow(Sender: TObject);
begin
  dm.Disciplinas.Open;
  dm2.iqSelecDisciplina.Close;
  dm2.iqSelecDisciplina.Params[0].Value := dm.AlunosCODIGO.Value;
  dm2.iqSelecDisciplina.Open;
end;

procedure TfSelecAproveitamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dm.Disciplinas.Close;
end;

procedure TfSelecAproveitamento.AdicionaClick(Sender: TObject);
begin
  Try
     dm2.iqDisciplinaAproveitamento.Open;
     dm2.iqDisciplinaAproveitamento.Insert;
     dm2.iqDisciplinaAproveitamentoALUNO.Value := dm.AlunosCODIGO.Value;
     dm2.iqDisciplinaAproveitamentoDISCIPLINA.Value := dm.DisciplinasCODIGO.Value;
     dm2.iqDisciplinaAproveitamento.Post;
     dm2.iqSelecDisciplina.Close;
     dm2.iqSelecDisciplina.Params[0].Value := dm.AlunosCODIGO.Value;
     dm2.iqSelecDisciplina.Open;
     dm.Disciplinas.Next;
  Except
     On E:Exception Do Begin
        If Pos ('violation of PRIMARY or UNIQUE KEY constraint', E.Message) > 0 Then
        Begin
           ShowMessage ('Registro duplicado');
           dm2.iqDisciplinaAproveitamento.CancelUpdates;
           dm2.iqSelecDisciplina.Close;
           dm2.iqSelecDisciplina.Params[0].Value := dm.AlunosCODIGO.Value;
           dm2.iqSelecDisciplina.Open;
        End;
     End;
  End; //Except
end;

procedure TfSelecAproveitamento.RetiraClick(Sender: TObject);
begin
     dm2.sqlDeleteSecDisciplina.Params[0].Value := dm.AlunosCODIGO.Value;
     dm2.sqlDeleteSecDisciplina.Params[1].Value := dm2.iqSelecDisciplinaCODIGO.Value;
     dm2.sqlDeleteSecDisciplina.ExecQuery;
     dm2.iqSelecDisciplina.Close;
     dm2.iqSelecDisciplina.Params[0].Value := dm.AlunosCODIGO.Value;
     dm2.iqSelecDisciplina.Open;
end;

procedure TfSelecAproveitamento.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfSelecAproveitamento.Button1Click(Sender: TObject);
begin
  try
    Application.CreateForm(Tfaproveitamento, faproveitamento);
    faproveitamento.RLAproveitamento.Preview;
  finally
    faproveitamento.RLAproveitamento.Destroy;
  end;
end;


end.
