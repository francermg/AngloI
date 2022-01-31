object Lst_AlunosEtiq: TLst_AlunosEtiq
  Left = 272
  Top = 374
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Etiquetas de Alunos'
  ClientHeight = 186
  ClientWidth = 360
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
  object Turma: TRxDBLookupCombo
    Left = 103
    Top = 11
    Width = 236
    Height = 21
    DropDownCount = 15
    DisplayAllFields = True
    DisplayEmpty = '<< Selecione a Turma >>'
    EmptyItemColor = clMenu
    LookupField = 'Nome'
    LookupDisplay = 'Nome'
    LookupSource = DM.dsTurmas
    TabOrder = 2
    OnChange = TurmaChange
  end
  object Imprime: TBitBtn
    Left = 152
    Top = 148
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
  object Fecha: TBitBtn
    Left = 257
    Top = 148
    Width = 89
    Height = 25
    Caption = '&Fecha'
    TabOrder = 7
    Kind = bkClose
    Layout = blGlyphRight
  end
  object Tipo: TRadioGroup
    Left = 151
    Top = 68
    Width = 124
    Height = 66
    Caption = 'Material'
    ItemIndex = 0
    Items.Strings = (
      'TODOS'
      'COM Material'
      'SEM Material')
    TabOrder = 5
    TabStop = True
  end
  object Serie: TRadioGroup
    Left = 103
    Top = 32
    Width = 237
    Height = 30
    Columns = 4
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      '1ª'
      '2ª'
      '3ª'
      'Todas')
    TabOrder = 3
  end
  object pTurma: TRadioButton
    Left = 18
    Top = 16
    Width = 84
    Height = 17
    Caption = 'p/ Turma.:'
    Checked = True
    TabOrder = 0
    TabStop = True
    OnClick = pTurmaClick
  end
  object pSerie: TRadioButton
    Left = 18
    Top = 43
    Width = 84
    Height = 17
    Caption = 'p/ Série...:'
    TabOrder = 1
    OnClick = pSerieClick
  end
  object Status: TRadioGroup
    Left = 19
    Top = 68
    Width = 120
    Height = 101
    Caption = 'Status'
    ItemIndex = 0
    Items.Strings = (
      'TODOS'
      'Ativos'
      'Desistentes'
      'Transferidos'
      'Outros')
    TabOrder = 4
    TabStop = True
  end
  object FS1: TFormStorage
    StoredProps.Strings = (
      'Serie.ItemIndex'
      'Tipo.ItemIndex'
      'Status.ItemIndex')
    StoredValues = <>
    Left = 296
    Top = 65512
  end
end
