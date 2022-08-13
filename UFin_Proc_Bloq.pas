unit UFin_Proc_Bloq;

interface

uses
  Windows, Messages,  Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Placemnt, Gauges, Grids, DBGrids, Db,
  RxMemDS, IBCustomDataSet, IBQuery, DateUtil, SysUtils, FileCtrl;

type
  TFin_Proc_Bloq = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Gauge1: TGauge;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    FS1: TFormStorage;
    Dsserie: TDataSource;
    Qserie: TIBQuery;
    QserieTURMA: TIBStringField;
    QserieSERIE: TSmallintField;
    QserieTURMA1: TIBStringField;
    QserieSERIE1: TSmallintField;
    dsCursinho: TDataSource;
    IqCursinho: TIBQuery;
    IqCursinhoCursinho: TIntegerField;
    dlgSave1: TSaveDialog;
    DsBuscaBoleto: TDataSource;
    BuscaBoleto: TIBQuery;
    BuscaBoletoBLOQUETO_1SEM: TSmallintField;
    BuscaBoletoNOSSO_NUMERO: TIntegerField;
    BuscaBoletoALUNO: TIntegerField;
    BuscaBoletoPARCELA: TSmallintField;
    BuscaBoletoEMISSAO: TDateField;
    BuscaBoletoVENCIMENTO: TDateField;
    BuscaBoletoVALOR: TIBBCDField;
    BuscaBoletoPAGAMENTO: TDateField;
    BuscaBoletoVALOR_PAGO: TIBBCDField;
    BuscaBoletoMENSALIDADE: TIBBCDField;
    BuscaBoletoMATERIAL: TIBBCDField;
    BuscaBoletoDESCONTO: TIBBCDField;
    BuscaBoletoTIPO_PG: TSmallintField;
    BuscaBoletoANO_DV: TIBStringField;
    BuscaBoletoDESCONTO_ANT: TIBBCDField;
    BuscaBoletoMENSALIDADE_ANT: TIBBCDField;
    BuscaBoletoVALOR_ANT: TIBBCDField;
    BuscaBoletoBAULA_AD: TIBStringField;
    BuscaBoletoST: TIBStringField;
    BuscaBoletoTP: TIntegerField;
    BuscaBoletoMOTIVO: TIBStringField;
    BuscaBoletoDATA_LIMITE: TDateField;
    BuscaBoletoNEGOCIACAO: TIntegerField;
    Delete_Boleto: TIBQuery;
    DsDelete_boleto: TDataSource;
    DsUltimaParcela: TDataSource;
    UltimaParcela: TIBQuery;
    UltimaParcelaTOTAL: TSmallintField;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fin_Proc_Bloq: TFin_Proc_Bloq;

implementation

uses UDM, UMenu, UBloqueto, Ufremessa, UDM2, UCad_Alunos;

{$R *.DFM}



function RemoveAcento(Str: string): string;
const
  ComAcento = '‡‚ÍÙ˚„ı·ÈÌÛ˙Á¸¿¬ ‘€√’¡…Õ”⁄«‹';

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
   str0 := Trim(str0); //Remove os espaÁos em branco
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

procedure TFin_Proc_Bloq.FormShow(Sender: TObject);
begin
  DM.Alunos.SelectSQL.Strings[3] := 'order by serie,turma,nome';
  DM.Alunos.Open;
  DM.Bloquetos.Open;

   case DM2.qy_usuarioCODIGO.Value of
     23: BitBtn2.Enabled := True;
     6:  BitBtn2.Enabled := True;
     9:  BitBtn2.Enabled := True;
   end;
end;

procedure TFin_Proc_Bloq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Alunos.Close;
  DM.Bloquetos.Close;
end;

