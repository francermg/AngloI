unit ULst_Alunos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, StdCtrls, Buttons, RxLookup, RxDBComb, Mask, ToolEdit, ExtCtrls,
  Grids, DBGrids, RXDBCtrl, DBCtrls;

type
  TLst_Alunos = class(TForm)
    Turma: TRxDBLookupCombo;
    Imprime: TBitBtn;
    Fecha: TBitBtn;
    FS1: TFormStorage;
    Status: TRadioGroup;
    Ordem: TRadioGroup;
    Tipo: TRadioGroup;
    Bimestre: TRadioGroup;
    Serie: TRadioGroup;
    pTurma: TRadioButton;
    pSerie: TRadioButton;
    Label1: TLabel;
    Senha: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ModEsp: TComboBox;
    Sexo: TComboBox;
    material: TCheckBox;
    procedure ImprimeClick(Sender: TObject);
    procedure TurmaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TipoClick(Sender: TObject);
    procedure pTurmaClick(Sender: TObject);
    procedure pSerieClick(Sender: TObject);
    procedure materialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lst_Alunos: TLst_Alunos;
const Mods : Array[0..10] Of String =
       ('***', 'EDF', 'NAT', 'VOL', 'HAN', 'FTS', 'MUS', 'BAS', 'TME', 'XDZ', 'ATL');
const Sexs : Array[0..2] Of String = ('*', 'M', 'F');

implementation

uses UDM, ULst_AlunosQR, ULst_Alunos2QR, ULst_Alunos3QR, ULst_Alunos4QR,
  ULst_Alunos1QR, ULst_Alunos5QR, ULst_Alunos6QR, ULst_Alunos7QR,
  ULst_EnderecosAlunos;

{$R *.DFM}

procedure TLst_Alunos.FormShow(Sender: TObject);
begin
  DM.Turmas.Open;
  ModEsp.ItemIndex := 0;
  Sexo.ItemIndex := 0;
end;

procedure TLst_Alunos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.Turmas.Close;
end;

procedure TLst_Alunos.TurmaChange(Sender: TObject);
begin
  if Turma.KeyValue = null then Imprime.Enabled := false
   else Imprime.Enabled := true;
   dm.Turmas.Close;
   dm.Turmas.SelectSQL[2] := 'order by SERIE,TURMA';
   dm.Turmas.Open; 
end;

procedure TLst_Alunos.pTurmaClick(Sender: TObject);
begin
  Turma.Enabled := true;
  Serie.Enabled := false;
  Turma.ResetField;
  Imprime.Enabled := false;
end;

procedure TLst_Alunos.pSerieClick(Sender: TObject);
begin
  Turma.Enabled := false;
  Serie.Enabled := true;
  Turma.ResetField;
  Imprime.Enabled := true;
end;

procedure TLst_Alunos.TipoClick(Sender: TObject);
begin
  if (Tipo.ItemIndex = 1) or (Tipo.ItemIndex = 3) then begin
    Senha.Enabled := true;
    Senha.Color := clWindow; end
   else begin
    Senha.Text := '';
    Senha.Enabled := false;
    Senha.Color := clMenu;
  end;
  if Tipo.ItemIndex = 2 then Bimestre.Enabled := true
   else Bimestre.Enabled := false;
  if Tipo.ItemIndex = 7 then
    begin
     status.Enabled := False;
     ordem.Enabled := False;
     ModEsp.Enabled := False;
     Sexo.Enabled := False;
     PSerie.Enabled := False;
    end;
end;

