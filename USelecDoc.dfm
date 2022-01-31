object fSelcDoc: TfSelcDoc
  Left = 391
  Top = 172
  BorderStyle = bsSingle
  Caption = '.:Seleção de documentos devidos:.'
  ClientHeight = 416
  ClientWidth = 794
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
    Left = 15
    Top = 16
    Width = 428
    Height = 29
    Caption = 'Termo de documentos devidos dos alunos.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object SpeedAdiciona: TSpeedButton
    Left = 352
    Top = 88
    Width = 73
    Height = 22
    Cursor = crHandPoint
    Caption = '>>'
    OnClick = SpeedAdicionaClick
  end
  object SpeedExclui: TSpeedButton
    Left = 352
    Top = 128
    Width = 73
    Height = 22
    Cursor = crHandPoint
    Caption = '<<'
    OnClick = SpeedExcluiClick
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 64
    Width = 320
    Height = 337
    DataSource = DM2.DsDocumento
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Title.Caption = 'Documentos'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 448
    Top = 64
    Width = 313
    Height = 337
    DataSource = DM2.DAluDoc
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 352
    Top = 368
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = '&Fechar'
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkClose
  end
  object BitBtn2: TBitBtn
    Left = 351
    Top = 176
    Width = 76
    Height = 24
    Cursor = crHandPoint
    Caption = 'Visualizar'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
end
