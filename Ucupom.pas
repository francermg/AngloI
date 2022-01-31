unit Ucupom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RxLookup, DBCtrls;

type
  Tfcupom = class(TForm)
    lbl1: TLabel;
    btn1: TButton;
    lkComboPesqAluno: TRxDBLookupCombo;
    dbtxtNOME: TDBText;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcupom: Tfcupom;

implementation

uses UDM, UDM2;

{$R *.DFM}


procedure Imprime;
var
  Texto: TextFile;
  nrgm, nnome, ndata, ncupom :string;
  i :integer;

begin
  nrgm := IntToStr(dm2.iqAlunosCupomCODIGO.Value);
  nnome := Copy(DM2.iqAlunosCupomNOME.Value,0,8);
  ndata := DateToStr(Now);
  ncupom := FormatFloat('00000',DM2.iqCupomID_CUPOM.Value);

  for i:=0 to 1 do
    begin
    AssignFile(Texto,'LPT1:');
    Rewrite( Texto );
    Writeln(Texto);
    Writeln(Texto, nrgm + ' ' + nnome + ' ' +  ndata + ' ' + ncupom);
    CloseFile(Texto);
    Sleep(2000);
   end; //for

end;


procedure Tfcupom.btn1Click(Sender: TObject);
var ncupom :string;
begin
  DM2.iqCupom.Open;
  DM2.iqCupom.Append;
  DM2.iqCupomCODIGO.Value := DM2.iqAlunosCupomCODIGO.Value;
  DM2.iqCupomDATAREG.Value := Now;
  try
    DM2.iqCupom.Post;
    dm.IBTr_ANGLO.CommitRetaining;
    Imprime;
  except
    ShowMessage('Houve um erro na gravação, pode ser que o cupom: '+ ncupom +' tenha cadastrado.');
  end;
end;

procedure Tfcupom.FormShow(Sender: TObject);
begin
  DM2.iqAlunosCupom.Open;
  DM2.iqAlunosCupom.FetchAll;
  DM2.iqCupom.Open;
  DM2.iqCupom.FetchAll;
end;

end.