procedure TLst_Alunos.ImprimeClick(Sender: TObject);
var Sql1,Sql2,Sql3,Sql4,Sql5,Sql6, wTurma : string;
begin
//------------------------------------------ Listagem Simples
  if Tipo.ItemIndex = 0 then begin
    Try
        with Lst_AlunosQR do begin
        Application.CreateForm(TLst_AlunosQR, Lst_AlunosQR);
        Alunos.Close;
        Sql1 := 'where SERIE = :serie ';
        Sql2 := 'and TURMA = :turma ';
        Sql3 := 'and STATUS = :status ';
        Sql4 := 'and MOD_ESPORTIVA = :mod_esp ';
        Sql5 := 'and SEXO = :sexo ';
        Sql6 := 'and MATERIAL = :material ';

        if (Serie.ItemIndex = 4) and (pSerie.Checked) then Sql1 := 'where (Serie > 0) ';

        if (Serie.ItemIndex = 3) and (pSerie.Checked) then
        begin
           dm.Turmas.Close;
           dm.Turmas.SelectSQL[2] := 'where cursinho = ''1''';
           dm.Turmas.Open;
           wTurma := dm.TurmasTURMA.Value;
           Sql1 := 'where ((SERIE = :serie) and (TURMA = :Turma)) ';
           Alunos.ParamByName('serie').Value := 3;
           Alunos.ParamByName('Turma').Value := wTurma;
        end;


        if (Serie.ItemIndex = 2) and (pSerie.Checked) then
        begin
          Sql1 := 'where (SERIE = :serie) and (TURMA <> :Turma) ';
          Alunos.ParamByName('serie').Value := 3;
          Alunos.ParamByName('Turma').Value := wTurma;
        end;

        if not pTurma.Checked then Sql2 := '';
        if Status.ItemIndex = 0 then Sql3 := '';
        if ModEsp.ItemIndex = 0 then Sql4 := '';
        if Sexo.ItemIndex = 0 then Sql5 := '';


        Alunos.SQL.Strings[2] := Sql1+Sql2+Sql3+Sql4+Sql5+Sql6;

        if Ordem.ItemIndex = 0 then Alunos.SQL.Strings[3] := 'order by NOME'
          else if Ordem.ItemIndex = 1 then Alunos.SQL.Strings[3] := 'order by CHAMADA'
           else  Alunos.SQL.Strings[3] := 'order by DATA_MATRICULA';
        if pTurma.Checked then begin
          Alunos.ParamByName('serie').Value :=  DM.TurmasSERIE.Value;
          Alunos.ParamByName('turma').Value :=  DM.TurmasTURMA.Value;
          NomeTurma.Caption := IntToStr(DM.TurmasSERIE.Value)+'ª Série '+DM.TurmasTURMA.Value; end
         else begin
          if Serie.ItemIndex < 3 then
          Alunos.ParamByName('serie').Value := Serie.ItemIndex + 1;
          NomeTurma.Caption := IntToStr(Serie.ItemIndex+1)+'ª Série ';
          if Serie.ItemIndex = 4 then NomeTurma.Caption := 'Todas Séries';
          if Serie.ItemIndex = 3 then NomeTurma.Caption := 'Cursinho';
        end;
        if Status.ItemIndex > 0 then
          Alunos.ParamByName('status').Value := Copy(Status.Items[Status.ItemIndex],1,1);
        if ModEsp.ItemIndex <> 0 then begin
          Alunos.ParamByName('mod_esp').Value := Mods[ModEsp.ItemIndex];
          LabelModEsp.Caption := 'Mod.Esp.: '+ ModEsp.Items.Strings[ModEsp.ItemIndex];
          LabelModEsp.Enabled := true;
        end;
        if Sexo.ItemIndex <> 0 then begin
          Alunos.ParamByName('sexo').Value := Sexs[Sexo.ItemIndex];
          LabelSexo.Caption := 'Sexo.: '+ Sexo.Items.Strings[Sexo.ItemIndex];
          LabelSexo.Enabled := true;
        end;
        if material.Checked = True Then
          Alunos.ParamByName('material').value := 1
          Else
           Alunos.ParamByName('material').value := 0;
        Alunos.Open;
        Alunos.FetchAll;
        Preview;
      end;
    Finally
      Lst_AlunosQR.Free;
    End;
  end;   // if Tipo.ItemIndex = 0

