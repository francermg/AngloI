object Lst_senhaalunos: TLst_senhaalunos
  Left = 148
  Top = 153
  Width = 867
  Height = 594
  Caption = 'Senha dos alunos.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Dssenhaalunos: TDataSource
    DataSet = Qsenhaalunos
    Left = 328
    Top = 240
  end
  object Qsenhaalunos: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select mae_nome, codigo, nome, senha'
      'from alunos'
      'where serie = :bserie and turma = :bturma'
      'order by nome')
    Left = 408
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'bserie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bturma'
        ParamType = ptUnknown
      end>
    object QsenhaalunosMAE_NOME: TIBStringField
      FieldName = 'MAE_NOME'
      Origin = '"ALUNOS"."MAE_NOME"'
      Size = 50
    end
    object QsenhaalunosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ALUNOS"."NOME"'
      Required = True
      Size = 60
    end
    object QsenhaalunosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"ALUNOS"."CODIGO"'
      Required = True
    end
    object QsenhaalunosSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"ALUNOS"."SENHA"'
      Size = 10
    end
  end
end
