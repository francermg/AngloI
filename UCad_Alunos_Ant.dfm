object Cad_Alunos_Ant: TCad_Alunos_Ant
  Left = 356
  Top = 159
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Puxa Dados de 2016'
  ClientHeight = 411
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 7
    Top = 8
    Width = 590
    Height = 33
    BevelOuter = bvNone
    Color = clGray
    TabOrder = 0
    object Label35: TLabel
      Left = 13
      Top = 8
      Width = 49
      Height = 13
      Caption = 'Código :'
    end
    object Label36: TLabel
      Left = 208
      Top = 8
      Width = 42
      Height = 13
      Caption = 'Nome :'
    end
    object Nome: TEdit
      Left = 256
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
    Left = 8
    Top = 52
    Width = 588
    Height = 297
    DataSource = DSAlunosAnt
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
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
    Left = 376
    Top = 363
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
    Left = 494
    Top = 363
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
    UseRegistry = True
    StoredValues = <>
    Left = 544
    Top = 272
  end
  object AlunosAnt: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    OnCalcFields = AlunosAntCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CODIGO, NOME, SERIE, TURMA'
      'from ALUNOS_ANT'
      'where CODIGO > 0'
      'order by NOME')
    Left = 524
    Top = 216
    object AlunosAntCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ALUNOS_ANT.CODIGO'
      Required = True
    end
    object AlunosAntNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'ALUNOS_ANT.NOME'
      Required = True
      Size = 60
    end
    object AlunosAntSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = 'ALUNOS_ANT.SERIE'
    end
    object AlunosAntTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = 'ALUNOS_ANT.TURMA'
      FixedChar = True
      Size = 1
    end
    object AlunosAntSerieX: TStringField
      FieldKind = fkCalculated
      FieldName = 'SerieX'
      Size = 15
      Calculated = True
    end
  end
  object DSAlunosAnt: TDataSource
    DataSet = AlunosAnt
    Left = 456
    Top = 216
  end
  object ConsAluno: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  CODIGO'
      'from ALUNOS'
      'where CODIGO = :codigo')
    Left = 376
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object ConsAlunoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ALUNOS.CODIGO'
      Required = True
    end
  end
end