//------------------------------------------ Listagem Normal

  if Tipo.ItemIndex = 1 then begin
    Try
      with Lst_Alunos1QR do begin
        Application.CreateForm(TLst_Alunos1QR, Lst_Alunos1QR);
        Alunos.Close;
        Sql1 := 'where SERIE = :serie ';
        Sql2 := 'and TURMA = :turma ';
        Sql3 := 'and STATUS = :status ';
        Sql4 := 'and MOD_ESPORTIVA = :mod_esp ';
        Sql5 := 'and SEXO = :sexo ';

        if ((pSerie.Checked) and (Serie.ItemIndex = 4)) then Sql1 := 'where :serie > 0 ';

        if ((pSerie.Checked) and (Serie.ItemIndex = 2)) then
        begin
          dm.Turmas.Close;
          dm.Turmas.SelectSQL[2] := 'where cursinho = ''1''';
          dm.Turmas.Open;
          wTurma := dm.TurmasTURMA.Value;
          Sql1 := 'where ((SERIE = :serie) and (TURMA <> :Turma)) ';
          Alunos.ParamByName('serie').Value := 3;
          Alunos.ParamByName('Turma').Value := wTurma;
        end;

        if not pTurma.Checked then Sql2 := '';
        if Status.ItemIndex = 0 then Sql3 := '';
        if ModEsp.ItemIndex = 0 then Sql4 := '';
        if Sexo.ItemIndex = 0 then Sql5 := '';
        Alunos.SQL.Strings[2] := Sql1+Sql2+Sql3+Sql4+Sql5;
        if Ordem.ItemIndex = 0 then Alunos.SQL.Strings[3] := 'order by NOME'
          else if Ordem.ItemIndex = 1 then Alunos.SQL.Strings[3] := 'order by CHAMADA'
           else  Alunos.SQL.Strings[3] := 'order by DATA_MATRICULA';
        if pTurma.Checked then begin
          Alunos.ParamByName('serie').Value := DM.TurmasSERIE.Value;
          Alunos.ParamByName('turma').Value := DM.TurmasTURMA.Value;
          NomeTurma.Caption := IntToStr(DM.TurmasSERIE.Value)+'ª Série '+DM.TurmasTURMA.Value; end
         else begin
          if Serie.ItemIndex < 3 then
            Alunos.ParamByName('serie').Value := Serie.ItemIndex + 1;
           if Serie.ItemIndex = 3 then
            begin
              dm.Turmas.Close;
              dm.Turmas.SelectSQL[2] := 'where cursinho = ''1''';
              dm.Turmas.Open;
              wTurma := dm.TurmasTURMA.Value;
              Sql1 := 'where ((SERIE = :serie) and (TURMA = :Turma)) ';
              Alunos.SQL.Strings[2] := Sql1+Sql2+Sql3+Sql4+Sql5;
              Alunos.ParamByName('serie').Value := Serie.ItemIndex;
              Alunos.ParamByName('Turma').Value := wTurma;
            end;
          NomeTurma.Caption := IntToStr(Serie.ItemIndex+1)+'ª Série ';
          if Serie.ItemIndex = 4 then NomeTurma.Caption := 'Todas Séries';
          if Serie.ItemIndex = 3 then NomeTurma.Caption := 'Cursinho';
        end;
        if Status.ItemIndex > 0 then
          Alunos.ParamByName('status').Value := Copy(Status.Items[Status.ItemIndex],1,1);
        if ModEsp.ItemIndex <> 0 then begin
          Alunos.ParamByName('mod_esp').Value := Mods[ModEsp.ItemIndex];
          LabelModEsp.Caption := 'Mod.Esp.: '+ ModEsp.Items.Strings[ModEsp.ItemIndex];
          LabelModEsp.Enabled := true;
        end;
        if Sexo.ItemIndex <> 0 then begin
          Alunos.ParamByName('sexo').Value := Sexs[Sexo.ItemIndex];
          LabelSexo.Caption := 'Sexo.: '+ Sexo.Items.Strings[Sexo.ItemIndex];
          LabelSexo.Enabled := true;
        end;
        Alunos.Open;
        Alunos.FetchAll;
        Preview;
      end;
    Finally
      Lst_Alunos1QR.Free;
    End;
  end;   // if Tipo.ItemIndex = 1
