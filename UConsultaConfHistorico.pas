unit UConsultaConfHistorico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons;

type
  TfConsultaConfHistorico = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsultaConfHistorico: TfConsultaConfHistorico;

implementation

uses UDM;

{$R *.DFM}

procedure TfConsultaConfHistorico.FormShow(Sender: TObject);
begin
  dm.QConsultaConfHistorico.Open;
end;

procedure TfConsultaConfHistorico.DBGrid1DblClick(Sender: TObject);
begin
if MessageDlg('Deseja realmente excluir essa configuração?',mtConfirmation,mbOKCancel,0) = mrOK then
begin
    dm.Qapagaconfg.Close;
    dm.Qapagaconfg.Params[0].Value := DM.QConsultaConfHistoricoCOD_FORMACAO.Value;
    dm.Qapagaconfg.Params[1].Value := DM.QConsultaConfHistoricoCOD_INTINERARIO.Value;
    dm.Qapagaconfg.Params[2].Value := DM.QConsultaConfHistoricoCOD_AREA.Value;
    dm.Qapagaconfg.Params[3].Value := DM.QConsultaConfHistoricoCOD_DISCIPLINA.Value;
    DM.Qapagaconfg.Open;
    DM.Qapagaconfg.Close;
    dm.QConsultaConfHistorico.Close;
    dm.QConsultaConfHistorico.Open;
end;
end;

end.

