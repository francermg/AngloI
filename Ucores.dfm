object fcores: Tfcores
  Left = 259
  Top = 243
  Width = 545
  Height = 155
  BorderIcons = []
  Caption = 'Manutenção de cores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RxLabel1: TRxLabel
    Left = 40
    Top = 6
    Width = 303
    Height = 30
    Caption = 'Gerenciamento de Cores.'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7105874
    Font.Height = -25
    Font.Name = 'Futura Bk BT'
    Font.Style = [fsBold, fsUnderline]
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 32
    Top = 40
    Width = 57
    Height = 13
    Caption = 'Digite a cor.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Fecha: TBitBtn
    Left = 288
    Top = 87
    Width = 75
    Height = 25
    Caption = '&Fecha'
    TabOrder = 0
    Kind = bkClose
    Layout = blGlyphRight
  end
  object DBNavigator: TDBNavigator
    Left = 40
    Top = 88
    Width = 240
    Height = 25
    DataSource = DM.DsCores
    TabOrder = 1
  end
  object DBcores: TDBEdit
    Left = 32
    Top = 56
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'COR'
    DataSource = DM.DsCores
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 368
    Top = 0
    Width = 121
    Height = 120
    Color = clBtnFace
    DataSource = DM.DsCores
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'COR'
        Width = 80
        Visible = True
      end>
  end
end