//------------------------------------------ Controle de Notas
  if Tipo.ItemIndex = 2 then begin
    Try
      with Lst_Alunos2QR do begin
        Application.CreateForm(TLst_Alunos2QR, Lst_Alunos2QR);
        Alunos.Close;
        Sql1 := 'where SERIE = :serie ';
        Sql2 := 'and TURMA = :turma ';
        Sql3 := 'and STATUS = :status ';
        Sql4 := 'and MOD_ESPORTIVA = :mod_esp ';
        Sql5 := 'and SEXO = :sexo ';

        if  ((pSerie.Checked) and (Serie.ItemIndex = 4)) then Sql1 := 'where :serie > 0 ';

        if  ((pSerie.Checked) and (Serie.ItemIndex = 2)) then
        begin
          dm.Turmas.Close;
          dm.Turmas.SelectSQL[2] := 'where cursinho = ''1''';
          dm.Turmas.Open;
          wTurma := dm.TurmasTURMA.Value;
          Sql1 := 'where ((SERIE = :serie) and (TURMA <> :Turma)) ';
          Alunos.ParamByName('serie').Value := 3;
          Alunos.ParamByName('Turma').Value := wTurma;
        end;

        if not pTurma.Checked then Sql2 := '';
        if Status.ItemIndex = 0 then Sql3 := '';
        if ModEsp.ItemIndex = 0 then Sql4 := '';
        if Sexo.ItemIndex = 0 then Sql5 := '';
        Alunos.SQL.Strings[2] := Sql1+Sql2+Sql3+Sql4+Sql5;
        if Ordem.ItemIndex = 0 then Alunos.SQL.Strings[3] := 'order by NOME'
          else if Ordem.ItemIndex = 1 then Alunos.SQL.Strings[3] := 'order by CHAMADA'
           else  Alunos.SQL.Strings[3] := 'order by DATA_MATRICULA';
        if pTurma.Checked then begin
          Alunos.ParamByName('serie').Value := DM.TurmasSERIE.Value;
          Alunos.ParamByName('turma').Value := DM.TurmasTURMA.Value;
          NomeTurma.Caption := IntToStr(DM.TurmasSERIE.Value)+'ª Série '+DM.TurmasTURMA.Value; end
         else begin
            if Serie.ItemIndex < 3 then
             Alunos.ParamByName('serie').Value := Serie.ItemIndex + 1;
            if Serie.ItemIndex = 3 then
            begin
              dm.Turmas.Close;
              dm.Turmas.SelectSQL[2] := 'where cursinho = ''1''';
              dm.Turmas.Open;
              wTurma := dm.TurmasTURMA.Value;
              Sql1 := 'where ((SERIE = :serie) and (TURMA = :Turma)) ';
              Alunos.SQL.Strings[2] := Sql1+Sql2+Sql3+Sql4+Sql5;
              Alunos.ParamByName('serie').Value := Serie.ItemIndex;
              Alunos.ParamByName('Turma').Value := wTurma;
            end;
          NomeTurma.Caption := IntToStr(Serie.ItemIndex+1)+'ª Série ';
          if Serie.ItemIndex = 3 then NomeTurma.Caption := 'Cursinho';
          if Serie.ItemIndex = 4 then NomeTurma.Caption := 'Todas Séries';
        end;
         if Status.ItemIndex > 0 then
          Alunos.ParamByName('status').Value := Copy(Status.Items[Status.ItemIndex],1,1);
        if ModEsp.ItemIndex <> 0 then begin
          Alunos.ParamByName('mod_esp').Value := Mods[ModEsp.ItemIndex];
          LabelModEsp.Caption := 'Mod.Esp.: '+ ModEsp.Items.Strings[ModEsp.ItemIndex];
          LabelModEsp.Enabled := true;
        end;
        if Sexo.ItemIndex <> 0 then begin
          Alunos.ParamByName('sexo').Value := Sexs[Sexo.ItemIndex];
          LabelSexo.Caption := 'Sexo.: '+ Sexo.Items.Strings[Sexo.ItemIndex];
          LabelSexo.Enabled := true;
        end;
        Alunos.Open;
        Alunos.FetchAll;
        Bim.Caption := Bimestre.Items[Bimestre.ItemIndex]+' Bimestre';
        Preview;
      end;
    Finally
      Lst_Alunos2QR.Free;
    End;
  end;   // if Tipo.ItemIndex = 2
