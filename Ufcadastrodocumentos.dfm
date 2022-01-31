object fdocumentos: Tfdocumentos
  Left = 390
  Top = 323
  BorderStyle = bsSingle
  Caption = 'Cadastro de documentos exigidos'
  ClientHeight = 167
  ClientWidth = 660
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
  object Label1: TLabel
    Left = 8
    Top = 0
    Width = 412
    Height = 31
    Caption = '.:Cadastro de documentos exigidos:.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = '@Adobe Fan Heiti Std B'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 40
    Width = 107
    Height = 13
    Caption = 'Código do documento:'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 40
    Top = 85
    Width = 58
    Height = 13
    Caption = 'Documento:'
    FocusControl = DBEdit2
  end
  object DBEdit1: TDBEdit
    Left = 40
    Top = 56
    Width = 64
    Height = 21
    DataField = 'COD_DOC'
    DataSource = DM2.DsDocumento
    Enabled = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 40
    Top = 101
    Width = 601
    Height = 21
    DataField = 'DOCUMENTO'
    DataSource = DM2.DsDocumento
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 40
    Top = 128
    Width = 240
    Height = 25
    DataSource = DM2.DsDocumento
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 568
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 3
    OnClick = BitBtn1Click
    Kind = bkClose
  end
end
