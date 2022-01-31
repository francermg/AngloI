unit UDoc_MatLecionada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, StdCtrls, RxLookup, Buttons, Placemnt,
  ExtCtrls, Grids, DBGrids, Mask, ToolEdit, RXDBCtrl, CurrEdit;

type
  TDoc_MatLecionada = class(TForm)
    Fecha: TBitBtn;
    Imprime: TBitBtn;
    FS1: TFormStorage;
    Disc: TIBQuery;
    DiscNOME_RES: TIBStringField;
    DiscCH_OFICIAL: TIntegerField;
    Label3: TLabel;
    Disciplina: TRxDBLookupCombo;
    Label4: TLabel;
    Bimestre: TRadioGroup;
    Grade: TIBQuery;
    GradeSERIE: TSmallintField;
    GradeDISCIPLINA: TIntegerField;
    GradeSEQUENCIA: TSmallintField;
    GradeCH_SEMANAL: TIntegerField;
    GradeCH_OFICIAL: TIntegerField;
    GradeCH_N_OFICIAL: TIntegerField;
    GradeTIPO: TIBStringField;
    Visualiza: TBitBtn;
    Serie: TRadioGroup;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImprimeClick(Sender: TObject);
    procedure DisciplinaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Doc_MatLecionada: TDoc_MatLecionada;

implementation

uses UDM, UDoc_MatLecionadaQR;

{$R *.DFM}

procedure TDoc_MatLecionada.FormShow(Sender: TObject);
begin
  DM.Disciplinas.Open;
end;

procedure TDoc_MatLecionada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Disciplinas.Close;
  DM.Mat_Lecionada.Close;
end;

procedure TDoc_MatLecionada.DisciplinaChange(Sender: TObject);
begin
  if Disciplina.KeyValue = null then begin
    Visualiza.Enabled := false;
    Imprime.Enabled := false; end
   else begin
    Visualiza.Enabled := true;
    Imprime.Enabled := true;
  end;
end;

procedure TDoc_MatLecionada.ImprimeClick(Sender: TObject);
begin
  DM.Mat_Lecionada.Close;
  DM.Mat_Lecionada.ParamByName('disciplina').Value := DM.DisciplinasCODIGO.Value;
  DM.Mat_Lecionada.ParamByName('serie').Value := Serie.ItemIndex+1;
  DM.Mat_Lecionada.ParamByName('bimestre').Value := Bimestre.ItemIndex+1;
  DM.Mat_Lecionada.Open;
  Application.CreateForm(TDoc_MatLecionadaQR, Doc_MatLecionadaQR);
  Doc_MatLecionadaQR.ReportTitle := 'ANGLO - Matéria Lecionada - '+
    IntToStr(Serie.ItemIndex+1)+'ª Série - '+DM.DisciplinasNOME.Value;
  if (Sender as TBitBtn).Tag = 1 then Doc_MatLecionadaQR.Preview;
  if (Sender as TBitBtn).Tag = 2 then Doc_MatLecionadaQR.Print;
  Doc_MatLecionadaQR.Free;
end;

end.