//------------------------------------------ Controle de Bolsas

  if Tipo.ItemIndex = 3 then begin
    Try
      with Lst_Alunos3QR do begin
        Application.CreateForm(TLst_Alunos3QR, Lst_Alunos3QR);
        Alunos.Close;
        Sql1 := 'where SERIE = :serie ';
        Sql2 := 'and TURMA = :turma ';
        Sql3 := 'and STATUS = :status ';
        Sql4 := 'and MOD_ESPORTIVA = :mod_esp ';
        Sql5 := 'and SEXO = :sexo ';
        if (Serie.ItemIndex = 4) and (pSerie.Checked) then Sql1 := 'where :serie > 0 ';

         if ((pSerie.Checked) and (Serie.ItemIndex = 2)) then
        begin
          Sql1 := 'where (SERIE = :serie) and (TURMA <> :Turma) ';
          dm.Turmas.Close;
          dm.Turmas.SelectSQL[2] := 'where cursinho = ''1''';
          dm.Turmas.Open;
          wTurma := dm.TurmasTURMA.Value;
          Alunos.ParamByName('serie').Value := 3;
          Alunos.ParamByName('Turma').Value := wTurma;
        end;

        if not pTurma.Checked then Sql2 := '';
        if Status.ItemIndex = 0 then Sql3 := '';
        if ModEsp.ItemIndex = 0 then Sql4 := '';
        if Sexo.ItemIndex = 0 then Sql5 := '';
        Alunos.SQL.Strings[2] := Sql1+Sql2+Sql3+Sql4+Sql5;
        if Ordem.ItemIndex = 0 then Alunos.SQL.Strings[3] := 'order by NOME'
          else if Ordem.ItemIndex = 1 then Alunos.SQL.Strings[3] := 'order by CHAMADA'
           else  Alunos.SQL.Strings[3] := 'order by DATA_MATRICULA';
        if pTurma.Checked then begin
          Alunos.ParamByName('serie').Value := DM.TurmasSERIE.Value;
          Alunos.ParamByName('turma').Value := DM.TurmasTURMA.Value;
          NomeTurma.Caption := IntToStr(DM.TurmasSERIE.Value)+'ª Série '+DM.TurmasTURMA.Value; end
         else begin
          if Serie.ItemIndex < 3 then
            Alunos.ParamByName('serie').Value := Serie.ItemIndex + 1;
            if Serie.ItemIndex = 3 then
            begin
              dm.Turmas.Close;
              dm.Turmas.SelectSQL[2] := 'where cursinho = ''1''';
              dm.Turmas.Open;
              wTurma := dm.TurmasTURMA.Value;
              Sql1 := 'where ((SERIE = :serie) and (TURMA = :Turma)) ';
              Alunos.SQL.Strings[2] := Sql1+Sql2+Sql3+Sql4+Sql5;
              Alunos.ParamByName('serie').Value := Serie.ItemIndex;
              Alunos.ParamByName('Turma').Value := wTurma;
            end;
          NomeTurma.Caption := IntToStr(Serie.ItemIndex+1)+'ª Série ';
          if Serie.ItemIndex = 3 then NomeTurma.Caption := 'Cursinho';
          if Serie.ItemIndex = 4 then NomeTurma.Caption := 'Todas Séries';
        end;
        if Status.ItemIndex > 0 then
          Alunos.ParamByName('status').Value := Copy(Status.Items[Status.ItemIndex],1,1);
        if ModEsp.ItemIndex <> 0 then begin
          Alunos.ParamByName('mod_esp').Value := Mods[ModEsp.ItemIndex];
          LabelModEsp.Caption := 'Mod.Esp.: '+ ModEsp.Items.Strings[ModEsp.ItemIndex];
          LabelModEsp.Enabled := true;
        end;
        if Sexo.ItemIndex <> 0 then begin
          Alunos.ParamByName('sexo').Value := Sexs[Sexo.ItemIndex];
          LabelSexo.Caption := 'Sexo.: '+ Sexo.Items.Strings[Sexo.ItemIndex];
          LabelSexo.Enabled := true;
        end;
        Alunos.Open;
        Alunos.FetchAll;
        Preview;
      end;
    Finally
      Lst_Alunos3QR.Free;
    End;
  end;   // if Tipo.ItemIndex = 3
