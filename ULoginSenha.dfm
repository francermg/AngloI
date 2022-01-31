object fsenhalogin: Tfsenhalogin
  Left = 394
  Top = 229
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '.:Troca Senha e Login:.'
  ClientHeight = 135
  ClientWidth = 245
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 48
    Width = 29
    Height = 13
    Caption = 'Login:'
  end
  object Label2: TLabel
    Left = 16
    Top = 81
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object RxLabel1: TRxLabel
    Left = 16
    Top = 8
    Width = 136
    Height = 13
    Caption = 'Troca Login e Senha.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = clWhite
  end
  object dbsenha: TDBEdit
    Left = 72
    Top = 73
    Width = 121
    Height = 21
    DataField = 'SENHA'
    DataSource = DM.dsProfessores
    TabOrder = 1
  end
  object dblogin: TDBEdit
    Left = 72
    Top = 40
    Width = 121
    Height = 21
    DataField = 'LOGIN'
    DataSource = DM.dsProfessores
    TabOrder = 0
  end
  object RxSplitter1: TRxSplitter
    Left = 18
    Top = 22
    Width = 145
    Height = 3
    Color = clBlue
  end
  object beditar: TBitBtn
    Left = 40
    Top = 104
    Width = 57
    Height = 19
    Cursor = crHandPoint
    Caption = 'Editar'
    TabOrder = 3
    OnClick = beditarClick
  end
  object bsalvar: TBitBtn
    Left = 152
    Top = 105
    Width = 59
    Height = 18
    Cursor = crHandPoint
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = bsalvarClick
  end
end
