unit UConfigHistorico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Buttons;

type
  TfConfigHistorico = class(TForm)
    Label1: TLabel;
    formacao: TDBLookupComboBox;
    intinerario: TDBLookupComboBox;
    areaconhecimento: TDBLookupComboBox;
    disciplinas: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConfigHistorico: TfConfigHistorico;

implementation

uses UDM, UConsultaConfHistorico;

{$R *.DFM}

procedure TfConfigHistorico.FormShow(Sender: TObject);
begin
  dm.For_Int.Active := True;
 dm.Areas.Active := True;
 dm.Areas.Last;
 dm.Areas.First;
 dm.Formacao.Active := True;
 dm.Formacao.Last;
 dm.Formacao.First;
 dm.Intinerarios.Active := True;
 dm.Intinerarios.Last;
 dm.Intinerarios.First;
 dm.Disciplinas.Active := True;
 dm.Disciplinas.Last;
 dm.Disciplinas.First;
end;

procedure TfConfigHistorico.BitBtn1Click(Sender: TObject);
begin
  BitBtn2.Enabled := True;
  BitBtn4.Enabled := True;
  BitBtn1.Enabled := False;
  BitBtn5.Enabled := False;
  formacao.Enabled := True;
  intinerario.Enabled := True;
  disciplinas.Enabled := True;
  areaconhecimento.Enabled := True;
  dm.For_Int.Open;
  dm.For_Int.Append;
end;

procedure TfConfigHistorico.BitBtn2Click(Sender: TObject);
begin

  dm.For_Int.Post;
  formacao.Enabled := False;
  intinerario.Enabled := False;
  disciplinas.Enabled := False;
  areaconhecimento.Enabled := False;
  BitBtn1.Enabled := True;
  BitBtn5.Enabled := True;
  BitBtn4.Enabled := False;
  BitBtn2.Enabled := False;
  dm.QConsultaConfHistorico.Close;
  dm.QConsultaConfHistorico.Open;
  ShowMessage('Dados gravados com sucesso!!');
end;

procedure TfConfigHistorico.BitBtn4Click(Sender: TObject);
begin
  formacao.Enabled := False;
  intinerario.Enabled := False;
  disciplinas.Enabled := False;
  areaconhecimento.Enabled := False;
  BitBtn1.Enabled := True;
  BitBtn5.Enabled := True;
  BitBtn4.Enabled := False;
  BitBtn2.Enabled := False;
  dm.For_Int.CancelUpdates;
end;

procedure TfConfigHistorico.BitBtn5Click(Sender: TObject);
begin
   fConsultaConfHistorico.ShowModal;
end;

end.
