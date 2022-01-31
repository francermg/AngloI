unit UDoc_AtaRec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, StdCtrls, RxLookup, Buttons, Placemnt,
  ExtCtrls, Grids, DBGrids, Mask, ToolEdit;

type
  TDoc_AtaRec = class(TForm)
    Fecha: TBitBtn;
    Imprime: TBitBtn;
    Turma: TRxDBLookupCombo;
    Label2: TLabel;
    FS1: TFormStorage;
    DiscRec: TIBQuery;
    DiscRecNOME_RES: TIBStringField;
    DiscRecCH_OFICIAL: TIntegerField;
    DataDoc: TDateEdit;
    Label23: TLabel;
    Secretaria: TEdit;
    Label1: TLabel;
    DiscRecNOME_ATA_1: TIBStringField;
    DiscRecNOME_ATA_2: TIBStringField;
    DiscRecNOME_ATA_3: TIBStringField;
    RadioGroup1: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TurmaChange(Sender: TObject);
  private
    function NomeDisc1(Seq:integer) : string;
    function NomeDisc2(Seq:integer) : string;
    function NomeDisc3(Seq:integer) : string;
    function CHDisc(Seq:integer) : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Doc_AtaRec: TDoc_AtaRec;

implementation

uses UDM, UDoc_AtaQR, UDoc_AtaRecQR, UDM2;

{$R *.DFM}

function TDoc_AtaRec.NomeDisc1(Seq:integer) : string;
begin
  DiscRec.ParamByName('seq').Value := Seq;
  DiscRec.ParamByName('ser').Value := DM.TurmasSERIE.Value;
  DiscRec.Open;
  result := DiscRecNOME_ATA_1.Value;
  DiscRec.Close;
end;

function TDoc_AtaRec.NomeDisc2(Seq:integer) : string;
begin
  DiscRec.ParamByName('seq').Value := Seq;
  DiscRec.ParamByName('ser').Value := DM.TurmasSERIE.Value;
  DiscRec.Open;
  result := DiscRecNOME_ATA_2.Value;
  DiscRec.Close;
end;

function TDoc_AtaRec.NomeDisc3(Seq:integer) : string;
begin
  DiscRec.ParamByName('seq').Value := Seq;
  DiscRec.ParamByName('ser').Value := DM.TurmasSERIE.Value;
  DiscRec.Open;
  result := DiscRecNOME_ATA_3.Value;
  DiscRec.Close;
end;

function TDoc_AtaRec.CHDisc(Seq:integer) : string;
begin
  DiscRec.ParamByName('seq').Value := Seq;
  DiscRec.ParamByName('ser').Value := DM.TurmasSERIE.Value;
  DiscRec.Open;
  if DiscRecCH_OFICIAL.IsNull then result := ''
   else result := 'CH '+FormatFloat('000',DiscRecCH_OFICIAL.AsFloat);
  DiscRec.Close;
end;

procedure TDoc_AtaRec.FormShow(Sender: TObject);
begin
  DM.Turmas.Open;
  DataDoc.Date := now;
end;

procedure TDoc_AtaRec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Turmas.Close;
end;

procedure TDoc_AtaRec.TurmaChange(Sender: TObject);
begin
  if Turma.KeyValue = null then Imprime.Enabled := false
   else Imprime.Enabled := true;
end;

end.
