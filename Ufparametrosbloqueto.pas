unit Ufparametrosbloqueto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, RXSpin, Mask, ToolEdit, DateUtil, IBSQL, Db,
  IBCustomDataSet, IBQuery, ExtCtrls;

type
  Tfparametrosbloqueto = class(TForm)
    limite: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Up_st: TIBSQL;
    QBuscaBoleto: TIBQuery;
    DsBuscaBoleto: TDataSource;
    QBuscaBoletoNOSSO_NUMERO: TIntegerField;
    QBuscaBoletoALUNO: TIntegerField;
    QBuscaBoletoPARCELA: TSmallintField;
    QBuscaBoletoEMISSAO: TDateField;
    QBuscaBoletoVENCIMENTO: TDateField;
    QBuscaBoletoDATA_LIMITE: TDateField;
    QBuscaBoletoVALOR: TIBBCDField;
    QBuscaBoletoPAGAMENTO: TDateField;
    QBuscaBoletoVALOR_PAGO: TIBBCDField;
    QBuscaBoletoMENSALIDADE: TIBBCDField;
    QBuscaBoletoMATERIAL: TIBBCDField;
    QBuscaBoletoDESCONTO: TIBBCDField;
    QBuscaBoletoTIPO_PG: TSmallintField;
    QBuscaBoletoANO_DV: TIBStringField;
    QBuscaBoletoDESCONTO_ANT: TIBBCDField;
    QBuscaBoletoMENSALIDADE_ANT: TIBBCDField;
    QBuscaBoletoVALOR_ANT: TIBBCDField;
    QBuscaBoletoBAULA_AD: TIBStringField;
    QBuscaBoletoST: TIBStringField;
    QBuscaBoletoTP: TIntegerField;
    QBuscaBoletoMOTIVO: TIBStringField;
    QBuscaBoletoNEGOCIACAO: TIntegerField;
    Delete_Boleto: TIBQuery;
    Ds_DeleteBoleto: TDataSource;
    parcela: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Shape1: TShape;
    procedure limiteExit(Sender: TObject);
    procedure parcelaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fparametrosbloqueto: Tfparametrosbloqueto;
  comando, parc, dia_l : string;

implementation

uses UDM, UDM2, UMenu;

{$R *.DFM}


Procedure CopiaBoleto;
Begin
   while not fparametrosbloqueto.QBuscaBoleto.Eof do
       Begin
         dm.Bloquetos_Delete.Open;
         dm.Bloquetos_Delete.Insert;
         dm.Bloquetos_DeleteNOSSO_NUMERO.Value := fparametrosbloqueto.QBuscaBoletoNOSSO_NUMERO.Value;
         dm.Bloquetos_DeleteALUNO.Value   := fparametrosbloqueto.QBuscaBoletoALUNO.Value;
         dm.Bloquetos_DeletePARCELA.Value := fparametrosbloqueto.QBuscaBoletoPARCELA.Value;
         dm.Bloquetos_DeleteEMISSAO.Value := fparametrosbloqueto.QBuscaBoletoEMISSAO.Value;
         dm.Bloquetos_DeleteVENCIMENTO.Value := fparametrosbloqueto.QBuscaBoletoVENCIMENTO.Value;
         dm.Bloquetos_DeleteVALOR.Value  := fparametrosbloqueto.QBuscaBoletoVALOR.Value;
         dm.Bloquetos_DeletePAGAMENTO.Value := fparametrosbloqueto.QBuscaBoletoPAGAMENTO.Value;
         dm.Bloquetos_DeleteVALOR_PAGO.Value := fparametrosbloqueto.QBuscaBoletoVALOR_PAGO.Value;
         dm.Bloquetos_DeleteMENSALIDADE.Value  := fparametrosbloqueto.QBuscaBoletoMENSALIDADE.Value;
         dm.Bloquetos_DeleteMATERIAL.Value := fparametrosbloqueto.QBuscaBoletoMATERIAL.Value;
         dm.Bloquetos_DeleteDESCONTO.Value := fparametrosbloqueto.QBuscaBoletoDESCONTO.Value;
         dm.Bloquetos_DeleteTIPO_PG.Value  := fparametrosbloqueto.QBuscaBoletoTIPO_PG.Value;
         dm.Bloquetos_DeleteANO_DV.Value  := fparametrosbloqueto.QBuscaBoletoANO_DV.Value;
         dm.Bloquetos_DeleteDESCONTO_ANT.Value := fparametrosbloqueto.QBuscaBoletoDESCONTO_ANT.Value;
         dm.Bloquetos_DeleteMENSALIDADE_ANT.Value := fparametrosbloqueto.QBuscaBoletoMENSALIDADE_ANT.Value;
         dm.Bloquetos_DeleteVALOR_ANT.Value := fparametrosbloqueto.QBuscaBoletoVALOR_ANT.Value;
         dm.Bloquetos_DeleteBAULA_AD.Value := fparametrosbloqueto.QBuscaBoletoBAULA_AD.Value;
         dm.Bloquetos_DeleteST.Value := fparametrosbloqueto.QBuscaBoletoST.Value;
         dm.Bloquetos_DeleteTP.Value := fparametrosbloqueto.QBuscaBoletoTP.Value;
         dm.Bloquetos_DeleteMOTIVO.Value  := fparametrosbloqueto.QBuscaBoletoMOTIVO.Value;
         dm.Bloquetos_DeleteDATA_LIMITE.Value := fparametrosbloqueto.QBuscaBoletoDATA_LIMITE.Value;
         fparametrosbloqueto.QBuscaBoleto.Next;
       end;
       if dm.Bloquetos_Delete.State in [dsEdit, dsInsert] then
       dm.Bloquetos_Delete.Post;
