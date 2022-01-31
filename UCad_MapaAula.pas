unit UCad_MapaAula;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Placemnt, RxLookup, Db, IBCustomDataSet, IBQuery,
  Grids, DBGrids, RXDBCtrl, IBStoredProc, RXCtrls;

type
  TCad_MapaAula = class(TForm)
    FS1: TFormStorage;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Turma: TRxDBLookupCombo;
    RxDBGrid1: TRxDBGrid;
    dsMAPA: TDataSource;
    MAPA: TIBQuery;
    MAPAAULA: TSmallintField;
    MAPADISC1: TIBStringField;
    MAPADISC2: TIBStringField;
    MAPADISC3: TIBStringField;
    MAPADISC4: TIBStringField;
    MAPADISC5: TIBStringField;
    MAPADISC6: TIBStringField;
    MAPADISC7: TIBStringField;
    MAPAd: TIBDataSet;
    MAPAdTUR_SERIE: TSmallintField;
    MAPAdTUR_TURMA: TIBStringField;
    MAPAdDIA_SEMANA: TSmallintField;
    MAPAdAULA: TSmallintField;
    MAPAdDIS_CODIGO: TIntegerField;
    dsMAPAd: TDataSource;
    MAPAdDisNome: TStringField;
    MAPAdDisNomeRes: TStringField;
    UltAula: TIBQuery;
    UltAulaULTIMA: TSmallintField;
    Serie: TRxLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TurmaChange(Sender: TObject);
    procedure RxDBGrid1TitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_MapaAula: TCad_MapaAula;

implementation

uses UDM, UCad_MapaAulaAlt;

{$R *.DFM}

procedure TCad_MapaAula.FormShow(Sender: TObject);
begin
  DM.Turmas.Open;
  DM.Disciplinas.SelectSQL.Strings[3] := 'order by Nome';
  DM.Disciplinas.Open;
end;

procedure TCad_MapaAula.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Turmas.Close;
  DM.Disciplinas.Close;
  DM.Disciplinas.SelectSQL.Strings[3] := 'order by Codigo';
  MAPA.Close;
end;

procedure TCad_MapaAula.TurmaChange(Sender: TObject);
begin
  MAPA.Close;
  MAPA.ParamByName('SERIE').Value := DM.TurmasSERIE.Value;
  MAPA.ParamByName('TURMA').Value := DM.TurmasTURMA.Value;
  MAPA.Open;
end;

procedure TCad_MapaAula.RxDBGrid1TitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  if ACol > 0 then begin
    Application.CreateForm(TCad_MapaAulaAlt, Cad_MapaAulaAlt);
    MAPAd.ParamByName('serie').Value := DM.TurmasSERIE.Value;
    MAPAd.ParamByName('turma').Value := DM.TurmasTURMA.Value;
    MAPAd.ParamByName('diasem').Value := Acol + 1;
    MAPAd.Open;
    UltAula.ParamByName('serie').Value := DM.TurmasSERIE.Value;
    UltAula.ParamByName('turma').Value := DM.TurmasTURMA.Value;
    UltAula.ParamByName('diasem').Value := Acol + 1;
    Cad_MapaAulaAlt.Serie.Caption := Turma.Text;
    case (ACol+1) of
      2 : Cad_MapaAulaAlt.Dia.Caption := 'Segunda-Feira';
      3 : Cad_MapaAulaAlt.Dia.Caption := 'Terça-Feira';
      4 : Cad_MapaAulaAlt.Dia.Caption := 'Quarta-Feira';
      5 : Cad_MapaAulaAlt.Dia.Caption := 'Quinta-Feira';
      6 : Cad_MapaAulaAlt.Dia.Caption := 'Sexta-Feira';
      7 : Cad_MapaAulaAlt.Dia.Caption := 'Sábado';
    end;
    Cad_MapaAulaAlt.Tag := ACol+1;
    Cad_MapaAulaAlt.ShowModal;
    Cad_MapaAulaAlt.Free;
    MAPAd.Close;
    MAPA.Close;
    MAPA.Open;
  end;
end;

end.
