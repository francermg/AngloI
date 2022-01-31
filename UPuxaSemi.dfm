object PuxaSemi: TPuxaSemi
  Left = 334
  Top = 144
  BorderStyle = bsSingle
  Caption = 'Puxa dados'
  ClientHeight = 397
  ClientWidth = 606
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 7
    Top = 16
    Width = 590
    Height = 33
    BevelOuter = bvNone
    Color = clGray
    TabOrder = 0
    object Label35: TLabel
      Left = 13
      Top = 8
      Width = 39
      Height = 13
      Caption = 'Código :'
    end
    object Label36: TLabel
      Left = 188
      Top = 8
      Width = 34
      Height = 13
      Caption = 'Nome :'
    end
    object Nome: TEdit
      Left = 236
      Top = 5
      Width = 241
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = NomeChange
    end
    object Pesquisa: TBitBtn
      Left = 505
      Top = 6
      Width = 71
      Height = 20
      Caption = 'Pesquisa'
      TabOrder = 2
      OnClick = PesquisaClick
    end
    object Codigo: TCurrencyEdit
      Left = 67
      Top = 5
      Width = 57
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0;- 0'
      TabOrder = 0
      OnChange = CodigoChange
    end
  end
  object DBGrid1: TDBGrid
    Left = 7
    Top = 56
    Width = 588
    Height = 297
    DataSource = DSAlunos
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'Código'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 411
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SerieX'
        Width = 82
        Visible = True
      end>
  end
  object Cancela: TBitBtn
    Left = 399
    Top = 361
    Width = 96
    Height = 25
    Cancel = True
    Caption = '&Cancela'
    TabOrder = 2
    OnClick = CancelaClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    Layout = blGlyphRight
    NumGlyphs = 2
  end
  object OK: TBitBtn
    Left = 499
    Top = 361
    Width = 96
    Height = 25
    Caption = '&OK'
    TabOrder = 3
    OnClick = OKClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    Layout = blGlyphRight
    NumGlyphs = 2
  end
  object FS1: TFormStorage
    StoredValues = <>
    Left = 520
    Top = 272
  end
  object ConsSemi: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  CODIGO'
      'from  ALUNOS_SEMI'
      'where CODIGO = :codigo')
    Left = 456
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object ConsSemiCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ALUNOS.CODIGO'
      Required = True
    end
  end
  object Alunos: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    OnCalcFields = AlunosCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from ALUNOS'
      'where CODIGO > 0'
      'order by NOME')
    Left = 532
    Top = 208
    object AlunosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ALUNOS_ANT.CODIGO'
      Required = True
    end
    object AlunosSerieX: TStringField
      FieldKind = fkCalculated
      FieldName = 'SerieX'
      Size = 15
      Calculated = True
    end
    object AlunosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'ALUNOS_ANT.NOME'
      Required = True
      Size = 60
    end
    object AlunosSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = 'ALUNOS_ANT.SERIE'
    end
    object AlunosTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = 'ALUNOS_ANT.TURMA'
      FixedChar = True
      Size = 1
    end
    object AlunosENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'ALUNOS.ENDERECO'
      Size = 40
    end
    object AlunosCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'ALUNOS.COMPLEMENTO'
    end
    object AlunosBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'ALUNOS.BAIRRO'
    end
    object AlunosCIDADE: TIBStringField
      DisplayWidth = 35
      FieldName = 'CIDADE'
      Origin = 'ALUNOS.CIDADE'
      Size = 35
    end
    object AlunosUF: TIBStringField
      FieldName = 'UF'
      Origin = 'ALUNOS.UF'
      FixedChar = True
      Size = 2
    end
    object AlunosCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'ALUNOS.CEP'
      FixedChar = True
      Size = 9
    end
    object AlunosRG: TIBStringField
      DisplayWidth = 25
      FieldName = 'RG'
      Origin = 'ALUNOS.RG'
      Size = 25
    end
    object AlunosNASC_DATA: TDateField
      FieldName = 'NASC_DATA'
      Origin = 'ALUNOS.NASC_DATA'
    end
    object AlunosNASC_CIDADE: TIBStringField
      FieldName = 'NASC_CIDADE'
      Origin = 'ALUNOS.NASC_CIDADE'
      Size = 25
    end
    object AlunosNASC_UF: TIBStringField
      FieldName = 'NASC_UF'
      Origin = 'ALUNOS.NASC_UF'
      FixedChar = True
      Size = 2
    end
    object AlunosSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'ALUNOS.SEXO'
      FixedChar = True
      Size = 1
    end
    object AlunosPAI_NOME: TIBStringField
      FieldName = 'PAI_NOME'
      Origin = 'ALUNOS.PAI_NOME'
      Size = 50
    end
    object AlunosPAI_PROFISSAO: TIBStringField
      FieldName = 'PAI_PROFISSAO'
      Origin = 'ALUNOS.PAI_PROFISSAO'
    end
    object AlunosPAI_NASCIMENTO: TDateField
      FieldName = 'PAI_NASCIMENTO'
      Origin = 'ALUNOS.PAI_NASCIMENTO'
    end
    object AlunosMAE_NOME: TIBStringField
      FieldName = 'MAE_NOME'
      Origin = 'ALUNOS.MAE_NOME'
      Size = 50
    end
    object AlunosMAE_PROFISSAO: TIBStringField
      FieldName = 'MAE_PROFISSAO'
      Origin = 'ALUNOS.MAE_PROFISSAO'
    end
    object AlunosMAE_NASCIMENTO: TDateField
      FieldName = 'MAE_NASCIMENTO'
      Origin = 'ALUNOS.MAE_NASCIMENTO'
    end
    object AlunosFONE: TIBStringField
      FieldName = 'FONE'
      Origin = 'ALUNOS.FONE'
      Size = 30
    end
    object AlunosDATA_MATRICULA: TDateField
      FieldName = 'DATA_MATRICULA'
      Origin = 'ALUNOS.DATA_MATRICULA'
    end
    object AlunosBIMESTRE: TSmallintField
      FieldName = 'BIMESTRE'
      Origin = 'ALUNOS.BIMESTRE'
    end
    object AlunosCURSO: TIntegerField
      FieldName = 'CURSO'
      Origin = 'ALUNOS.CURSO'
    end
    object AlunosCHAMADA: TSmallintField
      FieldName = 'CHAMADA'
      Origin = 'ALUNOS.CHAMADA'
    end
    object AlunosSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'ALUNOS.STATUS'
      FixedChar = True
      Size = 1
    end
    object AlunosDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'ALUNOS.DATA_SAIDA'
    end
    object AlunosBOLSA: TIBBCDField
      FieldName = 'BOLSA'
      Origin = 'ALUNOS.BOLSA'
      Precision = 9
      Size = 2
    end
    object AlunosOBS_HIST: TMemoField
      FieldName = 'OBS_HIST'
      Origin = 'ALUNOS.OBS_HIST'
      BlobType = ftMemo
      Size = 8
    end
    object AlunosSACADO: TIBStringField
      FieldName = 'SACADO'
      Origin = 'ALUNOS.SACADO'
      Size = 40
    end
    object AlunosFINAL: TIBStringField
      FieldName = 'FINAL'
      Origin = 'ALUNOS.FINAL'
      FixedChar = True
      Size = 1
    end
    object AlunosMATERIAL: TSmallintField
      FieldName = 'MATERIAL'
      Origin = 'ALUNOS.MATERIAL'
    end
    object AlunosVENCIMENTO: TSmallintField
      FieldName = 'VENCIMENTO'
      Origin = 'ALUNOS.VENCIMENTO'
    end
    object AlunosANO: TSmallintField
      FieldName = 'ANO'
      Origin = 'ALUNOS.ANO'
    end
    object AlunosBLOQUETO_1SEM: TSmallintField
      FieldName = 'BLOQUETO_1SEM'
      Origin = 'ALUNOS.BLOQUETO_1SEM'
    end
    object AlunosBLOQUETO_2SEM: TSmallintField
      FieldName = 'BLOQUETO_2SEM'
      Origin = 'ALUNOS.BLOQUETO_2SEM'
    end
    object AlunosMES_MATERIAL: TSmallintField
      FieldName = 'MES_MATERIAL'
      Origin = 'ALUNOS.MES_MATERIAL'
    end
    object AlunosSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = 'ALUNOS.SENHA'
      Size = 10
    end
    object AlunosSACADO_RG: TIBStringField
      FieldName = 'SACADO_RG'
      Origin = 'ALUNOS.SACADO_RG'
    end
    object AlunosSACADO_CPF: TIBStringField
      FieldName = 'SACADO_CPF'
      Origin = 'ALUNOS.SACADO_CPF'
      FixedChar = True
      Size = 15
    end
    object AlunosMOD_ESPORTIVA: TIBStringField
      FieldName = 'MOD_ESPORTIVA'
      Origin = 'ALUNOS.MOD_ESPORTIVA'
      FixedChar = True
      Size = 3
    end
    object AlunosH_ANO1: TIntegerField
      FieldName = 'H_ANO1'
      Origin = 'ALUNOS.H_ANO1'
    end
    object AlunosH_ESCOLA1: TIBStringField
      FieldName = 'H_ESCOLA1'
      Origin = 'ALUNOS.H_ESCOLA1'
      Size = 40
    end
    object AlunosH_CIDADE1: TIBStringField
      FieldName = 'H_CIDADE1'
      Origin = 'ALUNOS.H_CIDADE1'
      Size = 25
    end
    object AlunosH_UF1: TIBStringField
      FieldName = 'H_UF1'
      Origin = 'ALUNOS.H_UF1'
      FixedChar = True
      Size = 2
    end
    object AlunosH_ANO2: TIntegerField
      FieldName = 'H_ANO2'
      Origin = 'ALUNOS.H_ANO2'
    end
    object AlunosH_ESCOLA2: TIBStringField
      FieldName = 'H_ESCOLA2'
      Origin = 'ALUNOS.H_ESCOLA2'
      Size = 40
    end
    object AlunosH_CIDADE2: TIBStringField
      FieldName = 'H_CIDADE2'
      Origin = 'ALUNOS.H_CIDADE2'
      Size = 25
    end
    object AlunosH_UF2: TIBStringField
      FieldName = 'H_UF2'
      Origin = 'ALUNOS.H_UF2'
      FixedChar = True
      Size = 2
    end
    object S: TIntegerField
      FieldName = 'H_ANO3'
      Origin = 'ALUNOS.H_ANO3'
    end
    object AlunosH_ESCOLA3: TIBStringField
      FieldName = 'H_ESCOLA3'
      Origin = 'ALUNOS.H_ESCOLA3'
      Size = 40
    end
    object AlunosH_CIDADE3: TIBStringField
      FieldName = 'H_CIDADE3'
      Origin = 'ALUNOS.H_CIDADE3'
      Size = 25
    end
    object AlunosH_UF3: TIBStringField
      FieldName = 'H_UF3'
      Origin = 'ALUNOS.H_UF3'
      FixedChar = True
      Size = 2
    end
    object AlunosBOLSA_OBS: TIBStringField
      FieldName = 'BOLSA_OBS'
      Origin = 'ALUNOS.BOLSA_OBS'
      Size = 50
    end
    object AlunosCODIGO_SP: TIBStringField
      FieldName = 'CODIGO_SP'
      Origin = 'ALUNOS.CODIGO_SP'
      FixedChar = True
      Size = 8
    end
    object AlunosCPF: TSmallintField
      FieldName = 'CPF'
      Origin = '"ALUNOS"."CPF"'
    end
  end
  object DSAlunos: TDataSource
    DataSet = Alunos
    Left = 456
    Top = 272
  end
end
