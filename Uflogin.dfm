object flogin: Tflogin
  Left = 571
  Top = 319
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 146
  ClientWidth = 194
  Color = 4791320
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 16
    Width = 36
    Height = 13
    Caption = 'Login:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 64
    Width = 41
    Height = 13
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Esenha: TEdit
    Left = 40
    Top = 80
    Width = 121
    Height = 21
    Hint = 'Utilize somente letras minusculas.'
    BorderStyle = bsNone
    ParentShowHint = False
    PasswordChar = '*'
    ShowHint = True
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 112
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'OK'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object Bfecha: TBitBtn
    Left = 112
    Top = 112
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BfechaClick
  end
  object ENome: TEdit
    Left = 40
    Top = 32
    Width = 121
    Height = 21
    BorderStyle = bsNone
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object FormPlacement1: TFormPlacement
    Left = 144
  end
end
