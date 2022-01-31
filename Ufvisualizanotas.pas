unit Ufvisualizanotas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, RXDBCtrl, ExtCtrls, Db, IBCustomDataSet, IBQuery;

type
  Tfvisualizanota = class(TForm)
    dsvisualizanotas: TDataSource;
    qvisualizanotas: TIBQuery;
    qvisualizanotasCODIGO: TIntegerField;
    qvisualizanotasNOME: TIBStringField;
    qvisualizanotasNOTA1: TIBBCDField;
    qvisualizanotasNOTA2: TIBBCDField;
    qvisualizanotasNOTA3: TIBBCDField;
    qvisualizanotasNOTA4: TIBBCDField;
    qvisualizanotasNOTA5: TIBBCDField;
    qvisualizanotasNOTA6: TIBBCDField;
    qvisualizanotasNOTA: TIBBCDField;
    RxDBGrid1: TRxDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fvisualizanota: Tfvisualizanota;

implementation

uses UDM, UDM2;

{$R *.DFM}

procedure Tfvisualizanota.FormShow(Sender: TObject);
begin
  qvisualizanotas.Open;
end;

end.
 