Procedure copiaBoleto;
Begin
   Fin_Proc_Bloq.BuscaBoleto.Close;
   Fin_Proc_Bloq.BuscaBoleto.Open;
   Fin_Proc_Bloq.BuscaBoleto.First;
   while not Fin_Proc_Bloq.BuscaBoleto.Eof do
       Begin
         dm.Bloquetos_Delete.Open;
         dm.Bloquetos_Delete.Insert;
         dm.Bloquetos_DeleteNOSSO_NUMERO.Value := Fin_Proc_Bloq.BuscaBoletoNOSSO_NUMERO.Value;
         dm.Bloquetos_DeleteALUNO.Value   := Fin_Proc_Bloq.BuscaBoletoALUNO.Value;
         dm.Bloquetos_DeletePARCELA.Value := Fin_Proc_Bloq.BuscaBoletoPARCELA.Value;
         dm.Bloquetos_DeleteEMISSAO.Value := Fin_Proc_Bloq.BuscaBoletoEMISSAO.Value;
         dm.Bloquetos_DeleteVENCIMENTO.Value := Fin_Proc_Bloq.BuscaBoletoVENCIMENTO.Value;
         dm.Bloquetos_DeleteVALOR.Value  := Fin_Proc_Bloq.BuscaBoletoVALOR.Value;
         dm.Bloquetos_DeleteMENSALIDADE.Value  := Fin_Proc_Bloq.BuscaBoletoMENSALIDADE.Value;
         dm.Bloquetos_DeleteMATERIAL.Value := Fin_Proc_Bloq.BuscaBoletoMATERIAL.Value;
         dm.Bloquetos_DeleteDESCONTO.Value := Fin_Proc_Bloq.BuscaBoletoDESCONTO.Value;
         dm.Bloquetos_DeleteANO_DV.Value  := Fin_Proc_Bloq.BuscaBoletoANO_DV.Value;
         dm.Bloquetos_DeleteDESCONTO_ANT.Value := Fin_Proc_Bloq.BuscaBoletoDESCONTO_ANT.Value;
         dm.Bloquetos_DeleteMENSALIDADE_ANT.Value := Fin_Proc_Bloq.BuscaBoletoMENSALIDADE_ANT.Value;
         dm.Bloquetos_DeleteVALOR_ANT.Value := Fin_Proc_Bloq.BuscaBoletoVALOR_ANT.Value;
         dm.Bloquetos_DeleteBAULA_AD.Value := Fin_Proc_Bloq.BuscaBoletoBAULA_AD.Value;
         dm.Bloquetos_DeleteST.Value := Fin_Proc_Bloq.BuscaBoletoST.Value;
         dm.Bloquetos_DeleteMOTIVO.Value  := Fin_Proc_Bloq.BuscaBoletoMOTIVO.Value;
         dm.Bloquetos_DeleteDATA_LIMITE.Value := Fin_Proc_Bloq.BuscaBoletoDATA_LIMITE.Value;
         Fin_Proc_Bloq.BuscaBoleto.Next;
       end;
       if dm.Bloquetos_delete.state in [dsInsert, dsEdit] then
       dm.Bloquetos_Delete.Post;
end;


procedure TFin_Proc_Bloq.BitBtn2Click(Sender: TObject);
var cont_adic,cont_alt,i, parc_ini, parc_fin, t_parcela  : integer;
    mensalidade, desconto, valor0, desc_bolsa : real;
    ano, mes, dia, agoraano, agorames, agoradia, d_dia  : Word;
    d_emissao : TDateTime;
begin
  valor0 := 0;
  Label1.Caption := 'Aguarde ... Processando';
  Label1.Show;
  DBGrid1.Enabled := false;
  DBGrid1.Hide;
  ano := 0; mes := 0; dia := 0;
  agoraano := 0; agorames := 0; agoradia := 0;
  dm2.iqParametros_B.Active := True;
  dm.Bloquetos.Last;
  desc_bolsa := 0;
  Gauge1.Progress := 0;
  DM.ContaAlunosQ.Open;
  Gauge1.MaxValue := 100;//DM.ContaAlunosQTOTALALUNOS.AsInteger;
  DM.ContaAlunosQ.Close;
  Gauge1.Show;
  cont_adic := 0; cont_alt := 0; mensalidade := 0; //Inicializa as v·riaveis com o valor 0 (zero)

// Inicio do processo
  dm.Alunos.First;
  DecodeDate(dm.AlunosDATA_MATRICULA.Value, ano, mes, dia); //Decodifica a data da matricula do aluno.
  DecodeDate(Now, agoraano, agorames, agoradia); //Decodifica a data atual


 if (dm.AlunosMES_MATERIAL.IsNull) then     //Aqui È garada a parcela inicial
   parc_ini := agorames
   else
    begin
     parc_ini := dm.AlunosMES_MATERIAL.Value;
     agorames := dm.AlunosMES_MATERIAL.Value;
    end;



While not (DM.Alunos.Eof)  do
Begin