//------------------------------------------ Controle de Faltas - Ed.Física

  if (Tipo.ItemIndex = 4) then begin
    Try
      with Lst_Alunos4QR do begin
        Application.CreateForm(TLst_Alunos4QR, Lst_Alunos4QR);
        Alunos.Close;
        Sql1 := 'where SERIE = :serie ';
        Sql2 := 'and TURMA = :turma ';
        Sql3 := 'and STATUS = :status ';
        Sql4 := 'and MOD_ESPORTIVA = :mod_esp ';
        Sql5 := 'and SEXO = :sexo ';
        if (Serie.ItemIndex = 4) and (pSerie.Checked) then Sql1 := 'where :serie > 0 ';

         if ((pSerie.Checked) and (Serie.ItemIndex = 2))  then
        begin
          Sql1 := 'where ((SERIE = :serie) and (TURMA <> :Turma)) ';
          dm.Turmas.Close;
          dm.Turmas.SelectSQL[2] := 'where cursinho = ''1''';
          dm.Turmas.Open;
          wTurma := dm.TurmasTURMA.Value;
          Alunos.ParamByName('serie').Value := 3;
          Alunos.ParamByName('Turma').Value := wTurma;
        end;

        if not pTurma.Checked then Sql2 := '';
        if Status.ItemIndex = 0 then Sql3 := '';
        if ModEsp.ItemIndex = 0 then Sql4 := '';
        if Sexo.ItemIndex = 0 then Sql5 := '';
        Alunos.SQL.Strings[2] := Sql1+Sql2+Sql3+Sql4+Sql5;
        if Ordem.ItemIndex = 0 then Alunos.SQL.Strings[3] := 'order by NOME'
          else if Ordem.ItemIndex = 1 then Alunos.SQL.Strings[3] := 'order by CHAMADA'
           else  Alunos.SQL.Strings[3] := 'order by DATA_MATRICULA';
        if pTurma.Checked then begin
          Alunos.ParamByName('serie').Value := DM.TurmasSERIE.Value;
          Alunos.ParamByName('turma').Value := DM.TurmasTURMA.Value;
          NomeTurma.Caption := IntToStr(DM.TurmasSERIE.Value)+'ª Série '+DM.TurmasTURMA.Value; end
         else begin
          if Serie.ItemIndex < 3 then
            Alunos.ParamByName('serie').Value := Serie.ItemIndex + 1;
            if Serie.ItemIndex = 3 then
            begin
              dm.Turmas.Close;
              dm.Turmas.SelectSQL[2] := 'where cursinho = ''1''';
              dm.Turmas.Open;
              wTurma := dm.TurmasTURMA.Value;
              Sql1 := 'where ((SERIE = :serie) and (TURMA = :Turma)) ';
              Alunos.SQL.Strings[2] := Sql1+Sql2+Sql3+Sql4+Sql5;
              Alunos.ParamByName('serie').Value := Serie.ItemIndex;
              Alunos.ParamByName('Turma').Value := wTurma;
            end;
          NomeTurma.Caption := IntToStr(Serie.ItemIndex+1)+'ª Série ';
          if Serie.ItemIndex = 3 then NomeTurma.Caption := 'Cursinho';
          if Serie.ItemIndex = 4 then NomeTurma.Caption := 'Todas Séries';
        end;
        if Status.ItemIndex > 0 then
          Alunos.ParamByName('status').Value := Copy(Status.Items[Status.ItemIndex],1,1);
        if ModEsp.ItemIndex <> 0 then begin
          Alunos.ParamByName('mod_esp').Value := Mods[ModEsp.ItemIndex];
          LabelModEsp.Caption := 'Mod.Esp.: '+ ModEsp.Items.Strings[ModEsp.ItemIndex];
          LabelModEsp.Enabled := true;
        end;
        if Sexo.ItemIndex <> 0 then begin
          Alunos.ParamByName('sexo').Value := Sexs[Sexo.ItemIndex];
          LabelSexo.Caption := 'Sexo.: '+ Sexo.Items.Strings[Sexo.ItemIndex];
          LabelSexo.Enabled := true;
        end;
        Alunos.Open;
        Alunos.FetchAll;
        Preview;
      end;
    Finally
      Lst_Alunos4QR.Free;
    End;
  end;   // if Tipo.ItemIndex = 4
