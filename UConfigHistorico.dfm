object fConfigHistorico: TfConfigHistorico
  Left = 467
  Top = 209
  Width = 612
  Height = 318
  Caption = 'Configuração de hitórico'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 494
    Height = 37
    Caption = 'Configuração de Histórico.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'MS Gothic'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 56
    Width = 50
    Height = 13
    Caption = 'Formação:'
  end
  object Label3: TLabel
    Left = 32
    Top = 102
    Width = 49
    Height = 13
    Caption = 'Intinerário:'
  end
  object Label4: TLabel
    Left = 32
    Top = 144
    Width = 110
    Height = 13
    Caption = 'Área de conhecimento:'
  end
  object Label5: TLabel
    Left = 32
    Top = 192
    Width = 48
    Height = 13
    Caption = 'Disciplina:'
  end
  object formacao: TDBLookupComboBox
    Left = 32
    Top = 72
    Width = 537
    Height = 21
    Cursor = crHandPoint
    DataField = 'FORMACAO_CODIGO'
    DataSource = DM.DsFor_Int
    DragCursor = crArrow
    Enabled = False
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = DM.dsformacao
    TabOrder = 0
  end
  object intinerario: TDBLookupComboBox
    Left = 32
    Top = 116
    Width = 537
    Height = 21
    DataField = 'INTINERARIOS_CODIGO'
    DataSource = DM.DsFor_Int
    Enabled = False
    KeyField = 'CODIGO'
    ListField = 'NOME_INTINERARIO'
    ListSource = DM.DsIntinerarios
    TabOrder = 1
  end
  object areaconhecimento: TDBLookupComboBox
    Left = 32
    Top = 163
    Width = 537
    Height = 21
    DataField = 'ARE_CONHECIMENTO_ID_AREA'
    DataSource = DM.DsFor_Int
    Enabled = False
    KeyField = 'ID_AREA'
    ListField = 'NOME_AREA'
    ListSource = DM.DsArea
    TabOrder = 2
  end
  object disciplinas: TDBLookupComboBox
    Left = 32
    Top = 209
    Width = 537
    Height = 21
    DataField = 'COD_DICIPLINA'
    DataSource = DM.DsFor_Int
    Enabled = False
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = DM.dsDisciplinas
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 31
    Top = 240
    Width = 129
    Height = 25
    Cursor = crHandPoint
    Caption = 'Adicionar configuração'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 240
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 490
    Top = 240
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = '&Fechar'
    TabOrder = 6
    Kind = bkClose
  end
  object BitBtn4: TBitBtn
    Left = 250
    Top = 240
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 7
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 337
    Top = 240
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Consulta'
    TabOrder = 8
    OnClick = BitBtn5Click
  end
end
