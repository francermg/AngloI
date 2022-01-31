object fSelecAproveitamento: TfSelecAproveitamento
  Left = 482
  Top = 219
  BorderStyle = bsSingle
  Caption = '.:Seleciona Disciplinas para Aproveitamento:.'
  ClientHeight = 327
  ClientWidth = 690
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
  object Adiciona: TSpeedButton
    Left = 288
    Top = 77
    Width = 105
    Height = 22
    Cursor = crHandPoint
    Caption = '>>'
    OnClick = AdicionaClick
  end
  object Retira: TSpeedButton
    Left = 288
    Top = 109
    Width = 105
    Height = 22
    Cursor = crHandPoint
    Caption = '<<'
    OnClick = RetiraClick
  end
  object Label1: TLabel
    Left = 10
    Top = 8
    Width = 374
    Height = 23
    Caption = 'Selecione as disciplinas para aproveitamento.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Disciplinas: TDBGrid
    Left = 8
    Top = 37
    Width = 265
    Height = 281
    DataSource = DM.dsDisciplinas
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Disciplinas'
        Visible = True
      end>
  end
  object Aproveitamento: TDBGrid
    Left = 400
    Top = 37
    Width = 265
    Height = 281
    DataSource = DM2.DsSelectDisciplina
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Aproveitamento'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 288
    Top = 141
    Width = 105
    Height = 25
    Cursor = crHandPoint
    Caption = 'Visualizar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 288
    Top = 295
    Width = 102
    Height = 23
    Cursor = crHandPoint
    Caption = '&Fechar'
    TabOrder = 3
    OnClick = BitBtn1Click
    Kind = bkClose
  end
end
