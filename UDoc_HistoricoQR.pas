unit UDoc_HistoricoQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QrAngLbl, Db,
  IBCustomDataSet, IBQuery, ECC_Extenso, ECC_Justifica, jpeg;

type
  TDoc_HistoricoQR = class(TQuickRep)
    QRBand1: TQRBand;
    Texto: TQRMemo;
    QRLabel2: TQRLabel;
    Titulo: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
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
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRLabel5: TQRLabel;
    QRShape27: TQRShape;
    QRShape29: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    N1: TQRLabel;
    N2: TQRLabel;
    N3: TQRLabel;
    Ch1: TQRLabel;
    Ch3: TQRLabel;
    Ch2: TQRLabel;
    QRLabel6: TQRLabel;
    QRes1: TQRLabel;
    QRes2: TQRLabel;
    QRes3: TQRLabel;
    QRShape32: TQRShape;
    QRExpr3: TQRExpr;
    DataExt: TQRECC_DataExtenso;
    NascExt: TQRECC_DataExtenso;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel26: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private

  public

  end;

var
  Doc_HistoricoQR: TDoc_HistoricoQR;
  CursX : Array[1..20] of String;
  CursY : Array[1..20] of String;
  CursZ : Array[1..20] of String;  
  i : integer;

implementation

uses UDM, UCad_Alunos, UMenu;

{$R *.DFM}

procedure TDoc_HistoricoQR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if dm.AlunosCODIGO.Value = 17286 then
  begin
    QRExpr1.Expression := 'STR(960)';
    QRExpr2.Expression := 'STR(960)';
  end;
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
  CursZ[1] := 'M  ';
  CursZ[2] := 'A  ';
  CursZ[3] := 'T  ';
  CursZ[4] := 'R  ';
  CursZ[5] := 'I  ';
  CursZ[6] := 'C  ';
  CursZ[7] := 'U  ';
  CursZ[8] := 'L  ';
  CursZ[9] := 'A  ';
  CursZ[10] :='D  ';
  CursZ[11] :='O  ';
  CursZ[12] := '-  ';
  CursZ[13] := '-  ';
  CursZ[14] := '-  ';
  CursZ[15] := '-  ';
  CursZ[16] := '-  ';
  CursZ[17] := '-  ';
  CursZ[18] := '-  ';
  CursZ[19] := '-  ';
  CursZ[20] := '-  ';
  i := 1;
end;

