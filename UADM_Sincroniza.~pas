unit UADM_Sincroniza;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Placemnt, IBSQL, IBDatabaseINI, Db, IBCustomDataSet,
  IBScript, IBDatabaseInfo, IBExtract, IBFilterDialog, IBConnectionBroker,
  ExtCtrls;

type
  TADM_Sincroniza = class(TForm)
    FS1: TFormStorage;
    Memo1: TMemo;
    Executa: TBitBtn;
    Fecha: TBitBtn;
    IBScript1: TIBScript;
    IBDInfo: TIBDatabaseInfo;
    Status: TLabel;
    Bevel1: TBevel;
    procedure ExecutaClick(Sender: TObject);
    procedure IBScript1ExecuteError(Sender: TObject; Error,
      SQLText: String; LineIndex: Integer; var Ignore: Boolean);
    procedure IBScript1ParseError(Sender: TObject; Error, SQLText: String;
      LineIndex: Integer);
    procedure SincBase;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ADM_Sincroniza: TADM_Sincroniza;

implementation

uses UDM, USelecAno;

{$R *.DFM}

//======================================================== SincronizaBase
procedure TADM_Sincroniza.SincBase;
begin
  Status.Caption := 'Sincronizando - '+ DM.DB_ANGLO.DatabaseName;
  Status.Show;
  Status.Update;
  DM.DB_ANGLO.Open;
  DM.IBTr_ANGLO.Active := true;
  IBScript1.Script.Clear;
  IBScript1.Script := Memo1.Lines;
  IBScript1.ExecuteScript;
  DM.DB_ANGLO.Close;
end;

//======================================================== Executa Script
procedure TADM_Sincroniza.ExecutaClick(Sender: TObject);
begin
  DM.DB_ANGLO.Close;
//  DM.DB_ANGLO.DatabaseName := 'servidor:/Anglo/Anglo.gdb';  Mudei aqui
    DM.DB_ANGLO.DatabaseName := 'servidor://home/francebd/Anglo/Anglo.gdb';
  SincBase;
  SelecAno.Anos.First;
  while not SelecAno.Anos.Eof do begin
//    DM.DB_ANGLO.DatabaseName := 'servidor:/Anglo/Anglo_'+  //Mudei aqui
      DM.DB_ANGLO.DatabaseName := 'servidor://home/francebd/Anglo/Anglo_'+
          IntToStr(SelecAno.AnosANO.Value)+'.gdb';
    SincBase;
    SelecAno.Anos.Next;
  end;
  MessageDlg('Terminado!',mtInformation,[mbOK],0);
end;

procedure TADM_Sincroniza.IBScript1ExecuteError(Sender: TObject; Error,
  SQLText: String; LineIndex: Integer; var Ignore: Boolean);
begin
  MessageDlg('[EXEC]: '+Error+#10+#13+
             'Sql: '+SQLText+#10+#13+
             'Linha: '+IntToStr(LineIndex)+#10+#13+
             'BASE: '+DM.DB_ANGLO.DatabaseName+#10+#13+
             'VERIFIQUE!',mtWarning, mbOKCancel, 0);
end;

procedure TADM_Sincroniza.IBScript1ParseError(Sender: TObject; Error,
  SQLText: String; LineIndex: Integer);
begin
  MessageDlg('[PARSE]: '+Error+#10+#13+
             'Sql: '+SQLText+#10+#13+
             'Linha: '+IntToStr(LineIndex)+#10+#13+
             'VERIFIQUE!',mtWarning, mbOKCancel, 0);
end;

end.
