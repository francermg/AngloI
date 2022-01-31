object fAtualizaDataHora: TfAtualizaDataHora
  Left = 519
  Top = 215
  Width = 684
  Height = 327
  Caption = 'Atualização da data e da hora dos leitores biométricos.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblAviso: TLabel
    Left = 384
    Top = 80
    Width = 275
    Height = 65
    Caption = 
      '                          <<<A T E N Ç Ã O>>>'#13#10#13#10'Este procedimen' +
      'to atualizará a Data e Hora dos aparelhos'#13#10'de leitura Biométrica' +
      '.'#13#10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object btnFechar: TButton
    Left = 592
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = btnFecharClick
  end
  object lstLista: TListBox
    Left = 8
    Top = 3
    Width = 369
    Height = 273
    BorderStyle = bsNone
    ItemHeight = 13
    TabOrder = 1
  end
  object btnAtualizar: TButton
    Left = 504
    Top = 256
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Atualizar'
    TabOrder = 2
    OnClick = btnAtualizarClick
  end
  object SockBio: TClientSocket
    Active = False
    ClientType = ctBlocking
    Host = '192.168.0.218'
    Port = 3000
    Left = 440
    Top = 16
  end
end
