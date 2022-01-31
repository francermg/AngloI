unit ULst_AlunosEtiq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, StdCtrls, Buttons, RxLookup, RxDBComb, Mask, ToolEdit, ExtCtrls;

type
  TLst_AlunosEtiq = class(TForm)
    Turma: TRxDBLookupCombo;
    Imprime: TBitBtn;
    Fecha: TBitBtn;
    FS1: TFormStorage;
    Tipo: TRadioGroup;
    Serie: TRadioGroup;
    pTurma: TRadioButton;
    pSerie: TRadioButton;
    Status: TRadioGroup;
    procedure ImprimeClick(Sender: TObject);
    procedure TurmaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pSerieClick(Sender: TObject);
    procedure pTurmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lst_AlunosEtiq: TLst_AlunosEtiq;

implementation

uses UDM, ULst_AlunosEtiqQR, ULst_AlunosQR;

{$R *.DFM}

procedure TLst_AlunosEtiq.FormShow(Sender: TObject);
begin
  DM.Turmas.Open;
end;

procedure TLst_AlunosEtiq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.Turmas.Close;
end;

procedure TLst_AlunosEtiq.TurmaChange(Sender: TObject);
begin
  if Turma.KeyValue = null then Imprime.Enabled := false
   else Imprime.Enabled := true;
end;

procedure TLst_AlunosEtiq.pTurmaClick(Sender: TObject);
begin
  Turma.Enabled := true;
  Serie.Enabled := false;
  Turma.ResetField;
  Imprime.Enabled := false;
end;

procedure TLst_AlunosEtiq.pSerieClick(Sender: TObject);
begin
  Turma.Enabled := false;
  Serie.Enabled := true;
  Turma.ResetField;
  Imprime.Enabled := true;
end;

procedure TLst_AlunosEtiq.ImprimeClick(Sender: TObject);
var Sql1,Sql2,Sql3,Sql4 : string;
begin
  Try
    with Lst_AlunosEtiqQR do begin
      Application.CreateForm(TLst_AlunosEtiqQR, Lst_AlunosEtiqQR);
      Alunos.Close;
      Sql1 := 'where SERIE = :serie ';
      Sql2 := 'and TURMA = :turma ';
      Sql3 := 'and STATUS = :status ';
      if (Serie.ItemIndex = 3) and (pSerie.Checked) then Sql1 := 'where :serie > 0 ';
      if not pTurma.Checked then Sql2 := '';
      if Status.ItemIndex = 0 then Sql3 := '';
      case Tipo.ItemIndex of
        0 : Sql4 := '';
        1 : Sql4 := 'and MATERIAL = 1 ';
        2 : Sql4 := 'and MATERIAL = 0 ';
      end;
      if Tipo.ItemIndex = 0 then Sql4 := '';
      Alunos.SQL.Strings[2] := Sql1+Sql2+Sql3+Sql4;
      if pTurma.Checked then begin
        Alunos.ParamByName('serie').Value := DM.TurmasSERIE.Value;
        Alunos.ParamByName('turma').Value := DM.TurmasTURMA.Value; end
       else
        Alunos.ParamByName('serie').Value := Serie.ItemIndex + 1;
      if Status.ItemIndex > 0 then
        Alunos.ParamByName('status').Value := Copy(Status.Items[Status.ItemIndex],1,1);
      Alunos.Open;
      Alunos.FetchAll;
      Preview;
    end;
  Finally
    Lst_AlunosEtiqQR.Free;
  End;                                               
end;

end.
