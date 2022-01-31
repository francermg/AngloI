object fcad_orgaos: Tfcad_orgaos
  Left = 458
  Top = 286
  BorderStyle = bsSingle
  Caption = 'Cadastro de orgãos emissores de documentos.'
  ClientHeight = 139
  ClientWidth = 578
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
    Left = 8
    Top = 32
    Width = 65
    Height = 17
    DataField = 'COD_ORGAO'
    DataSource = DM.dsorgao
  end
  object Label1: TLabel
    Left = 8
    Top = 60
    Width = 151
    Height = 13
    Caption = 'Digite o nome do orgão emissor:'
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 119
    Height = 13
    Caption = 'Código do orgão emissor.'
  end
  object Label3: TLabel
    Left = 200
    Top = 7
    Width = 378
    Height = 20
    Caption = 'Cadastro de orgãos emissores de documentos.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 203
    Top = 29
    Width = 358
    Height = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 112
    Width = 240
    Height = 25
    DataSource = DM.dsorgao
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 81
    Width = 505
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DM.dsorgao
    TabOrder = 1
  end
end
