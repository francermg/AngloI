{ TODO 4 -oFrance -cContrato : 
Verificar o valor da mensalidade do semi para fazer as 
alterações de valor e de data do contrato. }
unit UDoc_ContratoSemiQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, QrAngLbl, Placemnt, ECC_Extenso, ECC_Justifica, jpeg;

type
  TDoc_ContratoSemiQR = class(TQuickRep)
    Rodape: TQRBand;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    Ano: TQRLabel;
    QRRichText1: TQRRichText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    DataExt: TQRECC_DataExtenso;
    QRImage1: TQRImage;
    QRDBText9: TQRDBText;
    QRMemo1: TQRMemo;
    QRLabel3: TQRLabel;
    QRDBText10: TQRDBText;
    procedure RodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Doc_ContratoSemiQR: TDoc_ContratoSemiQR;

implementation

uses UDM, UcadParametros, UCad_Alunos, UMenu, UCad_Semi_Extensivo;

{$R *.DFM}

procedure TDoc_ContratoSemiQR.RodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Ano.Caption := 'Ano: '+Principal.Ano.Caption;
  DataExt.Data := Now;
end;

procedure TDoc_ContratoSemiQR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  Txt0 :string;
begin
if Cad_Alunos <> nil then
Begin
    if Cad_Alunos.ConsTurmaCURSINHO.Value <> 0 then
     begin
       Cad_Alunos.ConsTurma.Close;
       Cad_Alunos.ConsTurma.ParamByName('serie').Value := dm.AlunosSerie.Value;
       Cad_Alunos.ConsTurma.ParamByName('turma').Value := DM.AlunosTURMA.Value;
       Cad_Alunos.ConsTurma.Open;

          begin
              Txt0 := Doc_ContratoSemiQR.QRMemo1.Lines.Text;
              Txt0 := StringReplace(Txt0, '{parce}', '12', [rfReplaceAll]);
              Txt0 := StringReplace(Txt0, '{valor}', dm.ParametrosMENSALIDADE_4.DisplayText, [rfReplaceAll]);
              Txt0 := StringReplace(Txt0, '{mes}', 'Fevereiro', [rfReplaceAll]);
              if dm.AlunosAULA_AD.Value = 'S' then
                  Txt0 := StringReplace(Txt0, '{optante}', 'Aluno OPTANTE a sala de estudo individual.', [rfReplaceAll])
                  else
                     Txt0 := StringReplace(Txt0, '{optante}', 'Aluno NÃO OPTANTE a sala de estudo individual.', [rfReplaceAll]);

              Doc_ContratoSemiQR.QRMemo1.Lines.Text := Txt0;
          end;
    end;

   end;

end;


end.
