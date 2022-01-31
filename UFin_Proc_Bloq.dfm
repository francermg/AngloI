object Fin_Proc_Bloq: TFin_Proc_Bloq
  Left = 532
  Top = 226
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Processa Bloquetos'
  ClientHeight = 400
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 29
    Top = 48
    Width = 217
    Height = 18
    Caption = 'Aguarde... Processando!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Gauge1: TGauge
    Left = 18
    Top = 67
    Width = 238
    Height = 17
    Progress = 0
    Visible = False
  end
  object Label2: TLabel
    Left = 72
    Top = 5
    Width = 314
    Height = 39
    Caption = 
      'Este procedimento criará novos bloquetos no sistema. '#13#10'Esta ação' +
      ' é irreversível. Portanto FAÇA Cópias '#13#10'de Segurança do Sistema ' +
      'antes de executá-lo!!!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 14
    Top = 93
    Width = 247
    Height = 13
    Caption = 'Adicionados Bloquetos de 000 Alunos!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label4: TLabel
    Left = 22
    Top = 109
    Width = 231
    Height = 13
    Caption = 'Alterados Bloquetos de 000 Alunos!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 397
    Top = 78
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    Kind = bkCancel
  end
  object BitBtn2: TBitBtn
    Left = 397
    Top = 48
    Width = 89
    Height = 25
    Caption = 'Processa'
    Enabled = False
    TabOrder = 1
    OnClick = BitBtn2Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 136
    Width = 497
    Height = 264
    Align = alBottom
    DataSource = DM.dsBloquetos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOSSO_NUMERO'
        Title.Caption = 'Nosso Nº'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALUNO'
        Title.Caption = 'Aluno'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELA'
        Title.Caption = 'Parc.Nº'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMISSAO'
        Title.Caption = 'Dt.Emissão'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Title.Caption = 'Dt.Vcto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Width = 96
        Visible = True
      end>
  end
  object FS1: TFormStorage
    UseRegistry = True
    StoredValues = <>
    Left = 176
    Top = 65528
  end
  object Dsserie: TDataSource
    DataSet = Qserie
    Left = 216
    Top = 65528
  end
  object Qserie: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select '
      '    a.turma,'
      '    a.serie,'
      '    t.turma,'
      '    t.serie'
      'from alunos a, turmas t'
      'where '
      '   ('
      '      (a.turma = t.turma)'
      '   and '
      '      (t.cursinho = 1)'
      '   and '
      '      (a.serie = 3)'
      '   )')
    Left = 256
    Top = 65528
    object QserieTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"ALUNOS"."TURMA"'
      FixedChar = True
      Size = 1
    end
    object QserieSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = '"ALUNOS"."SERIE"'
    end
    object QserieTURMA1: TIBStringField
      FieldName = 'TURMA1'
      Origin = '"TURMAS"."TURMA"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QserieSERIE1: TSmallintField
      FieldName = 'SERIE1'
      Origin = '"TURMAS"."SERIE"'
      Required = True
    end
  end
  object dsCursinho: TDataSource
    DataSet = IqCursinho
    Left = 264
    Top = 96
  end
  object IqCursinho: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select a.turma, t.turma, t.cursinho'
      'from alunos a join turmas t on a.turma=t.turma'
      'where a.codigo = :rgm')
    Left = 328
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rgm'
        ParamType = ptUnknown
      end>
    object IqCursinhoCursinho: TIntegerField
      FieldName = 'Cursinho'
    end
  end
  object dlgSave1: TSaveDialog
    Left = 312
  end
  object DsBuscaBoleto: TDataSource
    DataSet = BuscaBoleto
    Left = 336
    Top = 328
  end
  object BuscaBoleto: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select a.bloqueto_1sem, b.*'
      'from alunos a join bloquetos b on a.codigo=b.aluno'
      'where a.bloqueto_1sem = 2')
    Left = 432
    Top = 328
    object BuscaBoletoBLOQUETO_1SEM: TSmallintField
      FieldName = 'BLOQUETO_1SEM'
      Origin = '"ALUNOS"."BLOQUETO_1SEM"'
    end
    object BuscaBoletoNOSSO_NUMERO: TIntegerField
      FieldName = 'NOSSO_NUMERO'
      Origin = '"BLOQUETOS"."NOSSO_NUMERO"'
      Required = True
    end
    object BuscaBoletoALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = '"BLOQUETOS"."ALUNO"'
    end
    object BuscaBoletoPARCELA: TSmallintField
      FieldName = 'PARCELA'
      Origin = '"BLOQUETOS"."PARCELA"'
    end
    object BuscaBoletoEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"BLOQUETOS"."EMISSAO"'
    end
    object BuscaBoletoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"BLOQUETOS"."VENCIMENTO"'
    end
    object BuscaBoletoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"BLOQUETOS"."VALOR"'
      Precision = 9
      Size = 2
    end
    object BuscaBoletoPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"BLOQUETOS"."PAGAMENTO"'
    end
    object BuscaBoletoVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"BLOQUETOS"."VALOR_PAGO"'
      Precision = 9
      Size = 2
    end
    object BuscaBoletoMENSALIDADE: TIBBCDField
      FieldName = 'MENSALIDADE'
      Origin = '"BLOQUETOS"."MENSALIDADE"'
      Precision = 9
      Size = 2
    end
    object BuscaBoletoMATERIAL: TIBBCDField
      FieldName = 'MATERIAL'
      Origin = '"BLOQUETOS"."MATERIAL"'
      Precision = 9
      Size = 2
    end
    object BuscaBoletoDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"BLOQUETOS"."DESCONTO"'
      Precision = 9
      Size = 2
    end
    object BuscaBoletoTIPO_PG: TSmallintField
      FieldName = 'TIPO_PG'
      Origin = '"BLOQUETOS"."TIPO_PG"'
    end
    object BuscaBoletoANO_DV: TIBStringField
      FieldName = 'ANO_DV'
      Origin = '"BLOQUETOS"."ANO_DV"'
      FixedChar = True
      Size = 2
    end
    object BuscaBoletoDESCONTO_ANT: TIBBCDField
      FieldName = 'DESCONTO_ANT'
      Origin = '"BLOQUETOS"."DESCONTO_ANT"'
      Precision = 9
      Size = 2
    end
    object BuscaBoletoMENSALIDADE_ANT: TIBBCDField
      FieldName = 'MENSALIDADE_ANT'
      Origin = '"BLOQUETOS"."MENSALIDADE_ANT"'
      Precision = 9
      Size = 2
    end
    object BuscaBoletoVALOR_ANT: TIBBCDField
      FieldName = 'VALOR_ANT'
      Origin = '"BLOQUETOS"."VALOR_ANT"'
      Precision = 9
      Size = 2
    end
    object BuscaBoletoBAULA_AD: TIBStringField
      FieldName = 'BAULA_AD'
      Origin = '"BLOQUETOS"."BAULA_AD"'
      FixedChar = True
      Size = 1
    end
    object BuscaBoletoST: TIBStringField
      FieldName = 'ST'
      Origin = '"BLOQUETOS"."ST"'
      FixedChar = True
      Size = 1
    end
    object BuscaBoletoTP: TIntegerField
      FieldName = 'TP'
      Origin = '"BLOQUETOS"."TP"'
    end
    object BuscaBoletoMOTIVO: TIBStringField
      FieldName = 'MOTIVO'
      Origin = '"BLOQUETOS"."MOTIVO"'
      Size = 150
    end
    object BuscaBoletoDATA_LIMITE: TDateField
      FieldName = 'DATA_LIMITE'
      Origin = '"BLOQUETOS"."DATA_LIMITE"'
    end
    object BuscaBoletoNEGOCIACAO: TIntegerField
      FieldName = 'NEGOCIACAO'
      Origin = '"BLOQUETOS"."NEGOCIACAO"'
    end
  end
  object Delete_Boleto: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from BLOQUETOS'
      'where ((pagamento is null) and (aluno = :baluno))'
      'and exists (select codigo from alunos'
      '             where bloqueto_1sem = 2'
      '             and bloquetos.aluno=alunos.codigo)')
    Left = 424
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'baluno'
        ParamType = ptUnknown
      end>
  end
  object DsDelete_boleto: TDataSource
    DataSet = Delete_Boleto
    Left = 336
    Top = 216
  end
  object DsUltimaParcela: TDataSource
    DataSet = UltimaParcela
    Left = 336
    Top = 272
  end
  object UltimaParcela: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(parcela) as total'
      'from bloquetos'
      'where aluno = :codigo')
    Left = 424
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object UltimaParcelaTOTAL: TSmallintField
      FieldName = 'TOTAL'
    end
  end
end
