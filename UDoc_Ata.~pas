unit UDoc_Ata;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, StdCtrls, RxLookup, Buttons, Placemnt,
  ExtCtrls, Grids, DBGrids, Mask, ToolEdit, RXCtrls;

type
  TDoc_Ata = class(TForm)
    Fecha: TBitBtn;
    Imprime: TBitBtn;
    Turma: TRxDBLookupCombo;
    Label2: TLabel;
    FS1: TFormStorage;
    Disc: TIBQuery;
    DiscNOME_RES: TIBStringField;
    DiscCH_OFICIAL: TIntegerField;
    DataDoc: TDateEdit;
    Label23: TLabel;
    Secretaria: TEdit;
    Label1: TLabel;
    DiscNOME_ATA_1: TIBStringField;
    DiscNOME_ATA_2: TIBStringField;
    DiscNOME_ATA_3: TIBStringField;
    Label3: TLabel;
    EdObs: TMemo;
    RxLabel1: TRxLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TurmaChange(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
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
  Doc_Ata: TDoc_Ata;

implementation

uses UDM, UDoc_AtaQR;

{$R *.DFM}

function TDoc_Ata.NomeDisc1(Seq:integer) : string;
begin
  Disc.ParamByName('seq').Value := Seq;
  Disc.ParamByName('ser').Value := DM.TurmasSERIE.Value;
  Disc.Open;
  result := DiscNOME_ATA_1.Value;
  Disc.Close;
end;

function TDoc_Ata.NomeDisc2(Seq:integer) : string;
begin
  Disc.ParamByName('seq').Value := Seq;
  Disc.ParamByName('ser').Value := DM.TurmasSERIE.Value;
  Disc.Open;
  result := DiscNOME_ATA_2.Value;
  Disc.Close;
end;

function TDoc_Ata.NomeDisc3(Seq:integer) : string;
begin
  Disc.ParamByName('seq').Value := Seq;
  Disc.ParamByName('ser').Value := DM.TurmasSERIE.Value;
  Disc.Open;
  result := DiscNOME_ATA_3.Value;
  Disc.Close;
end;

function TDoc_Ata.CHDisc(Seq:integer) : string;
begin
  Disc.ParamByName('seq').Value := Seq;
  Disc.ParamByName('ser').Value := DM.TurmasSERIE.Value;
  Disc.Open;
  if DiscCH_OFICIAL.IsNull then result := ''
   else result := 'CH '+FormatFloat('000',DiscCH_OFICIAL.AsFloat);
  Disc.Close;
end;

procedure TDoc_Ata.FormShow(Sender: TObject);
begin
  DM.Turmas.Open;
  DataDoc.Date := now;
end;

procedure TDoc_Ata.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Turmas.Close;
  DM.MedAta.Close;
end;

procedure TDoc_Ata.TurmaChange(Sender: TObject);
begin
  if Turma.KeyValue = null then Imprime.Enabled := false
   else Imprime.Enabled := true;
end;

procedure TDoc_Ata.ImprimeClick(Sender: TObject);
begin
  DM.MedAta.Close;
  DM.MedAta.ParamByName('serie').Value := DM.TurmasSERIE.Value;
  DM.MedAta.ParamByName('turma').Value := DM.TurmasTURMA.Value;
  DM.MedAta.Open;
  DM.MedAta.FetchAll;
  Application.CreateForm(TDoc_AtaQR, Doc_AtaQR);
  Doc_AtaQR.D01.Caption := NomeDisc1(1);      Doc_AtaQR.E01.Caption := NomeDisc2(1);
  Doc_AtaQR.D02.Caption := NomeDisc1(2);      Doc_AtaQR.E02.Caption := NomeDisc2(2);
  Doc_AtaQR.D03.Caption := NomeDisc1(3);      Doc_AtaQR.E03.Caption := NomeDisc2(3);
  Doc_AtaQR.D04.Caption := NomeDisc1(4);      Doc_AtaQR.E04.Caption := NomeDisc2(4);
  Doc_AtaQR.D05.Caption := NomeDisc1(5);      Doc_AtaQR.E05.Caption := NomeDisc2(5);
  Doc_AtaQR.D06.Caption := NomeDisc1(6);      Doc_AtaQR.E06.Caption := NomeDisc2(6);
  Doc_AtaQR.D07.Caption := NomeDisc1(7);      Doc_AtaQR.E07.Caption := NomeDisc2(7);
  Doc_AtaQR.D08.Caption := NomeDisc1(8);      Doc_AtaQR.E08.Caption := NomeDisc2(8);
  Doc_AtaQR.D09.Caption := NomeDisc1(9);      Doc_AtaQR.E09.Caption := NomeDisc2(9);
  Doc_AtaQR.D10.Caption := NomeDisc1(10);     Doc_AtaQR.E10.Caption := NomeDisc2(10);
  Doc_AtaQR.D11.Caption := NomeDisc1(11);     Doc_AtaQR.E11.Caption := NomeDisc2(11);
  Doc_AtaQR.D12.Caption := NomeDisc1(12);     Doc_AtaQR.E12.Caption := NomeDisc2(12);
  Doc_AtaQR.D13.Caption := NomeDisc1(13);     Doc_AtaQR.E13.Caption := NomeDisc2(13);
  Doc_AtaQR.D14.Caption := NomeDisc1(14);     Doc_AtaQR.E14.Caption := NomeDisc2(14);
  Doc_AtaQR.D15.Caption := NomeDisc1(15);     Doc_AtaQR.E15.Caption := NomeDisc2(15);
  Doc_AtaQR.D16.Caption := NomeDisc1(16);     Doc_AtaQR.E16.Caption := NomeDisc2(16);
  Doc_AtaQR.D17.Caption := NomeDisc1(17);     Doc_AtaQR.E17.Caption := NomeDisc2(17);
  Doc_AtaQR.D18.Caption := NomeDisc1(18);     Doc_AtaQR.E18.Caption := NomeDisc2(18);
  Doc_AtaQR.F01.Caption := NomeDisc3(1);
  Doc_AtaQR.F02.Caption := NomeDisc3(2);
  Doc_AtaQR.F03.Caption := NomeDisc3(3);
  Doc_AtaQR.F04.Caption := NomeDisc3(4);
  Doc_AtaQR.F05.Caption := NomeDisc3(5);
  Doc_AtaQR.F06.Caption := NomeDisc3(6);
  Doc_AtaQR.F07.Caption := NomeDisc3(7);
  Doc_AtaQR.F08.Caption := NomeDisc3(8);
  Doc_AtaQR.F09.Caption := NomeDisc3(9);
  Doc_AtaQR.F10.Caption := NomeDisc3(10);
  Doc_AtaQR.F11.Caption := NomeDisc3(11);
  Doc_AtaQR.F12.Caption := NomeDisc3(12);
  Doc_AtaQR.F13.Caption := NomeDisc3(13);
  Doc_AtaQR.F14.Caption := NomeDisc3(14);
  Doc_AtaQR.F15.Caption := NomeDisc3(15);
  Doc_AtaQR.F16.Caption := NomeDisc3(16);
  Doc_AtaQR.F17.Caption := NomeDisc3(17);
  Doc_AtaQR.F18.Caption := NomeDisc3(18);
  Doc_AtaQR.C01.Caption := CHDisc(1);
  Doc_AtaQR.C02.Caption := CHDisc(2);
  Doc_AtaQR.C03.Caption := CHDisc(3);
  Doc_AtaQR.C04.Caption := CHDisc(4);
  Doc_AtaQR.C05.Caption := CHDisc(5);
  Doc_AtaQR.C06.Caption := CHDisc(6);
  Doc_AtaQR.C07.Caption := CHDisc(7);
  Doc_AtaQR.C08.Caption := CHDisc(8);
  Doc_AtaQR.C09.Caption := CHDisc(9);
  Doc_AtaQR.C10.Caption := CHDisc(10);
  Doc_AtaQR.C11.Caption := CHDisc(11);
  Doc_AtaQR.C12.Caption := CHDisc(12);
  Doc_AtaQR.C13.Caption := CHDisc(13);
  Doc_AtaQR.C14.Caption := CHDisc(14);
  Doc_AtaQR.C15.Caption := CHDisc(15);
  Doc_AtaQR.C16.Caption := CHDisc(16);
  Doc_AtaQR.C17.Caption := CHDisc(17);
  Doc_AtaQR.C18.Caption := CHDisc(18);
  Doc_AtaQR.Observacao.Lines := EdObs.Lines;
  Doc_AtaQR.Preview;
  Doc_AtaQR.Free;
end;

end.
