object Doc_MatLecionada: TDoc_MatLecionada
  Left = 131
  Top = 178
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Matéria Lecionada'
  ClientHeight = 154
  ClientWidth = 430
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
  object Label3: TLabel
    Left = 22
    Top = 16
    Width = 63
    Height = 13
    Alignment = taRightJustify
    Caption = 'Disciplina :'
  end
  object Label4: TLabel
    Left = 25
    Top = 75
    Width = 60
    Height = 13
    Alignment = taRightJustify
    Caption = 'Bimestre :'
  end
  object Label1: TLabel
    Left = 46
    Top = 46
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = 'Série :'
  end
  object Bimestre: TRadioGroup
    Left = 92
    Top = 62
    Width = 206
    Height = 30
    Columns = 4
    ItemIndex = 0
    Items.Strings = (
      '1º '
      '2º '
      '3º '
      '4º ')
    TabOrder = 3
  end
  object Fecha: TBitBtn
    Left = 324
    Top = 115
    Width = 89
    Height = 25
    Caption = '&Fecha'
    TabOrder = 0
    Kind = bkClose
    Layout = blGlyphRight
  end
  object Imprime: TBitBtn
    Tag = 2
    Left = 222
    Top = 115
    Width = 89
    Height = 25
    Caption = '&Imprime'
    Enabled = False
    TabOrder = 5
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
  object Disciplina: TRxDBLookupCombo
    Left = 91
    Top = 11
    Width = 320
    Height = 21
    DropDownCount = 20
    DisplayAllFields = True
    DisplayEmpty = '<< Selecione a Disciplina >>'
    EmptyItemColor = clMenu
    LookupField = 'CODIGO'
    LookupDisplay = 'CODIGO;NOME'
    LookupSource = DM.dsDisciplinas
    TabOrder = 1
    OnChange = DisciplinaChange
  end
  object Visualiza: TBitBtn
    Tag = 1
    Left = 121
    Top = 115
    Width = 89
    Height = 25
    Caption = '&Visualiza'
    Enabled = False
    TabOrder = 4
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
  object Serie: TRadioGroup
    Left = 92
    Top = 32
    Width = 159
    Height = 30
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      '1ª '
      '2ª '
      '3ª ')
    TabOrder = 2
  end
  object FS1: TFormStorage
    StoredValues = <>
    Left = 352
    Top = 65512
  end
  object Disc: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select D.NOME_RES, G.CH_OFICIAL'
      'from GRADE G'
      'join DISCIPLINAS D on G.DISCIPLINA = D.CODIGO'
      'where G.SEQUENCIA = :seq and'
      '           G.SERIE = :ser and'
      '           G.TIPO <> '#39'NO'#39)
    Left = 384
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'seq'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ser'
        ParamType = ptUnknown
      end>
    object DiscNOME_RES: TIBStringField
      FieldName = 'NOME_RES'
      Origin = 'DISCIPLINAS.NOME_RES'
      FixedChar = True
      Size = 4
    end
    object DiscCH_OFICIAL: TIntegerField
      FieldName = 'CH_OFICIAL'
      Origin = 'GRADE.CH_OFICIAL'
    end
  end
  object Grade: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from GRADE'
      'where DISCIPLINA = :disciplina and SERIE = :serie')
    Left = 8
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'disciplina'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end>
    object GradeSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = 'GRADE.SERIE'
      Required = True
    end
    object GradeDISCIPLINA: TIntegerField
      FieldName = 'DISCIPLINA'
      Origin = 'GRADE.DISCIPLINA'
      Required = True
    end
    object GradeSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = 'GRADE.SEQUENCIA'
      Required = True
    end
    object GradeCH_SEMANAL: TIntegerField
      FieldName = 'CH_SEMANAL'
      Origin = 'GRADE.CH_SEMANAL'
    end
    object GradeCH_OFICIAL: TIntegerField
      FieldName = 'CH_OFICIAL'
      Origin = 'GRADE.CH_OFICIAL'
    end
    object GradeCH_N_OFICIAL: TIntegerField
      FieldName = 'CH_N_OFICIAL'
      Origin = 'GRADE.CH_N_OFICIAL'
    end
    object GradeTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'GRADE.TIPO'
      FixedChar = True
      Size = 2
    end
  end
end
