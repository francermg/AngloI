object fvisualizanota: Tfvisualizanota
  Left = 228
  Top = 191
  Width = 802
  Height = 563
  Caption = 'Visualização de notas anteriores.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RxDBGrid1: TRxDBGrid
    Left = 16
    Top = 16
    Width = 713
    Height = 441
    DataSource = dsvisualizanotas
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object dsvisualizanotas: TDataSource
    DataSet = qvisualizanotas
    Left = 200
    Top = 80
  end
  object qvisualizanotas: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select B.CODIGO, B.NOME, a.nota1, a.nota2, a.nota3, a.nota4, a.n' +
        'ota5, a.nota6, a.nota'
      'from NOTAS A'
      'inner join ALUNOS B on B.CODIGO = A.ALUNO'
      'inner join DISCIPLINAS Disc on Disc.CODIGO = A.DISCIPLINA'
      
        'where B.SERIE = :serie and B.TURMA = :turma and A.DISCIPLINA = :' +
        'disciplina and A.BIMESTRE = :bimestre'
      'order by B.CHAMADA,B.NOME')
    Left = 296
    Top = 80
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
      end
      item
        DataType = ftUnknown
        Name = 'disciplina'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bimestre'
        ParamType = ptUnknown
      end>
    object qvisualizanotasCODIGO: TIntegerField
      DisplayWidth = 12
      FieldName = 'CODIGO'
      Origin = '"ALUNOS"."CODIGO"'
      Required = True
    end
    object qvisualizanotasNOME: TIBStringField
      DisplayWidth = 63
      FieldName = 'NOME'
      Origin = '"ALUNOS"."NOME"'
      Required = True
      Size = 60
    end
    object qvisualizanotasNOTA1: TIBBCDField
      DisplayWidth = 7
      FieldName = 'NOTA1'
      Origin = '"NOTAS"."NOTA1"'
      Precision = 4
      Size = 1
    end
    object qvisualizanotasNOTA2: TIBBCDField
      DisplayWidth = 7
      FieldName = 'NOTA2'
      Origin = '"NOTAS"."NOTA2"'
      Precision = 4
      Size = 1
    end
    object qvisualizanotasNOTA3: TIBBCDField
      DisplayWidth = 7
      FieldName = 'NOTA3'
      Origin = '"NOTAS"."NOTA3"'
      Precision = 4
      Size = 1
    end
    object qvisualizanotasNOTA4: TIBBCDField
      DisplayWidth = 7
      FieldName = 'NOTA4'
      Origin = '"NOTAS"."NOTA4"'
      Precision = 4
      Size = 1
    end
    object qvisualizanotasNOTA5: TIBBCDField
      DisplayWidth = 7
      FieldName = 'NOTA5'
      Origin = '"NOTAS"."NOTA5"'
      Precision = 4
      Size = 1
    end
    object qvisualizanotasNOTA6: TIBBCDField
      DisplayWidth = 7
      FieldName = 'NOTA6'
      Origin = '"NOTAS"."NOTA6"'
      Precision = 4
      Size = 1
    end
    object qvisualizanotasNOTA: TIBBCDField
      DisplayWidth = 6
      FieldName = 'NOTA'
      Origin = '"NOTAS"."NOTA"'
      Precision = 4
      Size = 1
    end
  end
end
