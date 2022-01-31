object fimportadados: Tfimportadados
  Left = 100
  Top = 110
  Width = 696
  Height = 480
  Caption = 'importa dados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Texto: TRichEdit
    Left = 16
    Top = 112
    Width = 625
    Height = 201
    Lines.Strings = (
      'Texto')
    TabOrder = 4
  end
  object bcarregar: TBitBtn
    Left = 128
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Carregar'
    TabOrder = 0
    OnClick = bcarregarClick
  end
  object bimportar: TBitBtn
    Left = 280
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Importar'
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 96
    Width = 665
    Height = 217
    DataSource = dstable
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cod_municipio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uf'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_municipio'
        Width = 507
        Visible = True
      end>
  end
  object barquivo: TFilenameEdit
    Left = 24
    Top = 40
    Width = 265
    Height = 21
    Filter = 'All files (*.txt)|*.txt'
    NumGlyphs = 1
    TabOrder = 3
  end
  object table: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'cod_municipio'
        DataType = ftInteger
      end
      item
        Name = 'uf'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nome_municipio'
        DataType = ftString
        Size = 20
      end>
    Left = 432
    Top = 8
    object tablecod_municipio: TIntegerField
      FieldName = 'cod_municipio'
    end
    object tableuf: TStringField
      FieldName = 'uf'
    end
    object tablenome_municipio: TStringField
      FieldName = 'nome_municipio'
    end
  end
  object dstable: TDataSource
    DataSet = table
    Left = 472
    Top = 8
  end
  object FormStorage1: TFormStorage
    StoredProps.Strings = (
      'barquivo.AcceptFiles')
    StoredValues = <>
    Left = 352
    Top = 16
  end
end
