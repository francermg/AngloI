unit UDoc_RequerimentoQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QrAngLbl, Db,
  IBCustomDataSet, IBQuery, ECC_Extenso, ECC_Justifica, jpeg;

type
  TDoc_RequerimentoQR = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel33: TQRLabel;
    QRLabel1: TQRLabel;
    Ano: TQRLabel;
    QRShape2: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText1: TQRDBText;
    QRImage1: TQRImage;
    Texto: TQRMemo;
    QRLabel7: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    educacionais: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    qrlblEx: TQRLabel;
    qrID: TQRDBText;
    qrm1: TQRMemo;
    DataExt: TQRECC_DataExtenso;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape7: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    nucleo1: TQRLabel;
    nucleo2: TQRLabel;
    nucleo3: TQRLabel;
    QRLabel15: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Doc_RequerimentoQR: TDoc_RequerimentoQR;

implementation

uses UDM, UCad_Alunos, UMenu, UDM2;

{$R *.DFM}



function RetirarEspacosExtras(var psTexto: string): string;
var
  nCont, nTamanhoDoTexto: integer;
begin
  // A função Length vai retornar o tamanho total da string do
  //parâmetro sTexto e atribuir à variável nTamanhoDoTexto
  nTamanhoDoTexto := Length(psTexto);

  // Aqui será realizado um laço de repetições até atingir o tamanho
  // total de caracteres da string. Faz-se necessário o uso de
  // laços, pois a função StringReplace ao encontrar o primeiro
  // espaço duplo, vai trocar para apenas 1 e sairá do método
  for nCont := 0 to nTamanhoDoTexto - 1 do
    psTexto := StringReplace(psTexto, '  ', ' ', [rfReplaceAll]);

  result := psTexto;
end;

procedure TDoc_RequerimentoQR.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var Txt0,PeriodoX,ceplimpo : String;
    numdoc : Integer;
begin
  numdoc := StrToInt(Principal.Ano.Caption);
  if numdoc <= 2014 then QRLabel1.Caption := 'ESCOLA DECISIVO';

  {case Cad_Alunos.ConsTurmaPERIODO.Value of
    1 : PeriodoX := 'Matutino';
    2 : PeriodoX := 'Vespertino';
    3 : PeriodoX := 'Noturno';
  end;                        }
  PeriodoX := 'Matutino';
  Ano.Caption := 'Ano: '+Principal.Ano.Caption;
  Txt0 := DM.ParametrosTEXTO_REQUERIMENTO.Value;
  if DM.AlunosSEXO.Value = 'M' then Txt0 := StringReplace(Txt0, '{ALUNO}', 'O aluno ', []);
  if DM.AlunosSEXO.Value = 'F' then Txt0 := StringReplace(Txt0, '{ALUNO}', 'A aluna ', []);
  Txt0 := StringReplace(Txt0, '{NOME}', DM2.iqRequerimentoNOME.AsString, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{NUMERO}', DM2.iqRequerimentoCODIGO.AsString, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{PAI_NOME}', DM2.iqRequerimentoPAI_NOME.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{PAI_PROFISSAO}', DM2.iqRequerimentoPAI_PROFISSAO.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{MAE_NOME}', DM2.iqRequerimentoMAE_NOME.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{MAE_PROFISSAO}', DM2.iqRequerimentoMAE_PROFISSAO.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{NASC_DATA}',   DM2.iqRequerimentoNASC_DATA.AsString, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{NASC_CIDADE}', DM2.iqRequerimentoNASC_CIDADE.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{NASC_UF}', DM2.iqRequerimentoNASC_UF.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{CIDADE}', DM2.iqRequerimentoCIDADE.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{LOG}', DM2.iqRequerimentoNOME_LOGADOURO.AsString, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{ENDERECO}', DM2.iqRequerimentoENDERECO.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{NUMERO_CASA}', DM2.iqRequerimentoNUMERO.Text, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{BAIRRO}', DM2.iqRequerimentoBAIRRO.Text, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{UF}', DM2.iqRequerimentoUF.Value, [rfReplaceAll]);
  ceplimpo :=  DM2.iqRequerimentoCEP.Text;
  ceplimpo := RetirarEspacosExtras(ceplimpo);
  Txt0 := StringReplace(Txt0, '{CEP}', ceplimpo, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{FONE}', DM2.iqRequerimentoTEL_RESIDENCIAL.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{RG}', DM2.iqRequerimentoRG.Value, [rfReplaceAll]);
  if Cad_Alunos.ConsTurmaCURSINHO.Value = 0 then
  begin
    Txt0 := StringReplace(Txt0, '{SERIE_EXT}', 'na '+DM.AlunosSERIE.AsString+'ª série do Ensino Médio', [rfReplaceAll]);
    qrlblEx.Enabled := False;
  end
   else
   begin
    Txt0 := StringReplace(Txt0, '{SERIE_EXT}', 'no Extensivo', [rfReplaceAll]);
    qrlblEx.Enabled := True;
   end;
  Txt0 := StringReplace(Txt0, '{TURNO}', PeriodoX, [rfReplaceAll]);
  Texto.Lines.Text := Txt0;
  DataExt.Data := Cad_Alunos.DataDoc.Date;
  if dm.AlunosEDU_ESPECIAL.Value ='S' Then
     educacionais.Caption := '(X) SIM     ( ) NÃO'
     Else
     educacionais.Caption := '( ) SIM     (X) NÃO';
  if (dm.AlunosINTINERARIO.Value = 1) then
  Begin
    nucleo1.Caption := '1 - NÚCLEO DE ESTUDOS EM MATEMÁTICA ';
    nucleo2.Caption := '    E CIÊNCIAS  DA  NATUREZA E SUAS ';
    nucleo3.Caption := '    TECNOLOGIAS.';
  end Else
  if dm.AlunosINTINERARIO.Value = 2 then
  Begin
    nucleo1.Caption := '2 - NÚCLEO DE ESTUDOS EM LINGUAGENS ';
    nucleo2.Caption := '    E   CIÊNCIAS   HUMANAS  E  SUAS ';
    nucleo3.Caption := '    TECNOLOGIAS.';
  End;
  if Ano.Caption <> 'Ano: 2022' then
  Begin
    nucleo1.Enabled := False;
    nucleo2.Enabled := False;
    nucleo3.Enabled := False;
    QRLabel15.Enabled := False;
  End;

end;

end.
