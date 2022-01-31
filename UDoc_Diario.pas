unit UDoc_Diario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, StdCtrls, RxLookup, Buttons, Placemnt,
  ExtCtrls, Grids, DBGrids, Mask, ToolEdit, RXDBCtrl, CurrEdit;

type
  TDoc_Diario = class(TForm)
    Fecha: TBitBtn;
    Imprime: TBitBtn;
    Turma: TRxDBLookupCombo;
    Label2: TLabel;
    FS1: TFormStorage;
    Disc: TIBQuery;
    DiscNOME_RES: TIBStringField;
    DiscCH_OFICIAL: TIntegerField;
    Label3: TLabel;
    Disciplina: TRxDBLookupCombo;
    Label4: TLabel;
    Bimestre: TRadioGroup;
    AulasPrev: TCurrencyEdit;
    Label1: TLabel;
    Grade: TIBQuery;
    GradeSERIE: TSmallintField;
    GradeDISCIPLINA: TIntegerField;
    GradeSEQUENCIA: TSmallintField;
    GradeCH_SEMANAL: TIntegerField;
    GradeCH_OFICIAL: TIntegerField;
    GradeCH_N_OFICIAL: TIntegerField;
    GradeTIPO: TIBStringField;
    Visualiza: TBitBtn;
    Label5: TLabel;
    Tipo: TRadioGroup;
    ObsDiario: TMemo;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TurmaChange(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
    procedure TipoClick(Sender: TObject);
  private
    procedure ImprimeDiario(VisImp : Integer);
    procedure ImprimeColecCanhoto(VisImp : Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Doc_Diario: TDoc_Diario;

implementation

uses UDM, UDoc_DiarioQR, UDoc_ColecCanhotoQR;

{$R *.DFM}

procedure TDoc_Diario.FormShow(Sender: TObject);
begin
  DM.Turmas.Open;
  DM.Disciplinas.Open;
end;

procedure TDoc_Diario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Turmas.Close;
  DM.Disciplinas.Close;
  DM.Bimestres.SelectSQL.Strings[2] := 'where CODIGO > 0';
  DM.Bimestres.Close;
  DM.Diario.Close;
  DM.DiarioD.Close;
end;

procedure TDoc_Diario.TurmaChange(Sender: TObject);
begin
  if (Turma.KeyValue = null) or (Disciplina.KeyValue = null) then begin
    Visualiza.Enabled := false;
    Imprime.Enabled := false; end
   else begin
    Visualiza.Enabled := true;
    Imprime.Enabled := true;
    Grade.ParamByName('serie').Value := DM.TurmasSERIE.Value;
    Grade.ParamByName('disciplina').Value := DM.DisciplinasCODIGO.Value;
    Grade.Open;
    AulasPrev.Value := GradeCH_OFICIAL.Value / 4;
    Grade.Close;
  end;
end;

procedure TDoc_Diario.TipoClick(Sender: TObject);
begin
  if Tipo.ItemIndex = 0 then begin
    AulasPrev.Enabled := true;
    Bimestre.Enabled := true;
  end;
  if Tipo.ItemIndex = 1 then begin
    AulasPrev.Enabled := false;
    Bimestre.Enabled := false;
  end;
end;

procedure TDoc_Diario.ImprimeClick(Sender: TObject);
var VisImp : integer;
begin
  VisImp := (Sender as TBitBtn).Tag;
  if Tipo.ItemIndex = 0 then ImprimeDiario(VisImp);
  if Tipo.ItemIndex = 1 then ImprimeColecCanhoto(VisImp);
end;

procedure TDoc_Diario.ImprimeDiario(VisImp : Integer);
begin
  DM.Bimestres.Close;
  DM.Bimestres.SelectSQL.Strings[2] := 'where CODIGO = :codigo';
  DM.Bimestres.ParamByName('codigo').Value := Bimestre.ItemIndex + 1;
  DM.Bimestres.Open;
  DM.DiarioD.Close;
  DM.DiarioD.ParamByName('serie').Value := DM.TurmasSERIE.Value;
  DM.DiarioD.ParamByName('turma').Value := DM.TurmasTURMA.Value;
  DM.DiarioD.ParamByName('disciplina').Value := DM.DisciplinasCODIGO.Value;
  DM.DiarioD.ParamByName('bimestre').Value := Bimestre.ItemIndex + 1;
  DM.DiarioD.Open;
  DM.Diario.Close;
  DM.Diario.ParamByName('serie').Value := DM.TurmasSERIE.Value;
  DM.Diario.ParamByName('turma').Value := DM.TurmasTURMA.Value;
  DM.Diario.ParamByName('disciplina').Value := DM.DisciplinasCODIGO.Value;
  DM.Diario.ParamByName('bimestre').Value := Bimestre.ItemIndex + 1;
  DM.Diario.Open;
  DM.Diario.FetchAll;
  Application.CreateForm(TDoc_DiarioQR, Doc_DiarioQR);
  Doc_DiarioQR.ReportTitle := 'ANGLO - Diário de Classe - '+
     DM.TurmasSERIE.AsString+'ª Série '+DM.TurmasTURMA.AsString+' - '+
     DM.DisciplinasNOME.Value;
  if VisImp = 1 then Doc_DiarioQR.Preview;
  if VisImp = 2 then Doc_DiarioQR.Print;
  Doc_DiarioQR.Free;
//  DM.Disciplinas.Next;
  Disciplina.KeyValue := DM.DisciplinasCODIGO.Value;
end;

procedure TDoc_Diario.ImprimeColecCanhoto(VisImp : Integer);
begin
  DM.ColecC.Close;
  DM.ColecC.ParamByName('serie').Value := DM.TurmasSERIE.Value;
  DM.ColecC.ParamByName('turma').Value := DM.TurmasTURMA.Value;
  DM.ColecC.ParamByName('disciplina').Value := DM.DisciplinasCODIGO.Value;
  DM.ColecC.Open;
  DM.ColecC.FetchAll;
  Application.CreateForm(TDoc_ColecCanhotoQR, Doc_ColecCanhotoQR);
  Doc_ColecCanhotoQR.ReportTitle := 'ANGLO - Colecionador de Canhotos - '+
     DM.TurmasSERIE.AsString+'ª Série '+DM.TurmasTURMA.AsString+' - '+
     DM.DisciplinasNOME.Value;
  if VisImp = 1 then Doc_ColecCanhotoQR.Preview;
  if VisImp = 2 then Doc_ColecCanhotoQR.Print;
  Doc_ColecCanhotoQR.Free;
  DM.Disciplinas.Next;
  Disciplina.KeyValue := DM.DisciplinasCODIGO.Value;
end;

end.