procedure TDoc_HistoricoQR.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var Txt0,Resultado : String;
begin
  if    (Cad_Alunos.RadioGroup1.ItemIndex = 0) and (Cad_Alunos.RadioGroup2.ItemIndex = 0) then Txt0 := DM.ParametrosTEXTO_HISTORICO.Value;
  if    (Cad_Alunos.RadioGroup1.ItemIndex = 0) and (Cad_Alunos.RadioGroup2.ItemIndex = 1) then Txt0 := DM.ParametrosTEXTO_HISTORICO.Value;
  if    (Cad_Alunos.RadioGroup1.ItemIndex = 0) and (Cad_Alunos.RadioGroup2.ItemIndex = 2) then Txt0 := DM.ParametrosTEXTO_HISTORICO.Value;
  if    (Cad_Alunos.RadioGroup1.ItemIndex = 0) and (Cad_Alunos.RadioGroup2.ItemIndex = 3) then Txt0 := DM.ParametrosTEXTO_HISTORICO.Value;
  if    (Cad_Alunos.RadioGroup1.ItemIndex = 0) and (Cad_Alunos.RadioGroup2.ItemIndex = 4) then Txt0 := DM.ParametrosTEXTO_HISTORICO.Value;
  if    (Cad_Alunos.RadioGroup1.ItemIndex = 0) and (Cad_Alunos.RadioGroup2.ItemIndex = 5) then Txt0 := DM.ParametrosTEXTO_HISTORICO.Value;

  if    (Cad_Alunos.RadioGroup1.ItemIndex = 1) and (Cad_Alunos.RadioGroup2.ItemIndex = 0) then Txt0 := DM.ParametrosTEXTO_TRANSFERENCIA.Value;
  if    (Cad_Alunos.RadioGroup1.ItemIndex = 1) and (Cad_Alunos.RadioGroup2.ItemIndex = 1) then Txt0 := DM.ParametrosTEXTO_TRANSFERENCIA.Value;
  if    (Cad_Alunos.RadioGroup1.ItemIndex = 1) and (Cad_Alunos.RadioGroup2.ItemIndex = 2) then Txt0 := DM.ParametrosTEXTO_TRANSFERENCIA.Value;
  if    (Cad_Alunos.RadioGroup1.ItemIndex = 1) and (Cad_Alunos.RadioGroup2.ItemIndex = 3) then Txt0 := DM.ParametrosTEXTO_TRANSFERENCIA.Value;
  if    (Cad_Alunos.RadioGroup1.ItemIndex = 1) and (Cad_Alunos.RadioGroup2.ItemIndex = 4) then Txt0 := DM.ParametrosTEXTO_TRANSFERENCIA.Value;
  if    (Cad_Alunos.RadioGroup1.ItemIndex = 1) and (Cad_Alunos.RadioGroup2.ItemIndex = 5) then Txt0 := DM.ParametrosTEXTO_TRANSFERENCIA.Value;

  if    (Cad_Alunos.RadioGroup1.ItemIndex = 2) and (Cad_Alunos.RadioGroup2.ItemIndex = 0) then Txt0 := DM.ParametrosTEXTO_HISTORICO.Value;
  if    (Cad_Alunos.RadioGroup1.ItemIndex = 2) and (Cad_Alunos.RadioGroup2.ItemIndex = 1) then Txt0 := DM.ParametrosTEXTO_HISTORICO.Value;
  if    (Cad_Alunos.RadioGroup1.ItemIndex = 2) and (Cad_Alunos.RadioGroup2.ItemIndex = 2) then Txt0 := DM.ParametrosTEXTO_HISTORICO.Value;
  if    (Cad_Alunos.RadioGroup1.ItemIndex = 2) and (Cad_Alunos.RadioGroup2.ItemIndex = 3) then Txt0 := DM.ParametrosTEXTO_HISTORICO.Value;
  if    (Cad_Alunos.RadioGroup1.ItemIndex = 2) and (Cad_Alunos.RadioGroup2.ItemIndex = 4) then Txt0 := DM.ParametrosTEXTO_HISTORICO.Value;
  if    (Cad_Alunos.RadioGroup1.ItemIndex = 2) and (Cad_Alunos.RadioGroup2.ItemIndex = 5) then Txt0 := DM.ParametrosTEXTO_HISTORICO.Value;

  NascExt.Data := DM.AlunosNASC_DATA.Value;
  if DM.AlunosSEXO.Value = 'M' then
    case Cad_Alunos.RadioGroup2.ItemIndex of
      0 : Resultado := ' foi APROVADO';
      1 : Resultado := ' foi REPROVADO';
      2 : Resultado := ' está CURSANDO';
      3 : Resultado := ' é DESISTENTE';
      5 : Resultado := ' está MATRICULADO';
    end
   else
    case Cad_Alunos.RadioGroup2.ItemIndex of
      0 : Resultado := ' foi APROVADA';
      1 : Resultado := ' foi REPROVADA';
      2 : Resultado := ' está CURSANDO';
      3 : Resultado := ' é DESISTENTE';
      5 : Resultado := ' está MATRICULADA';
    end;


    if dm.AlunosSerie.Value = 1 then  Resultado := Resultado + ' na 1ª série do ensino médio';
    if dm.AlunosSerie.Value = 2 then  Resultado := Resultado + ' na 2ª série do ensino médio';
    if dm.AlunosSerie.Value = 3 then  Resultado := Resultado + ' na 3ª  série do ensino médio';

  Txt0 := StringReplace(Txt0, '{NOME}', DM.AlunosNOME.Value, [rfReplaceAll]);
  if  ((Doc_HistoricoQR.Titulo.Caption = 'Certificado de Conclusão') or (Doc_HistoricoQR.Titulo.Caption = 'Guia de Transferência')) then
      begin
        Txt0 := StringReplace(Txt0, '{ID}', DM.AlunosID.Value, [rfReplaceAll]);
       // Txt0 := StringReplace(Txt0, '{SERIE_EXT}', DM.AlunosSerie.AsString + 'ª'+ ' Série', [rfReplaceAll]);
        end
       else
          Txt0 := StringReplace(Txt0, '{ID}',DM.AlunosID.Value , [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{PAI_NOME}', DM.AlunosPAI_NOME.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{MAE_NOME}', DM.AlunosMAE_NOME.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{NASC_CIDADE}',
     DM.AlunosNASC_CIDADE.Value+'-'+DM.AlunosNASC_UF.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{DATA_EXTENSO}', NascExt.Caption, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{RESULTADO}', Resultado, [rfReplaceAll]);
  if DM.AlunosSEXO.Value = 'M' then
    Txt0 := StringReplace(Txt0, '{AO}', 'o', [rfReplaceAll])
   else
  Txt0 := StringReplace(Txt0, '{AO}', 'a', [rfReplaceAll]);
//  Txt0 := StringReplace(Txt0, '{SERIE_EXT}', DM.AlunosSERIE.AsString+'ª', [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '01º', '1º', [rfReplaceAll]);
  Texto.Lines.Text := Txt0;
  DataExt.Data := Cad_Alunos.DataHist.Date;
end;

procedure TDoc_HistoricoQR.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (DM.HistNotasNOTA1.IsNull) then N1.Caption := '---'
    else N1.Caption := DM.HistNotasNOTA1.DisplayText;
  if (DM.HistNotasNOTA2.IsNull) then  N2.Caption := '---'
    else N2.Caption := DM.HistNotasNOTA2.DisplayText;
  if (DM.HistNotasNOTA3.IsNull) then N3.Caption := '---'
    else N3.Caption := DM.HistNotasNOTA3.DisplayText;


  dm.Alunos.close;
  dm.Alunos.SelectSQL.Strings[2] := 'where Codigo = :Bcodigo';
  dm.Alunos.ParamByName('Bcodigo').Value := dm.HistNotasCODIGO.Value;
  dm.Alunos.Open;


  if ((dm.AlunosMOD_ESPORTIVA.Value = 'DME') and (dm.HistNotasDISCIPLINA.Value = 10)) then
  Begin
    if DM.HistNotasDISCIPLINA.Value = 10 then
       Begin
       if not dm.HistNotasNOTA1.IsNull then  N1.Caption := 'DM';
       if not dm.HistNotasNOTA2.IsNull then  N2.Caption := 'DM';
       if not dm.HistNotasNOTA3.IsNull then  N3.Caption := 'DM';
    end;
  End
  Else
    Begin
    if DM.HistNotasCH1.IsNull then
    Begin
     Ch1.Caption := '---';
    // QRExpr1.Enabled:=False;
    end
    else Ch1.Caption := DM.HistNotasCH1.DisplayText;
    if DM.HistNotasCH2.IsNull then
    Begin
       Ch2.Caption := '---';
      // QRExpr2.Enabled:=False;
    end
      else Ch2.Caption := DM.HistNotasCH2.DisplayText;
    if DM.HistNotasCH3.IsNull then
    Begin
       Ch3.Caption := '---';
  //     QRExpr3.Enabled:=False;
    end
    else Ch3.Caption := DM.HistNotasCH3.DisplayText;
    if Cad_Alunos.RadioGroup2.ItemIndex = 2 then begin
      if DM.AlunosSERIE.Value = 1 then N1.Caption := CursX[i];
      if DM.AlunosSERIE.Value = 2 then N2.Caption := CursX[i];
      if DM.AlunosSERIE.Value = 3 then N3.Caption := CursX[i];
      Inc(i); end;
    if Cad_Alunos.RadioGroup2.ItemIndex = 4 then begin
      if DM.AlunosSERIE.Value = 1 then N1.Caption := CursY[i];
      if DM.AlunosSERIE.Value = 2 then N2.Caption := CursY[i];
      if DM.AlunosSERIE.Value = 3 then N3.Caption := CursY[i];
      Inc(i); end;
    if Cad_Alunos.RadioGroup2.ItemIndex = 5 then begin
      if DM.AlunosSERIE.Value = 1 then N1.Caption := CursZ[i];
      if DM.AlunosSERIE.Value = 2 then N2.Caption := CursZ[i];
      if DM.AlunosSERIE.Value = 3 then N3.Caption := CursZ[i];
      Inc(i); end;

    If Cad_Alunos.CheckBox1.Checked = True Then
      begin
        If (DM.HistNotasNOTA1.Value <= 5) Then
          N1.Caption := 'D'; //Insufisiente
        if (DM.HistNotasNOTA1.Value > 5) and (DM.HistNotasNOTA1.Value <= 6.5) then
            N1.Caption := 'C';
        if (DM.HistNotasNOTA1.Value > 6.5) and (DM.HistNotasNOTA1.Value <= 7) then
           N1.Caption := 'S';//Mudar para B depois da Deja terminar 27/09/2005
        If (DM.HistNotasNOTA1.Value > 7) Then
            N1.Caption := 'A';
        if (DM.HistNotasNOTA1.IsNull) then
           N1.Caption := '---';
       end;
    If Cad_Alunos.CheckBox2.Checked = True Then
      begin
        If (DM.HistNotasNOTA2.Value <= 5) Then
          N2.Caption := 'D';
        if (DM.HistNotasNOTA2.Value > 5) and (DM.HistNotasNOTA2.Value <= 6.5) then
            N2.Caption := 'C';
        if (DM.HistNotasNOTA2.Value > 6.5) and (DM.HistNotasNOTA2.Value <= 7) then
           N2.Caption := 'B';
        If (DM.HistNotasNOTA2.Value > 7) Then
            N2.Caption := 'A';
        if (DM.HistNotasNOTA2.IsNull) then
           N2.Caption := '---';
       end;
    If Cad_Alunos.CheckBox3.Checked = True Then
      begin
        If (DM.HistNotasNOTA3.Value <= 5) Then
          N3.Caption := 'D';
        if (DM.HistNotasNOTA3.Value > 5) and (DM.HistNotasNOTA3.Value <= 6.5) then
            N1.Caption := 'C';
        if (DM.HistNotasNOTA3.Value > 6.5) and (DM.HistNotasNOTA3.Value <= 7) then
           N3.Caption := 'B';
        If (DM.HistNotasNOTA3.Value > 7) Then
            N3.Caption := 'A';
        if (DM.HistNotasNOTA3.IsNull) then
           N3.Caption := '---';
       end;
      if DM.AlunosSEXO.Value = 'M' then
      case Cad_Alunos.Resultado1.ItemIndex of
        0 : QRes1.Caption := ''  ;
        1 : QRes1.Caption := 'Aprovado';
        2 : QRes1.Caption := 'Reprovado ';
        3 : QRes1.Caption := 'Cursando';
        4 : QRes1.Caption := 'Matriculado';
      end
      else
      case Cad_Alunos.Resultado1.ItemIndex of
        0 : QRes1.Caption := '';
        1 : QRes1.Caption := 'Aprovada';
        2 : QRes1.Caption := 'Reprovada';
        3 : QRes1.Caption := 'Cursando';
        4 : QRes1.Caption := 'Matriculado';
      end;
      if DM.AlunosSEXO.Value = 'M' then
      case Cad_Alunos.Resultado2.ItemIndex of
        0 : QRes2.Caption := '' ;
        1 : QRes2.Caption := 'Aprovado';
        2 : QRes2.Caption := 'Reprovado';
        3 : QRes2.Caption := 'Cursando';
        4 : QRes2.Caption := 'Matriculado';
      end
      else
      case Cad_Alunos.Resultado2.ItemIndex of
        0 : QRes2.Caption := '';
        1 : QRes2.Caption := 'Aprovada';
        2 : QRes2.Caption := 'Reprovada';
        3 : QRes2.Caption := 'Cursando';
        4 : QRes2.Caption := 'Matriculado';
      end;
      if DM.AlunosSEXO.Value = 'M' then
      case Cad_Alunos.Resultado3.ItemIndex of
        0 : QRes3.Caption := ''  ;
        1 : QRes3.Caption := 'Aprovado';
        2 : QRes3.Caption := 'Reprovado';
        3 : QRes3.Caption := 'Cursando';
        4 : QRes3.Caption := 'Matriculado';
      end
      else
      case Cad_Alunos.Resultado3.ItemIndex of
        0 : QRes3.Caption := '';
        1 : QRes3.Caption := 'Aprovada';
        2 : QRes3.Caption := 'Reprovada';
        3 : QRes3.Caption := 'Cursando';
        4 : QRes3.Caption := 'Matriculado';
      end;
     End;
end;
procedure TDoc_HistoricoQR.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if QRBand2.Color = clWhite then
     QRBand2.Color := clSilver
     else
     QRBand2.Color := clWhite;
end;

end.

