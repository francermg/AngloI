unit UFin_Mapa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, StdCtrls, Buttons, RxLookup;

type
  TFin_Mapa = class(TForm)
    FS1: TFormStorage;
    Label4: TLabel;
    Turma: TRxDBLookupCombo;
    Imprime: TBitBtn;
    Fecha: TBitBtn;
    Senha: TEdit;
    Entra: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImprimeClick(Sender: TObject);
    procedure TurmaChange(Sender: TObject);
    procedure EntraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fin_Mapa: TFin_Mapa;

implementation

uses UDM, URel_QRMapa_Fin;

{$R *.DFM}

procedure TFin_Mapa.FormShow(Sender: TObject);
begin
  DM.Turmas.Open;
  senha.SetFocus;
end;

procedure TFin_Mapa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.Turmas.Close;
end;

procedure TFin_Mapa.ImprimeClick(Sender: TObject);
begin
   Application.CreateForm(TRel_QRMapa_Fin, Rel_QRMapa_Fin);
  Try
   DM.MapaFin.ParamByName('serie').Value := DM.TurmasSERIE.Value;
   DM.MapaFin.ParamByName('turma').Value := DM.TurmasTURMA.Value;
   Rel_QRMapa_Fin.NomeTurma.Caption := Turma.KeyValue;
   DM.MapaFin.Open;
   DM.MapaFin.FetchAll;
   Rel_QRMapa_Fin.Preview;

  Finally
//   Rel_QRMapa_Fin.Free;
   Rel_QRMapa_Fin.Destroy;
   DM.MapaFin.Close;
  End;
end;

procedure TFin_Mapa.TurmaChange(Sender: TObject);
begin
  if Turma.KeyValue = null then Imprime.Enabled := false
   else Imprime.Enabled := true;
end;

procedure TFin_Mapa.EntraClick(Sender: TObject);
begin
  if Senha.Text <> DM.ParametrosTAXA.Value then
  begin
    MessageDlg('Senha Inválida!'+#10+#13+'Tente novamente.', mtError, [mbOK], 0);
    Senha.SetFocus; end
   else
    begin
     Label4.Enabled := True;
     Turma.Enabled := True;
     Imprime.Enabled := True;
     Label4.Visible := True;
     Turma.Visible := True;
     Imprime.Visible := True;
     Fecha.Visible := True;
     Turma.SetFocus;
     Entra.Visible := False;
     Senha.Visible := False;
  end;
end;

end.
