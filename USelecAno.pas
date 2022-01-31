unit USelecAno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBTables, MemTable, Db, RxMemDS, Grids, DBGrids,
  RXDBCtrl, Placemnt, Mask, ToolEdit, FileCtrl, RXCtrls, Menus, IniFiles;

type
  TSelecAno = class(TForm)
    OK: TBitBtn;
    dsAnos: TDataSource;
    Grid1: TRxDBGrid;
    FS1: TFormStorage;
    Bases: TFileListBox;
    Pop1: TPopupMenu;
    Sincroniza1: TMenuItem;
    Anos: TRxMemoryData;
    AnosAno: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKClick(Sender: TObject);
    procedure Sincroniza1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelecAno: TSelecAno;
  w_anos  :string;

implementation

uses UMenu, UDM, UADM_Sincroniza, UDM2;

{$R *.DFM}

procedure TSelecAno.FormShow(Sender: TObject);
var i : Integer;
begin
  Anos.Open;
  w_anos := Principal.Ano.Caption;
  y_anos := Principal.Ano.Caption;
  Bases.Items.Clear;
  Bases.Items.add ('Anglo_2003.gdb');
  Bases.Items.add ('Anglo_2004.gdb');
  Bases.Items.add ('Anglo_2005.gdb');
  Bases.Items.add ('Anglo_2006.gdb');
  Bases.Items.add ('Anglo_2007.gdb');
  Bases.Items.add ('Anglo_2008.gdb');
  Bases.Items.add ('Anglo_2009.gdb');
  Bases.Items.Add ('Anglo_2010.gdb');
  Bases.Items.Add ('Anglo_2011.gdb');
  Bases.Items.Add ('Anglo_2012.gdb');
  Bases.Items.Add ('Anglo_2013.gdb');
  Bases.Items.Add ('Anglo_2014.gdb');
  Bases.Items.Add ('Anglo_2015.gdb');
  Bases.Items.Add ('Anglo_2016.gdb');
  Bases.Items.Add ('Anglo_2017.gdb');
  Bases.Items.Add ('Anglo_2018.gdb');
  Bases.Items.Add ('Anglo_2019.gdb');
  Bases.Items.Add ('Anglo_2020.gdb');
  Bases.Items.Add ('Anglo_2021.gdb');
  Bases.Items.Add ('Anglo_2022.gdb');

 for i := 0 to Bases.Items.Count-1 do begin
    Anos.Append;
    AnosANO.Value := StrToInt(Copy(Bases.Items.Strings[i],7,4));
    Anos.Post;
  end;
  Anos.Locate('ANO', Principal.Ano.Caption, [loPartialKey]);
end;

procedure TSelecAno.FormClose(Sender: TObject; var Action: TCloseAction);
var config  : TIniFile;
begin
  Anos.Open;
  //tem qua pegar o valor do ano que está sendo selecionado e coloca-lo aqui para pegar colocar por causa do conecta basse
  Principal.Ano.Caption := AnosAno.AsString;
if (dm.DB_ANGLO.DatabaseName = 'servidor:/Anglo/Anglo_'+w_anos+'.gdb') then
  config := TIniFile.Create('c:/Ini/Anglo.ini')
  else
  config := TIniFile.Create ('c:/Ini/Anglo.ini');
  config.WriteString('TPrincipal','Ano_Caption',Principal.Ano.Caption); //para escrever no arquivo ini o ano que deixou quando saiu do sistema.
  config.Free;
end;

procedure TSelecAno.OKClick(Sender: TObject);
begin
  Close;
end;

procedure TSelecAno.Sincroniza1Click(Sender: TObject);
begin
   Application.CreateForm(TADM_Sincroniza, ADM_Sincroniza);
  Try
   ADM_Sincroniza.ShowModal;
  Finally
   ADM_Sincroniza.Free;
  End;
end;

end.
