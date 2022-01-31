object fcadastroescola: Tfcadastroescola
  Left = 572
  Top = 183
  BorderStyle = bsSingle
  Caption = 'Cadastro de escolas.'
  ClientHeight = 254
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 14
    Top = 75
    Width = 65
    Height = 17
    DataField = 'ID_ESCOLA'
    DataSource = DM2.dsEscola
  end
  object Label1: TLabel
    Left = 14
    Top = 50
    Width = 86
    Height = 13
    Caption = 'Código da Escola:'
  end
  object Label2: TLabel
    Left = 14
    Top = 108
    Width = 81
    Height = 13
    Caption = 'Nome da Escola:'
  end
  object Label3: TLabel
    Left = 14
    Top = 170
    Width = 159
    Height = 13
    Caption = 'Tipo da Escola (Publica/Privada):'
  end
  object Label4: TLabel
    Left = 12
    Top = 7
    Width = 208
    Height = 28
    Caption = 'Cadastro de Escolas:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Myriad Hebrew'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 14
    Top = 31
    Width = 214
    Height = 9
    Shape = bsBottomLine
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 218
    Width = 240
    Height = 25
    DataSource = DM2.dsEscola
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 14
    Top = 132
    Width = 353
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ESCOLA'
    DataSource = DM2.dsEscola
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 262
    Top = 218
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = '&Sair'
    TabOrder = 2
    Kind = bkClose
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 16
    Top = 168
    Width = 265
    Height = 33
    Caption = 'Tipo da escola:'
    Columns = 2
    DataField = 'TIPO'
    DataSource = DM2.dsEscola
    Items.Strings = (
      'Publica'
      'Privada')
    TabOrder = 3
    Values.Strings = (
      'PU'
      'PR')
  end
end