if (dm.AlunosBLOQUETO_2SEM.IsNull) then
   t_parcela:= 12 Else
   t_parcela := dm.AlunosBLOQUETO_2SEM.Value;



          case DM.AlunosSERIE.Value of
            1 : mensalidade := DM.ParametrosMENSALIDADE_1.Value;
            2 : mensalidade := DM.ParametrosMENSALIDADE_2.Value;
            3 : mensalidade := DM.ParametrosMENSALIDADE_3.Value;
          end;


     if ((dm.AlunosBOLSA.IsNull) or (dm.AlunosBOLSA.Value = 0)) then
         desconto :=  ((mensalidade * dm.ParametrosREAJUSTE_3.Value)/100)
     else
         desconto := ((mensalidade * dm.AlunosBOLSA.Value)/100);


  if ((dm.AlunosBOLSA.Value <> 100) and (dm.AlunosBLOQUETO_1SEM.Value = 0)) then
  Begin
                inc(cont_adic); //para contar quantos boletos foram adicionados
                for i := 1 to  t_parcela do
                begin
                    dm2.sql_gen.Active := True;
                    dm2.sql_gen.Open;
                    DM.Bloquetos.Insert;
                    DM.BloquetosNOSSO_NUMERO.AsInteger := dm2.sql_genCONTADOR.Value;
                    dm2.sql_gen.Close;
                    DM.BloquetosALUNO.AsInteger := DM.AlunosCODIGO.AsInteger;
                    DM.BloquetosPARCELA.AsInteger := parc_ini;




                    d_dia := (DaysPerMonth(agoraano, parc_ini));
                    DM.BloquetosVENCIMENTO.Value := StrToDate(IntToStr(d_dia)+'/'+IntToStr(parc_ini)+'/'+IntToStr(agoraano));


                    valor0 := (mensalidade - desconto);
                    DM.BloquetosMENSALIDADE.Value := mensalidade;
                    DM.BloquetosDESCONTO.Value := desconto;   //Valor do desconto do boleto
                    DM.BloquetosEMISSAO.Value := now;
                    DM.BloquetosANO_DV.Value := copy(datetostr(now),9,2);
                    DM.BloquetosMENSALIDADE_ANT.Value := 0;   //Campo inutilizado
                    DM.BloquetosDESCONTO_ANT.Value := desc_bolsa;
                    DM.BloquetosVALOR.Value := mensalidade;      //Valor normal mais o material menos o desconto
                    DM.BloquetosVALOR_ANT.Value := valor0;  //Valor com a pontualidade mais o material
                    dm.BloquetosTP.Value := 11;
                    DM.BloquetosST.Value := 'G'; //Coloca a situaÁ„o ST sento S, para os bloquetos criados


                    if (parc_ini = 2) then
                    Begin
                      DM.BloquetosDATA_LIMITE.Value := EncodeDate(agoraano, parc_ini,20); //Data limite para pagamento de pontualidade do mÍs de fevereiro
                      if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 1 then  DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 1);
                      if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 7 then  DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 2)
                    end
                      else
                      Begin
                       DM.BloquetosDATA_LIMITE.Value := EncodeDate(agoraano, parc_ini,10); //Data limite para pagamento de pontualidade demais meses.
                       if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 1 then  DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 1);
                       if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 7 then  DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 2)
                      end;

                      if dm.Bloquetos.State in [dsInsert, dsEdit] then
                      dm.Bloquetos.Post;

                    inc(parc_ini);
                    if (parc_ini = 13) then
                    begin
                      parc_ini := 1;
                      inc(agoraano);
                    end;
                 end; //fim for
   end;
                   if dm.Bloquetos.State in [dsInsert, dsEdit] then   dm.Bloquetos.Post
                   else    DM.Alunos.Edit;

                   DM.AlunosBLOQUETO_1SEM.Value := 10;
                   DM.Alunos.Post;
                   dm.Alunos.Next;
                   Gauge1.Progress := Gauge1.Progress + 1;

        end;
        Label1.Caption := 'Terminado !!';
        Label3.Caption := 'Adicionados Bloquetos de '+inttostr(cont_adic)+' Alunos!';
        Label3.Show;
        Label4.Caption := 'Alterados Bloquetos de '+inttostr(cont_alt)+' Alunos!';
        Gauge1.Progress := 100;
        Label4.Show;
        dm.Bloquetos.Last;
        DM2.TSUsuario.Commit;
        DBGrid1.Enabled := true;
        DBGrid1.Show;
        BitBtn2.Enabled := false;
        BitBtn1.Kind := bkClose;
        BitBtn1.Caption := '&Fecha';
end;

end.

