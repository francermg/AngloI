object fpropaganda: Tfpropaganda
  Left = 411
  Top = 217
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '.:Etiquetas:.'
  ClientHeight = 181
  ClientWidth = 435
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
  object RxLabel1: TRxLabel
    Left = 8
    Top = 29
    Width = 46
    Height = 16
    Caption = 'Escola:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Futura Hv BT'
    Font.Style = []
    ParentFont = False
  end
  object RxLabel2: TRxLabel
    Left = 8
    Top = 69
    Width = 54
    Height = 16
    Caption = 'Sistema:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Futura Hv BT'
    Font.Style = []
    ParentFont = False
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 109
    Width = 54
    Height = 16
    Caption = 'Telefone:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Futura Hv BT'
    Font.Style = []
    ParentFont = False
  end
  object RxLabel4: TRxLabel
    Left = 136
    Top = 109
    Width = 72
    Height = 16
    Caption = 'Quantidade.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Futura Hv BT'
    Font.Style = []
    ParentFont = False
  end
  object RxLabel5: TRxLabel
    Left = 8
    Top = 4
    Width = 287
    Height = 22
    Caption = 'Etiquetas padrão para divulgação.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Nasalization'
    Font.Style = []
    ParentFont = False
  end
  object bgerar: TBitBtn
    Left = 90
    Top = 152
    Width = 66
    Height = 25
    Cursor = crHandPoint
    Caption = 'Gerar'
    TabOrder = 4
    OnClick = bgerarClick
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777700000007777777777777777700000007777777777777777700000007000
      0777700007777000000070FB074470FB07447000000070BF077770BF07777000
      000070F0077770F0077770000000700077777000777770000000777777777777
      77777000000077777777777777777000000070000777700007777000000070FB
      074470FB07447000000070BF077770BF07777000000070F0077770F007777000
      0000700077777000777770000000777777777777777770000000777777777777
      777770000000}
  end
  object dquantidade: TEdit
    Left = 136
    Top = 125
    Width = 46
    Height = 21
    TabOrder = 3
  end
  object bimprimir: TBitBtn
    Left = 158
    Top = 152
    Width = 67
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 5
    OnClick = bimprimirClick
    Glyph.Data = {
      E6000000424DE6000000000000007600000028000000100000000E0000000100
      0400000000007000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333330000000000003330777777777777033088888888899703308888888888
      870333000000000000333330FCCCCCCF03333330FFFFFFFF03333330FCCCCCCF
      03333330FFFFFFFF03333330FCCCCCCF03333330FFFFFFFF0333333000000000
      03333333333333333333}
  end
  object descola: TEdit
    Left = 8
    Top = 45
    Width = 417
    Height = 21
    TabOrder = 0
  end
  object dmesagem: TEdit
    Left = 8
    Top = 85
    Width = 417
    Height = 21
    TabOrder = 1
  end
  object dtelefone: TEdit
    Left = 8
    Top = 125
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object babagar: TBitBtn
    Left = 227
    Top = 152
    Width = 66
    Height = 25
    Caption = 'Apagar'
    TabOrder = 6
    OnClick = babagarClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
      DADAADADADADA1ADADADDADADADA11DADAD1ADADADAD111DAD1DDADADADAD11A
      D11A00000000000115AD0888888888511ADA08008008081511AD08888888811A
      D1150444444514444D51D4FFFFF15FFF4ADAA4F00F00F00F4DADD4FFFFFFFFFF
      4ADAA444444444444DADD484484484484ADAA444444444444DAD}
  end
  object BitBtn1: TBitBtn
    Left = 297
    Top = 152
    Width = 61
    Height = 25
    Caption = '&Sair'
    TabOrder = 7
    Kind = bkClose
  end
  object FP: TFormPlacement
    UseRegistry = True
    Left = 376
    Top = 8
  end
end
