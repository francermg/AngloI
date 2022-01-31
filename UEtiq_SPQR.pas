unit UEtiq_SPQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TEtiquetas_SPQR = class(TQuickRep)
    QRBand1: TQRBand;
    QRText_SP: TQRDBText;
  private

  public

  end;

var
  Etiquetas_SPQR: TEtiquetas_SPQR;

implementation

uses UDM, UCad_Alunos;

{$R *.DFM}

end.
