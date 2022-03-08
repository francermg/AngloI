object DM2: TDM2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 66
  Top = 142
  Height = 708
  Width = 1080
  object DsBolsas: TDataSource
    DataSet = Bolsas
    Left = 100
    Top = 70
  end
  object Bolsas: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select nome, endereco, fone, bolsa, bolsa_obs '
      'from ALUNOS'
      'where status = '#39'A'#39' and bolsa=:Valor_Bolsas'
      'Order by nome')
    Left = 20
    Top = 70
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Valor_Bolsas'
        ParamType = ptUnknown
      end>
    object BolsasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'ALUNOS.NOME'
      Required = True
      Size = 60
    end
    object BolsasENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'ALUNOS.ENDERECO'
      Size = 40
    end
    object BolsasFONE: TIBStringField
      FieldName = 'FONE'
      Origin = 'ALUNOS.FONE'
      Size = 30
    end
    object BolsasBOLSA: TIBBCDField
      FieldName = 'BOLSA'
      Origin = 'ALUNOS.BOLSA'
      Precision = 9
      Size = 2
    end
    object BolsasBOLSA_OBS: TIBStringField
      FieldName = 'BOLSA_OBS'
      Origin = 'ALUNOS.BOLSA_OBS'
      Size = 50
    end
  end
  object IOcorrencia: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from alunos'
      'where CODIGO = :aluno'
      ''
      '')
    Left = 20
    Top = 126
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'aluno'
        ParamType = ptUnknown
      end>
    object IOcorrenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ALUNOS.CODIGO'
      Required = True
    end
    object IOcorrenciaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'ALUNOS.NOME'
      Required = True
      Size = 60
    end
    object IOcorrenciaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'ALUNOS.ENDERECO'
      Size = 40
    end
    object IOcorrenciaCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'ALUNOS.COMPLEMENTO'
    end
    object IOcorrenciaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'ALUNOS.BAIRRO'
    end
    object IOcorrenciaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'ALUNOS.CIDADE'
      Size = 25
    end
    object IOcorrenciaUF: TIBStringField
      FieldName = 'UF'
      Origin = 'ALUNOS.UF'
      FixedChar = True
      Size = 2
    end
    object IOcorrenciaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'ALUNOS.CEP'
      FixedChar = True
      Size = 9
    end
    object IOcorrenciaRG: TIBStringField
      FieldName = 'RG'
      Origin = 'ALUNOS.RG'
      Size = 15
    end
    object IOcorrenciaNASC_DATA: TDateField
      FieldName = 'NASC_DATA'
      Origin = 'ALUNOS.NASC_DATA'
    end
    object IOcorrenciaNASC_CIDADE: TIBStringField
      FieldName = 'NASC_CIDADE'
      Origin = 'ALUNOS.NASC_CIDADE'
      Size = 25
    end
    object IOcorrenciaNASC_UF: TIBStringField
      FieldName = 'NASC_UF'
      Origin = 'ALUNOS.NASC_UF'
      FixedChar = True
      Size = 2
    end
    object IOcorrenciaSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'ALUNOS.SEXO'
      FixedChar = True
      Size = 1
    end
    object IOcorrenciaPAI_NOME: TIBStringField
      FieldName = 'PAI_NOME'
      Origin = 'ALUNOS.PAI_NOME'
      Size = 50
    end
    object IOcorrenciaPAI_PROFISSAO: TIBStringField
      FieldName = 'PAI_PROFISSAO'
      Origin = 'ALUNOS.PAI_PROFISSAO'
    end
    object IOcorrenciaPAI_NASCIMENTO: TDateField
      FieldName = 'PAI_NASCIMENTO'
      Origin = 'ALUNOS.PAI_NASCIMENTO'
    end
    object IOcorrenciaMAE_NOME: TIBStringField
      FieldName = 'MAE_NOME'
      Origin = 'ALUNOS.MAE_NOME'
      Size = 50
    end
    object IOcorrenciaMAE_PROFISSAO: TIBStringField
      FieldName = 'MAE_PROFISSAO'
      Origin = 'ALUNOS.MAE_PROFISSAO'
    end
    object IOcorrenciaMAE_NASCIMENTO: TDateField
      FieldName = 'MAE_NASCIMENTO'
      Origin = 'ALUNOS.MAE_NASCIMENTO'
    end
    object IOcorrenciaFONE: TIBStringField
      FieldName = 'FONE'
      Origin = 'ALUNOS.FONE'
      Size = 30
    end
    object IOcorrenciaDATA_MATRICULA: TDateField
      FieldName = 'DATA_MATRICULA'
      Origin = 'ALUNOS.DATA_MATRICULA'
    end
    object IOcorrenciaBIMESTRE: TSmallintField
      FieldName = 'BIMESTRE'
      Origin = 'ALUNOS.BIMESTRE'
    end
    object IOcorrenciaCURSO: TIntegerField
      FieldName = 'CURSO'
      Origin = 'ALUNOS.CURSO'
    end
    object IOcorrenciaSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = 'ALUNOS.SERIE'
    end
    object IOcorrenciaTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = 'ALUNOS.TURMA'
      FixedChar = True
      Size = 1
    end
    object IOcorrenciaCHAMADA: TSmallintField
      FieldName = 'CHAMADA'
      Origin = 'ALUNOS.CHAMADA'
    end
    object IOcorrenciaSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'ALUNOS.STATUS'
      FixedChar = True
      Size = 1
    end
    object IOcorrenciaDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'ALUNOS.DATA_SAIDA'
    end
    object IOcorrenciaBOLSA: TIBBCDField
      FieldName = 'BOLSA'
      Origin = 'ALUNOS.BOLSA'
      Precision = 9
      Size = 2
    end
    object IOcorrenciaOBS_HIST: TMemoField
      FieldName = 'OBS_HIST'
      Origin = 'ALUNOS.OBS_HIST'
      BlobType = ftMemo
      Size = 8
    end
    object IOcorrenciaSACADO: TIBStringField
      FieldName = 'SACADO'
      Origin = 'ALUNOS.SACADO'
      Size = 40
    end
    object IOcorrenciaFINAL: TIBStringField
      FieldName = 'FINAL'
      Origin = 'ALUNOS.FINAL'
      FixedChar = True
      Size = 1
    end
    object IOcorrenciaMATERIAL: TSmallintField
      FieldName = 'MATERIAL'
      Origin = 'ALUNOS.MATERIAL'
    end
    object IOcorrenciaVENCIMENTO: TSmallintField
      FieldName = 'VENCIMENTO'
      Origin = 'ALUNOS.VENCIMENTO'
    end
    object IOcorrenciaANO: TSmallintField
      FieldName = 'ANO'
      Origin = 'ALUNOS.ANO'
    end
    object IOcorrenciaBLOQUETO_1SEM: TSmallintField
      FieldName = 'BLOQUETO_1SEM'
      Origin = 'ALUNOS.BLOQUETO_1SEM'
    end
    object IOcorrenciaBLOQUETO_2SEM: TSmallintField
      FieldName = 'BLOQUETO_2SEM'
      Origin = 'ALUNOS.BLOQUETO_2SEM'
    end
    object IOcorrenciaMES_MATERIAL: TSmallintField
      FieldName = 'MES_MATERIAL'
      Origin = 'ALUNOS.MES_MATERIAL'
    end
    object IOcorrenciaSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = 'ALUNOS.SENHA'
      Size = 10
    end
    object IOcorrenciaSACADO_RG: TIBStringField
      FieldName = 'SACADO_RG'
      Origin = 'ALUNOS.SACADO_RG'
    end
    object IOcorrenciaSACADO_CPF: TIBStringField
      FieldName = 'SACADO_CPF'
      Origin = 'ALUNOS.SACADO_CPF'
      FixedChar = True
      Size = 15
    end
    object IOcorrenciaMOD_ESPORTIVA: TIBStringField
      FieldName = 'MOD_ESPORTIVA'
      Origin = 'ALUNOS.MOD_ESPORTIVA'
      FixedChar = True
      Size = 3
    end
    object IOcorrenciaH_ANO1: TIntegerField
      FieldName = 'H_ANO1'
      Origin = 'ALUNOS.H_ANO1'
    end
    object IOcorrenciaH_ESCOLA1: TIBStringField
      FieldName = 'H_ESCOLA1'
      Origin = 'ALUNOS.H_ESCOLA1'
      Size = 40
    end
    object IOcorrenciaH_CIDADE1: TIBStringField
      FieldName = 'H_CIDADE1'
      Origin = 'ALUNOS.H_CIDADE1'
      Size = 25
    end
    object IOcorrenciaH_UF1: TIBStringField
      FieldName = 'H_UF1'
      Origin = 'ALUNOS.H_UF1'
      FixedChar = True
      Size = 2
    end
    object IOcorrenciaH_ANO2: TIntegerField
      FieldName = 'H_ANO2'
      Origin = 'ALUNOS.H_ANO2'
    end
    object IOcorrenciaH_ESCOLA2: TIBStringField
      FieldName = 'H_ESCOLA2'
      Origin = 'ALUNOS.H_ESCOLA2'
      Size = 40
    end
    object IOcorrenciaH_CIDADE2: TIBStringField
      FieldName = 'H_CIDADE2'
      Origin = 'ALUNOS.H_CIDADE2'
      Size = 25
    end
    object IOcorrenciaH_UF2: TIBStringField
      FieldName = 'H_UF2'
      Origin = 'ALUNOS.H_UF2'
      FixedChar = True
      Size = 2
    end
    object IOcorrenciaH_ANO3: TIntegerField
      FieldName = 'H_ANO3'
      Origin = 'ALUNOS.H_ANO3'
    end
    object IOcorrenciaH_ESCOLA3: TIBStringField
      FieldName = 'H_ESCOLA3'
      Origin = 'ALUNOS.H_ESCOLA3'
      Size = 40
    end
    object IOcorrenciaH_CIDADE3: TIBStringField
      FieldName = 'H_CIDADE3'
      Origin = 'ALUNOS.H_CIDADE3'
      Size = 25
    end
    object IOcorrenciaH_UF3: TIBStringField
      FieldName = 'H_UF3'
      Origin = 'ALUNOS.H_UF3'
      FixedChar = True
      Size = 2
    end
    object IOcorrenciaBOLSA_OBS: TIBStringField
      FieldName = 'BOLSA_OBS'
      Origin = 'ALUNOS.BOLSA_OBS'
      Size = 50
    end
    object IOcorrenciaCODIGO_SP: TIBStringField
      FieldName = 'CODIGO_SP'
      Origin = 'ALUNOS.CODIGO_SP'
      FixedChar = True
      Size = 8
    end
  end
  object DIOcorrencia: TDataSource
    DataSet = IOcorrencia
    Left = 100
    Top = 126
  end
  object IBNotas_Alu: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from list_notas(:serie,:turma,:disciplina)'
      'order by nome collate PXW_INTL850 ')
    Left = 276
    Top = 70
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
      end>
    object IBNotas_AluCODIGO: TIntegerField
      DisplayWidth = 12
      FieldName = 'CODIGO'
      Origin = 'LIST_NOTAS.CODIGO'
    end
    object IBNotas_AluNOME: TIBStringField
      DisplayWidth = 43
      FieldName = 'NOME'
      Origin = 'LIST_NOTAS.NOME'
      Size = 60
    end
    object IBNotas_AluSERIER: TSmallintField
      DisplayWidth = 12
      FieldName = 'SERIER'
      Origin = 'LIST_NOTAS.SERIER'
    end
    object IBNotas_AluTURMAR: TIBStringField
      DisplayWidth = 8
      FieldName = 'TURMAR'
      Origin = 'LIST_NOTAS.TURMAR'
      FixedChar = True
      Size = 1
    end
    object IBNotas_AluDISCIPLINAR: TIntegerField
      DisplayWidth = 13
      FieldName = 'DISCIPLINAR'
      Origin = 'LIST_NOTAS.DISCIPLINAR'
    end
    object IBNotas_AluNOTA1: TIBBCDField
      DisplayWidth = 10
      FieldName = 'NOTA1'
      Origin = 'LIST_NOTAS.NOTA1'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
      Precision = 9
      Size = 2
    end
    object IBNotas_AluNOTA2: TIBBCDField
      DisplayWidth = 12
      FieldName = 'NOTA2'
      Origin = 'LIST_NOTAS.NOTA2'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
      Precision = 9
      Size = 2
    end
    object IBNotas_AluNOTA3: TIBBCDField
      DisplayWidth = 12
      FieldName = 'NOTA3'
      Origin = 'LIST_NOTAS.NOTA3'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
      Precision = 9
      Size = 2
    end
    object IBNotas_AluNOTA4: TIBBCDField
      DisplayWidth = 12
      FieldName = 'NOTA4'
      Origin = 'LIST_NOTAS.NOTA4'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
      Precision = 9
      Size = 2
    end
  end
  object dsNotas_Alu: TDataSource
    DataSet = IBNotas_Alu
    Left = 188
    Top = 70
  end
  object DsBolsaM: TDataSource
    DataSet = BolsaM
    Left = 188
    Top = 126
  end
  object BolsaM: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from compara_bolsa(:DIni, :DFim)')
    Left = 276
    Top = 126
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFim'
        ParamType = ptUnknown
      end>
    object BolsaMTOTALB: TIntegerField
      FieldName = 'TOTALB'
      Origin = '"COMPARA_BOLSA"."TOTALB"'
    end
    object BolsaMCONTP0: TIntegerField
      FieldName = 'CONTP0'
      Origin = '"COMPARA_BOLSA"."CONTP0"'
    end
    object BolsaMCONTP1: TIntegerField
      FieldName = 'CONTP1'
      Origin = '"COMPARA_BOLSA"."CONTP1"'
    end
    object BolsaMCONTP2: TIntegerField
      FieldName = 'CONTP2'
      Origin = '"COMPARA_BOLSA"."CONTP2"'
    end
    object BolsaMCONTP3: TIntegerField
      FieldName = 'CONTP3'
      Origin = '"COMPARA_BOLSA"."CONTP3"'
    end
    object BolsaMCONTP4: TIntegerField
      FieldName = 'CONTP4'
      Origin = '"COMPARA_BOLSA"."CONTP4"'
    end
    object BolsaMCONTP5: TIntegerField
      FieldName = 'CONTP5'
      Origin = '"COMPARA_BOLSA"."CONTP5"'
    end
    object BolsaMCONTP6: TIntegerField
      FieldName = 'CONTP6'
      Origin = '"COMPARA_BOLSA"."CONTP6"'
    end
    object BolsaMCONTP7: TIntegerField
      FieldName = 'CONTP7'
      Origin = '"COMPARA_BOLSA"."CONTP7"'
    end
    object BolsaMCONTP8: TIntegerField
      FieldName = 'CONTP8'
      Origin = '"COMPARA_BOLSA"."CONTP8"'
    end
    object BolsaMCONTP9: TIntegerField
      FieldName = 'CONTP9'
      Origin = '"COMPARA_BOLSA"."CONTP9"'
    end
    object BolsaMCONTP10: TIntegerField
      FieldName = 'CONTP10'
      Origin = '"COMPARA_BOLSA"."CONTP10"'
    end
    object BolsaMCONTP11: TIntegerField
      FieldName = 'CONTP11'
      Origin = '"COMPARA_BOLSA"."CONTP11"'
    end
    object BolsaMCONTP12: TIntegerField
      FieldName = 'CONTP12'
      Origin = '"COMPARA_BOLSA"."CONTP12"'
    end
    object BolsaMCONTP13: TIntegerField
      FieldName = 'CONTP13'
      Origin = '"COMPARA_BOLSA"."CONTP13"'
    end
    object BolsaMCONTP14: TIntegerField
      FieldName = 'CONTP14'
      Origin = '"COMPARA_BOLSA"."CONTP14"'
    end
    object BolsaMCONTP15: TIntegerField
      FieldName = 'CONTP15'
      Origin = '"COMPARA_BOLSA"."CONTP15"'
    end
    object BolsaMCONTP16: TIntegerField
      FieldName = 'CONTP16'
      Origin = '"COMPARA_BOLSA"."CONTP16"'
    end
    object BolsaMCONTP17: TIntegerField
      FieldName = 'CONTP17'
      Origin = '"COMPARA_BOLSA"."CONTP17"'
    end
    object BolsaMCONTP18: TIntegerField
      FieldName = 'CONTP18'
      Origin = '"COMPARA_BOLSA"."CONTP18"'
    end
    object BolsaMCONTP19: TIntegerField
      FieldName = 'CONTP19'
      Origin = '"COMPARA_BOLSA"."CONTP19"'
    end
    object BolsaMCONTP20: TIntegerField
      FieldName = 'CONTP20'
      Origin = '"COMPARA_BOLSA"."CONTP20"'
    end
    object BolsaMCONTP21: TIntegerField
      FieldName = 'CONTP21'
      Origin = '"COMPARA_BOLSA"."CONTP21"'
    end
    object BolsaMCONTP22: TIntegerField
      FieldName = 'CONTP22'
      Origin = '"COMPARA_BOLSA"."CONTP22"'
    end
    object BolsaMCONTP23: TIntegerField
      FieldName = 'CONTP23'
      Origin = '"COMPARA_BOLSA"."CONTP23"'
    end
    object BolsaMCONTP24: TIntegerField
      FieldName = 'CONTP24'
      Origin = '"COMPARA_BOLSA"."CONTP24"'
    end
    object BolsaMCONTP25: TIntegerField
      FieldName = 'CONTP25'
      Origin = '"COMPARA_BOLSA"."CONTP25"'
    end
    object BolsaMCONTP26: TIntegerField
      FieldName = 'CONTP26'
      Origin = '"COMPARA_BOLSA"."CONTP26"'
    end
    object BolsaMCONTP27: TIntegerField
      FieldName = 'CONTP27'
      Origin = '"COMPARA_BOLSA"."CONTP27"'
    end
    object BolsaMCONTP28: TIntegerField
      FieldName = 'CONTP28'
      Origin = '"COMPARA_BOLSA"."CONTP28"'
    end
    object BolsaMCONTP29: TIntegerField
      FieldName = 'CONTP29'
      Origin = '"COMPARA_BOLSA"."CONTP29"'
    end
    object BolsaMCONTP30: TIntegerField
      FieldName = 'CONTP30'
      Origin = '"COMPARA_BOLSA"."CONTP30"'
    end
    object BolsaMCONTP31: TIntegerField
      FieldName = 'CONTP31'
      Origin = '"COMPARA_BOLSA"."CONTP31"'
    end
    object BolsaMCONTP32: TIntegerField
      FieldName = 'CONTP32'
      Origin = '"COMPARA_BOLSA"."CONTP32"'
    end
    object BolsaMCONTP33: TIntegerField
      FieldName = 'CONTP33'
      Origin = '"COMPARA_BOLSA"."CONTP33"'
    end
    object BolsaMCONTP34: TIntegerField
      FieldName = 'CONTP34'
      Origin = '"COMPARA_BOLSA"."CONTP34"'
    end
    object BolsaMCONTP35: TIntegerField
      FieldName = 'CONTP35'
      Origin = '"COMPARA_BOLSA"."CONTP35"'
    end
    object BolsaMCONTP36: TIntegerField
      FieldName = 'CONTP36'
      Origin = '"COMPARA_BOLSA"."CONTP36"'
    end
    object BolsaMCONTP37: TIntegerField
      FieldName = 'CONTP37'
      Origin = '"COMPARA_BOLSA"."CONTP37"'
    end
    object BolsaMCONTP38: TIntegerField
      FieldName = 'CONTP38'
      Origin = '"COMPARA_BOLSA"."CONTP38"'
    end
    object BolsaMCONTP39: TIntegerField
      FieldName = 'CONTP39'
      Origin = '"COMPARA_BOLSA"."CONTP39"'
    end
    object BolsaMCONTP40: TIntegerField
      FieldName = 'CONTP40'
      Origin = '"COMPARA_BOLSA"."CONTP40"'
    end
    object BolsaMCONTP41: TIntegerField
      FieldName = 'CONTP41'
      Origin = '"COMPARA_BOLSA"."CONTP41"'
    end
    object BolsaMCONTP42: TIntegerField
      FieldName = 'CONTP42'
      Origin = '"COMPARA_BOLSA"."CONTP42"'
    end
    object BolsaMCONTP43: TIntegerField
      FieldName = 'CONTP43'
      Origin = '"COMPARA_BOLSA"."CONTP43"'
    end
    object BolsaMCONTP44: TIntegerField
      FieldName = 'CONTP44'
      Origin = '"COMPARA_BOLSA"."CONTP44"'
    end
    object BolsaMCONTP45: TIntegerField
      FieldName = 'CONTP45'
      Origin = '"COMPARA_BOLSA"."CONTP45"'
    end
    object BolsaMCONTP46: TIntegerField
      FieldName = 'CONTP46'
      Origin = '"COMPARA_BOLSA"."CONTP46"'
    end
    object BolsaMCONTP47: TIntegerField
      FieldName = 'CONTP47'
      Origin = '"COMPARA_BOLSA"."CONTP47"'
    end
    object BolsaMCONTP48: TIntegerField
      FieldName = 'CONTP48'
      Origin = '"COMPARA_BOLSA"."CONTP48"'
    end
    object BolsaMCONTP49: TIntegerField
      FieldName = 'CONTP49'
      Origin = '"COMPARA_BOLSA"."CONTP49"'
    end
    object BolsaMCONTP50: TIntegerField
      FieldName = 'CONTP50'
      Origin = '"COMPARA_BOLSA"."CONTP50"'
    end
    object BolsaMCONTP51: TIntegerField
      FieldName = 'CONTP51'
      Origin = '"COMPARA_BOLSA"."CONTP51"'
    end
    object BolsaMCONTP52: TIntegerField
      FieldName = 'CONTP52'
      Origin = '"COMPARA_BOLSA"."CONTP52"'
    end
    object BolsaMCONTP53: TIntegerField
      FieldName = 'CONTP53'
      Origin = '"COMPARA_BOLSA"."CONTP53"'
    end
    object BolsaMCONTP54: TIntegerField
      FieldName = 'CONTP54'
      Origin = '"COMPARA_BOLSA"."CONTP54"'
    end
    object BolsaMCONTP55: TIntegerField
      FieldName = 'CONTP55'
      Origin = '"COMPARA_BOLSA"."CONTP55"'
    end
    object BolsaMCONTP56: TIntegerField
      FieldName = 'CONTP56'
      Origin = '"COMPARA_BOLSA"."CONTP56"'
    end
    object BolsaMCONTP57: TIntegerField
      FieldName = 'CONTP57'
      Origin = '"COMPARA_BOLSA"."CONTP57"'
    end
    object BolsaMCONTP58: TIntegerField
      FieldName = 'CONTP58'
      Origin = '"COMPARA_BOLSA"."CONTP58"'
    end
    object BolsaMCONTP59: TIntegerField
      FieldName = 'CONTP59'
      Origin = '"COMPARA_BOLSA"."CONTP59"'
    end
    object BolsaMCONTP60: TIntegerField
      FieldName = 'CONTP60'
      Origin = '"COMPARA_BOLSA"."CONTP60"'
    end
    object BolsaMCONTP61: TIntegerField
      FieldName = 'CONTP61'
      Origin = '"COMPARA_BOLSA"."CONTP61"'
    end
    object BolsaMCONTP62: TIntegerField
      FieldName = 'CONTP62'
      Origin = '"COMPARA_BOLSA"."CONTP62"'
    end
    object BolsaMCONTP63: TIntegerField
      FieldName = 'CONTP63'
      Origin = '"COMPARA_BOLSA"."CONTP63"'
    end
    object BolsaMCONTP64: TIntegerField
      FieldName = 'CONTP64'
      Origin = '"COMPARA_BOLSA"."CONTP64"'
    end
    object BolsaMCONTP65: TIntegerField
      FieldName = 'CONTP65'
      Origin = '"COMPARA_BOLSA"."CONTP65"'
    end
    object BolsaMCONTP66: TIntegerField
      FieldName = 'CONTP66'
      Origin = '"COMPARA_BOLSA"."CONTP66"'
    end
    object BolsaMCONTP67: TIntegerField
      FieldName = 'CONTP67'
      Origin = '"COMPARA_BOLSA"."CONTP67"'
    end
    object BolsaMCONTP68: TIntegerField
      FieldName = 'CONTP68'
      Origin = '"COMPARA_BOLSA"."CONTP68"'
    end
    object BolsaMCONTP69: TIntegerField
      FieldName = 'CONTP69'
      Origin = '"COMPARA_BOLSA"."CONTP69"'
    end
    object BolsaMCONTP70: TIntegerField
      FieldName = 'CONTP70'
      Origin = '"COMPARA_BOLSA"."CONTP70"'
    end
    object BolsaMCONTP71: TIntegerField
      FieldName = 'CONTP71'
      Origin = '"COMPARA_BOLSA"."CONTP71"'
    end
    object BolsaMCONTP72: TIntegerField
      FieldName = 'CONTP72'
      Origin = '"COMPARA_BOLSA"."CONTP72"'
    end
    object BolsaMCONTP73: TIntegerField
      FieldName = 'CONTP73'
      Origin = '"COMPARA_BOLSA"."CONTP73"'
    end
    object BolsaMCONTP74: TIntegerField
      FieldName = 'CONTP74'
      Origin = '"COMPARA_BOLSA"."CONTP74"'
    end
    object BolsaMCONTP75: TIntegerField
      FieldName = 'CONTP75'
      Origin = '"COMPARA_BOLSA"."CONTP75"'
    end
    object BolsaMCONTP76: TIntegerField
      FieldName = 'CONTP76'
      Origin = '"COMPARA_BOLSA"."CONTP76"'
    end
    object BolsaMCONTP77: TIntegerField
      FieldName = 'CONTP77'
      Origin = '"COMPARA_BOLSA"."CONTP77"'
    end
    object BolsaMCONTP78: TIntegerField
      FieldName = 'CONTP78'
      Origin = '"COMPARA_BOLSA"."CONTP78"'
    end
    object BolsaMCONTP79: TIntegerField
      FieldName = 'CONTP79'
      Origin = '"COMPARA_BOLSA"."CONTP79"'
    end
    object BolsaMCONTP80: TIntegerField
      FieldName = 'CONTP80'
      Origin = '"COMPARA_BOLSA"."CONTP80"'
    end
    object BolsaMCONTP81: TIntegerField
      FieldName = 'CONTP81'
      Origin = '"COMPARA_BOLSA"."CONTP81"'
    end
    object BolsaMCONTP82: TIntegerField
      FieldName = 'CONTP82'
      Origin = '"COMPARA_BOLSA"."CONTP82"'
    end
    object BolsaMCONTP83: TIntegerField
      FieldName = 'CONTP83'
      Origin = '"COMPARA_BOLSA"."CONTP83"'
    end
    object BolsaMCONTP84: TIntegerField
      FieldName = 'CONTP84'
      Origin = '"COMPARA_BOLSA"."CONTP84"'
    end
    object BolsaMCONTP85: TIntegerField
      FieldName = 'CONTP85'
      Origin = '"COMPARA_BOLSA"."CONTP85"'
    end
    object BolsaMCONTP86: TIntegerField
      FieldName = 'CONTP86'
      Origin = '"COMPARA_BOLSA"."CONTP86"'
    end
    object BolsaMCONTP87: TIntegerField
      FieldName = 'CONTP87'
      Origin = '"COMPARA_BOLSA"."CONTP87"'
    end
    object BolsaMCONTP88: TIntegerField
      FieldName = 'CONTP88'
      Origin = '"COMPARA_BOLSA"."CONTP88"'
    end
    object BolsaMCONTP89: TIntegerField
      FieldName = 'CONTP89'
      Origin = '"COMPARA_BOLSA"."CONTP89"'
    end
    object BolsaMCONTP90: TIntegerField
      FieldName = 'CONTP90'
      Origin = '"COMPARA_BOLSA"."CONTP90"'
    end
    object BolsaMCONTP91: TIntegerField
      FieldName = 'CONTP91'
      Origin = '"COMPARA_BOLSA"."CONTP91"'
    end
    object BolsaMCONTP92: TIntegerField
      FieldName = 'CONTP92'
      Origin = '"COMPARA_BOLSA"."CONTP92"'
    end
    object BolsaMCONTP93: TIntegerField
      FieldName = 'CONTP93'
      Origin = '"COMPARA_BOLSA"."CONTP93"'
    end
    object BolsaMCONTP94: TIntegerField
      FieldName = 'CONTP94'
      Origin = '"COMPARA_BOLSA"."CONTP94"'
    end
    object BolsaMCONTP95: TIntegerField
      FieldName = 'CONTP95'
      Origin = '"COMPARA_BOLSA"."CONTP95"'
    end
    object BolsaMCONTP96: TIntegerField
      FieldName = 'CONTP96'
      Origin = '"COMPARA_BOLSA"."CONTP96"'
    end
    object BolsaMCONTP97: TIntegerField
      FieldName = 'CONTP97'
      Origin = '"COMPARA_BOLSA"."CONTP97"'
    end
    object BolsaMCONTP98: TIntegerField
      FieldName = 'CONTP98'
      Origin = '"COMPARA_BOLSA"."CONTP98"'
    end
    object BolsaMCONTP99: TIntegerField
      FieldName = 'CONTP99'
      Origin = '"COMPARA_BOLSA"."CONTP99"'
    end
    object BolsaMCONTP100: TIntegerField
      FieldName = 'CONTP100'
      Origin = '"COMPARA_BOLSA"."CONTP100"'
    end
    object BolsaMCONTS0: TIntegerField
      FieldName = 'CONTS0'
      Origin = '"COMPARA_BOLSA"."CONTS0"'
    end
    object BolsaMCONTS1: TIntegerField
      FieldName = 'CONTS1'
      Origin = '"COMPARA_BOLSA"."CONTS1"'
    end
    object BolsaMCONTS2: TIntegerField
      FieldName = 'CONTS2'
      Origin = '"COMPARA_BOLSA"."CONTS2"'
    end
    object BolsaMCONTS3: TIntegerField
      FieldName = 'CONTS3'
      Origin = '"COMPARA_BOLSA"."CONTS3"'
    end
    object BolsaMCONTS4: TIntegerField
      FieldName = 'CONTS4'
      Origin = '"COMPARA_BOLSA"."CONTS4"'
    end
    object BolsaMCONTS5: TIntegerField
      FieldName = 'CONTS5'
      Origin = '"COMPARA_BOLSA"."CONTS5"'
    end
    object BolsaMCONTS6: TIntegerField
      FieldName = 'CONTS6'
      Origin = '"COMPARA_BOLSA"."CONTS6"'
    end
    object BolsaMCONTS7: TIntegerField
      FieldName = 'CONTS7'
      Origin = '"COMPARA_BOLSA"."CONTS7"'
    end
    object BolsaMCONTS8: TIntegerField
      FieldName = 'CONTS8'
      Origin = '"COMPARA_BOLSA"."CONTS8"'
    end
    object BolsaMCONTS9: TIntegerField
      FieldName = 'CONTS9'
      Origin = '"COMPARA_BOLSA"."CONTS9"'
    end
    object BolsaMCONTS10: TIntegerField
      FieldName = 'CONTS10'
      Origin = '"COMPARA_BOLSA"."CONTS10"'
    end
    object BolsaMCONTS11: TIntegerField
      FieldName = 'CONTS11'
      Origin = '"COMPARA_BOLSA"."CONTS11"'
    end
    object BolsaMCONTS12: TIntegerField
      FieldName = 'CONTS12'
      Origin = '"COMPARA_BOLSA"."CONTS12"'
    end
    object BolsaMCONTS13: TIntegerField
      FieldName = 'CONTS13'
      Origin = '"COMPARA_BOLSA"."CONTS13"'
    end
    object BolsaMCONTS14: TIntegerField
      FieldName = 'CONTS14'
      Origin = '"COMPARA_BOLSA"."CONTS14"'
    end
    object BolsaMCONTS15: TIntegerField
      FieldName = 'CONTS15'
      Origin = '"COMPARA_BOLSA"."CONTS15"'
    end
    object BolsaMCONTS16: TIntegerField
      FieldName = 'CONTS16'
      Origin = '"COMPARA_BOLSA"."CONTS16"'
    end
    object BolsaMCONTS17: TIntegerField
      FieldName = 'CONTS17'
      Origin = '"COMPARA_BOLSA"."CONTS17"'
    end
    object BolsaMCONTS18: TIntegerField
      FieldName = 'CONTS18'
      Origin = '"COMPARA_BOLSA"."CONTS18"'
    end
    object BolsaMCONTS19: TIntegerField
      FieldName = 'CONTS19'
      Origin = '"COMPARA_BOLSA"."CONTS19"'
    end
    object BolsaMCONTS20: TIntegerField
      FieldName = 'CONTS20'
      Origin = '"COMPARA_BOLSA"."CONTS20"'
    end
    object BolsaMCONTS21: TIntegerField
      FieldName = 'CONTS21'
      Origin = '"COMPARA_BOLSA"."CONTS21"'
    end
    object BolsaMCONTS22: TIntegerField
      FieldName = 'CONTS22'
      Origin = '"COMPARA_BOLSA"."CONTS22"'
    end
    object BolsaMCONTS23: TIntegerField
      FieldName = 'CONTS23'
      Origin = '"COMPARA_BOLSA"."CONTS23"'
    end
    object BolsaMCONTS24: TIntegerField
      FieldName = 'CONTS24'
      Origin = '"COMPARA_BOLSA"."CONTS24"'
    end
    object BolsaMCONTS25: TIntegerField
      FieldName = 'CONTS25'
      Origin = '"COMPARA_BOLSA"."CONTS25"'
    end
    object BolsaMCONTS26: TIntegerField
      FieldName = 'CONTS26'
      Origin = '"COMPARA_BOLSA"."CONTS26"'
    end
    object BolsaMCONTS27: TIntegerField
      FieldName = 'CONTS27'
      Origin = '"COMPARA_BOLSA"."CONTS27"'
    end
    object BolsaMCONTS28: TIntegerField
      FieldName = 'CONTS28'
      Origin = '"COMPARA_BOLSA"."CONTS28"'
    end
    object BolsaMCONTS29: TIntegerField
      FieldName = 'CONTS29'
      Origin = '"COMPARA_BOLSA"."CONTS29"'
    end
    object BolsaMCONTS30: TIntegerField
      FieldName = 'CONTS30'
      Origin = '"COMPARA_BOLSA"."CONTS30"'
    end
    object BolsaMCONTS31: TIntegerField
      FieldName = 'CONTS31'
      Origin = '"COMPARA_BOLSA"."CONTS31"'
    end
    object BolsaMCONTS32: TIntegerField
      FieldName = 'CONTS32'
      Origin = '"COMPARA_BOLSA"."CONTS32"'
    end
    object BolsaMCONTS33: TIntegerField
      FieldName = 'CONTS33'
      Origin = '"COMPARA_BOLSA"."CONTS33"'
    end
    object BolsaMCONTS34: TIntegerField
      FieldName = 'CONTS34'
      Origin = '"COMPARA_BOLSA"."CONTS34"'
    end
    object BolsaMCONTS35: TIntegerField
      FieldName = 'CONTS35'
      Origin = '"COMPARA_BOLSA"."CONTS35"'
    end
    object BolsaMCONTS36: TIntegerField
      FieldName = 'CONTS36'
      Origin = '"COMPARA_BOLSA"."CONTS36"'
    end
    object BolsaMCONTS37: TIntegerField
      FieldName = 'CONTS37'
      Origin = '"COMPARA_BOLSA"."CONTS37"'
    end
    object BolsaMCONTS38: TIntegerField
      FieldName = 'CONTS38'
      Origin = '"COMPARA_BOLSA"."CONTS38"'
    end
    object BolsaMCONTS39: TIntegerField
      FieldName = 'CONTS39'
      Origin = '"COMPARA_BOLSA"."CONTS39"'
    end
    object BolsaMCONTS40: TIntegerField
      FieldName = 'CONTS40'
      Origin = '"COMPARA_BOLSA"."CONTS40"'
    end
    object BolsaMCONTS41: TIntegerField
      FieldName = 'CONTS41'
      Origin = '"COMPARA_BOLSA"."CONTS41"'
    end
    object BolsaMCONTS42: TIntegerField
      FieldName = 'CONTS42'
      Origin = '"COMPARA_BOLSA"."CONTS42"'
    end
    object BolsaMCONTS43: TIntegerField
      FieldName = 'CONTS43'
      Origin = '"COMPARA_BOLSA"."CONTS43"'
    end
    object BolsaMCONTS44: TIntegerField
      FieldName = 'CONTS44'
      Origin = '"COMPARA_BOLSA"."CONTS44"'
    end
    object BolsaMCONTS45: TIntegerField
      FieldName = 'CONTS45'
      Origin = '"COMPARA_BOLSA"."CONTS45"'
    end
    object BolsaMCONTS46: TIntegerField
      FieldName = 'CONTS46'
      Origin = '"COMPARA_BOLSA"."CONTS46"'
    end
    object BolsaMCONTS47: TIntegerField
      FieldName = 'CONTS47'
      Origin = '"COMPARA_BOLSA"."CONTS47"'
    end
    object BolsaMCONTS48: TIntegerField
      FieldName = 'CONTS48'
      Origin = '"COMPARA_BOLSA"."CONTS48"'
    end
    object BolsaMCONTS49: TIntegerField
      FieldName = 'CONTS49'
      Origin = '"COMPARA_BOLSA"."CONTS49"'
    end
    object BolsaMCONTS50: TIntegerField
      FieldName = 'CONTS50'
      Origin = '"COMPARA_BOLSA"."CONTS50"'
    end
    object BolsaMCONTS51: TIntegerField
      FieldName = 'CONTS51'
      Origin = '"COMPARA_BOLSA"."CONTS51"'
    end
    object BolsaMCONTS52: TIntegerField
      FieldName = 'CONTS52'
      Origin = '"COMPARA_BOLSA"."CONTS52"'
    end
    object BolsaMCONTS53: TIntegerField
      FieldName = 'CONTS53'
      Origin = '"COMPARA_BOLSA"."CONTS53"'
    end
    object BolsaMCONTS54: TIntegerField
      FieldName = 'CONTS54'
      Origin = '"COMPARA_BOLSA"."CONTS54"'
    end
    object BolsaMCONTS55: TIntegerField
      FieldName = 'CONTS55'
      Origin = '"COMPARA_BOLSA"."CONTS55"'
    end
    object BolsaMCONTS56: TIntegerField
      FieldName = 'CONTS56'
      Origin = '"COMPARA_BOLSA"."CONTS56"'
    end
    object BolsaMCONTS57: TIntegerField
      FieldName = 'CONTS57'
      Origin = '"COMPARA_BOLSA"."CONTS57"'
    end
    object BolsaMCONTS58: TIntegerField
      FieldName = 'CONTS58'
      Origin = '"COMPARA_BOLSA"."CONTS58"'
    end
    object BolsaMCONTS59: TIntegerField
      FieldName = 'CONTS59'
      Origin = '"COMPARA_BOLSA"."CONTS59"'
    end
    object BolsaMCONTS60: TIntegerField
      FieldName = 'CONTS60'
      Origin = '"COMPARA_BOLSA"."CONTS60"'
    end
    object BolsaMCONTS61: TIntegerField
      FieldName = 'CONTS61'
      Origin = '"COMPARA_BOLSA"."CONTS61"'
    end
    object BolsaMCONTS62: TIntegerField
      FieldName = 'CONTS62'
      Origin = '"COMPARA_BOLSA"."CONTS62"'
    end
    object BolsaMCONTS63: TIntegerField
      FieldName = 'CONTS63'
      Origin = '"COMPARA_BOLSA"."CONTS63"'
    end
    object BolsaMCONTS64: TIntegerField
      FieldName = 'CONTS64'
      Origin = '"COMPARA_BOLSA"."CONTS64"'
    end
    object BolsaMCONTS65: TIntegerField
      FieldName = 'CONTS65'
      Origin = '"COMPARA_BOLSA"."CONTS65"'
    end
    object BolsaMCONTS66: TIntegerField
      FieldName = 'CONTS66'
      Origin = '"COMPARA_BOLSA"."CONTS66"'
    end
    object BolsaMCONTS67: TIntegerField
      FieldName = 'CONTS67'
      Origin = '"COMPARA_BOLSA"."CONTS67"'
    end
    object BolsaMCONTS68: TIntegerField
      FieldName = 'CONTS68'
      Origin = '"COMPARA_BOLSA"."CONTS68"'
    end
    object BolsaMCONTS69: TIntegerField
      FieldName = 'CONTS69'
      Origin = '"COMPARA_BOLSA"."CONTS69"'
    end
    object BolsaMCONTS70: TIntegerField
      FieldName = 'CONTS70'
      Origin = '"COMPARA_BOLSA"."CONTS70"'
    end
    object BolsaMCONTS71: TIntegerField
      FieldName = 'CONTS71'
      Origin = '"COMPARA_BOLSA"."CONTS71"'
    end
    object BolsaMCONTS72: TIntegerField
      FieldName = 'CONTS72'
      Origin = '"COMPARA_BOLSA"."CONTS72"'
    end
    object BolsaMCONTS73: TIntegerField
      FieldName = 'CONTS73'
      Origin = '"COMPARA_BOLSA"."CONTS73"'
    end
    object BolsaMCONTS74: TIntegerField
      FieldName = 'CONTS74'
      Origin = '"COMPARA_BOLSA"."CONTS74"'
    end
    object BolsaMCONTS75: TIntegerField
      FieldName = 'CONTS75'
      Origin = '"COMPARA_BOLSA"."CONTS75"'
    end
    object BolsaMCONTS76: TIntegerField
      FieldName = 'CONTS76'
      Origin = '"COMPARA_BOLSA"."CONTS76"'
    end
    object BolsaMCONTS77: TIntegerField
      FieldName = 'CONTS77'
      Origin = '"COMPARA_BOLSA"."CONTS77"'
    end
    object BolsaMCONTS78: TIntegerField
      FieldName = 'CONTS78'
      Origin = '"COMPARA_BOLSA"."CONTS78"'
    end
    object BolsaMCONTS79: TIntegerField
      FieldName = 'CONTS79'
      Origin = '"COMPARA_BOLSA"."CONTS79"'
    end
    object BolsaMCONTS80: TIntegerField
      FieldName = 'CONTS80'
      Origin = '"COMPARA_BOLSA"."CONTS80"'
    end
    object BolsaMCONTS81: TIntegerField
      FieldName = 'CONTS81'
      Origin = '"COMPARA_BOLSA"."CONTS81"'
    end
    object BolsaMCONTS82: TIntegerField
      FieldName = 'CONTS82'
      Origin = '"COMPARA_BOLSA"."CONTS82"'
    end
    object BolsaMCONTS83: TIntegerField
      FieldName = 'CONTS83'
      Origin = '"COMPARA_BOLSA"."CONTS83"'
    end
    object BolsaMCONTS84: TIntegerField
      FieldName = 'CONTS84'
      Origin = '"COMPARA_BOLSA"."CONTS84"'
    end
    object BolsaMCONTS85: TIntegerField
      FieldName = 'CONTS85'
      Origin = '"COMPARA_BOLSA"."CONTS85"'
    end
    object BolsaMCONTS86: TIntegerField
      FieldName = 'CONTS86'
      Origin = '"COMPARA_BOLSA"."CONTS86"'
    end
    object BolsaMCONTS87: TIntegerField
      FieldName = 'CONTS87'
      Origin = '"COMPARA_BOLSA"."CONTS87"'
    end
    object BolsaMCONTS88: TIntegerField
      FieldName = 'CONTS88'
      Origin = '"COMPARA_BOLSA"."CONTS88"'
    end
    object BolsaMCONTS89: TIntegerField
      FieldName = 'CONTS89'
      Origin = '"COMPARA_BOLSA"."CONTS89"'
    end
    object BolsaMCONTS90: TIntegerField
      FieldName = 'CONTS90'
      Origin = '"COMPARA_BOLSA"."CONTS90"'
    end
    object BolsaMCONTS91: TIntegerField
      FieldName = 'CONTS91'
      Origin = '"COMPARA_BOLSA"."CONTS91"'
    end
    object BolsaMCONTS92: TIntegerField
      FieldName = 'CONTS92'
      Origin = '"COMPARA_BOLSA"."CONTS92"'
    end
    object BolsaMCONTS93: TIntegerField
      FieldName = 'CONTS93'
      Origin = '"COMPARA_BOLSA"."CONTS93"'
    end
    object BolsaMCONTS94: TIntegerField
      FieldName = 'CONTS94'
      Origin = '"COMPARA_BOLSA"."CONTS94"'
    end
    object BolsaMCONTS95: TIntegerField
      FieldName = 'CONTS95'
      Origin = '"COMPARA_BOLSA"."CONTS95"'
    end
    object BolsaMCONTS96: TIntegerField
      FieldName = 'CONTS96'
      Origin = '"COMPARA_BOLSA"."CONTS96"'
    end
    object BolsaMCONTS97: TIntegerField
      FieldName = 'CONTS97'
      Origin = '"COMPARA_BOLSA"."CONTS97"'
    end
    object BolsaMCONTS98: TIntegerField
      FieldName = 'CONTS98'
      Origin = '"COMPARA_BOLSA"."CONTS98"'
    end
    object BolsaMCONTS99: TIntegerField
      FieldName = 'CONTS99'
      Origin = '"COMPARA_BOLSA"."CONTS99"'
    end
    object BolsaMCONTS100: TIntegerField
      FieldName = 'CONTS100'
      Origin = '"COMPARA_BOLSA"."CONTS100"'
    end
    object BolsaMCONTT0: TIntegerField
      FieldName = 'CONTT0'
      Origin = '"COMPARA_BOLSA"."CONTT0"'
    end
    object BolsaMCONTT1: TIntegerField
      FieldName = 'CONTT1'
      Origin = '"COMPARA_BOLSA"."CONTT1"'
    end
    object BolsaMCONTT2: TIntegerField
      FieldName = 'CONTT2'
      Origin = '"COMPARA_BOLSA"."CONTT2"'
    end
    object BolsaMCONTT3: TIntegerField
      FieldName = 'CONTT3'
      Origin = '"COMPARA_BOLSA"."CONTT3"'
    end
    object BolsaMCONTT4: TIntegerField
      FieldName = 'CONTT4'
      Origin = '"COMPARA_BOLSA"."CONTT4"'
    end
    object BolsaMCONTT5: TIntegerField
      FieldName = 'CONTT5'
      Origin = '"COMPARA_BOLSA"."CONTT5"'
    end
    object BolsaMCONTT6: TIntegerField
      FieldName = 'CONTT6'
      Origin = '"COMPARA_BOLSA"."CONTT6"'
    end
    object BolsaMCONTT7: TIntegerField
      FieldName = 'CONTT7'
      Origin = '"COMPARA_BOLSA"."CONTT7"'
    end
    object BolsaMCONTT8: TIntegerField
      FieldName = 'CONTT8'
      Origin = '"COMPARA_BOLSA"."CONTT8"'
    end
    object BolsaMCONTT9: TIntegerField
      FieldName = 'CONTT9'
      Origin = '"COMPARA_BOLSA"."CONTT9"'
    end
    object BolsaMCONTT10: TIntegerField
      FieldName = 'CONTT10'
      Origin = '"COMPARA_BOLSA"."CONTT10"'
    end
    object BolsaMCONTT11: TIntegerField
      FieldName = 'CONTT11'
      Origin = '"COMPARA_BOLSA"."CONTT11"'
    end
    object BolsaMCONTT12: TIntegerField
      FieldName = 'CONTT12'
      Origin = '"COMPARA_BOLSA"."CONTT12"'
    end
    object BolsaMCONTT13: TIntegerField
      FieldName = 'CONTT13'
      Origin = '"COMPARA_BOLSA"."CONTT13"'
    end
    object BolsaMCONTT14: TIntegerField
      FieldName = 'CONTT14'
      Origin = '"COMPARA_BOLSA"."CONTT14"'
    end
    object BolsaMCONTT15: TIntegerField
      FieldName = 'CONTT15'
      Origin = '"COMPARA_BOLSA"."CONTT15"'
    end
    object BolsaMCONTT16: TIntegerField
      FieldName = 'CONTT16'
      Origin = '"COMPARA_BOLSA"."CONTT16"'
    end
    object BolsaMCONTT17: TIntegerField
      FieldName = 'CONTT17'
      Origin = '"COMPARA_BOLSA"."CONTT17"'
    end
    object BolsaMCONTT18: TIntegerField
      FieldName = 'CONTT18'
      Origin = '"COMPARA_BOLSA"."CONTT18"'
    end
    object BolsaMCONTT19: TIntegerField
      FieldName = 'CONTT19'
      Origin = '"COMPARA_BOLSA"."CONTT19"'
    end
    object BolsaMCONTT20: TIntegerField
      FieldName = 'CONTT20'
      Origin = '"COMPARA_BOLSA"."CONTT20"'
    end
    object BolsaMCONTT21: TIntegerField
      FieldName = 'CONTT21'
      Origin = '"COMPARA_BOLSA"."CONTT21"'
    end
    object BolsaMCONTT22: TIntegerField
      FieldName = 'CONTT22'
      Origin = '"COMPARA_BOLSA"."CONTT22"'
    end
    object BolsaMCONTT23: TIntegerField
      FieldName = 'CONTT23'
      Origin = '"COMPARA_BOLSA"."CONTT23"'
    end
    object BolsaMCONTT24: TIntegerField
      FieldName = 'CONTT24'
      Origin = '"COMPARA_BOLSA"."CONTT24"'
    end
    object BolsaMCONTT25: TIntegerField
      FieldName = 'CONTT25'
      Origin = '"COMPARA_BOLSA"."CONTT25"'
    end
    object BolsaMCONTT26: TIntegerField
      FieldName = 'CONTT26'
      Origin = '"COMPARA_BOLSA"."CONTT26"'
    end
    object BolsaMCONTT27: TIntegerField
      FieldName = 'CONTT27'
      Origin = '"COMPARA_BOLSA"."CONTT27"'
    end
    object BolsaMCONTT28: TIntegerField
      FieldName = 'CONTT28'
      Origin = '"COMPARA_BOLSA"."CONTT28"'
    end
    object BolsaMCONTT29: TIntegerField
      FieldName = 'CONTT29'
      Origin = '"COMPARA_BOLSA"."CONTT29"'
    end
    object BolsaMCONTT30: TIntegerField
      FieldName = 'CONTT30'
      Origin = '"COMPARA_BOLSA"."CONTT30"'
    end
    object BolsaMCONTT31: TIntegerField
      FieldName = 'CONTT31'
      Origin = '"COMPARA_BOLSA"."CONTT31"'
    end
    object BolsaMCONTT32: TIntegerField
      FieldName = 'CONTT32'
      Origin = '"COMPARA_BOLSA"."CONTT32"'
    end
    object BolsaMCONTT33: TIntegerField
      FieldName = 'CONTT33'
      Origin = '"COMPARA_BOLSA"."CONTT33"'
    end
    object BolsaMCONTT34: TIntegerField
      FieldName = 'CONTT34'
      Origin = '"COMPARA_BOLSA"."CONTT34"'
    end
    object BolsaMCONTT35: TIntegerField
      FieldName = 'CONTT35'
      Origin = '"COMPARA_BOLSA"."CONTT35"'
    end
    object BolsaMCONTT36: TIntegerField
      FieldName = 'CONTT36'
      Origin = '"COMPARA_BOLSA"."CONTT36"'
    end
    object BolsaMCONTT37: TIntegerField
      FieldName = 'CONTT37'
      Origin = '"COMPARA_BOLSA"."CONTT37"'
    end
    object BolsaMCONTT38: TIntegerField
      FieldName = 'CONTT38'
      Origin = '"COMPARA_BOLSA"."CONTT38"'
    end
    object BolsaMCONTT39: TIntegerField
      FieldName = 'CONTT39'
      Origin = '"COMPARA_BOLSA"."CONTT39"'
    end
    object BolsaMCONTT40: TIntegerField
      FieldName = 'CONTT40'
      Origin = '"COMPARA_BOLSA"."CONTT40"'
    end
    object BolsaMCONTT41: TIntegerField
      FieldName = 'CONTT41'
      Origin = '"COMPARA_BOLSA"."CONTT41"'
    end
    object BolsaMCONTT42: TIntegerField
      FieldName = 'CONTT42'
      Origin = '"COMPARA_BOLSA"."CONTT42"'
    end
    object BolsaMCONTT43: TIntegerField
      FieldName = 'CONTT43'
      Origin = '"COMPARA_BOLSA"."CONTT43"'
    end
    object BolsaMCONTT44: TIntegerField
      FieldName = 'CONTT44'
      Origin = '"COMPARA_BOLSA"."CONTT44"'
    end
    object BolsaMCONTT45: TIntegerField
      FieldName = 'CONTT45'
      Origin = '"COMPARA_BOLSA"."CONTT45"'
    end
    object BolsaMCONTT46: TIntegerField
      FieldName = 'CONTT46'
      Origin = '"COMPARA_BOLSA"."CONTT46"'
    end
    object BolsaMCONTT47: TIntegerField
      FieldName = 'CONTT47'
      Origin = '"COMPARA_BOLSA"."CONTT47"'
    end
    object BolsaMCONTT48: TIntegerField
      FieldName = 'CONTT48'
      Origin = '"COMPARA_BOLSA"."CONTT48"'
    end
    object BolsaMCONTT49: TIntegerField
      FieldName = 'CONTT49'
      Origin = '"COMPARA_BOLSA"."CONTT49"'
    end
    object BolsaMCONTT50: TIntegerField
      FieldName = 'CONTT50'
      Origin = '"COMPARA_BOLSA"."CONTT50"'
    end
    object BolsaMCONTT51: TIntegerField
      FieldName = 'CONTT51'
      Origin = '"COMPARA_BOLSA"."CONTT51"'
    end
    object BolsaMCONTT52: TIntegerField
      FieldName = 'CONTT52'
      Origin = '"COMPARA_BOLSA"."CONTT52"'
    end
    object BolsaMCONTT53: TIntegerField
      FieldName = 'CONTT53'
      Origin = '"COMPARA_BOLSA"."CONTT53"'
    end
    object BolsaMCONTT54: TIntegerField
      FieldName = 'CONTT54'
      Origin = '"COMPARA_BOLSA"."CONTT54"'
    end
    object BolsaMCONTT55: TIntegerField
      FieldName = 'CONTT55'
      Origin = '"COMPARA_BOLSA"."CONTT55"'
    end
    object BolsaMCONTT56: TIntegerField
      FieldName = 'CONTT56'
      Origin = '"COMPARA_BOLSA"."CONTT56"'
    end
    object BolsaMCONTT57: TIntegerField
      FieldName = 'CONTT57'
      Origin = '"COMPARA_BOLSA"."CONTT57"'
    end
    object BolsaMCONTT58: TIntegerField
      FieldName = 'CONTT58'
      Origin = '"COMPARA_BOLSA"."CONTT58"'
    end
    object BolsaMCONTT59: TIntegerField
      FieldName = 'CONTT59'
      Origin = '"COMPARA_BOLSA"."CONTT59"'
    end
    object BolsaMCONTT60: TIntegerField
      FieldName = 'CONTT60'
      Origin = '"COMPARA_BOLSA"."CONTT60"'
    end
    object BolsaMCONTT61: TIntegerField
      FieldName = 'CONTT61'
      Origin = '"COMPARA_BOLSA"."CONTT61"'
    end
    object BolsaMCONTT62: TIntegerField
      FieldName = 'CONTT62'
      Origin = '"COMPARA_BOLSA"."CONTT62"'
    end
    object BolsaMCONTT63: TIntegerField
      FieldName = 'CONTT63'
      Origin = '"COMPARA_BOLSA"."CONTT63"'
    end
    object BolsaMCONTT64: TIntegerField
      FieldName = 'CONTT64'
      Origin = '"COMPARA_BOLSA"."CONTT64"'
    end
    object BolsaMCONTT65: TIntegerField
      FieldName = 'CONTT65'
      Origin = '"COMPARA_BOLSA"."CONTT65"'
    end
    object BolsaMCONTT66: TIntegerField
      FieldName = 'CONTT66'
      Origin = '"COMPARA_BOLSA"."CONTT66"'
    end
    object BolsaMCONTT67: TIntegerField
      FieldName = 'CONTT67'
      Origin = '"COMPARA_BOLSA"."CONTT67"'
    end
    object BolsaMCONTT68: TIntegerField
      FieldName = 'CONTT68'
      Origin = '"COMPARA_BOLSA"."CONTT68"'
    end
    object BolsaMCONTT69: TIntegerField
      FieldName = 'CONTT69'
      Origin = '"COMPARA_BOLSA"."CONTT69"'
    end
    object BolsaMCONTT70: TIntegerField
      FieldName = 'CONTT70'
      Origin = '"COMPARA_BOLSA"."CONTT70"'
    end
    object BolsaMCONTT71: TIntegerField
      FieldName = 'CONTT71'
      Origin = '"COMPARA_BOLSA"."CONTT71"'
    end
    object BolsaMCONTT72: TIntegerField
      FieldName = 'CONTT72'
      Origin = '"COMPARA_BOLSA"."CONTT72"'
    end
    object BolsaMCONTT73: TIntegerField
      FieldName = 'CONTT73'
      Origin = '"COMPARA_BOLSA"."CONTT73"'
    end
    object BolsaMCONTT74: TIntegerField
      FieldName = 'CONTT74'
      Origin = '"COMPARA_BOLSA"."CONTT74"'
    end
    object BolsaMCONTT75: TIntegerField
      FieldName = 'CONTT75'
      Origin = '"COMPARA_BOLSA"."CONTT75"'
    end
    object BolsaMCONTT76: TIntegerField
      FieldName = 'CONTT76'
      Origin = '"COMPARA_BOLSA"."CONTT76"'
    end
    object BolsaMCONTT77: TIntegerField
      FieldName = 'CONTT77'
      Origin = '"COMPARA_BOLSA"."CONTT77"'
    end
    object BolsaMCONTT78: TIntegerField
      FieldName = 'CONTT78'
      Origin = '"COMPARA_BOLSA"."CONTT78"'
    end
    object BolsaMCONTT79: TIntegerField
      FieldName = 'CONTT79'
      Origin = '"COMPARA_BOLSA"."CONTT79"'
    end
    object BolsaMCONTT80: TIntegerField
      FieldName = 'CONTT80'
      Origin = '"COMPARA_BOLSA"."CONTT80"'
    end
    object BolsaMCONTT81: TIntegerField
      FieldName = 'CONTT81'
      Origin = '"COMPARA_BOLSA"."CONTT81"'
    end
    object BolsaMCONTT82: TIntegerField
      FieldName = 'CONTT82'
      Origin = '"COMPARA_BOLSA"."CONTT82"'
    end
    object BolsaMCONTT83: TIntegerField
      FieldName = 'CONTT83'
      Origin = '"COMPARA_BOLSA"."CONTT83"'
    end
    object BolsaMCONTT84: TIntegerField
      FieldName = 'CONTT84'
      Origin = '"COMPARA_BOLSA"."CONTT84"'
    end
    object BolsaMCONTT85: TIntegerField
      FieldName = 'CONTT85'
      Origin = '"COMPARA_BOLSA"."CONTT85"'
    end
    object BolsaMCONTT86: TIntegerField
      FieldName = 'CONTT86'
      Origin = '"COMPARA_BOLSA"."CONTT86"'
    end
    object BolsaMCONTT87: TIntegerField
      FieldName = 'CONTT87'
      Origin = '"COMPARA_BOLSA"."CONTT87"'
    end
    object BolsaMCONTT88: TIntegerField
      FieldName = 'CONTT88'
      Origin = '"COMPARA_BOLSA"."CONTT88"'
    end
    object BolsaMCONTT89: TIntegerField
      FieldName = 'CONTT89'
      Origin = '"COMPARA_BOLSA"."CONTT89"'
    end
    object BolsaMCONTT90: TIntegerField
      FieldName = 'CONTT90'
      Origin = '"COMPARA_BOLSA"."CONTT90"'
    end
    object BolsaMCONTT91: TIntegerField
      FieldName = 'CONTT91'
      Origin = '"COMPARA_BOLSA"."CONTT91"'
    end
    object BolsaMCONTT92: TIntegerField
      FieldName = 'CONTT92'
      Origin = '"COMPARA_BOLSA"."CONTT92"'
    end
    object BolsaMCONTT93: TIntegerField
      FieldName = 'CONTT93'
      Origin = '"COMPARA_BOLSA"."CONTT93"'
    end
    object BolsaMCONTT94: TIntegerField
      FieldName = 'CONTT94'
      Origin = '"COMPARA_BOLSA"."CONTT94"'
    end
    object BolsaMCONTT95: TIntegerField
      FieldName = 'CONTT95'
      Origin = '"COMPARA_BOLSA"."CONTT95"'
    end
    object BolsaMCONTT96: TIntegerField
      FieldName = 'CONTT96'
      Origin = '"COMPARA_BOLSA"."CONTT96"'
    end
    object BolsaMCONTT97: TIntegerField
      FieldName = 'CONTT97'
      Origin = '"COMPARA_BOLSA"."CONTT97"'
    end
    object BolsaMCONTT98: TIntegerField
      FieldName = 'CONTT98'
      Origin = '"COMPARA_BOLSA"."CONTT98"'
    end
    object BolsaMCONTT99: TIntegerField
      FieldName = 'CONTT99'
      Origin = '"COMPARA_BOLSA"."CONTT99"'
    end
    object BolsaMCONTT100: TIntegerField
      FieldName = 'CONTT100'
      Origin = '"COMPARA_BOLSA"."CONTT100"'
    end
  end
  object DsAReceberRes: TDataSource
    Left = 372
    Top = 70
  end
  object AReceberRes: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from resumo_receber(:inicio, :fim)')
    Left = 460
    Top = 70
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fim'
        ParamType = ptUnknown
      end>
    object AReceberResMENSALIDADE: TIBBCDField
      FieldName = 'MENSALIDADE'
      currency = True
      Precision = 18
      Size = 2
    end
    object AReceberResMATERIAL: TIBBCDField
      FieldName = 'MATERIAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object AReceberResTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"RESUMO_RECEBER"."TOTAL"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object dsetiqueta: TDataSource
    DataSet = etiqueta
    Left = 20
    Top = 182
  end
  object etiqueta: TIBDataSet
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PROPAGANDA'
      'where'
      '  COD_PROP = :OLD_COD_PROP')
    InsertSQL.Strings = (
      'insert into PROPAGANDA'
      '  (COD_PROP, ESCOLA, MENSAGEN, TELEFONE)'
      'values'
      '  (:COD_PROP, :ESCOLA, :MENSAGEN, :TELEFONE)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_PROP,'
      '  ESCOLA,'
      '  MENSAGEN,'
      '  TELEFONE'
      'from PROPAGANDA '
      'where'
      '  COD_PROP = :COD_PROP')
    SelectSQL.Strings = (
      'select * '
      'from PROPAGANDA')
    ModifySQL.Strings = (
      'update PROPAGANDA'
      'set'
      '  COD_PROP = :COD_PROP,'
      '  ESCOLA = :ESCOLA,'
      '  MENSAGEN = :MENSAGEN,'
      '  TELEFONE = :TELEFONE'
      'where'
      '  COD_PROP = :OLD_COD_PROP')
    GeneratorField.Field = 'COD_PROP'
    GeneratorField.Generator = 'GEN_PROPAGANDA'
    Left = 100
    Top = 182
    object etiquetaCOD_PROP: TIntegerField
      FieldName = 'COD_PROP'
      Origin = '"PROPAGANDA"."COD_PROP"'
      Required = True
    end
    object etiquetaESCOLA: TIBStringField
      FieldName = 'ESCOLA'
      Origin = '"PROPAGANDA"."ESCOLA"'
    end
    object etiquetaMENSAGEN: TIBStringField
      FieldName = 'MENSAGEN'
      Origin = '"PROPAGANDA"."MENSAGEN"'
      Size = 40
    end
    object etiquetaTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"PROPAGANDA"."TELEFONE"'
      Size = 13
    end
  end
  object Alu_3_Rec: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from alu_3_Rec(:serie,:turma)'
      '')
    Left = 276
    Top = 182
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
    object Alu_3_RecALU_COD: TIntegerField
      FieldName = 'ALU_COD'
      Origin = '"ALU_3_REC"."ALU_COD"'
    end
    object Alu_3_RecALU_CHAMADA: TSmallintField
      FieldName = 'ALU_CHAMADA'
      Origin = '"ALU_3_REC"."ALU_CHAMADA"'
    end
    object Alu_3_RecALU_NOME: TIBStringField
      FieldName = 'ALU_NOME'
      Origin = '"ALU_3_REC"."ALU_NOME"'
      Size = 60
    end
    object Alu_3_RecN_01: TIBStringField
      FieldName = 'N_01'
      Origin = '"ALU_3_REC"."N_01"'
      Size = 6
    end
    object Alu_3_RecN_02: TIBStringField
      FieldName = 'N_02'
      Origin = '"ALU_3_REC"."N_02"'
      Size = 6
    end
    object Alu_3_RecN_03: TIBStringField
      FieldName = 'N_03'
      Origin = '"ALU_3_REC"."N_03"'
      Size = 6
    end
    object Alu_3_RecN_04: TIBStringField
      FieldName = 'N_04'
      Origin = '"ALU_3_REC"."N_04"'
      Size = 6
    end
    object Alu_3_RecN_05: TIBStringField
      FieldName = 'N_05'
      Origin = '"ALU_3_REC"."N_05"'
      Size = 6
    end
    object Alu_3_RecN_06: TIBStringField
      FieldName = 'N_06'
      Origin = '"ALU_3_REC"."N_06"'
      Size = 6
    end
    object Alu_3_RecN_07: TIBStringField
      FieldName = 'N_07'
      Origin = '"ALU_3_REC"."N_07"'
      Size = 6
    end
    object Alu_3_RecN_08: TIBStringField
      FieldName = 'N_08'
      Origin = '"ALU_3_REC"."N_08"'
      Size = 6
    end
    object Alu_3_RecN_09: TIBStringField
      FieldName = 'N_09'
      Origin = '"ALU_3_REC"."N_09"'
      Size = 6
    end
    object Alu_3_RecN_10: TIBStringField
      FieldName = 'N_10'
      Origin = '"ALU_3_REC"."N_10"'
      Size = 6
    end
    object Alu_3_RecN_11: TIBStringField
      FieldName = 'N_11'
      Origin = '"ALU_3_REC"."N_11"'
      Size = 6
    end
    object Alu_3_RecN_12: TIBStringField
      FieldName = 'N_12'
      Origin = '"ALU_3_REC"."N_12"'
      Size = 6
    end
    object Alu_3_RecN_13: TIBStringField
      FieldName = 'N_13'
      Origin = '"ALU_3_REC"."N_13"'
      Size = 6
    end
    object Alu_3_RecN_14: TIBStringField
      FieldName = 'N_14'
      Origin = '"ALU_3_REC"."N_14"'
      Size = 6
    end
    object Alu_3_RecN_15: TIBStringField
      FieldName = 'N_15'
      Origin = '"ALU_3_REC"."N_15"'
      Size = 6
    end
    object Alu_3_RecN_16: TIBStringField
      FieldName = 'N_16'
      Origin = '"ALU_3_REC"."N_16"'
      Size = 6
    end
    object Alu_3_RecN_17: TIBStringField
      FieldName = 'N_17'
      Origin = '"ALU_3_REC"."N_17"'
      Size = 6
    end
    object Alu_3_RecN_18: TIBStringField
      FieldName = 'N_18'
      Origin = '"ALU_3_REC"."N_18"'
      Size = 6
    end
    object Alu_3_RecN_19: TIBStringField
      FieldName = 'N_19'
      Origin = '"ALU_3_REC"."N_19"'
      Size = 6
    end
    object Alu_3_RecN_20: TIBStringField
      FieldName = 'N_20'
      Origin = '"ALU_3_REC"."N_20"'
      Size = 6
    end
  end
  object dsAlu_3_Rec: TDataSource
    DataSet = Alu_3_Rec
    Left = 188
    Top = 182
  end
  object iqpresenca: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from PRESENCA')
    UpdateObject = uppresenca
    Left = 20
    Top = 246
    object iqpresencaALU_PRESENCA: TIntegerField
      FieldName = 'ALU_PRESENCA'
      Origin = '"PRESENCA"."ALU_PRESENCA"'
    end
    object iqpresencaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"PRESENCA"."DATA"'
    end
    object iqpresencaHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"PRESENCA"."HORA"'
    end
  end
  object uppresenca: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ALU_PRESENCA,'
      '  DATA,'
      '  HORA'
      'from PRESENCA '
      'where'
      '  ALU_PRESENCA = :ALU_PRESENCA and'
      '  DATA = :DATA')
    ModifySQL.Strings = (
      'update PRESENCA'
      'set'
      '  ALU_PRESENCA = :ALU_PRESENCA,'
      '  DATA = :DATA,'
      '  HORA = :HORA'
      'where'
      '  ALU_PRESENCA = :OLD_ALU_PRESENCA and'
      '  DATA = :OLD_DATA')
    InsertSQL.Strings = (
      'insert into PRESENCA'
      '  (ALU_PRESENCA, DATA, HORA)'
      'values'
      '  (:ALU_PRESENCA, :DATA, :HORA)')
    DeleteSQL.Strings = (
      'delete from PRESENCA'
      'where'
      '  ALU_PRESENCA = :OLD_ALU_PRESENCA and'
      '  DATA = :OLD_DATA')
    Left = 100
    Top = 246
  end
  object Dspresenca: TDataSource
    DataSet = iqpresenca
    Left = 188
    Top = 246
  end
  object Dsdatanotas: TDataSource
    DataSet = iqdatasnotas
    Left = 188
    Top = 302
  end
  object updatasnotas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  DESCRICAO,'
      '  INICIO,'
      '  FIM,'
      '  INICIO_NOTA,'
      '  FIM_NOTA'
      'from BIMESTRES '
      'where'
      '  CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update BIMESTRES'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  INICIO = :INICIO,'
      '  FIM = :FIM,'
      '  INICIO_NOTA = :INICIO_NOTA,'
      '  FIM_NOTA = :FIM_NOTA'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into BIMESTRES'
      '  (CODIGO, DESCRICAO, INICIO, FIM, INICIO_NOTA, FIM_NOTA)'
      'values'
      '  (:CODIGO, :DESCRICAO, :INICIO, :FIM, :INICIO_NOTA, :FIM_NOTA)')
    DeleteSQL.Strings = (
      'delete from BIMESTRES'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 100
    Top = 302
  end
  object iqdatasnotas: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from BIMESTRES'
      'where codigo is not null'
      'order by codigo')
    UpdateObject = updatasnotas
    Left = 20
    Top = 302
    object iqdatasnotasCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = '"BIMESTRES"."CODIGO"'
      Required = True
    end
    object iqdatasnotasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"BIMESTRES"."DESCRICAO"'
      Size = 15
    end
    object iqdatasnotasINICIO: TDateField
      FieldName = 'INICIO'
      Origin = '"BIMESTRES"."INICIO"'
    end
    object iqdatasnotasFIM: TDateField
      FieldName = 'FIM'
      Origin = '"BIMESTRES"."FIM"'
    end
    object iqdatasnotasINICIO_NOTA: TDateField
      FieldName = 'INICIO_NOTA'
      Origin = '"BIMESTRES"."INICIO_NOTA"'
    end
    object iqdatasnotasFIM_NOTA: TDateField
      FieldName = 'FIM_NOTA'
      Origin = '"BIMESTRES"."FIM_NOTA"'
    end
  end
  object DBUsuario: TIBDatabase
    Params.Strings = (
      'lc_ctype=WIN1252')
    LoginPrompt = False
    DefaultTransaction = TSUsuario
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    AfterConnect = DBUsuarioAfterConnect
    Left = 24
    Top = 16
  end
  object qy_usuario: TIBQuery
    Database = DBUsuario
    Transaction = TSUsuario
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from USUARIOS'
      'where codigo is not null')
    UpdateObject = up_usuario
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_USUARIO'
    Left = 348
    Top = 238
    object qy_usuarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"USUARIOS"."CODIGO"'
      Required = True
    end
    object qy_usuarioLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = '"USUARIOS"."LOGIN"'
      Required = True
      Size = 10
    end
    object qy_usuarioSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"USUARIOS"."SENHA"'
      Required = True
      Size = 8
    end
  end
  object up_usuario: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  LOGIN,'
      '  SENHA'
      'from USUARIOS '
      'where'
      '  CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update USUARIOS'
      'set'
      '  CODIGO = :CODIGO,'
      '  LOGIN = :LOGIN,'
      '  SENHA = :SENHA'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into USUARIOS'
      '  (CODIGO, LOGIN, SENHA)'
      'values'
      '  (:CODIGO, :LOGIN, :SENHA)')
    DeleteSQL.Strings = (
      'delete from USUARIOS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 492
    Top = 238
  end
  object ds_usuario: TDataSource
    DataSet = qy_usuario
    Left = 428
    Top = 238
  end
  object Iqconta: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select count(n_01) '
      'from ALU_RECUP_BIM(:serie,:turma,:bimestre,:media)'
      'where n_01 = '#39'F1'#39
      'group by n_01')
    UpdateObject = ibpdtsqlconta1
    Left = 340
    Top = 310
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
        Name = 'bimestre'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'media'
        ParamType = ptUnknown
      end>
  end
  object ibpdtsqlconta1: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from ALU_RECUP_BIM '
      'where'
      '  ALU_COD = :ALU_COD')
    ModifySQL.Strings = (
      'update ALU_RECUP_BIM'
      'set'
      '  ALU_COD = :ALU_COD,'
      '  ALU_CHAMADA = :ALU_CHAMADA,'
      '  ALU_NOME = :ALU_NOME,'
      '  N_01 = :N_01,'
      '  N_02 = :N_02,'
      '  N_03 = :N_03,'
      '  N_04 = :N_04,'
      '  N_05 = :N_05,'
      '  N_06 = :N_06,'
      '  N_07 = :N_07,'
      '  N_08 = :N_08,'
      '  N_09 = :N_09,'
      '  N_10 = :N_10,'
      '  N_11 = :N_11,'
      '  N_12 = :N_12,'
      '  N_13 = :N_13,'
      '  N_14 = :N_14,'
      '  N_15 = :N_15,'
      '  N_16 = :N_16,'
      '  N_17 = :N_17,'
      '  N_18 = :N_18,'
      '  N_19 = :N_19,'
      '  N_20 = :N_20'
      'where'
      '  ALU_COD = :OLD_ALU_COD')
    InsertSQL.Strings = (
      'insert into ALU_RECUP_BIM'
      
        '  (ALU_COD, ALU_CHAMADA, ALU_NOME, N_01, N_02, N_03, N_04, N_05,' +
        ' N_06, '
      
        '   N_07, N_08, N_09, N_10, N_11, N_12, N_13, N_14, N_15, N_16, N' +
        '_17, N_18, '
      '   N_19, N_20)'
      'values'
      
        '  (:ALU_COD, :ALU_CHAMADA, :ALU_NOME, :N_01, :N_02, :N_03, :N_04' +
        ', :N_05, '
      
        '   :N_06, :N_07, :N_08, :N_09, :N_10, :N_11, :N_12, :N_13, :N_14' +
        ', :N_15, '
      '   :N_16, :N_17, :N_18, :N_19, :N_20)')
    DeleteSQL.Strings = (
      'delete from ALU_RECUP_BIM'
      'where'
      '  ALU_COD = :OLD_ALU_COD')
    Left = 516
    Top = 310
  end
  object ds_conta: TDataSource
    DataSet = Iqconta
    Left = 436
    Top = 310
  end
  object TSUsuario: TIBTransaction
    Active = False
    DefaultDatabase = DBUsuario
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 96
    Top = 16
  end
  object iqParametros_B: TIBQuery
    Database = DBUsuario
    Transaction = TSUsuario
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from PARAMETROS_B')
    UpdateObject = upParametros_B
    Left = 32
    Top = 384
    object iqParametros_BCONT_ARQ: TIntegerField
      FieldName = 'CONT_ARQ'
      Origin = '"PARAMETROS_B"."CONT_ARQ"'
    end
    object iqParametros_BCONT_REMESSA: TIntegerField
      FieldName = 'CONT_REMESSA'
      Origin = '"PARAMETROS_B"."CONT_REMESSA"'
    end
    object iqParametros_BDATA_REMESSA: TDateField
      FieldName = 'DATA_REMESSA'
      Origin = '"PARAMETROS_B"."DATA_REMESSA"'
    end
    object iqParametros_BPROXIMO_BLOQUETO_I: TIntegerField
      FieldName = 'PROXIMO_BLOQUETO_I'
      Origin = '"PARAMETROS_B"."PROXIMO_BLOQUETO_I"'
    end
    object iqParametros_BPROXIMO_BLOQUETO_II: TIntegerField
      FieldName = 'PROXIMO_BLOQUETO_II'
      Origin = '"PARAMETROS_B"."PROXIMO_BLOQUETO_II"'
    end
  end
  object upParametros_B: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CONT_ARQ,'
      '  CONT_REMESSA,'
      '  DATA_REMESSA,'
      '  PROXIMO_BLOQUETO_I,'
      '  PROXIMO_BLOQUETO_II'
      'from PARAMETROS_B '
      'where'
      '  CONT_ARQ = :CONT_ARQ')
    ModifySQL.Strings = (
      'update PARAMETROS_B'
      'set'
      '  CONT_ARQ = :CONT_ARQ,'
      '  CONT_REMESSA = :CONT_REMESSA,'
      '  DATA_REMESSA = :DATA_REMESSA,'
      '  PROXIMO_BLOQUETO_I = :PROXIMO_BLOQUETO_I,'
      '  PROXIMO_BLOQUETO_II = :PROXIMO_BLOQUETO_II'
      'where'
      '  CONT_ARQ = :OLD_CONT_ARQ')
    InsertSQL.Strings = (
      'insert into PARAMETROS_B'
      '  (CONT_ARQ, CONT_REMESSA, DATA_REMESSA, PROXIMO_BLOQUETO_I, '
      'PROXIMO_BLOQUETO_II)'
      'values'
      
        '  (:CONT_ARQ, :CONT_REMESSA, :DATA_REMESSA, :PROXIMO_BLOQUETO_I,' +
        ' '
      ':PROXIMO_BLOQUETO_II)')
    DeleteSQL.Strings = (
      'delete from PARAMETROS_B'
      'where'
      '  CONT_ARQ = :OLD_CONT_ARQ')
    Left = 224
    Top = 384
  end
  object dsParametros_B: TDataSource
    DataSet = iqParametros_B
    Left = 128
    Top = 384
  end
  object dsCupom: TDataSource
    DataSet = iqCupom
    Left = 128
    Top = 440
  end
  object iqCupom: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from CUPOM')
    UpdateObject = upCupom
    GeneratorField.Field = 'ID_CUPOM'
    GeneratorField.Generator = 'ID_CUPOM'
    Left = 24
    Top = 440
    object iqCupomID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
      Origin = '"CUPOM"."ID_CUPOM"'
      Required = True
    end
    object iqCupomCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CUPOM"."CODIGO"'
    end
    object iqCupomDATAREG: TDateTimeField
      FieldName = 'DATAREG'
      Origin = '"CUPOM"."DATAREG"'
    end
  end
  object upCupom: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_CUPOM,'
      '  CODIGO,'
      '  DATAREG'
      'from CUPOM '
      'where'
      '  ID_CUPOM = :ID_CUPOM')
    ModifySQL.Strings = (
      'update CUPOM'
      'set'
      '  ID_CUPOM = :ID_CUPOM,'
      '  CODIGO = :CODIGO,'
      '  DATAREG = :DATAREG'
      'where'
      '  ID_CUPOM = :OLD_ID_CUPOM')
    InsertSQL.Strings = (
      'insert into CUPOM'
      '  (ID_CUPOM, CODIGO, DATAREG)'
      'values'
      '  (:ID_CUPOM, :CODIGO, :DATAREG)')
    DeleteSQL.Strings = (
      'delete from CUPOM'
      'where'
      '  ID_CUPOM = :OLD_ID_CUPOM')
    Left = 224
    Top = 440
  end
  object dsAlunosCupom: TDataSource
    DataSet = iqAlunosCupom
    Left = 448
    Top = 392
  end
  object iqAlunosCupom: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from ALUNOS_CUPOM'
      'order by NOME')
    UpdateObject = upAlunosCupom
    Left = 352
    Top = 392
    object iqAlunosCupomCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"ALUNOS_CUPOM"."CODIGO"'
    end
    object iqAlunosCupomNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ALUNOS_CUPOM"."NOME"'
      Size = 60
    end
  end
  object upAlunosCupom: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME'
      'from ALUNOS_CUPOM '
      'where'
      '  CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update ALUNOS_CUPOM'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into ALUNOS_CUPOM'
      '  (CODIGO, NOME)'
      'values'
      '  (:CODIGO, :NOME)')
    DeleteSQL.Strings = (
      'delete from ALUNOS_CUPOM'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 544
    Top = 392
  end
  object dsEscola: TDataSource
    DataSet = iqEscola
    Left = 448
    Top = 456
  end
  object iqEscola: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ESCOLA'
      'order by escola')
    UpdateObject = upEscola
    GeneratorField.Field = 'ID_ESCOLA'
    GeneratorField.Generator = 'GEN_ESCOLA_ID'
    Left = 352
    Top = 456
    object iqEscolaID_ESCOLA: TIntegerField
      FieldName = 'ID_ESCOLA'
      Origin = '"ESCOLA"."ID_ESCOLA"'
      Required = True
    end
    object iqEscolaESCOLA: TIBStringField
      FieldName = 'ESCOLA'
      Origin = '"ESCOLA"."ESCOLA"'
      Size = 100
    end
    object iqEscolaTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"ESCOLA"."TIPO"'
      FixedChar = True
      Size = 2
    end
  end
  object upEscola: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_ESCOLA,'
      '  ESCOLA,'
      '  TIPO'
      'from ESCOLA '
      'where'
      '  ID_ESCOLA = :ID_ESCOLA')
    ModifySQL.Strings = (
      'update ESCOLA'
      'set'
      '  ID_ESCOLA = :ID_ESCOLA,'
      '  ESCOLA = :ESCOLA,'
      '  TIPO = :TIPO'
      'where'
      '  ID_ESCOLA = :OLD_ID_ESCOLA')
    InsertSQL.Strings = (
      'insert into ESCOLA'
      '  (ID_ESCOLA, ESCOLA, TIPO)'
      'values'
      '  (:ID_ESCOLA, :ESCOLA, :TIPO)')
    DeleteSQL.Strings = (
      'delete from ESCOLA'
      'where'
      '  ID_ESCOLA = :OLD_ID_ESCOLA')
    Left = 552
    Top = 448
  end
  object ibNaopagantes: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from ALUNOS_NAO_PAGANTES (:INICIO, :FIM)'
      'order by NOME')
    Left = 32
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIM'
        ParamType = ptUnknown
      end>
    object ibNaopagantesVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"ALUNOS_NAO_PAGANTES"."VENCIMENTO"'
    end
    object ibNaopagantesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ALUNOS_NAO_PAGANTES"."NOME"'
      Size = 60
    end
    object ibNaopagantesVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"ALUNOS_NAO_PAGANTES"."VALOR"'
      currency = True
      Precision = 9
      Size = 2
    end
    object ibNaopagantesPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = '"ALUNOS_NAO_PAGANTES"."PARCELA"'
    end
  end
  object dsNaopagantes: TDataSource
    DataSet = ibNaopagantes
    Left = 136
    Top = 504
  end
  object sql_gen: TIBQuery
    Database = DBUsuario
    Transaction = TSUsuario
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select gen_id(gen_bloquetos,1) as contador'
      'from rdb$database')
    Left = 536
    Top = 144
    object sql_genCONTADOR: TLargeintField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object dsgen: TDataSource
    DataSet = sql_gen
    Left = 472
    Top = 144
  end
  object DsRequerimento: TDataSource
    DataSet = iqRequerimento
    Left = 352
    Top = 512
  end
  object iqRequerimento: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select a.codigo, a.nome, a.pai_nome, a.pai_profissao, a.mae_nome' +
        ','
      
        'a.mae_profissao, a.nasc_data, a.nasc_cidade, a.nasc_uf, a.cidade' +
        ', a.endereco,'
      
        'a.numero, a.bairro, a.uf, a.cep, a.fone, a.celular, tel_residenc' +
        'ial, a.rg, a.serie, l.nome_logadouro'
      
        'from alunos a join logadouro l on a.tipo_logadouro = l.cod_logad' +
        'ouro'
      'where a.codigo = :BCODIGO')
    Left = 440
    Top = 512
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BCODIGO'
        ParamType = ptUnknown
      end>
    object iqRequerimentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"ALUNOS"."CODIGO"'
      Required = True
    end
    object iqRequerimentoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ALUNOS"."NOME"'
      Required = True
      Size = 60
    end
    object iqRequerimentoPAI_NOME: TIBStringField
      FieldName = 'PAI_NOME'
      Origin = '"ALUNOS"."PAI_NOME"'
      Size = 50
    end
    object iqRequerimentoPAI_PROFISSAO: TIBStringField
      FieldName = 'PAI_PROFISSAO'
      Origin = '"ALUNOS"."PAI_PROFISSAO"'
    end
    object iqRequerimentoMAE_NOME: TIBStringField
      FieldName = 'MAE_NOME'
      Origin = '"ALUNOS"."MAE_NOME"'
      Size = 50
    end
    object iqRequerimentoMAE_PROFISSAO: TIBStringField
      FieldName = 'MAE_PROFISSAO'
      Origin = '"ALUNOS"."MAE_PROFISSAO"'
    end
    object iqRequerimentoNASC_DATA: TDateField
      FieldName = 'NASC_DATA'
      Origin = '"ALUNOS"."NASC_DATA"'
    end
    object iqRequerimentoNASC_CIDADE: TIBStringField
      FieldName = 'NASC_CIDADE'
      Origin = '"ALUNOS"."NASC_CIDADE"'
      Size = 25
    end
    object iqRequerimentoNASC_UF: TIBStringField
      FieldName = 'NASC_UF'
      Origin = '"ALUNOS"."NASC_UF"'
      FixedChar = True
      Size = 2
    end
    object iqRequerimentoCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"ALUNOS"."CIDADE"'
      Size = 35
    end
    object iqRequerimentoENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"ALUNOS"."ENDERECO"'
      Size = 40
    end
    object iqRequerimentoNUMERO: TSmallintField
      FieldName = 'NUMERO'
      Origin = '"ALUNOS"."NUMERO"'
    end
    object iqRequerimentoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"ALUNOS"."BAIRRO"'
    end
    object iqRequerimentoUF: TIBStringField
      FieldName = 'UF'
      Origin = '"ALUNOS"."UF"'
      FixedChar = True
      Size = 2
    end
    object iqRequerimentoFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"ALUNOS"."FONE"'
      Size = 30
    end
    object iqRequerimentoCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"ALUNOS"."CELULAR"'
      Size = 14
    end
    object iqRequerimentoRG: TIBStringField
      FieldName = 'RG'
      Origin = '"ALUNOS"."RG"'
      Size = 35
    end
    object iqRequerimentoSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = '"ALUNOS"."SERIE"'
    end
    object iqRequerimentoNOME_LOGADOURO: TIBStringField
      FieldName = 'NOME_LOGADOURO'
      Origin = '"LOGADOURO"."NOME_LOGADOURO"'
    end
    object iqRequerimentoTEL_RESIDENCIAL: TIBStringField
      FieldName = 'TEL_RESIDENCIAL'
      Origin = '"ALUNOS"."TEL_RESIDENCIAL"'
      Size = 13
    end
    object iqRequerimentoCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"ALUNOS"."CEP"'
      Size = 15
    end
  end
  object DsAproveitamento: TDataSource
    DataSet = iqAproveitamento
    Left = 352
    Top = 560
  end
  object iqAproveitamento: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select a.nome, a.pai_nome, a.mae_nome, a.nasc_data, a.nasc_cidad' +
        'e, a.nasc_uf, a.cidade, l.nome_logadouro, a.endereco, a.numero, ' +
        'a.bairro, a.uf, a.cep, a.celular, tel_residencial, a.rg, a.sacad' +
        'o_cpf, a.cpf, a.serie, d.nome'
      
        'from alunos a  join logadouro l on a.tipo_logadouro = l.cod_loga' +
        'douro'
      'join aproveitamento p on a.codigo = p.aluno'
      'join disciplinas d on p.disciplina = d.codigo'
      'where a.codigo = :BAluno')
    Left = 448
    Top = 560
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BAluno'
        ParamType = ptUnknown
      end>
    object iqAproveitamentoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ALUNOS"."NOME"'
      Required = True
      Size = 60
    end
    object iqAproveitamentoPAI_NOME: TIBStringField
      FieldName = 'PAI_NOME'
      Origin = '"ALUNOS"."PAI_NOME"'
      Size = 50
    end
    object iqAproveitamentoMAE_NOME: TIBStringField
      FieldName = 'MAE_NOME'
      Origin = '"ALUNOS"."MAE_NOME"'
      Size = 50
    end
    object iqAproveitamentoNASC_DATA: TDateField
      FieldName = 'NASC_DATA'
      Origin = '"ALUNOS"."NASC_DATA"'
    end
    object iqAproveitamentoNASC_CIDADE: TIBStringField
      FieldName = 'NASC_CIDADE'
      Origin = '"ALUNOS"."NASC_CIDADE"'
      Size = 25
    end
    object iqAproveitamentoNASC_UF: TIBStringField
      FieldName = 'NASC_UF'
      Origin = '"ALUNOS"."NASC_UF"'
      FixedChar = True
      Size = 2
    end
    object iqAproveitamentoCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"ALUNOS"."CIDADE"'
      Size = 35
    end
    object iqAproveitamentoNOME_LOGADOURO: TIBStringField
      FieldName = 'NOME_LOGADOURO'
      Origin = '"LOGADOURO"."NOME_LOGADOURO"'
    end
    object iqAproveitamentoENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"ALUNOS"."ENDERECO"'
      Size = 40
    end
    object iqAproveitamentoNUMERO: TSmallintField
      FieldName = 'NUMERO'
      Origin = '"ALUNOS"."NUMERO"'
    end
    object iqAproveitamentoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"ALUNOS"."BAIRRO"'
    end
    object iqAproveitamentoUF: TIBStringField
      FieldName = 'UF'
      Origin = '"ALUNOS"."UF"'
      FixedChar = True
      Size = 2
    end
    object iqAproveitamentoCEP: TIBStringField
      DisplayWidth = 15
      FieldName = 'CEP'
      Origin = '"ALUNOS"."CEP"'
      FixedChar = True
      Size = 15
    end
    object iqAproveitamentoCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"ALUNOS"."CELULAR"'
      Size = 14
    end
    object iqAproveitamentoRG: TIBStringField
      FieldName = 'RG'
      Origin = '"ALUNOS"."RG"'
      Size = 25
    end
    object iqAproveitamentoSACADO_CPF: TIBStringField
      FieldName = 'SACADO_CPF'
      Origin = '"ALUNOS"."SACADO_CPF"'
      FixedChar = True
      Size = 15
    end
    object iqAproveitamentoSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = '"ALUNOS"."SERIE"'
    end
    object iqAproveitamentoNOME1: TIBStringField
      FieldName = 'NOME1'
      Origin = '"DISCIPLINAS"."NOME"'
      Size = 40
    end
    object iqAproveitamentoTEL_RESIDENCIAL: TIBStringField
      FieldName = 'TEL_RESIDENCIAL'
      Origin = '"ALUNOS"."TEL_RESIDENCIAL"'
      Size = 13
    end
    object iqAproveitamentoCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"ALUNOS"."CPF"'
      Size = 15
    end
  end
  object DsSelectDisciplina: TDataSource
    DataSet = iqSelecDisciplina
    Left = 560
    Top = 512
  end
  object iqSelecDisciplina: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select d.nome, d.codigo'
      
        'from aproveitamento p join disciplinas d on p.disciplina = d.cod' +
        'igo'
      'where p.aluno = :BAluno')
    Left = 656
    Top = 512
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BAluno'
        ParamType = ptUnknown
      end>
    object iqSelecDisciplinaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"DISCIPLINAS"."NOME"'
      Size = 40
    end
    object iqSelecDisciplinaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"DISCIPLINAS"."CODIGO"'
      Required = True
    end
  end
  object DsDisciplinaAproveitamento: TDataSource
    DataSet = iqDisciplinaAproveitamento
    Left = 648
    Top = 368
  end
  object iqDisciplinaAproveitamento: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select *'
      'From Aproveitamento')
    UpdateObject = upDisciplinaAproveitamento
    Left = 648
    Top = 240
    object iqDisciplinaAproveitamentoALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = '"APROVEITAMENTO"."ALUNO"'
      Required = True
    end
    object iqDisciplinaAproveitamentoDISCIPLINA: TIntegerField
      FieldName = 'DISCIPLINA'
      Origin = '"APROVEITAMENTO"."DISCIPLINA"'
      Required = True
    end
  end
  object upDisciplinaAproveitamento: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Aproveitamento '
      'where'
      '  ALUNO = :ALUNO and'
      '  DISCIPLINA = :DISCIPLINA')
    ModifySQL.Strings = (
      'update Aproveitamento'
      'set'
      '  ALUNO = :ALUNO,'
      '  DISCIPLINA = :DISCIPLINA'
      'where'
      '  ALUNO = :OLD_ALUNO and'
      '  DISCIPLINA = :OLD_DISCIPLINA')
    InsertSQL.Strings = (
      'insert into Aproveitamento'
      '  (ALUNO, DISCIPLINA)'
      'values'
      '  (:ALUNO, :DISCIPLINA)')
    DeleteSQL.Strings = (
      'delete from Aproveitamento'
      'where'
      '  ALUNO = :OLD_ALUNO and'
      '  DISCIPLINA = :OLD_DISCIPLINA')
    Left = 648
    Top = 304
  end
  object sqlDeleteSecDisciplina: TIBSQL
    Database = DM.DB_ANGLO
    ParamCheck = True
    SQL.Strings = (
      'delete '
      'from Aproveitamento'
      'where aluno = :DAluno and disciplina = :DDisciplina')
    Transaction = DM.IBTr_ANGLO
    Left = 640
    Top = 440
  end
  object DsDocumento: TDataSource
    DataSet = iqDocumento
    Left = 600
    Top = 72
  end
  object upDocumento: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_DOC,'
      '  DOCUMENTO'
      'from DOCUMENTO '
      'where'
      '  COD_DOC = :COD_DOC')
    ModifySQL.Strings = (
      'update DOCUMENTO'
      'set'
      '  COD_DOC = :COD_DOC,'
      '  DOCUMENTO = :DOCUMENTO'
      'where'
      '  COD_DOC = :OLD_COD_DOC')
    InsertSQL.Strings = (
      'insert into DOCUMENTO'
      '  (COD_DOC, DOCUMENTO)'
      'values'
      '  (:COD_DOC, :DOCUMENTO)')
    DeleteSQL.Strings = (
      'delete from DOCUMENTO'
      'where'
      '  COD_DOC = :OLD_COD_DOC')
    Left = 776
    Top = 72
  end
  object iqDocumento: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from DOCUMENTO')
    UpdateObject = upDocumento
    GeneratorField.Field = 'COD_DOC'
    GeneratorField.Generator = 'GEN_DOCUMENTO_ID'
    Left = 680
    Top = 72
    object iqDocumentoCOD_DOC: TIntegerField
      FieldName = 'COD_DOC'
      Origin = '"DOCUMENTO"."COD_DOC"'
      Required = True
    end
    object iqDocumentoDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"DOCUMENTO"."DOCUMENTO"'
      Size = 50
    end
  end
  object DAluDoc: TDataSource
    DataSet = iqAluDoc
    Left = 608
    Top = 128
  end
  object iqAluDoc: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select d.documento, d.cod_doc'
      
        'from documento d  join alu_doc ad on d.cod_doc=ad.cod_doc join a' +
        'lunos a on a.codigo = ad.cod_alu'
      'where ad.cod_alu = :BAluno')
    Left = 696
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BAluno'
        ParamType = ptUnknown
      end>
    object iqAluDocDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"DOCUMENTO"."DOCUMENTO"'
      Size = 50
    end
    object iqAluDocCOD_DOC: TIntegerField
      FieldName = 'COD_DOC'
      Origin = '"DOCUMENTO"."COD_DOC"'
      Required = True
    end
  end
  object DsDoc_DEv: TDataSource
    DataSet = iqDoc_DEv
    Left = 608
    Top = 184
  end
  object iqDoc_DEv: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select *'
      'From Alu_Doc')
    UpdateObject = UpDoc_dev
    Left = 696
    Top = 184
    object iqDoc_DEvCOD_DOC: TIntegerField
      FieldName = 'COD_DOC'
      Origin = '"ALU_DOC"."COD_DOC"'
      Required = True
    end
    object iqDoc_DEvCOD_ALU: TIntegerField
      FieldName = 'COD_ALU'
      Origin = '"ALU_DOC"."COD_ALU"'
      Required = True
    end
  end
  object UpDoc_dev: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Alu_Doc '
      'where'
      '  COD_DOC = :COD_DOC and'
      '  COD_ALU = :COD_ALU')
    ModifySQL.Strings = (
      'update Alu_Doc'
      'set'
      '  COD_DOC = :COD_DOC,'
      '  COD_ALU = :COD_ALU'
      'where'
      '  COD_DOC = :OLD_COD_DOC and'
      '  COD_ALU = :OLD_COD_ALU')
    InsertSQL.Strings = (
      'insert into Alu_Doc'
      '  (COD_DOC, COD_ALU)'
      'values'
      '  (:COD_DOC, :COD_ALU)')
    DeleteSQL.Strings = (
      'delete from Alu_Doc'
      'where'
      '  COD_DOC = :OLD_COD_DOC and'
      '  COD_ALU = :OLD_COD_ALU')
    Left = 776
    Top = 184
  end
  object sqlDeleteDoc: TIBSQL
    Database = DM.DB_ANGLO
    ParamCheck = True
    SQL.Strings = (
      'delete'
      'from alu_doc'
      'where cod_doc = :ddoc and cod_alu = :dalu')
    Transaction = DM.IBTr_ANGLO
    Left = 776
    Top = 136
  end
  object DsDoc_rel: TDataSource
    DataSet = iqDoc_rel
    Left = 760
    Top = 328
  end
  object iqDoc_rel: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select a.sacado, a.sacado_rg, a.nome, a.serie, d.documento'
      'from alunos a join alu_doc ad on a.codigo=ad.cod_alu'
      'join documento d on ad.cod_doc = d.cod_doc'
      'where a.codigo = :baluno')
    Left = 824
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'baluno'
        ParamType = ptUnknown
      end>
    object iqDoc_relSACADO: TIBStringField
      FieldName = 'SACADO'
      Origin = '"ALUNOS"."SACADO"'
      Size = 40
    end
    object iqDoc_relSACADO_RG: TIBStringField
      FieldName = 'SACADO_RG'
      Origin = '"ALUNOS"."SACADO_RG"'
    end
    object iqDoc_relNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ALUNOS"."NOME"'
      Required = True
      Size = 60
    end
    object iqDoc_relSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = '"ALUNOS"."SERIE"'
    end
    object iqDoc_relDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"DOCUMENTO"."DOCUMENTO"'
      Size = 50
    end
  end
  object DsBoletosReprocesso: TDataSource
    DataSet = QBoletosReprocesso
    Left = 552
    Top = 568
  end
  object QBoletosReprocesso: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select *'
      'From bloquetos'
      'Where ST = '#39'R'#39)
    Left = 656
    Top = 568
    object QBoletosReprocessoNOSSO_NUMERO: TIntegerField
      FieldName = 'NOSSO_NUMERO'
      Origin = '"BLOQUETOS"."NOSSO_NUMERO"'
      Required = True
    end
    object QBoletosReprocessoALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = '"BLOQUETOS"."ALUNO"'
    end
    object QBoletosReprocessoPARCELA: TSmallintField
      FieldName = 'PARCELA'
      Origin = '"BLOQUETOS"."PARCELA"'
    end
    object QBoletosReprocessoEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"BLOQUETOS"."EMISSAO"'
    end
    object QBoletosReprocessoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"BLOQUETOS"."VENCIMENTO"'
    end
    object QBoletosReprocessoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"BLOQUETOS"."VALOR"'
      Precision = 9
      Size = 2
    end
    object QBoletosReprocessoPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"BLOQUETOS"."PAGAMENTO"'
    end
    object QBoletosReprocessoVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"BLOQUETOS"."VALOR_PAGO"'
      Precision = 9
      Size = 2
    end
    object QBoletosReprocessoMENSALIDADE: TIBBCDField
      FieldName = 'MENSALIDADE'
      Origin = '"BLOQUETOS"."MENSALIDADE"'
      Precision = 9
      Size = 2
    end
    object QBoletosReprocessoMATERIAL: TIBBCDField
      FieldName = 'MATERIAL'
      Origin = '"BLOQUETOS"."MATERIAL"'
      Precision = 9
      Size = 2
    end
    object QBoletosReprocessoDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"BLOQUETOS"."DESCONTO"'
      Precision = 9
      Size = 2
    end
    object QBoletosReprocessoTIPO_PG: TSmallintField
      FieldName = 'TIPO_PG'
      Origin = '"BLOQUETOS"."TIPO_PG"'
    end
    object QBoletosReprocessoANO_DV: TIBStringField
      FieldName = 'ANO_DV'
      Origin = '"BLOQUETOS"."ANO_DV"'
      FixedChar = True
      Size = 2
    end
    object QBoletosReprocessoDESCONTO_ANT: TIBBCDField
      FieldName = 'DESCONTO_ANT'
      Origin = '"BLOQUETOS"."DESCONTO_ANT"'
      Precision = 9
      Size = 2
    end
    object QBoletosReprocessoMENSALIDADE_ANT: TIBBCDField
      FieldName = 'MENSALIDADE_ANT'
      Origin = '"BLOQUETOS"."MENSALIDADE_ANT"'
      Precision = 9
      Size = 2
    end
    object QBoletosReprocessoVALOR_ANT: TIBBCDField
      FieldName = 'VALOR_ANT'
      Origin = '"BLOQUETOS"."VALOR_ANT"'
      Precision = 9
      Size = 2
    end
    object QBoletosReprocessoBAULA_AD: TIBStringField
      FieldName = 'BAULA_AD'
      Origin = '"BLOQUETOS"."BAULA_AD"'
      FixedChar = True
      Size = 1
    end
    object QBoletosReprocessoST: TIBStringField
      FieldName = 'ST'
      Origin = '"BLOQUETOS"."ST"'
      FixedChar = True
      Size = 1
    end
    object QBoletosReprocessoTP: TIntegerField
      FieldName = 'TP'
      Origin = '"BLOQUETOS"."TP"'
    end
    object QBoletosReprocessoMOTIVO: TIBStringField
      FieldName = 'MOTIVO'
      Origin = '"BLOQUETOS"."MOTIVO"'
      Size = 150
    end
    object QBoletosReprocessoDATA_LIMITE: TDateField
      FieldName = 'DATA_LIMITE'
      Origin = '"BLOQUETOS"."DATA_LIMITE"'
    end
    object QBoletosReprocessoNEGOCIACAO: TIntegerField
      FieldName = 'NEGOCIACAO'
      Origin = '"BLOQUETOS"."NEGOCIACAO"'
    end
  end
end
