object Lst_Alunos: TLst_Alunos
  Left = 400
  Top = 208
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Listagem de Alunos'
  ClientHeight = 341
  ClientWidth = 498
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
  object Label1: TLabel
    Left = 236
    Top = 257
    Width = 89
    Height = 13
    Alignment = taRightJustify
    Caption = 'Mod.Esportiva :'
  end
  object Label2: TLabel
    Left = 26
    Top = 287
    Width = 36
    Height = 13
    Caption = 'Senha'
  end
  object Label3: TLabel
    Left = 287
    Top = 281
    Width = 38
    Height = 13
    Alignment = taRightJustify
    Caption = 'Sexo :'
  end
  object Turma: TRxDBLookupCombo
    Left = 112
    Top = 11
    Width = 369
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
    Left = 285
    Top = 302
    Width = 89
    Height = 25
    Caption = '&Imprime'
    Enabled = False
    TabOrder = 11
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
    Left = 392
    Top = 302
    Width = 89
    Height = 25
    Caption = '&Fecha'
    TabOrder = 12
    Kind = bkClose
    Layout = blGlyphRight
  end
  object Status: TRadioGroup
    Left = 20
    Top = 65
    Width = 170
    Height = 104
    Caption = 'Status'
    ItemIndex = 0
    Items.Strings = (
      'TODOS'
      'Ativos'
      'Desistentes'
      'Transferidos'
      'Reclassificado'
      'Outros')
    TabOrder = 4
    TabStop = True
  end
  object Ordem: TRadioGroup
    Left = 21
    Top = 191
    Width = 122
    Height = 60
    Caption = 'Ordem'
    ItemIndex = 0
    Items.Strings = (
      'Nome'
      'Chamada'
      'Data Matrícula')
    TabOrder = 7
    TabStop = True
  end
  object Tipo: TRadioGroup
    Left = 299
    Top = 61
    Width = 182
    Height = 154
    Caption = 'Tipo'
    ItemIndex = 0
    Items.Strings = (
      'Simples'
      'Normal'
      'Controle de Notas'
      'Controle de Bolsas'
      'Controle de Faltas'
      'Capa de Diário'
      'Reunião Presença'
      'Telefone Reunião'
      'Endereços Formandos')
    TabOrder = 5
    TabStop = True
    OnClick = TipoClick
  end
  object Bimestre: TRadioGroup
    Left = 299
    Top = 220
    Width = 183
    Height = 30
    Caption = 'Bimestre'
    Columns = 4
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      '1º'
      '2º'
      '3º'
      '4º')
    TabOrder = 6
  end
  object Serie: TRadioGroup
    Left = 111
    Top = 31
    Width = 370
    Height = 31
    Columns = 5
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      '1ª'
      '2ª'
      '3ª'
      'Cursinho'
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
  object Senha: TEdit
    Left = 25
    Top = 300
    Width = 76
    Height = 21
    Color = clMenu
    Enabled = False
    PasswordChar = '*'
    TabOrder = 8
  end
  object ModEsp: TComboBox
    Left = 330
    Top = 253
    Width = 153
    Height = 21
    Style = csDropDownList
    DropDownCount = 9
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      '<< Todas >>'
      'Educação Física'
      'Natação'
      'Voleibol'
      'Handebol'
      'Fut-Sal'
      'Musculação'
      'Basquetebol'
      'Tênis de Mesa'
      'Xadrez'
      'Atletismo')
  end
  object Sexo: TComboBox
    Left = 330
    Top = 277
    Width = 153
    Height = 21
    Style = csDropDownList
    DropDownCount = 9
    ItemHeight = 13
    TabOrder = 10
    Items.Strings = (
      '<< Ambos >>'
      'Masculino'
      'Feminino')
  end
  object material: TCheckBox
    Left = 29
    Top = 265
    Width = 97
    Height = 17
    Caption = 'Material sim'
    Checked = True
    State = cbChecked
    TabOrder = 13
    OnClick = materialClick
  end
  object FS1: TFormStorage
    StoredProps.Strings = (
      'Bimestre.ItemIndex'
      'Serie.ItemIndex')
    StoredValues = <>
    Left = 448
    Top = 56
  end
end
