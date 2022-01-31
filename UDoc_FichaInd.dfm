object Doc_FichaInd: TDoc_FichaInd
  Left = 417
  Top = 219
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Impressão de Ficha Individual'
  ClientHeight = 327
  ClientWidth = 593
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
  object Label2: TLabel
    Left = 6
    Top = 16
    Width = 89
    Height = 13
    Alignment = taRightJustify
    Caption = 'Série / Turma :'
  end
  object Label1: TLabel
    Left = 15
    Top = 56
    Width = 80
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome Inicial :'
  end
  object Label3: TLabel
    Left = 23
    Top = 80
    Width = 72
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome Final :'
  end
  object Label4: TLabel
    Left = 18
    Top = 136
    Width = 77
    Height = 13
    Alignment = taRightJustify
    Caption = 'Observação :'
  end
  object Label5: TLabel
    Left = 35
    Top = 109
    Width = 60
    Height = 13
    Alignment = taRightJustify
    Caption = 'Bimestre :'
  end
  object Fecha: TBitBtn
    Left = 492
    Top = 292
    Width = 89
    Height = 25
    Caption = '&Fecha'
    TabOrder = 0
    Kind = bkClose
    Layout = blGlyphRight
  end
  object Imprime: TBitBtn
    Left = 380
    Top = 292
    Width = 89
    Height = 25
    Caption = '&Imprime'
    Enabled = False
    TabOrder = 6
    OnClick = ImprimeClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object Turma: TRxDBLookupCombo
    Left = 101
    Top = 11
    Width = 292
    Height = 21
    DropDownCount = 15
    DisplayAllFields = True
    DisplayEmpty = '<< Selecione a Turma >>'
    EmptyItemColor = clMenu
    LookupField = 'Nome'
    LookupDisplay = 'Nome'
    LookupSource = DM.dsTurmas
    TabOrder = 1
    OnChange = TurmaChange
  end
  object NomeIni: TRxDBLookupCombo
    Left = 101
    Top = 51
    Width = 292
    Height = 21
    DropDownCount = 25
    DisplayAllFields = True
    DisplayEmpty = '<< Selecione o Nome Inicial >>'
    EmptyValue = '0'
    EmptyItemColor = clMenu
    LookupField = 'NOME'
    LookupDisplay = 'NOME'
    LookupSource = dsQAlunos
    TabOrder = 2
  end
  object NomeFin: TRxDBLookupCombo
    Left = 101
    Top = 75
    Width = 292
    Height = 21
    DropDownCount = 25
    DisplayAllFields = True
    DisplayEmpty = '<< Selecione o Nome Final >>'
    EmptyValue = '0'
    EmptyItemColor = clMenu
    LookupField = 'NOME'
    LookupDisplay = 'NOME'
    LookupSource = dsQAlunos
    TabOrder = 3
  end
  object Obs: TMemo
    Left = 101
    Top = 136
    Width = 484
    Height = 142
    TabOrder = 5
  end
  object Bimestre: TRadioGroup
    Left = 102
    Top = 96
    Width = 291
    Height = 30
    Columns = 4
    ItemIndex = 0
    Items.Strings = (
      '1º'
      '2º'
      '3º'
      '4º')
    TabOrder = 4
  end
  object FS1: TFormStorage
    StoredProps.Strings = (
      'Obs.Lines'
      'Bimestre.ItemIndex')
    StoredValues = <>
    Left = 392
    Top = 65528
  end
  object dsQAlunos: TDataSource
    DataSet = QAlunos
    Left = 72
    Top = 264
  end
  object QAlunos: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CODIGO,NOME'
      'from ALUNOS'
      'where SERIE = :serie and'
      '          TURMA = :turma'
      'order by NOME')
    Left = 16
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'turma'
        ParamType = ptUnknown
      end>
    object QAlunosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QAlunosNOME: TIBStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
  end
end