//------------------------------------------ Capa de Diário

  if Tipo.ItemIndex = 5 then begin
    Try
      with Lst_Alunos5QR do begin
        Application.CreateForm(TLst_Alunos5QR, Lst_Alunos5QR);
        Alunos.Close;
        Sql1 := 'where SERIE = :serie ';
        Sql2 := 'and TURMA = :turma ';
        Sql3 := 'and STATUS = :status ';
        if ((pSerie.Checked) and (Serie.ItemIndex = 4)) then Sql1 := 'where :serie > 0 ';

         if ((pSerie.Checked) and (Serie.ItemIndex = 2))  then
        begin
          dm.Turmas.Close;
          dm.Turmas.SelectSQL[2] := 'where cursinho = ''1''';
          dm.Turmas.Open;
          wTurma := dm.TurmasTURMA.Value;
          Sql1 := 'where (SERIE = :serie) and (TURMA <> :Turma) ';
          Alunos.ParamByName('serie').Value := 3;
          Alunos.ParamByName('Turma').Value := wTurma;
        end;

        if not pTurma.Checked then Sql2 := '';
        if Status.ItemIndex = 0 then Sql3 := '';
        Alunos.SQL.Strings[2] := Sql1+Sql2+Sql3;
        if Ordem.ItemIndex = 0 then Alunos.SQL.Strings[3] := 'order by NOME'
          else if Ordem.ItemIndex = 1 then Alunos.SQL.Strings[3] := 'order by CHAMADA'
           else  Alunos.SQL.Strings[3] := 'order by DATA_MATRICULA';
        if pTurma.Checked then begin
          Alunos.ParamByName('serie').Value := DM.TurmasSERIE.Value;
          Alunos.ParamByName('turma').Value := DM.TurmasTURMA.Value;
          NomeTurma.Caption := IntToStr(DM.TurmasSERIE.Value)+'ª Série '+DM.TurmasTURMA.Value; end
         else begin
          if Serie.ItemIndex < 3 then
            Alunos.ParamByName('serie').Value := Serie.ItemIndex + 1;
            if Serie.ItemIndex = 3 then
            begin
              dm.Turmas.Close;
              dm.Turmas.SelectSQL[2] := 'where cursinho = ''1''';
              dm.Turmas.Open;
              wTurma := dm.TurmasTURMA.Value;
              Sql1 := 'where ((SERIE = :serie) and (TURMA = :Turma)) ';
              Alunos.SQL.Strings[2] := Sql1+Sql2+Sql3+Sql4+Sql5;
              Alunos.ParamByName('serie').Value := Serie.ItemIndex;
              Alunos.ParamByName('Turma').Value := wTurma;
            end;
          NomeTurma.Caption := IntToStr(Serie.ItemIndex+1)+'ª Série ';
          if Serie.ItemIndex = 3 then NomeTurma.Caption := 'Cursinho';
          if Serie.ItemIndex = 4 then NomeTurma.Caption := 'Todas Séries';
        end;
        if Status.ItemIndex > 0 then
          Alunos.ParamByName('status').Value := Copy(Status.Items[Status.ItemIndex],1,1);
        Alunos.Open;
        Alunos.FetchAll;
        Preview;
      end;
    Finally
      Lst_Alunos5QR.Free;
    End;
  end;   // if Tipo.ItemIndex = 5

//------------------------------------------ Reunião assinaturas dos pais

  if Tipo.ItemIndex = 6 then begin
    Try
      with Lst_Alunos6QR do begin
        Application.CreateForm(TLst_Alunos6QR, Lst_Alunos6QR);
        Alunos.Close;
        Sql1 := 'where SERIE = :serie ';
        Sql2 := 'and TURMA = :turma ';
        Sql3 := 'and STATUS = :status ';
        if (Serie.ItemIndex = 4) and (pSerie.Checked) then Sql1 := 'where :serie > 0 ';

         if ((pSerie.Checked) and (Serie.ItemIndex = 2))  then
        begin
          dm.Turmas.Close;
          dm.Turmas.SelectSQL[2] := 'where cursinho = ''1''';
          dm.Turmas.Open;
          wTurma := dm.TurmasTURMA.Value;
          Sql1 := 'where (SERIE = :serie) and (TURMA <> :Turma) ';
          Alunos.ParamByName('serie').Value := 3;
          Alunos.ParamByName('Turma').Value := wTurma;
        end;

        if not pTurma.Checked then Sql2 := '';
        if Status.ItemIndex = 0 then Sql3 := '';
        Alunos.SQL.Strings[2] := Sql1+Sql2+Sql3;
        if Ordem.ItemIndex = 0 then Alunos.SQL.Strings[3] := 'order by NOME'
          else if Ordem.ItemIndex = 1 then Alunos.SQL.Strings[3] := 'order by CHAMADA'
           else  Alunos.SQL.Strings[3] := 'order by DATA_MATRICULA';
        if pTurma.Checked then begin
          Alunos.ParamByName('serie').Value := DM.TurmasSERIE.Value;
          Alunos.ParamByName('turma').Value := DM.TurmasTURMA.Value;
          NomeTurma.Caption := IntToStr(DM.TurmasSERIE.Value)+'ª Série '+DM.TurmasTURMA.Value; end
         else begin
          if Serie.ItemIndex < 3 then
            Alunos.ParamByName('serie').Value := Serie.ItemIndex + 1;
            if Serie.ItemIndex = 3 then
            begin
              dm.Turmas.Close;
              dm.Turmas.SelectSQL[2] := 'where cursinho = ''1''';
              dm.Turmas.Open;
              wTurma := dm.TurmasTURMA.Value;
              Sql1 := 'where ((SERIE = :serie) and (TURMA = :Turma)) ';
              Alunos.SQL.Strings[2] := Sql1+Sql2+Sql3+Sql4+Sql5;
              Alunos.ParamByName('serie').Value := Serie.ItemIndex;
              Alunos.ParamByName('Turma').Value := wTurma;
            end;
          NomeTurma.Caption := IntToStr(Serie.ItemIndex+1)+'ª Série ';
          if Serie.ItemIndex = 3 then NomeTurma.Caption := 'Cursinho';
          if Serie.ItemIndex = 4 then NomeTurma.Caption := 'Todas Séries';
        end;
        if Status.ItemIndex > 0 then
          Alunos.ParamByName('status').Value := Copy(Status.Items[Status.ItemIndex],1,1);
        Alunos.Open;
        Alunos.FetchAll;
        Preview;
      end;
    Finally
      Lst_Alunos6QR.Free;
    End;
  end;   // if Tipo.ItemIndex = 6

