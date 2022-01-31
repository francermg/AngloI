unit UDoc_Medias_Anuais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, StdCtrls, RxLookup, Buttons, Placemnt,
  ExtCtrls, Grids, DBGrids;

type
  TDoc_Medias_Anuais = class(TForm)
    Fecha: TBitBtn;
    Imprime: TBitBtn;
    Turma: TRxDBLookupCombo;
    Label2: TLabel;
    FS1: TFormStorage;
    Disc: TIBQuery;
    DiscNOME_RES: TIBStringField;
    DiscCH_OFICIAL: TIntegerField;
    Tipo: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TurmaChange(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
  private
    function NomeDisc(Seq:integer) : string;
    function CHDisc(Seq:integer) : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Doc_Medias_Anuais: TDoc_Medias_Anuais;

implementation

uses UDM, UDoc_Medias_AnuaisQR;

{$R *.DFM}

function TDoc_Medias_Anuais.NomeDisc(Seq:integer) : string;
begin
  Disc.ParamByName('seq').Value := Seq;
  Disc.ParamByName('ser').Value := DM.TurmasSERIE.Value;
  Disc.Open;
  result := DiscNOME_RES.Value;
  Disc.Close;
end;

function TDoc_Medias_Anuais.CHDisc(Seq:integer) : string;
begin
  Disc.ParamByName('seq').Value := Seq;
  Disc.ParamByName('ser').Value := DM.TurmasSERIE.Value;
  Disc.Open;
  if DiscCH_OFICIAL.IsNull then result := ''
   else result := 'CH '+FormatFloat('000',DiscCH_OFICIAL.AsFloat);
  Disc.Close;
end;

procedure TDoc_Medias_Anuais.FormShow(Sender: TObject);
begin
  DM.Turmas.Open;
  DM.Disciplinas.SelectSQL.Strings[2] := 'where CODIGO = :codigo';
end;

procedure TDoc_Medias_Anuais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Turmas.Close;
  DM.NotasBim.Close;
  DM.Disciplinas.SelectSQL.Strings[2] := 'where CODIGO > 0';
end;

procedure TDoc_Medias_Anuais.TurmaChange(Sender: TObject);
begin
  if Turma.KeyValue = null then Imprime.Enabled := false
   else Imprime.Enabled := true;
end;

procedure TDoc_Medias_Anuais.ImprimeClick(Sender: TObject);
begin
  DM.MediasAno.Close;
  DM.MediasAno.ParamByName('serie').Value := DM.TurmasSERIE.Value;
  DM.MediasAno.ParamByName('turma').Value := DM.TurmasTURMA.Value;
  DM.MediasAno.Open;
  DM.MediasAno.FetchAll;
  Application.CreateForm(TDoc_Medias_AnuaisQR, Doc_Medias_AnuaisQR);
  if Tipo.ItemIndex = 0 then Doc_Medias_AnuaisQR.Titulo.Caption := 'MÉDIAS ANUAIS'
  else Doc_Medias_AnuaisQR.Titulo.Caption := 'ALUNOS EM EXAME';
  Doc_Medias_AnuaisQR.NomeTurma.Caption := IntToStr(DM.TurmasSERIE.Value)+'ª Série '+DM.TurmasTURMA.Value;
  Doc_Medias_AnuaisQR.D01.Caption := NomeDisc(1);
  Doc_Medias_AnuaisQR.D02.Caption := NomeDisc(2);
  Doc_Medias_AnuaisQR.D03.Caption := NomeDisc(3);
  Doc_Medias_AnuaisQR.D04.Caption := NomeDisc(4);
  Doc_Medias_AnuaisQR.D05.Caption := NomeDisc(5);
  Doc_Medias_AnuaisQR.D06.Caption := NomeDisc(6);
  Doc_Medias_AnuaisQR.D07.Caption := NomeDisc(7);
  Doc_Medias_AnuaisQR.D08.Caption := NomeDisc(8);
  Doc_Medias_AnuaisQR.D09.Caption := NomeDisc(9);
  Doc_Medias_AnuaisQR.D10.Caption := NomeDisc(10);
  Doc_Medias_AnuaisQR.D11.Caption := NomeDisc(11);
  Doc_Medias_AnuaisQR.D12.Caption := NomeDisc(12);
  Doc_Medias_AnuaisQR.D13.Caption := NomeDisc(13);
  Doc_Medias_AnuaisQR.D14.Caption := NomeDisc(14);
  Doc_Medias_AnuaisQR.D15.Caption := NomeDisc(15);
  Doc_Medias_AnuaisQR.D16.Caption := NomeDisc(16);
  Doc_Medias_AnuaisQR.D17.Caption := NomeDisc(17);
  Doc_Medias_AnuaisQR.D18.Caption := NomeDisc(18);
  Doc_Medias_AnuaisQR.C01.Caption := CHDisc(1);
  Doc_Medias_AnuaisQR.C02.Caption := CHDisc(2);
  Doc_Medias_AnuaisQR.C03.Caption := CHDisc(3);
  Doc_Medias_AnuaisQR.C04.Caption := CHDisc(4);
  Doc_Medias_AnuaisQR.C05.Caption := CHDisc(5);
  Doc_Medias_AnuaisQR.C06.Caption := CHDisc(6);
  Doc_Medias_AnuaisQR.C07.Caption := CHDisc(7);
  Doc_Medias_AnuaisQR.C08.Caption := CHDisc(8);
  Doc_Medias_AnuaisQR.C09.Caption := CHDisc(9);
  Doc_Medias_AnuaisQR.C10.Caption := CHDisc(10);
  Doc_Medias_AnuaisQR.C11.Caption := CHDisc(11);
  Doc_Medias_AnuaisQR.C12.Caption := CHDisc(12);
  Doc_Medias_AnuaisQR.C13.Caption := CHDisc(13);
  Doc_Medias_AnuaisQR.C14.Caption := CHDisc(14);
  Doc_Medias_AnuaisQR.C15.Caption := CHDisc(15);
  Doc_Medias_AnuaisQR.C16.Caption := CHDisc(16);
  Doc_Medias_AnuaisQR.C17.Caption := CHDisc(17);
  Doc_Medias_AnuaisQR.C18.Caption := CHDisc(18);
  Doc_Medias_AnuaisQR.Preview;
  Doc_Medias_AnuaisQR.Free;
end;

end.
