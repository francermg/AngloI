object farea_conhecimento: Tfarea_conhecimento
  Left = 457
  Top = 347
  Width = 729
  Height = 206
  Caption = 'Cadastro de áreas do conhecimento.'
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
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 36
    Height = 13
    Caption = 'Código.'
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 25
    Height = 13
    Caption = 'Área.'
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 136
    Width = 240
    Height = 25
    DataSource = DM.DsArea
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 32
    Width = 89
    Height = 21
    DataField = 'ID_AREA'
    DataSource = DM.DsArea
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 72
    Width = 681
    Height = 21
    DataField = 'NOME_AREA'
    DataSource = DM.DsArea
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 632
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 3
    Kind = bkClose
  end
end
