unit Ufremessa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, RXDBCtrl, RxLookup, Db, DateUtil,
  IBCustomDataSet, IBQuery, FileCtrl, Buttons, Mask, ToolEdit, ComCtrls,
  RxMemDS;

type
  Tfremesa = class(TForm)
    rgSL: TRadioGroup;                                                            
    lkComboNm: TRxDBLookupCombo;
    edtCD: TEdit;
    lbl1: TLabel;
    Label1: TLabel;
    Lista: TRxDBGrid;
    Label2: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dlgSave1: TSaveDialog;
    btn4: TBitBtn;
    edtFile1: TFilenameEdit;
    redt1: TRichEdit;
    procedure btn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lkComboNmChange(Sender: TObject);
    procedure ListaDblClick(Sender: TObject);
    procedure edtCDChange(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fremesa: Tfremesa;
  Qtdade : integer;
  Total : currency;

implementation

uses UDM, UDM2;

{$R *.DFM}


function RemoveAcento(Str: string): string;
const
  ComAcento = '����������������������������';

  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
   x: Integer;
begin;
  for x := 1 to Length(Str) do
  if Pos(Str[x],ComAcento) <> 0 then
    Str[x] := SemAcento[Pos(Str[x], ComAcento)];
  Result := Str;
end;





function inEspaco(str: string; tam: integer): string;
var x:integer;
begin
  for x:=0 to tam-(length(str)+1) do
  begin
    insert(' ',str,length(str)+1);
  end;
  inEspaco:=str;
end;


function DvMod11(var str0:string) : string;
const
   multiplicador : array [1..25] of integer = (2,3,4,5,6,7,8,9,2,3,4,5,6,7,8,9,2,3,4,5,6,7,8,9,0);
var
   soma,i  : integer;
begin
   soma := 0;
   str0 := Trim(str0); //Remove os espa�os em branco
   For i := 1 To Length(str0) Do
    soma := soma + (multiplicador[i]*StrToInt(str0[Length(str0)+1-i]));
    soma := 11 - (soma mod 11);//Acha o digito verificador
   if soma > 9 then soma := 0;
   result := IntToStr(soma);
end;


function cod_mes(dataatual : TDate): string;
var _ano,_mes,_dia :Word;
    i_mes          :Integer;
    i_dia          :string;
begin
  DecodeDate(Now,_ano,_mes,_dia);
  i_mes := _mes;
  i_dia := FormatFloat('00',_dia);
  case i_mes of
     1 : Result := '1'+i_dia;
     2 : Result := '2'+i_dia;
     3 : Result := '3'+i_dia;
     4 : Result := '4'+i_dia;
     5 : Result := '5'+i_dia;
     6 : Result := '6'+i_dia;
     7 : Result := '7'+i_dia;
     8 : Result := '8'+i_dia;
     9 : Result := '9'+i_dia;
     10 : Result :='O'+i_dia;
     11 : Result := 'N'+i_dia;
     12 : Result := 'D'+i_dia;
  end;
end;


procedure Tfremesa.btn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfremesa.FormShow(Sender: TObject);
var sql2 :string;
begin
  dm.Alunos.SelectSQL.Strings[3] := 'order by nome';
  dm.Alunos.Open;


sql2 := 'select Blq.*, Alu.CODIGO, Alu.NOME, Alu.FONE,';
sql2 := sql2 + 'Alu.SERIE, Alu.TURMA, Alu.BOLSA, Alu.BOLSA_AD, Alu.sacado_cpf,';
sql2 := sql2 + 'Alu.cep, Alu.sacado, Alu.endereco';
sql2 := sql2 + ' from BLOQUETOS Blq join ALUNOS Alu on Blq.Aluno=Alu.codigo';
sql2 := sql2 + ' where Alu.CODIGO = :baluno';
//sql2 := sql2 + 'where blq.nosso_numero is not null';
//sql2 := sq2 +  'where Blq.st = ''S''';

dm.BloquetosQ.Close;
dm.BloquetosQ.SQL.Clear;
dm.BloquetosQ.SQL.Add(sql2);
dm.BloquetosQ.Open;



end;

procedure Tfremesa.lkComboNmChange(Sender: TObject);
begin
  dm.BloquetosQ.Close;
  dm.BloquetosQ.Params[0].Value := dm.AlunosCODIGO.Value;
  dm.BloquetosQ.Open;
end;

procedure Tfremesa.ListaDblClick(Sender: TObject);
begin
  dm.Bloquetos.Close;
  dm.Bloquetos.SelectSQL.Strings[2] := 'where NOSSO_NUMERO = :bbloqueto';
  dm.Bloquetos.Params[0].Value := dm.BloquetosQNOSSO_NUMERO.Value;
  dm.Bloquetos.Open;
  if not (dm.BloquetosNOSSO_NUMERO.IsNull) then
  begin
    dm.Bloquetos.Edit;
    dm.BloquetosST.Value := 'S';
    dm.Bloquetos.Post;
    dm.Bloquetos.Close;
    dm.Bloquetos.SelectSQL.Strings[2] := 'where NOSSO_NUMERO > 0';
  end;
  ShowMessage('O boleto '+ dm.BloquetosQNOSSO_NUMERO.AsString +' foi selecionado para envio');
  dm.BloquetosQ.Close;
  dm.BloquetosQ.Params[0].Value := dm.AlunosCODIGO.Value;
  dm.BloquetosQ.Open;
end;

procedure Tfremesa.edtCDChange(Sender: TObject);
begin
  dm.BloquetosQ.Close;
  dm.BloquetosQ.Params[0].Value := edtCD.Text;
  dm.BloquetosQ.Open;
end;

procedure Tfremesa.btn3Click(Sender: TObject);
var i, u_dia :Integer;
    arq :TextFile;
    nomeArq, aux, _aux, _aux2, _aux3, _aux4, abatimento, NossoNumX, datalimite     :string;
    sql1, sql2, NossoNumXCompleto, cpf, w_emissao, w_valor :string;
    y_valor, w_tipo, w_st, desconto, w_inst, v_juros   :string;
    ano, mes, dia, r_ano, r_mes, r_dia, edia, emes, eano, vdia, vmes, vano :Word;
begin

w_inst:= ' ';
sql1 :=  'where (Blq.ALUNO = Alu.CODIGO) ';
sql1 := sql1 + '   and (Blq.PARCELA >= :Parc1) and (Blq.PARCELA <= :Parc2) ';
sql1 := sql1 + '   and (Blq.NOSSO_NUMERO >= :Bloq1) ';
sql1 := sql1 + '   and (Blq.NOSSO_NUMERO <= :Bloq2)';
sql1 := sql1 + '   and (Blq.ALUNO = :Aluno)';
sql1 := sql1 + '   and (Alu.SERIE = :Serie)';
sql1 := sql1 + '   and (Alu.TURMA = :Turma)   ';

dm.BloquetosQ.Close;
dm.BloquetosQ.SQL.Clear;




if (rgSL.ItemIndex = 0) then
begin
  sql2 := 'select Blq.*, Alu.CODIGO, Alu.NOME, Alu.FONE,';
  sql2 := sql2 + 'Alu.SERIE, Alu.TURMA, Alu.BOLSA, Alu.BOLSA_AD, Alu.sacado_cpf,';
  sql2 := sql2 + 'Alu.cep, Alu.sacado, Alu.endereco';
  sql2 := sql2 + ' from BLOQUETOS Blq join ALUNOS Alu on Blq.Aluno=Alu.codigo';
  sql2 := sql2 +  ' where Blq.ST = ''G'' and Blq.valor_pago is null';
  sql2 := sql2 + ' order by Alu.CODIGO, Blq.PARCELA';

  dm.BloquetosQ.Close;
  dm.BloquetosQ.SQL.Add(sql2);
  dm.BloquetosQ.Open;


  w_tipo := '01';
//  w_st := 'E';
end;
if (rgSL.ItemIndex = 1) then
begin
    sql2 := 'select Blq.*, Alu.CODIGO, Alu.NOME, Alu.FONE,';
    sql2 := sql2 + 'Alu.SERIE, Alu.TURMA, Alu.BOLSA, Alu.BOLSA_AD, Alu.sacado_cpf,';
    sql2 := sql2 + 'Alu.cep, Alu.sacado, Alu.endereco';
    sql2 := sql2 + ' from BLOQUETOS Blq join ALUNOS Alu on Blq.Aluno=Alu.codigo';
    sql2 := sql2 +  ' where ((Blq.ST = ''N'') and (Blq.valor_pago is null))';
    sql2 := sql2 + ' order by Alu.CODIGO, Blq.PARCELA';

    dm.BloquetosQ.Close;
    dm.BloquetosQ.SQL.Add(sql2);
    dm.BloquetosQ.Open;


   w_tipo := '02';
//   w_st := 'B';
end;

if (rgSL.ItemIndex = 2) then w_tipo := '06';
if (rgSL.ItemIndex = 3) then  w_tipo := '05';


if (rgSL.ItemIndex = 4) then
begin
 w_tipo := '31';
 w_inst := InputBox('Instru��o','Digite a instru��o que deseja alterar.','Instru��o.');
end;


if not (DM.BloquetosQNOSSO_NUMERO.IsNull) Then
Begin
    DecodeDate(Now, ano, mes, dia);
    DM2.iqParametros_B.Open;
    DecodeDate(dm2.iqParametros_BDATA_REMESSA.Value, r_ano, r_mes, r_dia);

    if (((ano<>r_ano) or (mes<>r_mes) or (dia<>r_dia)) or (dm2.iqParametros_BDATA_REMESSA.IsNull)) then
        Begin
      //    dm2.iqParametros_B.Open;
          dm2.iqParametros_B.Edit;
          dm2.iqParametros_BDATA_REMESSA.Value := Now;
          dm2.iqParametros_BCONT_ARQ.Value := 1;
          DM2.iqParametros_BCONT_REMESSA.Value := DM2.iqParametros_BCONT_REMESSA.Value + 1;
          dm2.iqParametros_B.Post;
        end
      else  if (((ano=r_ano) or (mes=r_mes) or (dia=r_dia)) and (not dm2.iqParametros_BDATA_REMESSA.IsNull)) then
        begin
    //      dm2.iqParametros_B.Open;
          dm2.iqParametros_B.Edit;
          dm2.iqParametros_BCONT_ARQ.Value := dm2.iqParametros_BCONT_ARQ.Value + 1;
          DM2.iqParametros_BCONT_REMESSA.Value := DM2.iqParametros_BCONT_REMESSA.Value + 1;
          dm2.iqParametros_B.Post;
        end;


      i := 2;
      if not DirectoryExists('C:\Anglo\Remessa\'+IntToStr(ano)) then
        Begin
         ForceDirectories('C:\Anglo\Remessa\'+IntToStr(ano));
         ShowMessage('Pasta C:\Anglo\Remessa\'+IntToStr(ano)+ ' criada com sucesso.');
        end;


        if (dm2.iqParametros_BCONT_ARQ.Value = 1) then  nomeArq := '26431'+ cod_mes(Now)+'.CRM'
        Else nomeArq := '26431'+ cod_mes(Now)+'.RM'+ dm2.iqParametros_BCONT_ARQ.AsString;


        dlgSave1.FileName := nomeArq;
        dlgSave1.InitialDir := 'C:\AngloII\Remessa'+IntToStr(ano);
        dlgSave1.Execute;


        AssignFile(arq, nomeArq);
        Rewrite(arq);


//Header Label
    aux := '0'+'1'+'REMESSA01COBRANCA       2643103361110000177                               748SICREDI        ';
    _aux := FormatDateTime('YYYYMMDD',Now);
    aux := aux + _aux + '        '+FormatFloat('0000000',dm2.iqParametros_BCONT_REMESSA.Value);
    aux := aux+'                                                                                           '; //91
    aux := aux+'                                                                                           '; //91
    aux := aux+'                                                                                           '; //91
    aux := aux + '2.00000001';
    Writeln(arq,aux);
//fim Header Label

//Inicio Detalhe ******************************************************************************************************

    begin
      dm.BloquetosQ.Open;
      dm.BloquetosQ.First;
      while (not dm.BloquetosQ.Eof) do
             if ((dm.BloquetosQPAGAMENTO.IsNull) and (not dm.BloquetosQSACADO_CPF.IsNull)) then  // and (dm.AlunosCODIGO.Value = 21203) se o pagamento ainda n�o foi realizado
            begin
                _aux2 := FormatDateTime('YYYYMMDD',Now);

                NossoNumX := DM.BloquetosQANO_DV.Value+'2'+FormatFloat('00000',DM.BloquetosQNOSSO_NUMERO.Value);
                NossoNumXCompleto := '0903'+'02'+'26431'+NossoNumX;
                NossoNumX := NossoNumX+DvMod11(NossoNumXCompleto);



                DecodeDate(dm.BloquetosQDATA_LIMITE.Value,ano,mes,dia);
                DecodeDate(dm.BloquetosQVENCIMENTO.Value,vano,vmes,vdia);
                u_dia := DaysPerMonth(ano,mes);
                if (dm.AlunosVENCIMENTO.IsNull) then
                   _aux3 := FormatFloat('00',dia)+FormatFloat('00',mes)+ Copy(IntToStr(ano),3,2)
                    else _aux3:= dm.AlunosVENCIMENTO.AttributeSet + FormatFloat('00',mes)+ Copy(IntToStr(ano),3,2);


               datalimite := _aux3;


                abatimento := '0000000000000'; //Valor do desconto


                _aux4 := FormatFloat('00',vdia)+FormatFloat('00',vmes)+ Copy(IntToStr(vano),3,2);

                DecodeDate(dm.BloquetosQEMISSAO.Value,eano,emes,edia);
                w_emissao := FormatFloat('00',edia)+FormatFloat('00',(emes))+Copy(IntTostr(eano),3,2);
                _aux := Copy(IntToStr(ano),3,2);


                aux := '1AAA            AAB                            ';
                //01 a 047

                aux := aux+NossoNumX;
                //048 a 056 Nosso n�mero



                cpf:= dm.BloquetosQSACADO_CPF.AsString;
                cpf := StringReplace(cpf,'.','',[rfReplaceAll]);
                cpf := StringReplace(cpf,'-','',[rfReplaceAll]);
                cpf := StringReplace(cpf,' ','',[rfReplaceAll]);
                cpf := FormatFloat('00000000000000',StrToFloat(cpf));


                w_valor := FloatToStrf(dm.BloquetosQVALOR.Value,ffCurrency,9,2);
                w_valor := StringReplace(w_valor, ',','',[rfReplaceAll]);
                w_valor := StringReplace(w_valor, '.','',[rfReplaceAll]);
                w_valor := StringReplace(w_valor, 'R$','',[rfReplaceAll]);
                w_valor := FormatFloat('0000000000000',StrToInt(w_valor));

                v_juros := FloatToStrf(dm.BloquetosQDESCONTO_ANT.Value,ffCurrency,9,2);
                v_juros := StringReplace(v_juros, ',','',[rfReplaceAll]);
                v_juros := StringReplace(v_juros, '.','',[rfReplaceAll]);
                v_juros := StringReplace(v_juros, 'R$','',[rfReplaceAll]);
                v_juros := FormatFloat('0000000000000',StrToInt(v_juros));


                y_valor := '0000000000';

                if not (dm.BloquetosQVALOR_ANT.IsNull) then
                desconto := FloatToStr(dm.BloquetosQVALOR.Value - dm.BloquetosQVALOR_ANT.Value)  //Valor do abatimento
                else desconto := '0000000000000';



                desconto := FormatFloat('#,,00.00',StrToFloat(desconto));
                desconto := StringReplace(desconto, ',','',[rfReplaceAll]);
                desconto := StringReplace(desconto, '.','',[rfReplaceAll]);
                desconto := FormatFloat('0000000000000',StrToInt(desconto));


                aux := aux + '      ';
                //Filler 057 a 062

                aux:= aux + _aux2;
                //Data da instru��o 063 a 070

                aux:= aux + w_inst;
                //campo alterado quando instru��o 31

                aux := aux + 'N B';
                //072 a 074

                aux := aux + FormatFloat('00',dm.BloquetosPARCELA.Value);
                //075 a 076 n�mero da parcela do carn�

                aux := aux + FormatFloat('00',dm.BloquetosTP.Value);
                //077 a 078 N�mero total de parcelas do carn�

                aux := aux +'    ';
                //079 a 082 Filler

                aux := aux + y_valor;
                //083 a 092 Valor de desconto por dia de antecipa��o

                aux := aux + '0200            ';
                //093 a 096 % multa por pagamento em atraso
                //097 a 108 Filler

                aux := aux + w_tipo;
                //109 a 110 Instru��o

                aux := aux +FormatFloat('0000000000',dm.BloquetosQNOSSO_NUMERO.Value);
                //111 a 120 Seu n�mero

                aux := aux + _aux4;
                //121 a 126 Data de vencimento

                aux := aux + w_valor;
                //127 a 139 Valor do titulo

                aux := aux+'         KS';
                //140 a 148 Filler; 149 a 149 esp�cie do documento; 150 a 150 Aceite do t�tulo

                aux := aux+w_emissao;
                //151 a 156 Data da emiss�o

                aux := aux + '0000';
                //157 a 158 Instru��o de protesto autom�ticao; 159 a 160 N�mero de dias protesto autom�tico
                aux := aux + '0000000000100'; //v_juros;
                //161 a 173 Valor de juros por dias de atraso

                aux := aux + datalimite;
                //174 a 179 Data limite para concess�o de desconto

      //          if dm.AlunosCODIGO.Value = 21759 then
      //            ShowMessage ('Pare');


                aux := aux + desconto;
                //180 a 192 Valor do desconto  coloque o campo desconto que � o desconto para pagar at� o dia 10
                //193 a 205 Filler


                aux := aux + '0000000000000' + abatimento + '1';
                //206 a 218 Valor do abatimento
                //219 a 219 Tipo de pessoa do pagador 1-PJ ou 2-PF

                aux := aux +'0';
                //220 a 220 Filler

                aux := aux + cpf;
                //221 a 234 cpf ou cnpj do pagador

                aux := aux+RemoveAcento(inEspaco(DM.BloquetosQSACADO.AsString,40));
                //235 a 274 Nome do pagador
               if dm.BloquetosQSACADO.Value = 'ZHEN SHAOJUAN' then
               showmessage('dndnjdnjndj');

                aux := aux+RemoveAcento(inEspaco(dm.BloquetosQENDERECO.Value,40));
                //275 a 314 Endere�o do pagador

                aux := aux+'00000000000 79824900';
                // desativei o cep do pagador e coloquei o da institui��o para ficar padr�o w_cep;
                //315 a 319 C�digo do pagador na cooperativa benefici�rio
                //320 a 325 Filler
                //326 a 326 Filler
                //327 a 334 CEP do pagador

                aux := aux + '00000';
                //335 a 339 c�digo do pagador junto ao cliente

                aux := aux+inEspaco('',55);
                //340 a 353 CPF ou CNPJ do avalista
                //354 a 394 Nome do sacador avalista

                aux:=aux+formatfloat('000000',i);
                //395 a 340 N�mero sequencial do registro


                dm.Bloquetos.Close;
                dm.Bloquetos.SelectSQL[2] := 'where nosso_numero = :bnossonumero';
                dm.Bloquetos.Params[0].Value := dm.BloquetosQNosso_Numero.value;
                dm.Bloquetos.Open;
                if not ((dm.BloquetosNOSSO_NUMERO.IsNull) and (rgSL.ItemIndex = 0)) then
                begin
                  dm.Bloquetos.Edit;
                  dm.BloquetosST.Value := 'E';
                  dm.Bloquetos.Post;
                end;
      {          if not ((dm.BloquetosNOSSO_NUMERO.IsNull) and (rgSL.ItemIndex = 1)) then
                begin
                  dm.Bloquetos.Edit;
                  dm.BloquetosST.Value := 'B';
                  dm.Bloquetos.Post;
                end;}

                writeln(arq,aux);
                inc(i);
                dm.BloquetosQ.Next;
              end;
      //        else //Fim se igual a S
             //  dm.BloquetosQ.Next;
            end;
              aux := '9174826431';
              aux := aux + '                                                   ';
              aux := aux + '                                                   ';
              aux := aux + '                                                   ';
              aux := aux + '                                                   ';
              aux := aux + '                                                   ';
              aux := aux + '                                                   ';
              aux := aux + '                                                                              ';
              aux := aux + FormatFloat('000000',i);
              Writeln(arq,aux);
              CloseFile(arq);
       end //Fim item index
else
  ShowMessage ('N�o h� boletos a serem registrados.');
end;


//Fim Detalhe ***********************************************************

{  01 Cadastro de titulos
   02 Pedido de baixa
   04 Concess�o de Abatimento
   05 Cancelamento de Abatimento Concedido
   06 Altera��o de Venciento
   09 Pedido de Protesto
   18 Sustar protesto e baixar titulo
   19 Sustar em protesto e manter em carteira
   31 Altera��o de outros dados}



procedure Tfremesa.btn1Click(Sender: TObject);
var sql, sql2 :string;
begin
  sql2 := dm.Bloquetos.SelectSQL.CommaText;
  sql := 'select * from bloquetos';
  sql := sql + ' where ALUNO = :baluno';
  sql := sql + ' order by NOSSO_NUMERO';
  if (lkComboNm.KeyValue <> null) then
  begin
    dm.Bloquetos.Close;
    dm.Bloquetos.SelectSQL.Clear;
    dm.Bloquetos.SelectSQL.CommaText := sql;
    dm.Bloquetos.Params[0].Value := dm.AlunosCODIGO.Value;
  end;
  dm.Bloquetos.Open;

  while (not dm.Bloquetos.Eof) do
  begin
    dm.Bloquetos.Edit;
    dm.BloquetosST.Value := 'E';       {'S' Gerado}
    dm.Bloquetos.Post;                 {'E' Enviado}
    dm.Bloquetos.Next;
  end;
  dm.Bloquetos.Close;
  dm.Bloquetos.Open;
  dm.BloquetosQ.Close;
  dm.BloquetosQ.Open;
//  dm.Bloquetos.SelectSQL.CommaText := sql2;  
end;

procedure Tfremesa.btn4Click(Sender: TObject);
var NLinhas,i, nosso_numerob : Integer;
    Linha  : String;
begin
  redt1.Clear;
  redt1.Lines.LoadFromFile(edtFile1.FileName);
  NLinhas := redt1.Lines.Count;
//  dm.ibRetornoMotivo.Open;
  dm.Bloquetos.Open;
  Total := 0;
  Qtdade  := 0;
  for i := 1 to (NLinhas - 2) do begin
      Linha := redt1.Lines[i];
      nosso_numerob := StrToInt(Copy(Linha,51,5));
      if (Copy(linha,14,12) = 'A00000000002') then
      Begin
        if DM.Bloquetos.Locate('NOSSO_NUMERO', VarArrayOf([nosso_numerob]), [loPartialKey]) then
          begin
             dm.Bloquetos.Edit;
            if Copy(Linha,319,10) = '3400000000' then
              dm.BloquetosMOTIVO.Value := 'Valor do abatimento maior/igual ao valor do t�tulo';
            if Copy(Linha,319,10) = '4800000000' then
               dm.BloquetosMOTIVO.Value := 'CEP irregular';
            if Copy(Linha,319,10) = '4600000000' then
               dm.BloquetosMOTIVO.Value := 'Tipo/n�mero de instru��o do pagador inv�lidos';
               dm.BloquetosST.Value := 'R';
           if Copy(Linha,319,10) = '2000000000' then
            begin
               dm.Bloquetos.Edit;
               dm.BloquetosMOTIVO.Value := 'Valor do titulo inv�lido/Bolsa 100%';
               dm.BloquetosST.Value := 'B';
            end;
           dm.Bloquetos.Post;
          end;
          { S - Gerado
            E - Enviado
            R - Retornado
            B - Bolsa 100%
          }
      end;

           inc(Qtdade);
end;
      ShowMessage('Arquivo terminou');

end;

{            dm.ibRetornoMotivo.Insert;
            dm.ibRetornoMotivoNOSSO_NUMERO.Value := StrToInt(Copy(Linha,51,5));
            dm.ibRetornoMotivoCOD_MOTIVO.Value := Copy(Linha,319,10);
            if Copy(Linha,319,10) = '3400000000' then
               dm.ibRetornoMotivoMOTIVO.Value := 'Valor do abatimento maior/igual ao valor do t�tulo';
            if Copy(Linha,319,10) = '4800000000' then
               dm.ibRetornoMotivoMOTIVO.Value := 'CEP irregular';
            if Copy(Linha,319,10) = '4600000000' then
               dm.ibRetornoMotivoMOTIVO.Value := 'Tipo/n�mero de instru��o do pagador inv�lidos';
            if Copy(Linha,319,10) = '2000000000' then
               dm.ibRetornoMotivoMOTIVO.Value := 'Valor do titulo inv�lido/Bolsa 100%';

            dm.ibRetornoMotivo.Post;
            inc(Qtdade);}

procedure Tfremesa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm2.TSUsuario.Commit;
end;

end.
