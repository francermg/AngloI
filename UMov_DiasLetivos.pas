unit UMov_DiasLetivos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, RXDBCtrl, Db, RxMemDS,
  IBCustomDataSet, IBQuery, Placemnt, IBStoredProc;

type
  TMov_DiasLetivos = class(TForm)
    ConsLetivo: TIBQuery;
    ConsLetivoDATA: TDateField;
    Dias: TRxMemoryData;
    DiasDATA: TDateField;
    DiasDSEM: TStringField;
    DiasDSEMNUM: TIntegerField;
    DiasLETIVO: TStringField;
    dsDias: TDataSource;
    RxDBGrid1: TRxDBGrid;
    MarcaComoLetivo: TBitBtn;
    BitBtn1: TBitBtn;
    FS1: TFormStorage;
    IncluiDiaLetivo: TIBStoredProc;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure MarcaComoLetivoClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbreDiasLetivos;
  public
    { Public declarations }
  end;

var
  Mov_DiasLetivos: TMov_DiasLetivos;

const
  DiaSemana : Array[1..7] of String = ('Domingo', 'Segunda-Feira', 'Terça-Feira',
          'Quarta-Feira', 'Quinta-Feira', 'Sexta-Feira', 'Sábado');

implementation

uses UMenu, UDM;

{$R *.DFM}

procedure TMov_DiasLetivos.AbreDiasLetivos;
var dia,mes,ano,anoP : word;
    data : double;
begin
  Dias.Open;
  Dias.EmptyTable;
  anoP := StrToInt(Principal.Ano.Caption);
  data := EncodeDate(anoP,01,01);
  DecodeDate(data,ano,mes,dia);
  while ano = anoP do begin
    Dias.Append;
    DiasDATA.Value := data;
    ConsLetivo.Close;
    ConsLetivo.ParamByName('data').Value := DiasDATA.Value;
    ConsLetivo.Open;
    if ConsLetivoDATA.IsNull then DiasLETIVO.Value := 'N'
     else DiasLETIVO.Value := 'S';
    DiasDSEMNUM.Value := DayOfWeek(data);
    DiasDSEM.Value := DiaSemana[DiasDSEMNUM.Value];
    Dias.Post;
    data := data + 1;
    DecodeDate(data,ano,mes,dia);
  end;
  Dias.First;
  RxDBGrid1.SetFocus;
end;

procedure TMov_DiasLetivos.FormShow(Sender: TObject);
begin
  AbreDiasLetivos;
end;

procedure TMov_DiasLetivos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.IBTr_ANGLO.CommitRetaining;
end;

procedure TMov_DiasLetivos.RxDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (DiasDSEMNUM.Value = 7) or (DiasDSEMNUM.Value = 1) then
    BackGround := $00B3B3FF;
  if DiasLETIVO.Value = 'S' then
    BackGround := $00C2E3BF;
end;

procedure TMov_DiasLetivos.MarcaComoLetivoClick(Sender: TObject);
begin
  ShowMessage('Pelo amor de Deus, preste atenção. Não coloque dia letivo caso houver aula normal na escola.');
    ShowMessage('Ao colocar como dia letivo o sistema não gerará falta para os alunos.');
        ShowMessage('Você seja quem for, tem certeza que quer cadastrar como dia letivo?'+#13
        +'Melhor você perguntar para o France primeiro.');
  if MessageDlg('Cadastra data como Dia Letivo? - Você tem certeza mesmo?',mtConfirmation,
     [mbNo,mbYes],0) = mrYes then begin
    IncluiDiaLetivo.ParamByName('data').Value := DiasDATA.Value;
    IncluiDiaLetivo.ExecProc;
    Dias.Edit;
    DiasLETIVO.Value := 'S';
    Dias.Post;
  end;
  RxDBGrid1.SetFocus;
end;

end.
