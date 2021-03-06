unit UDoc_Alunos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, DBCtrls, ExtCtrls, Mask, ComCtrls, Db,
  DBTables, Gauges, RxLookup, RXSwitch, ToolEdit, CurrEdit, RXDBCtrl,
  IBCustomDataSet, IBQuery, RxDBComb, OleServer, Word97, Placemnt,
  TeEngine, Chart, Spin, IBSQL, RXCtrls;

type
  TDoc_Alunos = class(TForm)
    PageControl1: TPageControl;
    Tab1: TTabSheet;
    Tab2: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    DBEdit19: TDBEdit;
    Label19: TLabel;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    DBEdit17: TDBEdit;
    Label17: TLabel;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    Label15: TLabel;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    DBEdit21: TDBEdit;
    Label12: TLabel;
    DBEdit22: TDBEdit;
    Label22: TLabel;
    DBESerie: TDBEdit;
    DBETurma: TDBEdit;
    Label24: TLabel;
    DBEdit26: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit28: TDBEdit;
    Label27: TLabel;
    DBEdit29: TDBEdit;
    Label29: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit33: TDBEdit;
    Label33: TLabel;
    DBEdit34: TDBEdit;
    Tab3: TTabSheet;
    DBGrid1: TDBGrid;
    PesqAluno: TRxDBLookupCombo;
    Panel1: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    Nome: TEdit;
    Pesquisa: TBitBtn;
    Filtro: TRxSwitch;
    Codigo: TCurrencyEdit;
    Ordem: TRadioGroup;
    Label40: TLabel;
    DBEdit36: TDBEdit;
    Label39: TLabel;
    Label42: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label44: TLabel;
    DBText4: TDBText;
    Label45: TLabel;
    DBText5: TDBText;
    Panel2: TPanel;
    Label47: TLabel;
    Codigo2: TCurrencyEdit;
    Label48: TLabel;
    ComboStatus: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    Label21: TLabel;
    Label41: TLabel;
    CPF: TDBEdit;
    Label49: TLabel;
    DBEdit23: TDBEdit;
    Label51: TLabel;
    Tab6: TTabSheet;
    RxDBGrid3: TRxDBGrid;
    Label52: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    Label53: TLabel;
    Label54: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    Label57: TLabel;
    Label28: TLabel;
    DBMemo1: TDBMemo;
    Pai: TSpeedButton;
    Mae: TSpeedButton;
    Label30: TLabel;
    Label58: TLabel;
    ModEspCombo: TRxDBComboBox;
    Label59: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit32: TDBEdit;
    Label63: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    DBEdit35: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    Label65: TLabel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    ImpHistorico: TBitBtn;
    Label66: TLabel;
    DataHist: TDateEdit;
    Label67: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label68: TLabel;
    Label69: TLabel;
    FS1: TFormStorage;
    RadioGroup1: TRadioGroup;
    Label56: TLabel;
    DBText11: TDBText;
    RadioGroup2: TRadioGroup;
    DBText12: TDBText;
    DBEdit13: TDBEdit;
    Label70: TLabel;
    Label71: TLabel;
    DBText13: TDBText;
    Label72: TLabel;
    DBText14: TDBText;
    AnoLetivo: TEdit;
    AnoLetivoT: TLabel;
    dbedtID: TDBEdit;
    lbl1: TLabel;
    btn1: TBitBtn;
    Disc: TIBQuery;
    DiscNOME_RES: TIBStringField;
    DiscNOME_ATA_1: TIBStringField;
    DiscNOME_ATA_2: TIBStringField;
    DiscNOME_ATA_3: TIBStringField;
    DiscCH_OFICIAL: TIntegerField;
    tsdados: TTabSheet;
    edtSecretaria: TEdit;
    lbl2: TLabel;
    mmoObs: TMemo;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    bvl1: TBevel;
    DataDoc: TDateEdit;
    lbl6: TLabel;
    DBEdit9: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CodigoChange(Sender: TObject);
    procedure NomeChange(Sender: TObject);
    procedure FiltroOff(Sender: TObject);
    procedure PesquisaClick(Sender: TObject);
    procedure OrdemClick(Sender: TObject);
    procedure Label46DblClick(Sender: TObject);
    procedure AtualizaClick(Sender: TObject);
    procedure Tab5Exit(Sender: TObject);
    procedure Codigo2Change(Sender: TObject);
    procedure Codigo2Exit(Sender: TObject);
    procedure PaiClick(Sender: TObject);
    procedure MaeClick(Sender: TObject);
    procedure Tab6Show(Sender: TObject);
    procedure ImpHistoricoClick(Sender: TObject);
    procedure RxDBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure CPFExit(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    function NomeDisc1(Seq:integer) : string;
    function NomeDisc2(Seq:integer) : string;
    function NomeDisc3(Seq:integer) : string;
    function CHDisc(Seq:integer) : string;
    procedure AtualizaDocNotas;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Doc_Alunos: TDoc_Alunos;

implementation

uses UDM, UMenu, UDoc_HistAlunosQR, UDoc_CertAlunosQR, UDoc_AtaQR_Ind;

{$R *.DFM}


function TDoc_Alunos.NomeDisc1(Seq:integer) : string;
begin
  Disc.ParamByName('seq').Value := Seq;
  Disc.ParamByName('ser').Value := DM.DocAlunosSERIE.Value;
  Disc.Open;
  result := DiscNOME_ATA_1.Value;
  Disc.Close;
end;


function TDoc_Alunos.NomeDisc2(Seq:integer) : string;
begin
  Disc.ParamByName('seq').Value := Seq;
  Disc.ParamByName('ser').Value := DM.DocAlunosSERIE.Value;
  Disc.Open;
  result := DiscNOME_ATA_2.Value;
  Disc.Close;
end;

function TDoc_Alunos.NomeDisc3(Seq:integer) : string;
begin
  Disc.ParamByName('seq').Value := Seq;
  Disc.ParamByName('ser').Value := DM.DocAlunosSERIE.Value;
  Disc.Open;
  result := DiscNOME_ATA_3.Value;
  Disc.Close;
end;

function TDoc_Alunos.CHDisc(Seq:integer) : string;
begin
  Disc.ParamByName('seq').Value := Seq;
  Disc.ParamByName('ser').Value := DM.DocAlunosSERIE.Value;
  Disc.Open;
  if DiscCH_OFICIAL.IsNull then result := ''
   else result := 'CH '+FormatFloat('000',DiscCH_OFICIAL.AsFloat);
  Disc.Close;
end;




//============================================================== SHOW / CLOSE
procedure TDoc_Alunos.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DM.DocAlunos.SelectSQL.Strings[3] := 'order by nome';
  DM.Turmas.Open;
  DM.NotasAlunos.Open;
  DM.DocAlunos.Open;
  DM.Total.Open;
  DM.AlunosT.Open;
end;

procedure TDoc_Alunos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.DocAlunos.Modified then DM.DocAlunos.Post;
  if dm.TotAl.State in [dsEdit, dsInsert] Then  DM.TotAl.Close;
  DM.DocAlunos.Close;
  DM.Turmas.Close;
  DM.Grade.Close;
  DM.NotasAlunos.Close;
  DM.AlunosT.Close;
  DM.IBTr_Anglo.CommitRetaining;
  DM.DocAlunos.SelectSQL.Strings[0] := 'select *';
  DM.DocAlunos.SelectSQL.Strings[1] := 'from DOC_ALUNOS';
  DM.DocAlunos.SelectSQL.Strings[2] := 'where Codigo > 0';
  DM.DocAlunos.SelectSQL.Strings[3] := 'order by Codigo';
end;



//==================================================================== GERAL
procedure TDoc_Alunos.FormKeyPress(Sender: TObject; var Key: Char);
begin
{  if Key = #13 then begin
     Perform(WM_NextDlgCtl,0,0);   Key := #0;
  end;}
end;

procedure TDoc_Alunos.OrdemClick(Sender: TObject);
begin
  if Ordem.ItemIndex = 0 then
     DM.DocAlunos.SelectSQL.Strings[3] := 'order by codigo'
   else DM.DocAlunos.SelectSQL.Strings[3] := 'order by nome';
  Filtro.StateOn := false;
  DM.DocAlunos.Close;  DM.DocAlunos.Open;
end;

procedure TDoc_Alunos.PaiClick(Sender: TObject);
begin
  if DM.DocAlunos.State = dsBrowse then DM.DocAlunos.Edit;
  DM.DocAlunosSACADO.Value := DM.DocAlunosPAI_NOME.Value;
end;

procedure TDoc_Alunos.MaeClick(Sender: TObject);
begin
  if DM.DocAlunos.State = dsBrowse then DM.DocAlunos.Edit;
  DM.DocAlunosSACADO.Value := DM.DocAlunosMAE_NOME.Value;
end;

//====================================================== TELA DE DADOS PESSOAIS
procedure TDoc_Alunos.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  BitBtn1.SetFocus;
  if Button = nbInsert then begin
    PageControl1.ActivePageIndex := 0;
    DBEdit2.Enabled := True;
    DBEdit1.SetFocus;
  end;
  if Button in [nbNext,nbPrior,nbFirst,nbLast] then begin
    PesqAluno.ResetField;
  end;
  if (Button in [nbNext,nbPrior,nbFirst,nbLast]) and
     (PageControl1.ActivePageIndex = 5) then begin
     AtualizaDocNotas;
  end;
  if (Button in [nbEdit]) then begin
     DBEdit2.Enabled := True;
  end;
end;


//==================================================================== CONSULTA
procedure TDoc_Alunos.CodigoChange(Sender: TObject);
begin
  if Codigo.Text <> '' then begin
    Nome.Clear;
    DM.DocAlunos.SelectSQL.Strings[2] := 'where Codigo = :codigodoc';
    DM.DocAlunos.ParamByName('codigodoc').AsInteger := StrToInt(Codigo.Text);
    DM.DocAlunos.Close;  DM.DocAlunos.Open;
    Filtro.StateOn := true;
  end;
end;

procedure TDoc_Alunos.Codigo2Change(Sender: TObject);
begin
  if Codigo2.Text <> '' then begin
    DM.DocAlunos.SelectSQL.Strings[2] := 'where Codigo = :codigodoc';
    DM.DocAlunos.ParamByName('codigodoc').AsInteger := StrToInt(Codigo2.Text);
    DM.DocAlunos.Close;  DM.DocAlunos.Open;
    Filtro.StateOn := true;
  end;
end;

procedure TDoc_Alunos.NomeChange(Sender: TObject);
begin
  if Nome.Text <> '' then begin
    Codigo.Clear;
    DM.DocAlunos.SelectSQL.Strings[2] := 'where Nome starting with :nome';
    DM.DocAlunos.ParamByName('nome').AsString := Nome.Text;
    DM.DocAlunos.Close;  DM.DocAlunos.Open;
    Filtro.StateOn := true;
  end;
end;

procedure TDoc_Alunos.PesquisaClick(Sender: TObject);
begin
  Codigo.Clear;
  DM.DocAlunos.SelectSQL.Strings[2] := 'where upper(nome) like upper(:nome)';
  DM.DocAlunos.ParamByName('nome').AsString := '%'+Nome.Text+'%';
  DM.DocAlunos.Close;  DM.DocAlunos.Open;
  Filtro.StateOn := true;
end;

procedure TDoc_Alunos.FiltroOff(Sender: TObject);
begin
  Codigo.Clear;  Nome.Clear;  Codigo2.Clear;
  DM.DocAlunos.SelectSQL.Strings[2] := 'where Codigo > 0';
  DM.DocAlunos.Close;  DM.DocAlunos.Open;
end;



procedure TDoc_Alunos.Label46DblClick(Sender: TObject);
begin
  DM.DocAlunos.FetchAll;
  DM.DocAlunos.First;
  while not DM.DocAlunos.Eof do begin
    DM.DocAlunos.Edit;
    DM.DocAlunosSENHA.Value := DM.Senha;
    DM.DocAlunos.Post;
    DM.DocAlunos.Next;
  end;
end;


procedure TDoc_Alunos.AtualizaClick(Sender: TObject);
begin
  if DM.AlunosT.Modified = true then DM.AlunosT.Post;
  DM.AlunosT.Close;
  DM.AlunosT.Open;
  DM.AlunosT.FetchAll;
end;

procedure TDoc_Alunos.Tab5Exit(Sender: TObject);
begin
  if DM.AlunosT.Modified = true then DM.AlunosT.Post;
end;

procedure TDoc_Alunos.Codigo2Exit(Sender: TObject);
begin
  Codigo2.Clear;
end;

//=================================================================== HIST?RICO

procedure TDoc_Alunos.AtualizaDocNotas;
begin
  DataHist.Date := now;
  DM.NotasAlunos.Close;
  DM.NotasAlunos.ParamByName('codigo').Value := DM.DocAlunosCODIGO.Value;
  DM.NotasAlunos.Open;
  DM.NotasAlunos.FetchAll;
  if DM.NotasAlunosCODIGO.IsNull then begin
    DM.Grade.Close;
    DM.Grade.SelectSQL.Strings[2] := 'where SERIE = :serie and TIPO<>''NO''';
    DM.Grade.ParamByName('serie').AsInteger := DM.DocAlunosSERIE.Value;
    DM.Grade.Open;
    while not DM.Grade.eof do begin
      DM.NotasAlunos.Insert;
      DM.NotasAlunosCODIGO.Value := DM.DocAlunosCODIGO.Value;
      DM.NotasAlunosDISCIPLINA.Value := DM.GradeDISCIPLINA.Value;
      case DM.DocAlunosSERIE.Value of
        1 : begin
              DM.NotasAlunosNOTA1.Value := 0;
              DM.NotasAlunosCH1.Value := DM.GradeCH_OFICIAL.Value;
            end;
        2 : begin
              DM.NotasAlunosNOTA2.Value := 0;
              DM.NotasAlunosCH2.Value := DM.GradeCH_OFICIAL.Value;
            end;
        3 : begin
              DM.NotasAlunosNOTA3.Value := 0;
              DM.NotasAlunosCH3.Value := DM.GradeCH_OFICIAL.Value;
            end;
      end;
      DM.NotasAlunos.Post;
      DM.Grade.Next;
    end;
  end;
  DM.NotasAlunos.First;
end;

procedure TDoc_Alunos.Tab6Show(Sender: TObject);
begin
  if DM.DocAlunos.State = dsEdit then
  DM.DocAlunos.Post;
  DataHist.Date := now;
  DataDoc.Date := Now;
  AtualizaDocNotas;
end;

procedure TDoc_Alunos.ImpHistoricoClick(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0 : begin
          Application.CreateForm(TDoc_HistAlunosQR, Doc_HistAlunosQR);
          Doc_HistAlunosQR.Titulo.Caption := 'Hist?rico Escolar';
          Doc_HistAlunosQR.Preview;
          Doc_HistAlunosQR.Free;
        end;
    1 : begin
          Application.CreateForm(TDoc_HistAlunosQR, Doc_HistAlunosQR);
          Doc_HistAlunosQR.Titulo.Caption := 'Guia de Transfer?ncia';
          Doc_HistAlunosQR.Preview;
          Doc_HistAlunosQR.Free;
        end;
    2 : begin
          Application.CreateForm(TDoc_CertAlunosQR, Doc_CertAlunosQR);
          Doc_CertAlunosQR.Preview;
          Doc_CertAlunosQR.Free;
        end;
  end;
end;

procedure TDoc_Alunos.RxDBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
{  if Key = #13 then
    if DM.NotasAlunos.State = dsEdit then DM.NotasAlunos.Post
      else DM.NotasAlunos.Edit;}
  if key = '.' then key := ',';
end;

procedure TDoc_Alunos.CPFExit(Sender: TObject);
var
  localCPF       : string;
  localResult    : boolean;
  digit1, digit2 : integer;
  ii,soma        : integer;
begin
  if ((DM.DocAlunosSACADO_CPF.Value = '   .   .   -   ') or
      (DM.DocAlunosSACADO_CPF.Value = '000.000.000-00 ')) and (DM.DocAlunos.Modified) then
    DM.DocAlunosSACADO_CPF.Clear;
  if not DM.DocAlunosSACADO_CPF.IsNull then begin
    localCPF := DM.DocAlunosSACADO_CPF.AsString;
    localCPF := Copy(localCPF,1,3) + Copy(localCPF,5,3) + Copy(localCPF,9,3) +
                Copy(localCPF,13,2);
    soma := 0;
    for ii := 1 to 9 do Inc(soma, StrToInt(Copy(localCPF, 10-ii, 1))*(ii+1));
    digit1 := 11 - (soma mod 11);
    if digit1 > 9 then digit1 := 0;
    soma := 0;
    for ii := 1 to 10 do Inc(soma, StrToInt(Copy(localCPF, 11-ii, 1))*(ii+1));
    digit2 := 11 - (soma mod 11);
    if digit2 > 9 then digit2 := 0;
    if (Digit1 = StrToInt(Copy(localCPF, 10, 1))) and
       (Digit2 = StrToInt(Copy(localCPF, 11, 1))) then
       localResult := True
    else
       localResult := False;
    if not localResult then begin
      MessageDlg('CPF Inv?lido!',mtError,[mbOK],0);
      CPF.SetFocus;
    end;
  end;
end;

procedure TDoc_Alunos.btn1Click(Sender: TObject);
begin
  DM.MapaInd.Close;
  DM.MapaInd.ParamByName('serie').Value := DM.DocAlunosSERIE.Value;
  DM.MapaInd.ParamByName('turma').Value := DM.DocAlunosTURMA.Value;
  DM.MapaInd.Open;
  DM.MapaInd.FetchAll;
  Application.CreateForm(TDoc_AtaQR_Ind, Doc_AtaQR_Ind);
  Doc_AtaQR_Ind.D01.Caption := NomeDisc1(1);      Doc_AtaQR_Ind.E01.Caption := NomeDisc2(1);
  Doc_AtaQR_Ind.D02.Caption := NomeDisc1(2);      Doc_AtaQR_Ind.E02.Caption := NomeDisc2(2);
  Doc_AtaQR_Ind.D03.Caption := NomeDisc1(3);      Doc_AtaQR_Ind.E03.Caption := NomeDisc2(3);
  Doc_AtaQR_Ind.D04.Caption := NomeDisc1(4);      Doc_AtaQR_Ind.E04.Caption := NomeDisc2(4);
  Doc_AtaQR_Ind.D05.Caption := NomeDisc1(5);      Doc_AtaQR_Ind.E05.Caption := NomeDisc2(5);
  Doc_AtaQR_Ind.D06.Caption := NomeDisc1(6);      Doc_AtaQR_Ind.E06.Caption := NomeDisc2(6);
  Doc_AtaQR_Ind.D07.Caption := NomeDisc1(7);      Doc_AtaQR_Ind.E07.Caption := NomeDisc2(7);
  Doc_AtaQR_Ind.D08.Caption := NomeDisc1(8);      Doc_AtaQR_Ind.E08.Caption := NomeDisc2(8);
  Doc_AtaQR_Ind.D09.Caption := NomeDisc1(9);      Doc_AtaQR_Ind.E09.Caption := NomeDisc2(9);
  Doc_AtaQR_Ind.D10.Caption := NomeDisc1(10);     Doc_AtaQR_Ind.E10.Caption := NomeDisc2(10);
  Doc_AtaQR_Ind.D11.Caption := NomeDisc1(11);     Doc_AtaQR_Ind.E11.Caption := NomeDisc2(11);
  Doc_AtaQR_Ind.D12.Caption := NomeDisc1(12);     Doc_AtaQR_Ind.E12.Caption := NomeDisc2(12);
  Doc_AtaQR_Ind.D13.Caption := NomeDisc1(13);     Doc_AtaQR_Ind.E13.Caption := NomeDisc2(13);
  Doc_AtaQR_Ind.D14.Caption := NomeDisc1(14);     Doc_AtaQR_Ind.E14.Caption := NomeDisc2(14);
  Doc_AtaQR_Ind.D15.Caption := NomeDisc1(15);     Doc_AtaQR_Ind.E15.Caption := NomeDisc2(15);
  Doc_AtaQR_Ind.D16.Caption := NomeDisc1(16);     Doc_AtaQR_Ind.E16.Caption := NomeDisc2(16);
  Doc_AtaQR_Ind.D17.Caption := NomeDisc1(17);     Doc_AtaQR_Ind.E17.Caption := NomeDisc2(17);
  Doc_AtaQR_Ind.D18.Caption := NomeDisc1(18);     Doc_AtaQR_Ind.E18.Caption := NomeDisc2(18);
  Doc_AtaQR_Ind.F01.Caption := NomeDisc3(1);
  Doc_AtaQR_Ind.F02.Caption := NomeDisc3(2);
  Doc_AtaQR_Ind.F03.Caption := NomeDisc3(3);
  Doc_AtaQR_Ind.F04.Caption := NomeDisc3(4);
  Doc_AtaQR_Ind.F05.Caption := NomeDisc3(5);
  Doc_AtaQR_Ind.F06.Caption := NomeDisc3(6);
  Doc_AtaQR_Ind.F07.Caption := NomeDisc3(7);
  Doc_AtaQR_Ind.F08.Caption := NomeDisc3(8);
  Doc_AtaQR_Ind.F09.Caption := NomeDisc3(9);
  Doc_AtaQR_Ind.F10.Caption := NomeDisc3(10);
  Doc_AtaQR_Ind.F11.Caption := NomeDisc3(11);
  Doc_AtaQR_Ind.F12.Caption := NomeDisc3(12);
  Doc_AtaQR_Ind.F13.Caption := NomeDisc3(13);
  Doc_AtaQR_Ind.F14.Caption := NomeDisc3(14);
  Doc_AtaQR_Ind.F15.Caption := NomeDisc3(15);
  Doc_AtaQR_Ind.F16.Caption := NomeDisc3(16);
  Doc_AtaQR_Ind.F17.Caption := NomeDisc3(17);
  Doc_AtaQR_Ind.F18.Caption := NomeDisc3(18);
  Doc_AtaQR_Ind.C01.Caption := CHDisc(1);
  Doc_AtaQR_Ind.C02.Caption := CHDisc(2);
  Doc_AtaQR_Ind.C03.Caption := CHDisc(3);
  Doc_AtaQR_Ind.C04.Caption := CHDisc(4);
  Doc_AtaQR_Ind.C05.Caption := CHDisc(5);
  Doc_AtaQR_Ind.C06.Caption := CHDisc(6);
  Doc_AtaQR_Ind.C07.Caption := CHDisc(7);
  Doc_AtaQR_Ind.C08.Caption := CHDisc(8);
  Doc_AtaQR_Ind.C09.Caption := CHDisc(9);
  Doc_AtaQR_Ind.C10.Caption := CHDisc(10);
  Doc_AtaQR_Ind.C11.Caption := CHDisc(11);
  Doc_AtaQR_Ind.C12.Caption := CHDisc(12);
  Doc_AtaQR_Ind.C13.Caption := CHDisc(13);
  Doc_AtaQR_Ind.C14.Caption := CHDisc(14);
  Doc_AtaQR_Ind.C15.Caption := CHDisc(15);
  Doc_AtaQR_Ind.C16.Caption := CHDisc(16);
  Doc_AtaQR_Ind.C17.Caption := CHDisc(17);
  Doc_AtaQR_Ind.C18.Caption := CHDisc(18);
  Doc_AtaQR_Ind.Observacao.Caption := mmoObs.Text;
  Doc_AtaQR_Ind.Preview;
  Doc_AtaQR_Ind.Free;
end;

end.