//------------------------------------------ Reunião telefone dos  pais

  if Tipo.ItemIndex = 7 then
  Try
    with Lst_Alunos7QR do
     begin
      Application.CreateForm(TLst_Alunos7QR, Lst_Alunos7QR);
      Reuniao.Close;
      Reuniao.ParamByName('SERIE').Value := DM.TurmasSERIE.Value;
      Reuniao.ParamByName('TURMA').Text := DM.TurmasTURMA.Value;
      NomeTurma.Caption := IntToStr(DM.TurmasSERIE.Value)+'ª Série '+DM.TurmasTURMA.Value;
      Reuniao.Open;
      Reuniao.FetchAll;
      Preview;
     end;
     Finally
       Lst_Alunos7QR.Free;
  end;

  if Tipo.ItemIndex = 8 then begin
    Try
      with Lst_endereco do begin
        Application.CreateForm(TLst_endereco, Lst_endereco);
        Enderecos.Close;
        Sql1 := 'where SERIE = :serie ';
        Sql2 := 'and TURMA = :turma ';
        Sql3 := 'and STATUS = ''A'' ';
        Sql4 := 'and FORMATURA = ''P''';
        if (Serie.ItemIndex = 4) and (pSerie.Checked) then Sql1 := 'where :serie > 0 ';
        if not pTurma.Checked then Sql2 := '';
        if Status.ItemIndex = 0 then Sql3 := '';
        enderecos.SQL.Strings[2] := Sql1+Sql2+Sql3+Sql4;
        if Ordem.ItemIndex = 0 then Enderecos.SQL.Strings[4] := 'order by NOME'
          else if Ordem.ItemIndex = 1 then Enderecos.SQL.Strings[4] := 'order by CHAMADA'
           else  Enderecos.SQL.Strings[4] := 'order by DATA_MATRICULA';
        if pTurma.Checked then begin
          Enderecos.ParamByName('serie').Value := DM.TurmasSERIE.Value;
          Enderecos.ParamByName('turma').Value := DM.TurmasTURMA.Value;
          NomeTurma.Caption := IntToStr(DM.TurmasSERIE.Value)+'ª Série '+DM.TurmasTURMA.Value; end
         else begin
          Enderecos.ParamByName('serie').Value := Serie.ItemIndex + 1;
          NomeTurma.Caption := IntToStr(Serie.ItemIndex+1)+'ª Série ';
          if Serie.ItemIndex = 3 then NomeTurma.Caption := 'Cursinho';
          if Serie.ItemIndex = 4 then NomeTurma.Caption := 'Todas Séries';
        end;
        Enderecos.Open;
        Enderecos.FetchAll;
        Lst_EnderecosAlunos.Preview;
      end;
    Finally
//        Lst_EnderecosAlunos.Free;
    End;
  end;   // if Tipo.ItemIndex = 8
  dm.Turmas.Close;
  dm.Turmas.SelectSQL[2] := 'where cursinho is not null';
  dm.Turmas.Open;
end;

procedure TLst_Alunos.materialClick(Sender: TObject);
begin
  if material.Checked = False Then
     material.Caption := 'Material não'
     Else
      material.Caption := 'Material  sim';
end;

end.
