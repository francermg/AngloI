object Rel_Mens_Recebidas: TRel_Mens_Recebidas
  Left = 200
  Top = 153
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Relatório de Mensalidades Recebidas'
  ClientHeight = 201
  ClientWidth = 326
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
    Left = 0
    Top = 0
    Width = 326
    Height = 161
    Align = alTop
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 23
      Top = 13
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Início :'
    end
    object Label2: TLabel
      Left = 34
      Top = 37
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fim :'
    end
    object Label3: TLabel
      Left = 15
      Top = 61
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ordem :'
    end
    object Detalhado: TBitBtn
      Left = 52
      Top = 124
      Width = 125
      Height = 25
      Caption = '&Detalhado'
      TabOrder = 0
      OnClick = DetalhadoClick
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
    object DateEdit1: TDateEdit
      Left = 72
      Top = 8
      Width = 97
      Height = 21
      AutoSelect = False
      CheckOnExit = True
      NumGlyphs = 2
      TabOrder = 1
    end
    object DateEdit2: TDateEdit
      Left = 72
      Top = 32
      Width = 97
      Height = 21
      AutoSelect = False
      CheckOnExit = True
      NumGlyphs = 2
      TabOrder = 2
    end
    object Ordem: TComboBox
      Left = 72
      Top = 56
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        'p/Data'
        'Alfabética')
    end
    object TipoPG: TRadioGroup
      Left = 16
      Top = 80
      Width = 262
      Height = 30
      Caption = 'Tipo / Pagamento'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Banco'
        'Tesouraria'
        'TODAS')
      TabOrder = 4
    end
    object Resumido: TBitBtn
      Left = 188
      Top = 124
      Width = 125
      Height = 25
      Caption = '&Resumido'
      TabOrder = 5
      OnClick = ResumidoClick
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
  end
  object Senha: TEdit
    Left = 7
    Top = 168
    Width = 97
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    OnKeyPress = SenhaKeyPress
  end
  object Entra: TBitBtn
    Left = 111
    Top = 167
    Width = 83
    Height = 25
    Caption = '&Entra'
    TabOrder = 2
    OnClick = EntraClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
      44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
      00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
      33833F333383F33300003333AA463362A433333333383F333833F33300003333
      6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
      33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
      6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
      000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
      333383333333F3330000333333322AAA4333333333333833333F333300003333
      333322A4333333333333338333F333330000333333344A433333333333333338
      3F333333000033333336A24333333333333333833F333333000033333336AA43
      33333333333333833F3333330000333333336663333333333333333888333333
      0000}
    Layout = blGlyphRight
    NumGlyphs = 2
  end
  object Fecha: TBitBtn
    Left = 228
    Top = 167
    Width = 89
    Height = 25
    Caption = '&Fecha'
    TabOrder = 3
    Kind = bkClose
    Layout = blGlyphRight
  end
  object FS1: TFormStorage
    StoredValues = <>
    Left = 296
  end
end
