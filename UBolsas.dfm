object Bolsas: TBolsas
  Left = 321
  Top = 265
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'A.B.Anglo'
  ClientHeight = 126
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 3
    Top = 3
    Width = 165
    Height = 13
    Caption = 'Selecione o tipo de listagem.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 129
    Top = 22
    Width = 16
    Height = 20
    Caption = '%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 216
    Top = 80
    Width = 68
    Height = 13
    Caption = 'Digite a senha'
  end
  object Label4: TLabel
    Left = 2
    Top = 30
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
    Visible = False
  end
  object Label5: TLabel
    Left = 2
    Top = 62
    Width = 51
    Height = 13
    Caption = 'Data Final:'
    Visible = False
  end
  object Edit1: TEdit
    Left = 69
    Top = 22
    Width = 49
    Height = 21
    TabOrder = 0
    Visible = False
  end
  object Imprime: TBitBtn
    Left = 7
    Top = 90
    Width = 68
    Height = 25
    Caption = '&Imprime'
    TabOrder = 1
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
    Left = 94
    Top = 90
    Width = 69
    Height = 25
    Caption = '&Fecha'
    TabOrder = 2
    OnClick = FechaClick
    Kind = bkClose
    Layout = blGlyphRight
  end
  object Tipo: TRadioGroup
    Left = 216
    Top = 8
    Width = 121
    Height = 65
    Caption = 'Tipo de listagem'
    Items.Strings = (
      'Por valor geral'
      'Por periodo')
    TabOrder = 3
    OnClick = TipoClick
  end
  object Senha: TEdit
    Left = 216
    Top = 96
    Width = 81
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
  end
  object DInicial: TDateEdit
    Left = 66
    Top = 22
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 5
    Visible = False
  end
  object DFinal: TDateEdit
    Left = 66
    Top = 54
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 6
    Visible = False
  end
  object FS1: TFormStorage
    StoredValues = <>
    Top = 65528
  end
end
