unit USelecDoc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons;

type
  TfSelcDoc = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    SpeedAdiciona: TSpeedButton;
    SpeedExclui: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedAdicionaClick(Sender: TObject);
    procedure SpeedExcluiClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSelcDoc: TfSelcDoc;

implementation

uses UDM, UDM2, UAproveitamento, Ufdocumentos_rel;

{$R *.DFM}

procedure TfSelcDoc.FormShow(Sender: TObject);
begin
  dm2.iqDocumento.Open;
  dm.Disciplinas.Open;
  dm2.iqAluDoc.Close;
  dm2.iqAluDoc.Params[0].Value := dm.AlunosCODIGO.Value;
  dm2.iqAluDoc.Open;
end;

procedure TfSelcDoc.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfSelcDoc.SpeedAdicionaClick(Sender: TObject);
begin
 Try
   dm2.iqDoc_DEv.Open;
   dm2.iqDoc_DEv.Insert;
   dm2.iqDoc_DEvCOD_ALU.Value := dm.AlunosCODIGO.Value;
   dm2.iqDoc_DEvCOD_DOC.Value := dm2.iqDocumentoCOD_DOC.Value;
   dm2.iqDoc_DEv.Post;
   dm2.iqAluDoc.Close;
   dm2.iqAluDoc.Params[0].Value := dm.AlunosCODIGO.Value;
   dm2.iqAluDoc.Open;
   dm2.iqDocumento.Next;
 Except
   On E:Exception Do Begin
        If Pos ('violation of PRIMARY or UNIQUE KEY constraint', E.Message) > 0 Then
        Begin
           ShowMessage ('Registro duplicado');
           dm2.iqAluDoc.CancelUpdates;
           dm2.iqAluDoc.Close;
           dm2.iqAluDoc.Params[0].Value := dm.AlunosCODIGO.Value;
           dm2.iqAluDoc.Open;
        End;
      End;
   End;
end;

procedure TfSelcDoc.SpeedExcluiClick(Sender: TObject);
begin
   dm2.sqlDeleteDoc.Close;
   dm2.sqlDeleteDoc.Params[0].Value := dm2.iqAluDocCOD_DOC.Value;
   dm2.sqlDeleteDoc.Params[1].Value := dm.AlunosCODIGO.Value;
   dm2.sqlDeleteDoc.ExecQuery;
   dm2.iqAluDoc.Close;
   dm2.iqAluDoc.Params[0].Value := dm.AlunosCODIGO.Value;
   dm2.iqAluDoc.Open;
   dm2.iqDoc_DEv.Close;
   dm2.iqDoc_DEv.Open;  
end;

procedure TfSelcDoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.Disciplinas.Close;
end;

procedure TfSelcDoc.BitBtn2Click(Sender: TObject);
begin
  try
    Application.CreateForm(TfDocumetos_rel, fDocumetos_rel);
    fDocumetos_rel.Rl_documentos.Preview;
  finally
    fDocumetos_rel.Destroy;
  end;
end;

end.
