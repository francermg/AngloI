object fcupom: Tfcupom
  Left = 479
  Top = 292
  BorderStyle = bsSingle
  Caption = 'Autenticação de cupom'
  ClientHeight = 309
  ClientWidth = 652
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 24
    Width = 180
    Height = 37
    Caption = 'Sorteio 2017'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object dbtxtNOME: TDBText
    Left = 0
    Top = 277
    Width = 647
    Height = 29
    Alignment = taCenter
    DataField = 'NOME'
    DataSource = DM2.dsAlunosCupom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object btn1: TButton
    Left = 176
    Top = 64
    Width = 289
    Height = 89
    Cursor = crHandPoint
    Caption = 'Autenticação'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btn1Click
  end
  object lkComboPesqAluno: TRxDBLookupCombo
    Left = 12
    Top = 239
    Width = 637
    Height = 23
    Cursor = crHandPoint
    DropDownCount = 25
    DisplayEmpty = 'Pesquisa por Nome'
    EmptyValue = '0'
    EmptyItemColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    LookupField = 'CODIGO'
    LookupDisplay = 'NOME'
    LookupSource = DM2.dsAlunosCupom
    ParentFont = False
    TabOrder = 1
  end
end
