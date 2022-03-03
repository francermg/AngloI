unit UDoc_HistAlunosQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QrAngLbl, Db,
  IBCustomDataSet, IBQuery, ECC_Extenso, ECC_Justifica, jpeg;

type
  TDoc_HistAlunosQR = class(TQuickRep)
    QRBand1: TQRBand;
    Texto: TQRMemo;
    QRLabel2: TQRLabel;
    Titulo: TQRLabel;
    QRBand3: TQRBand;
    DataExt: TQRECC_DataExtenso;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel14: TQRLabel;
    QRShape7: TQRShape;
    QRDBText8: TQRDBText;
    QRShape8: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel24: TQRLabel;
    QRShape5: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape6: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRLabel5: TQRLabel;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    N1: TQRLabel;
    N2: TQRLabel;
    N3: TQRLabel;
    Ch1: TQRLabel;
    Ch3: TQRLabel;
    Ch2: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr1: TQRExpr;
    QRShape25: TQRShape;
    NascExt: TQRECC_DataExtenso;
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape2: TQRShape;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Doc_HistAlunosQR: TDoc_HistAlunosQR;
  CursX : Array[1..20] of String;
  CursY : Array[1..20] of String;
  i : integer;

implementation

uses UDM, UMenu, UDoc_Alunos;

{$R *.DFM}

procedure TDoc_HistAlunosQR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  CursX[1] := 'C  ';
  CursX[2] := 'U  ';
  CursX[3] := 'R  ';
  CursX[4] := 'S  ';
  CursX[5] := 'A  ';
  CursX[6] := 'N  ';
  CursX[7] := 'D  ';
  CursX[8] := 'O  ';
  CursX[9] := '-  ';
  CursX[10] := '-  ';
  CursX[11] := '-  ';
  CursX[12] := '-  ';
  CursX[13] := '-  ';
  CursX[14] := '-  ';
  CursX[15] := '-  ';
  CursX[16] := '-  ';
  CursX[17] := '-  ';
  CursX[18] := '-  ';
  CursX[19] := '-  ';
  CursX[20] := '-  ';
  i := 1;
  CursY[1] := 'A  ';
  CursY[2] := 'N  ';
  CursY[3] := 'E  ';
  CursY[4] := 'X  ';
  CursY[5] := 'O  ';
  CursY[6] := 'S  ';
  CursY[7] := '-  ';
  CursY[8] := '-  ';
  CursY[9] := '-  ';
  CursY[10] := '-  ';
  CursY[11] := '-  ';
  CursY[12] := '-  ';
  CursY[13] := '-  ';
  CursY[14] := '-  ';
  CursY[15] := '-  ';
  CursY[16] := '-  ';
  CursY[17] := '-  ';
  CursY[18] := '-  ';
  CursY[19] := '-  ';
  CursY[20] := '-  ';
  i := 1;
end;

procedure TDoc_HistAlunosQR.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var Txt0,Resultado : String;
begin
  Txt0 := '';
  Txt0 := DM.ParametrosTEXTO_HISTORICO.Value;
  NascExt.Data := DM.DocAlunosNASC_DATA.Value;
  NascExt.Cidade := ' ';
  if DM.DocAlunosSEXO.Value = 'M' then
    case Doc_Alunos.RadioGroup2.ItemIndex of
      0 : Resultado := 'APROVADO';
      1 : Resultado := 'REPROVADO';
      2 : Resultado := 'CURSANDO';
      3 : Resultado := 'DESISTENTE';
    end
   else
    case Doc_Alunos.RadioGroup2.ItemIndex of
      0 : Resultado := 'APROVADA';
      1 : Resultado := 'REPROVADA';
      2 : Resultado := 'CURSANDO';
      3 : Resultado := 'DESISTENTE';
    end;


    if dm.DocAlunosSERIE.Value = 1 then  Resultado := Resultado + ' na 1ª série ';
    if dm.DocAlunosSERIE.Value = 2 then  Resultado := Resultado + ' na 2ª série ';
    if dm.DocAlunosSERIE.Value = 3 then  Resultado := Resultado + ' na 3ª Série ';


  Txt0 := StringReplace(Txt0, '{NOME}', DM.DocAlunosNOME.Value, [rfReplaceAll]);
    if  Doc_HistAlunosQR.Titulo.Caption = 'Histórico Escolar' then
       Txt0 := StringReplace(Txt0, 'ID: {ID},', '', [rfReplaceAll])
       Else
          Txt0 := StringReplace(Txt0, '{ID}', DM.DocAlunosID.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{PAI_NOME}', DM.DocAlunosPAI_NOME.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{MAE_NOME}', DM.DocAlunosMAE_NOME.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{NASC_CIDADE}',DM.DocAlunosNASC_CIDADE.Value+'-'+DM.DocAlunosNASC_UF.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{DATA_EXTENSO}', NascExt.Caption, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{RESULTADO}', Resultado, [rfReplaceAll]);
  if DM.DocAlunosSEXO.Value = 'M' then
    Txt0 := StringReplace(Txt0, '{AO}', 'o', [rfReplaceAll])
   else
    Txt0 := StringReplace(Txt0, '{AO}', 'a', [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{SERIE_EXT}', DM.DocAlunosSERIE.AsString+'ª', [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '01º', '1º', [rfReplaceAll]);
  Texto.Lines.Text := Txt0;
  DataExt.Data := Doc_Alunos.DataHist.Date;
end;

procedure TDoc_HistAlunosQR.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DM.NotasAlunosNOTA1.IsNull then N1.Caption := '---'
    else N1.Caption := DM.NotasAlunosNOTA1.DisplayText;
  if DM.NotasAlunosNOTA2.IsNull then N2.Caption := '---'
    else N2.Caption := DM.NotasAlunosNOTA2.DisplayText;
  if DM.NotasAlunosNOTA3.IsNull then N3.Caption := '---'
    else N3.Caption := DM.NotasAlunosNOTA3.DisplayText;
  if DM.NotasAlunosCH1.IsNull then Ch1.Caption := '---'
    else Ch1.Caption := DM.NotasAlunosCH1.DisplayText;
  if DM.NotasAlunosCH2.IsNull then Ch2.Caption := '---'
    else Ch2.Caption := DM.NotasAlunosCH2.DisplayText;
  if DM.NotasAlunosCH3.IsNull then Ch3.Caption := '---'
    else Ch3.Caption := DM.NotasAlunosCH3.DisplayText;
  if Doc_Alunos.RadioGroup2.ItemIndex = 2 then begin
    if DM.DocAlunosSERIE.Value = 1 then N1.Caption := CursX[i];
    if DM.DocAlunosSERIE.Value = 2 then N2.Caption := CursX[i];
    if DM.DocAlunosSERIE.Value = 3 then N3.Caption := CursX[i];
    Inc(i); end;
  if Doc_Alunos.RadioGroup2.ItemIndex = 4 then begin
    if DM.DocAlunosSERIE.Value = 1 then N1.Caption := CursY[i];
    if DM.DocAlunosSERIE.Value = 2 then N2.Caption := CursY[i];
    if DM.DocAlunosSERIE.Value = 3 then N3.Caption := CursY[i];
    Inc(i); end;
end;

end.

