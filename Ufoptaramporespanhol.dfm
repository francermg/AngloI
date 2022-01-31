object foptaramespanhol: Tfoptaramespanhol
  Left = 144
  Top = 131
  Width = 979
  Height = 563
  Caption = 'Alunos que optaram por espanhol'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dsEspanhol
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 61
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 72
        Top = 8
        Width = 597
        Height = 23
        Caption = 
          'Relação de alunos que optaram por cursar a disciplina de Espanho' +
          'l'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 3
        Top = 41
        Width = 95
        Height = 16
        Caption = 'Nome do aluno.'
      end
      object RLLabel4: TRLLabel
        Left = 488
        Top = 41
        Width = 32
        Height = 16
        Caption = 'série'
      end
      object RLLabel5: TRLLabel
        Left = 592
        Top = 41
        Width = 40
        Height = 16
        Caption = 'Turma'
      end
      object RLDraw1: TRLDraw
        Left = 2
        Top = 37
        Width = 713
        Height = 3
        DrawKind = dkLine
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 99
      Width = 718
      Height = 20
      BeforePrint = RLBand2BeforePrint
      object RLDBText1: TRLDBText
        Left = 10
        Top = 3
        Width = 38
        Height = 15
        DataField = 'NOME'
        DataSource = dsEspanhol
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 606
        Top = 3
        Width = 44
        Height = 15
        DataField = 'TURMA'
        DataSource = dsEspanhol
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object serie: TRLLabel
        Left = 495
        Top = 3
        Width = 31
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 119
      Width = 718
      Height = 20
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel3: TRLLabel
        Left = 3
        Top = 3
        Width = 91
        Height = 15
        Caption = 'Total de alunos.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 104
        Top = 3
        Width = 44
        Height = 15
        DataField = 'NOME'
        DataSource = dsEspanhol
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riCount
        ParentFont = False
      end
    end
  end
  object Qespanhol: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select nome, serie, turma'
      'from alunos'
      'where opcao_espanhol = '#39'S'#39' and serie <> 3'
      'order by serie, nome, turma')
    Left = 600
    Top = 192
    object QespanholNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ALUNOS"."NOME"'
      Required = True
      Size = 60
    end
    object QespanholSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = '"ALUNOS"."SERIE"'
    end
    object QespanholTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"ALUNOS"."TURMA"'
      FixedChar = True
      Size = 1
    end
  end
  object dsEspanhol: TDataSource
    DataSet = Qespanhol
    Left = 512
    Top = 192
  end
end
