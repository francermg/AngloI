unit Uimportadados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, Db, RxMemDS, ComCtrls, Mask, ToolEdit,
  Placemnt;

type
  Tfimportadados = class(TForm)
    bcarregar: TBitBtn;
    bimportar: TBitBtn;
    DBGrid1: TDBGrid;
    table: TRxMemoryData;
    dstable: TDataSource;
    barquivo: TFilenameEdit;
    Texto: TRichEdit;
    FormStorage1: TFormStorage;
    tablecod_municipio: TIntegerField;
    tableuf: TStringField;
    tablenome_municipio: TStringField;
    procedure bcarregarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fimportadados: Tfimportadados;

implementation

uses UDM;

{$R *.DFM}

procedure Tfimportadados.bcarregarClick(Sender: TObject);
var NumLinhas, I: Integer;
    Linha: String;
begin
  Texto.Clear;
  Texto.Lines.LoadFromFile(Barquivo.FileName);
  NumLinhas := Texto.Lines.Count - 1;
  Table.EmptyTable;
  Table.Open;
  for i := 0 to NumLinhas do begin
    Linha := Texto.Lines[i];
    if Copy(Linha,1,1) <> ' ' then begin
      Table.Append;
      tablecod_municipio.Value := StrToInt(Copy(Linha,1,7));
      tableuf.Value := Copy(Linha,27,2);
      tablenome_municipio.Value := Copy(Linha,30,30);
      Table.Post;
    end;
  end;
end;

end.