end;



Procedure GeraBoletoMatriculaParametros;
var dia, mes, ano, d_dia :word;
   Begin
       DecodeDate(now, ano, mes, dia);
       dm.Bloquetos.Open;
       dm.Bloquetos.Active := True;
       dm2.iqParametros_B.Open;
       Case dm.AlunosSerie.Value of
       1: begin
            if (parc = '1') then
            begin
              DM.Bloquetos.Insert;
              dm2.sql_gen.Open;
              DM.BloquetosNOSSO_NUMERO.AsInteger := DM2.sql_genCONTADOR.Value;
              dm2.sql_gen.Close;
              DM.BloquetosALUNO.AsInteger := DM.AlunosCODIGO.AsInteger;
              DM.BloquetosPARCELA.AsInteger := StrToInt(parc);
              DM.BloquetosEMISSAO.Value := now;
              DM.BloquetosANO_DV.Value  := Copy(IntToStr(ano),3,2);
              DM.BloquetosMENSALIDADE.Value := dm.ParametrosMENSALIDADE_1.Value;
              DM.BloquetosVALOR.Value       := dm.ParametrosMENSALIDADE_1.Value;
              DM.BloquetosVALOR_ANT.Value   := dm.ParametrosMENSALIDADE_1.Value;
              DM.BloquetosDATA_LIMITE.Value := fparametrosbloqueto.limite.Date;
              if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 1 then  DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 1);
              if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 7 then  DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 2);
              DM.BloquetosVENCIMENTO.Value := fparametrosbloqueto.limite.Date + 7;
              if DayOfWeek(dm.BloquetosVENCIMENTO.Value)= 1 then  DM.BloquetosVENCIMENTO.Value := (DM.BloquetosVENCIMENTO.Value + 1);
              if DayOfWeek(dm.BloquetosVENCIMENTO.Value)= 7 then  DM.BloquetosVENCIMENTO.Value := (DM.BloquetosVENCIMENTO.Value + 2);
            end else begin
                  DM.Bloquetos.Insert; //para bloquetos de outros meses, mas sem desconto de bolsa
                  dm2.sql_gen.Open;
                  DM.BloquetosNOSSO_NUMERO.AsInteger := DM2.sql_genCONTADOR.Value;
                  dm2.sql_gen.Close;
                  DM.BloquetosALUNO.AsInteger := DM.AlunosCODIGO.AsInteger;
                  DM.BloquetosPARCELA.AsInteger := strToInt(parc);
                  DM.BloquetosEMISSAO.Value := now;
                  DM.BloquetosANO_DV.Value  := Copy(IntToStr(ano),3,2);
                  DM.BloquetosDATA_LIMITE.Value := fparametrosbloqueto.limite.Date;
                  if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 1 then  DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 1);
                  if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 7 then  DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 2);
                  DM.BloquetosVENCIMENTO.Value := fparametrosbloqueto.limite.Date + 7;
                  if (not dm.AlunosBOLSA.IsNull and (dm.AlunosBOLSA.Value > 0) and dm.BloquetosPARCELA.NewValue <> 1) then   //se tiver desconto para boletos de outros meses, e se não for de matricula
                      dm.BloquetosDESCONTO.Value := ((dm.ParametrosMENSALIDADE_1.Value * dm.AlunosBOLSA.Value)/100)  //se tem bolsa el enão tem o desconto de pontualidade
                 else
                      DM.BloquetosDESCONTO.Value := ((dm.ParametrosMENSALIDADE_1.Value * dm.ParametrosREAJUSTE_3.Value)/100); //desconto de pontualidade
                      DM.BloquetosVALOR.Value       := dm.ParametrosMENSALIDADE_1.Value;
                      DM.BloquetosMENSALIDADE.Value := dm.ParametrosMENSALIDADE_1.Value;
                      DM.BloquetosMENSALIDADE_ANT.Value := dm.ParametrosMENSALIDADE_1.Value;
                      DM.BloquetosDESCONTO_ANT.Value := ((dm.ParametrosMENSALIDADE_1.Value/100)/30);
                      dm.BloquetosVALOR_ANT.Value :=  dm.BloquetosMENSALIDADE.Value - dm.BloquetosDESCONTO.Value;

               end;
              DM.BloquetosST.Value := 'G';  //situação do bloqueto
              DM.BloquetosTP.Value := 1;    //tipo do bloqueto
              DM.Bloquetos.Post;
              DM2.iqParametros_B.Open;
              DM2.iqParametros_B.Active := True;
              dm.IBTr_ANGLO.CommitRetaining;
              dm2.TSUsuario.Commit;
          end;
       2: begin
            if (parc = '1') then  //se for boleto de matricula
            begin
              DM.Bloquetos.Insert;
              dm2.sql_gen.Open;
              DM.BloquetosNOSSO_NUMERO.AsInteger := DM2.sql_genCONTADOR.Value;
              dm2.sql_gen.Close;
              DM.BloquetosALUNO.AsInteger := DM.AlunosCODIGO.AsInteger;
              DM.BloquetosPARCELA.AsInteger := 1;
              DM.BloquetosEMISSAO.Value := now;
              DM.BloquetosANO_DV.Value  := Copy(IntToStr(ano),3,2);
              DM.BloquetosMENSALIDADE.Value := dm.ParametrosMENSALIDADE_2.Value;
              DM.BloquetosVALOR.Value       := dm.ParametrosMENSALIDADE_2.Value;
              DM.BloquetosVALOR_ANT.Value := dm.ParametrosMENSALIDADE_2.value;
              DM.BloquetosDATA_LIMITE.Value := fparametrosbloqueto.limite.Date;
              if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 1 then  DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 1);
              if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 7 then  DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 2);
              DM.BloquetosVENCIMENTO.Value := fparametrosbloqueto.limite.Date + 7;
              if DayOfWeek(dm.BloquetosVENCIMENTO.Value)= 1 then  DM.BloquetosVENCIMENTO.Value := (DM.BloquetosVENCIMENTO.Value + 1);
              if DayOfWeek(dm.BloquetosVENCIMENTO.Value)= 7 then  DM.BloquetosVENCIMENTO.Value := (DM.BloquetosVENCIMENTO.Value + 2);
              end else begin
                  DM.Bloquetos.Insert;
                  dm2.sql_gen.Open;
                  DM.BloquetosNOSSO_NUMERO.AsInteger := DM2.sql_genCONTADOR.Value;
                  dm2.sql_gen.Close;
                  DM.BloquetosALUNO.AsInteger := DM.AlunosCODIGO.AsInteger;
                  DM.BloquetosPARCELA.AsInteger := strToInt(parc);
                  DM.BloquetosEMISSAO.Value := now;
                  DM.BloquetosANO_DV.Value  := Copy(IntToStr(ano),3,2);
                  DM.BloquetosDATA_LIMITE.Value := fparametrosbloqueto.limite.Date;
                  if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 1 then  DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 1);
                  if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 7 then  DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 2);
                  DM.BloquetosVENCIMENTO.Value := fparametrosbloqueto.limite.Date + 7;
              if (not dm.AlunosBOLSA.IsNull and (dm.AlunosBOLSA.Value > 0) and dm.BloquetosPARCELA.NewValue <> 1) then
                  dm.BloquetosDESCONTO.Value := ((dm.ParametrosMENSALIDADE_2.Value * dm.AlunosBOLSA.Value)/100)
                else
                  dm.BloquetosDESCONTO.Value := ((dm.ParametrosMENSALIDADE_2.Value * dm.ParametrosREAJUSTE_3.Value)/100);
                  DM.BloquetosVALOR.Value       := dm.ParametrosMENSALIDADE_2.Value;
                  DM.BloquetosMENSALIDADE.Value := dm.ParametrosMENSALIDADE_2.Value;
                  DM.BloquetosVALOR_ANT.Value := dm.ParametrosMENSALIDADE_2.value;
                  DM.BloquetosMENSALIDADE_ANT.Value := 0;
                  DM.BloquetosDESCONTO_ANT.Value := ((dm.ParametrosMENSALIDADE_2.Value/100)/30);
                  dm.BloquetosVALOR_ANT.Value :=  dm.BloquetosMENSALIDADE.Value - dm.BloquetosDESCONTO.Value;
            end;
            DM.BloquetosST.Value := 'G';  //situação do bloqueto
            DM.BloquetosTP.Value := 1;    //tipo do bloqueto
            DM.Bloquetos.Post;
            dm.IBTr_ANGLO.CommitRetaining;
            dm2.TSUsuario.Commit;
          end;
       3: begin
            if (parc = '1') then   //se for boleto de matricula
            begin
              DM.Bloquetos.Insert;
              dm2.sql_gen.Open;
              DM.BloquetosNOSSO_NUMERO.AsInteger := DM2.sql_genCONTADOR.Value;
              dm2.sql_gen.Close;
              DM.BloquetosALUNO.AsInteger := DM.AlunosCODIGO.AsInteger;
              DM.BloquetosPARCELA.AsInteger := 1;
              DM.BloquetosEMISSAO.Value := now;
              DM.BloquetosANO_DV.Value  := Copy(IntToStr(ano),3,2);
              DM.BloquetosMENSALIDADE.Value := dm.ParametrosMENSALIDADE_3.Value;
              DM.BloquetosVALOR.Value       := dm.ParametrosMENSALIDADE_3.Value;
              DM.BloquetosVALOR_ANT.Value := dm.ParametrosMENSALIDADE_3.value;
              DM.BloquetosDATA_LIMITE.Value := fparametrosbloqueto.limite.Date;
              if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 1 then  DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 1);
              if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 7 then  DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 2);
              DM.BloquetosVENCIMENTO.Value := fparametrosbloqueto.limite.Date + 7;
              if DayOfWeek(dm.BloquetosVENCIMENTO.Value)= 1 then  DM.BloquetosVENCIMENTO.Value := (DM.BloquetosVENCIMENTO.Value + 1);
              if DayOfWeek(dm.BloquetosVENCIMENTO.Value)= 7 then  DM.BloquetosVENCIMENTO.Value := (DM.BloquetosVENCIMENTO.Value + 2);
            end else begin
                 DM.Bloquetos.Insert;
                 dm2.sql_gen.Open;
                 DM.BloquetosNOSSO_NUMERO.AsInteger := DM2.sql_genCONTADOR.Value;
                 dm2.sql_gen.Close;
                 DM.BloquetosALUNO.AsInteger := DM.AlunosCODIGO.AsInteger;
                 DM.BloquetosPARCELA.AsInteger := strToInt(parc);
                 DM.BloquetosEMISSAO.Value := now;
                 DM.BloquetosANO_DV.Value  := Copy(IntToStr(ano),3,2);
                 DM.BloquetosDATA_LIMITE.Value := fparametrosbloqueto.limite.Date;
                 if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 1 then  DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 1);
                 if DayOfWeek(dm.BloquetosDATA_LIMITE.Value)= 7 then  DM.BloquetosDATA_LIMITE.Value := (DM.BloquetosDATA_LIMITE.Value + 2);
                 DM.BloquetosVENCIMENTO.Value := fparametrosbloqueto.limite.Date + 7;
              if ((not (dm.AlunosBOLSA.IsNull)) and (dm.AlunosBOLSA.Value > 0)) then
                dm.BloquetosDESCONTO.Value := ((dm.ParametrosMENSALIDADE_3.Value * dm.AlunosBOLSA.Value)/100)
                else
                  dm.BloquetosDESCONTO.Value := ((dm.ParametrosMENSALIDADE_3.Value * dm.ParametrosREAJUSTE_3.Value)/100);
                  DM.BloquetosVALOR.Value       := dm.ParametrosMENSALIDADE_3.Value;
                  DM.BloquetosMENSALIDADE.Value := dm.ParametrosMENSALIDADE_3.Value;
                  DM.BloquetosVALOR_ANT.Value := dm.ParametrosMENSALIDADE_3.value;
                  DM.BloquetosMENSALIDADE_ANT.Value := 0;
                  DM.BloquetosDESCONTO_ANT.Value := ((dm.ParametrosMENSALIDADE_1.Value/100)/30);
                  dm.BloquetosVALOR_ANT.Value :=  dm.BloquetosMENSALIDADE.Value - dm.BloquetosDESCONTO.Value;
            end;
            DM.BloquetosST.Value := 'G';  //situação do bloqueto
            DM.BloquetosTP.Value := 1;    //tipo do bloqueto
            DM.Bloquetos.Post;
            dm.IBTr_ANGLO.CommitRetaining;
            dm2.TSUsuario.Commit;
          end;
       end; //case
      ShowMessage('Operação realizada com sucesso!!');
end;




procedure Tfparametrosbloqueto.limiteExit(Sender: TObject);
begin
  if limite.Text = '  /  /    '  then
  begin
   ShowMessage('Favor inserir a data limite!!!');
   limite.SetFocus;
  end;
end;

procedure Tfparametrosbloqueto.parcelaExit(Sender: TObject);
begin
  if parcela.Text = '' then
  Begin
     ShowMessage('Favor inserir a parcela a ser processada!!!');
     parcela.SetFocus;
  end;
end;

end.
