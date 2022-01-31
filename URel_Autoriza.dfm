object Rel_autoriza: TRel_autoriza
  Left = 142
  Top = 163
  Width = 1088
  Height = 563
  Caption = 'Rel_autoriza'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Rel_autorizacao: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = ds_RelAut
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = Rel_autorizacaoBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 59
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 4
        Top = 13
        Width = 228
        Height = 22
        Caption = 'Relatório de Autorizações.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 39
        Width = 95
        Height = 16
        Caption = 'Nome do aluno:'
      end
      object RLDraw1: TRLDraw
        Left = -1
        Top = 38
        Width = 717
        Height = 2
        DrawKind = dkLine
      end
      object RLLabel3: TRLLabel
        Left = 302
        Top = 39
        Width = 77
        Height = 16
        Caption = 'Autorização:'
      end
      object RLLabel4: TRLLabel
        Left = 518
        Top = 40
        Width = 21
        Height = 15
        Caption = 'F/P'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 528
        Top = 24
        Width = 51
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 97
      Width = 718
      Height = 16
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      BeforePrint = RLBand2BeforePrint
      object RLDBText1: TRLDBText
        Left = 2
        Top = 0
        Width = 34
        Height = 14
        DataField = 'NOME'
        DataSource = ds_RelAut
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 307
        Top = 0
        Width = 82
        Height = 14
        DataField = 'AUTORIZACAO'
        DataSource = ds_RelAut
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 303
        Top = 0
        Width = 2
        Height = 15
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw3: TRLDraw
        Left = 514
        Top = 0
        Width = 2
        Height = 15
        Angle = 90
        DrawKind = dkLine
      end
      object RLDBText3: TRLDBText
        Left = 518
        Top = 0
        Width = 49
        Height = 14
        DataField = 'FORMAP'
        DataSource = ds_RelAut
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw4: TRLDraw
        Left = 571
        Top = 0
        Width = 2
        Height = 15
        Angle = 90
        DrawKind = dkLine
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 113
      Width = 718
      Height = 84
      BandType = btSummary
      object RLDraw5: TRLDraw
        Left = 2
        Top = 8
        Width = 157
        Height = 74
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
      end
      object RLMemo1: TRLMemo
        Left = 3
        Top = 24
        Width = 71
        Height = 56
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'CD - Crédito.'
          'DB - Débito.'
          'DN - Dinheiro.'
          'CH - Cheque')
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 3
        Top = 8
        Width = 149
        Height = 14
        Caption = 'Legenda - Tipo de pagamento.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 197
      Width = 718
      Height = 17
      BandType = btFooter
      object RLLabel6: TRLLabel
        Left = 643
        Top = 1
        Width = 38
        Height = 14
        Caption = 'Página:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 680
        Top = 1
        Width = 72
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
    end
  end
  object ds_RelAut: TDataSource
    DataSet = Q_RelAut
    Left = 592
    Top = 336
  end
  object Q_RelAut: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    OnCalcFields = Q_RelAutCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select a.nome,c.formap,c.autorizacao,c.data_pagamento,c.parcelas' +
        ',c.valorp'
      'from auto_cartao c full join alunos a on a.codigo=c.alunos'
      'order by a.nome')
    Left = 672
    Top = 336
    object Q_RelAutNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ALUNOS"."NOME"'
      Required = True
      Size = 60
    end
    object Q_RelAutFORMAP: TIBStringField
      FieldName = 'FORMAP'
      Origin = '"AUTO_CARTAO"."FORMAP"'
      FixedChar = True
      Size = 2
    end
    object Q_RelAutAUTORIZACAO: TIBStringField
      FieldName = 'AUTORIZACAO'
      Origin = '"AUTO_CARTAO"."AUTORIZACAO"'
      Required = True
      Size = 25
    end
    object Q_RelAutDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"AUTO_CARTAO"."DATA_PAGAMENTO"'
    end
    object Q_RelAutPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      Origin = '"AUTO_CARTAO"."PARCELAS"'
    end
    object Q_RelAutVALORP: TIBBCDField
      FieldName = 'VALORP'
      Origin = '"AUTO_CARTAO"."VALORP"'
      Precision = 9
      Size = 2
    end
    object Q_RelAutTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
end
