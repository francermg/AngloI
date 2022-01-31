object Lst_LoginSenhaAluno: TLst_LoginSenhaAluno
  Left = 98
  Top = 174
  Width = 979
  Height = 563
  Caption = 'LoginSenhaAluno'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RL_LoginSenhaAluno: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DsLoginSenha
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    RealBounds.UsedUnit = buMilimeters
    object RLDetailGrid1: TRLDetailGrid
      Left = 38
      Top = 38
      Width = 718
      Height = 91
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      ColCount = 3
      object RLDBText1: TRLDBText
        Left = 48
        Top = 24
        Width = 32
        Height = 14
        DataField = 'NOME'
        DataSource = DsLoginSenha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 48
        Top = 40
        Width = 34
        Height = 14
        DataField = 'LOGIN'
        DataSource = DsLoginSenha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 48
        Top = 56
        Width = 38
        Height = 14
        DataField = 'SENHA'
        DataSource = DsLoginSenha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 8
        Top = 24
        Width = 30
        Height = 14
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 8
        Top = 40
        Width = 32
        Height = 14
        Caption = 'Login:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 8
        Top = 56
        Width = 37
        Height = 14
        Caption = 'Senha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 8
        Top = 72
        Width = 31
        Height = 14
        DataField = 'SERIE'
        DataSource = DsLoginSenha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object DsLoginSenha: TDataSource
    DataSet = QLoginSenha
    Left = 264
    Top = 200
  end
  object QLoginSenha: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select  Nome,codigo as Login, Senha, serie ||'#39' °  '#39' ||turma as S' +
        'erie'
      'from alunos'
      'where serie = :serie and turma = :turma'
      'order by nome')
    Left = 368
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'turma'
        ParamType = ptUnknown
      end>
    object QLoginSenhaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ALUNOS"."NOME"'
      Required = True
      Size = 60
    end
    object QLoginSenhaLOGIN: TIntegerField
      FieldName = 'LOGIN'
      Origin = '"ALUNOS"."CODIGO"'
      Required = True
    end
    object QLoginSenhaSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"ALUNOS"."SENHA"'
      Size = 10
    end
    object QLoginSenhaSERIE: TIBStringField
      FieldName = 'SERIE'
      Size = 8
    end
  end
end
