unit UDoc_NotasBimestrais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, StdCtrls, RxLookup, Buttons, Placemnt,
  ExtCtrls, Grids, DBGrids;

type
  TDoc_NotasBimestrais = class(TForm)
    Fecha: TBitBtn;
    Imprime: TBitBtn;
    Turma: TRxDBLookupCombo;
    Label2: TLabel;
    FS1: TFormStorage;
    Bimestre: TRadioGroup;
    Label1: TLabel;
    Disc: TIBQuery;
    DiscNOME_RES: TIBStringField;
    Tipo: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TurmaChange(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
  private
    function NomeDisc(Seq:integer) : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Doc_NotasBimestrais: TDoc_NotasBimestrais;

implementation

uses UDM, UDoc_Notas_BimestraisQR;

{$R *.DFM}

function TDoc_NotasBimestrais.NomeDisc(Seq:integer) : string;
begin
  Disc.ParamByName('seq').Value := Seq;
  Disc.ParamByName('ser').Value := DM.TurmasSERIE.Value;
  Disc.Open;
  result := DiscNOME_RES.Value;
  Disc.Close;
end;

procedure TDoc_NotasBimestrais.FormShow(Sender: TObject);
begin
//  Disc.Active := True;
  DM.Turmas.Open;
  DM.Bimestres.SelectSQL.Strings[2] := 'where CODIGO = :codigo';
  DM.Disciplinas.SelectSQL.Strings[2] := 'where CODIGO = :codigo';
end;

procedure TDoc_NotasBimestrais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Turmas.Close;
  DM.NotasBim.Close;
  DM.Bimestres.Close;
  DM.Bimestres.SelectSQL.Strings[2] := 'where CODIGO > 0';
  DM.Disciplinas.SelectSQL.Strings[2] := 'where CODIGO > 0';
end;

procedure TDoc_NotasBimestrais.TurmaChange(Sender: TObject);
begin
  if Turma.KeyValue = null then Imprime.Enabled := false
   else Imprime.Enabled := true;
end;

procedure TDoc_NotasBimestrais.ImprimeClick(Sender: TObject);
begin
  DM.NotasBim.Close;
  DM.NotasBim.ParamByName('serie').Value := DM.TurmasSERIE.Value;
  DM.NotasBim.ParamByName('turma').Value := DM.TurmasTURMA.Value;
  DM.NotasBim.ParamByName('bimestre').Value := Bimestre.ItemIndex + 1;
  DM.NotasBim.ParamByName('tipo').Value := Tipo.ItemIndex;
  DM.NotasBim.Open;
  DM.NotasBim.FetchAll;
  DM.Bimestres.Close;
  DM.Bimestres.ParamByName('codigo').Value := Bimestre.ItemIndex+1;
  DM.Bimestres.Open;
  Application.CreateForm(TDoc_Notas_BimestraisQR, Doc_Notas_BimestraisQR);
  case Tipo.ItemIndex of
    0 : Doc_Notas_BimestraisQR.Titulo.Caption := 'NOTAS BIMESTRAIS';
    1 : Doc_Notas_BimestraisQR.Titulo.Caption := 'NOTAS DE RECUPERAÇÃO BIMESTRAL';
    2 : Doc_Notas_BimestraisQR.Titulo.Caption := 'MÉDIAS BIMESTRAIS';
  end;
  Doc_Notas_BimestraisQR.NomeTurma.Caption := IntToStr(DM.TurmasSERIE.Value)+'ª Série '+DM.TurmasTURMA.Value;
  Doc_Notas_BimestraisQR.Bimestre.Caption := IntToStr(Bimestre.ItemIndex+1)+
     'º Bimestre - De: '+DateToStr(DM.BimestresINICIO.Value)+
     ' a '+DateToStr(DM.BimestresFIM.Value);
  Doc_Notas_BimestraisQR.qrlblD01.Caption := NomeDisc(1);
  Doc_Notas_BimestraisQR.qrlblD02.Caption := NomeDisc(2);
  Doc_Notas_BimestraisQR.qrlblD03.Caption := NomeDisc(3);
  Doc_Notas_BimestraisQR.qrlblD04.Caption := NomeDisc(4);
  Doc_Notas_BimestraisQR.qrlblD05.Caption := NomeDisc(5);
  Doc_Notas_BimestraisQR.qrlblD06.Caption := NomeDisc(6);
  Doc_Notas_BimestraisQR.qrlblD07.Caption := NomeDisc(7);
  Doc_Notas_BimestraisQR.qrlblD08.Caption := NomeDisc(8);
  Doc_Notas_BimestraisQR.qrlblD09.Caption := NomeDisc(9);
  Doc_Notas_BimestraisQR.qrlblD10.Caption := NomeDisc(10);
  Doc_Notas_BimestraisQR.qrlblD11.Caption := NomeDisc(11);
  Doc_Notas_BimestraisQR.qrlblD12.Caption := NomeDisc(12);
  Doc_Notas_BimestraisQR.qrlblD13.Caption := NomeDisc(13);
  Doc_Notas_BimestraisQR.qrlblD14.Caption := NomeDisc(14);
  Doc_Notas_BimestraisQR.qrlblD15.Caption := NomeDisc(15);
  Doc_Notas_BimestraisQR.qrlblD16.Caption := NomeDisc(16);
  Doc_Notas_BimestraisQR.qrlblD17.Caption := NomeDisc(17);
  Doc_Notas_BimestraisQR.qrlblD18.Caption := NomeDisc(18);
  Doc_Notas_BimestraisQR.qrlblD19.Caption := NomeDisc(19);
  Doc_Notas_BimestraisQR.qrlblD20.Caption := NomeDisc(20);
  Doc_Notas_BimestraisQR.qrlblD21.Caption := NomeDisc(21);
  Doc_Notas_BimestraisQR.qrlblD22.Caption := NomeDisc(22);
  Doc_Notas_BimestraisQR.qrlblD23.Caption := NomeDisc(23);
  Doc_Notas_BimestraisQR.qrlblD24.Caption := NomeDisc(24);
  Doc_Notas_BimestraisQR.qrlblD25.Caption := NomeDisc(25);
  Doc_Notas_BimestraisQR.qrlblD26.Caption := NomeDisc(26);
  Doc_Notas_BimestraisQR.qrlblD27.Caption := NomeDisc(27);
  Doc_Notas_BimestraisQR.qrlblD28.Caption := NomeDisc(28);
  Doc_Notas_BimestraisQR.qrlblD29.Caption := NomeDisc(29);
  Doc_Notas_BimestraisQR.Preview;
 Doc_Notas_BimestraisQR.Free;
end;

end.
