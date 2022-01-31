object fextratomensal: Tfextratomensal
  Left = 288
  Top = 124
  Width = 1088
  Height = 563
  Caption = 'Extrato mensal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rlextratomensal: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DM2.dsNaopagantes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = rlextratomensalBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 76
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 436
        Top = 5
        Width = 226
        Height = 22
        Caption = 'Colégio Anglo-UNIGRAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 55
        Width = 721
        Height = 3
        DrawKind = dkLine
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 58
        Width = 95
        Height = 16
        Caption = 'Nome do aluno:'
      end
      object RLLabel3: TRLLabel
        Left = 376
        Top = 58
        Width = 122
        Height = 16
        Caption = 'Data do vencimento:'
      end
      object RLLabel4: TRLLabel
        Left = 528
        Top = 58
        Width = 38
        Height = 16
        Caption = 'Valor:'
      end
      object RLLabel7: TRLLabel
        Left = 3
        Top = 39
        Width = 57
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 483
        Top = 28
        Width = 129
        Height = 15
        Caption = 'UNIGRAN Educacional.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 3
        Top = 4
        Width = 715
        Height = 2
        DrawKind = dkLine
      end
      object RLLabel5: TRLLabel
        Left = 643
        Top = 58
        Width = 33
        Height = 16
        Caption = 'Mês:'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 221
      Width = 718
      Height = 20
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo1: TRLSystemInfo
        Left = 5
        Top = 4
        Width = 110
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = 'Página: '
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 187
      Width = 718
      Height = 34
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel9: TRLLabel
        Left = 8
        Top = 2
        Width = 91
        Height = 15
        Caption = 'Total de alunos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 427
        Top = 2
        Width = 93
        Height = 15
        Caption = 'Saldo a receber:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 104
        Top = 2
        Width = 44
        Height = 15
        DataField = 'NOME'
        DataSource = DM2.dsNaopagantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riCount
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 528
        Top = 2
        Width = 98
        Height = 15
        DataField = 'VALOR'
        DataSource = DM2.dsNaopagantes
        DisplayMask = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = 'R$ '
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 6
        Top = 15
        Width = 159
        Height = 16
        Info = itFullDate
        Text = 'Data impressão: '
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 114
      Width = 718
      Height = 73
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      DataFields = 'NOME'
      AfterPrint = RLGroup1AfterPrint
      object RLBand2: TRLBand
        Left = 0
        Top = 1
        Width = 718
        Height = 18
        BandType = btHeader
        object RLDBText1: TRLDBText
          Left = 3
          Top = 0
          Width = 369
          Height = 16
          AutoSize = False
          DataField = 'NOME'
          DataSource = DM2.dsNaopagantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 19
        Width = 718
        Height = 18
        BeforePrint = RLBand5BeforePrint
        object RLDBText2: TRLDBText
          Left = 534
          Top = 3
          Width = 42
          Height = 15
          DataField = 'VALOR'
          DataSource = DM2.dsNaopagantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 381
          Top = 3
          Width = 81
          Height = 15
          DataField = 'VENCIMENTO'
          DataSource = DM2.dsNaopagantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RlMes: TRLLabel
          Left = 645
          Top = 3
          Width = 38
          Height = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 37
        Width = 718
        Height = 18
        BandType = btSummary
        object RLDBResult3: TRLDBResult
          Left = 532
          Top = 2
          Width = 98
          Height = 15
          DataField = 'VALOR'
          DataSource = DM2.dsNaopagantes
          DisplayMask = '###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = 'R$ '
        end
        object RLLabel6: TRLLabel
          Left = 380
          Top = 2
          Width = 144
          Height = 15
          Caption = 'Total.....................................:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright © 1999-2004 Fortes Informática'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 408
    Top = 288
  end
end
