unit UCad_MapaAulaAlt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, RXDBCtrl, RXCtrls, Placemnt;

type
  TCad_MapaAulaAlt = class(TForm)
    BitBtn1: TBitBtn;
    RxDBGrid1: TRxDBGrid;
    Serie: TRxLabel;
    Dia: TRxLabel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    FS1: TFormStorage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_MapaAulaAlt: TCad_MapaAulaAlt;

implementation

uses UCad_MapaAula, UDM;

{$R *.DFM}

procedure TCad_MapaAulaAlt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Cad_MapaAula.MAPAd.Modified then Cad_MapaAula.MAPAd.Post;
end;

procedure TCad_MapaAulaAlt.BitBtn2Click(Sender: TObject);
begin
  if Cad_MapaAula.MAPAd.Modified then Cad_MapaAula.MAPAd.Post;
  Cad_MapaAula.UltAula.Open;
  if Cad_MapaAula.UltAulaULTIMA.Value < 12 then begin
    Cad_MapaAula.MAPAd.Append;
    Cad_MapaAula.MAPAdTUR_SERIE.Value := DM.TurmasSERIE.Value;
    Cad_MapaAula.MAPAdTUR_TURMA.Value := DM.TurmasTURMA.Value;
    Cad_MapaAula.MAPAdDIA_SEMANA.Value := Tag;
    Cad_MapaAula.MAPAdAULA.Value := Cad_MapaAula.UltAulaULTIMA.Value + 1;
  end;
  Cad_MapaAula.UltAula.Close;
end;

procedure TCad_MapaAulaAlt.BitBtn3Click(Sender: TObject);
begin
  if (MessageDlg('Remove Última Aula?', mtConfirmation, mbOKCancel, 0) = mrOK) then
  begin
    Cad_MapaAula.MAPAd.Last;
    Cad_MapaAula.MAPAd.Delete;
  end;
end;

end.
