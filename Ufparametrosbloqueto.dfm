object fparametrosbloqueto: Tfparametrosbloqueto
  Left = 671
  Top = 377
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Parametros o boleto'
  ClientHeight = 170
  ClientWidth = 120
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 48
    Width = 56
    Height = 13
    Caption = 'Data Limite:'
  end
  object Label2: TLabel
    Left = 16
    Top = 88
    Width = 76
    Height = 13
    Caption = 'Número Parcela'
  end
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 96
    Height = 13
    Caption = 'Digite os parametros'
  end
  object Label4: TLabel
    Left = 8
    Top = 24
    Width = 44
    Height = 13
    Caption = 'do boleto'
  end
  object Shape1: TShape
    Left = 1
    Top = 40
    Width = 117
    Height = 3
  end
  object limite: TDateEdit
    Left = 16
    Top = 64
    Width = 89
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
    OnExit = limiteExit
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 133
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'OK'
    TabOrder = 2
  end
  object parcela: TEdit
    Left = 16
    Top = 104
    Width = 84
    Height = 21
    TabOrder = 1
    OnExit = parcelaExit
  end
  object Up_st: TIBSQL
    Database = DM.DB_ANGLO
    ParamCheck = True
    Transaction = DM.IBTr_ANGLO
    Left = 392
    Top = 56
  end
  object QBuscaBoleto: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from bloquetos'
      'where aluno = :baluno and PAGAMENTO is null')
    Left = 328
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'baluno'
        ParamType = ptUnknown
      end>
    object QBuscaBoletoNOSSO_NUMERO: TIntegerField
      FieldName = 'NOSSO_NUMERO'
      Origin = '"BLOQUETOS"."NOSSO_NUMERO"'
      Required = True
    end
    object QBuscaBoletoALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = '"BLOQUETOS"."ALUNO"'
    end
    object QBuscaBoletoPARCELA: TSmallintField
      FieldName = 'PARCELA'
      Origin = '"BLOQUETOS"."PARCELA"'
    end
    object QBuscaBoletoEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"BLOQUETOS"."EMISSAO"'
    end
    object QBuscaBoletoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"BLOQUETOS"."VENCIMENTO"'
    end
    object QBuscaBoletoDATA_LIMITE: TDateField
      FieldName = 'DATA_LIMITE'
      Origin = '"BLOQUETOS"."DATA_LIMITE"'
    end
    object QBuscaBoletoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"BLOQUETOS"."VALOR"'
      Precision = 9
      Size = 2
    end
    object QBuscaBoletoPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"BLOQUETOS"."PAGAMENTO"'
    end
    object QBuscaBoletoVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"BLOQUETOS"."VALOR_PAGO"'
      Precision = 9
      Size = 2
    end
    object QBuscaBoletoMENSALIDADE: TIBBCDField
      FieldName = 'MENSALIDADE'
      Origin = '"BLOQUETOS"."MENSALIDADE"'
      Precision = 9
      Size = 2
    end
    object QBuscaBoletoMATERIAL: TIBBCDField
      FieldName = 'MATERIAL'
      Origin = '"BLOQUETOS"."MATERIAL"'
      Precision = 9
      Size = 2
    end
    object QBuscaBoletoDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"BLOQUETOS"."DESCONTO"'
      Precision = 9
      Size = 2
    end
    object QBuscaBoletoTIPO_PG: TSmallintField
      FieldName = 'TIPO_PG'
      Origin = '"BLOQUETOS"."TIPO_PG"'
    end
    object QBuscaBoletoANO_DV: TIBStringField
      FieldName = 'ANO_DV'
      Origin = '"BLOQUETOS"."ANO_DV"'
      FixedChar = True
      Size = 2
    end
    object QBuscaBoletoDESCONTO_ANT: TIBBCDField
      FieldName = 'DESCONTO_ANT'
      Origin = '"BLOQUETOS"."DESCONTO_ANT"'
      Precision = 9
      Size = 2
    end
    object QBuscaBoletoMENSALIDADE_ANT: TIBBCDField
      FieldName = 'MENSALIDADE_ANT'
      Origin = '"BLOQUETOS"."MENSALIDADE_ANT"'
      Precision = 9
      Size = 2
    end
    object QBuscaBoletoVALOR_ANT: TIBBCDField
      FieldName = 'VALOR_ANT'
      Origin = '"BLOQUETOS"."VALOR_ANT"'
      Precision = 9
      Size = 2
    end
    object QBuscaBoletoBAULA_AD: TIBStringField
      FieldName = 'BAULA_AD'
      Origin = '"BLOQUETOS"."BAULA_AD"'
      FixedChar = True
      Size = 1
    end
    object QBuscaBoletoST: TIBStringField
      FieldName = 'ST'
      Origin = '"BLOQUETOS"."ST"'
      FixedChar = True
      Size = 1
    end
    object QBuscaBoletoTP: TIntegerField
      FieldName = 'TP'
      Origin = '"BLOQUETOS"."TP"'
    end
    object QBuscaBoletoMOTIVO: TIBStringField
      FieldName = 'MOTIVO'
      Origin = '"BLOQUETOS"."MOTIVO"'
      Size = 150
    end
    object QBuscaBoletoNEGOCIACAO: TIntegerField
      FieldName = 'NEGOCIACAO'
      Origin = '"BLOQUETOS"."NEGOCIACAO"'
    end
  end
  object DsBuscaBoleto: TDataSource
    DataSet = QBuscaBoleto
    Left = 248
    Top = 88
  end
  object Delete_Boleto: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete'
      'from Bloquetos'
      'where Aluno = :baluno and PAGAMENTO IS NULL and ST = :bst')
    Left = 328
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'baluno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bst'
        ParamType = ptUnknown
      end>
  end
  object Ds_DeleteBoleto: TDataSource
    DataSet = Delete_Boleto
    Left = 248
    Top = 40
  end
end
