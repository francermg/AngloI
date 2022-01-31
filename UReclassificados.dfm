object FReclassificados: TFReclassificados
  Left = 8
  Top = 81
  Width = 997
  Height = 589
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Reclassificados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object RxLabel1: TRxLabel
    Left = 16
    Top = 8
    Width = 220
    Height = 16
    Caption = 'Digite os reclassificados/Adaptação'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 24
    Width = 1009
    Height = 609
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 245
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RGM'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA1'
        Title.Caption = 'L.P.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA2'
        Title.Caption = 'Geo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA3'
        Title.Caption = 'Hist.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA4'
        Title.Caption = 'Mat.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA5'
        Title.Caption = 'Fis.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA6'
        Title.Caption = 'Quim.'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA7'
        Title.Caption = 'Biol.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA8'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA9'
        Title.Caption = 'Ed.Fs.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA10'
        Title.Caption = 'Lit.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA11'
        Title.Caption = 'Ing.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA12'
        Title.Caption = 'Artes'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA13'
        Title.Caption = 'T.R.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA14'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA15'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA16'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA17'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA18'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESULTADO'
        Visible = True
      end>
  end
end
