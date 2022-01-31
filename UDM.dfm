object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 51
  Top = 116
  Height = 703
  Width = 1508
  object DB_ANGLO: TIBDatabase
    DatabaseName = ':'
    Params.Strings = (
      'lc_ctype=WIN1252'
      '')
    LoginPrompt = False
    DefaultTransaction = IBTr_ANGLO
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = [tfQPrepare, tfQFetch]
    AfterConnect = DB_ANGLOAfterConnect
    Left = 32
    Top = 1
  end
  object IBTr_ANGLO: TIBTransaction
    Active = False
    DefaultDatabase = DB_ANGLO
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 100
    Top = 1
  end
  object dsParametros: TDataSource
    DataSet = Parametros
    Left = 216
    Top = 1
  end
  object Parametros: TIBTable
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PROX_BLOQUETO'
        DataType = ftInteger
      end
      item
        Name = 'LOCALPAG'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'MENSAGEM1'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'MENSAGEM2'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'MENSAGEMSACADO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'CEDENTE'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'CAD_ALU_ORIG'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'DIRETORIO_SCA'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'VCTO_PADRAO'
        DataType = ftInteger
      end
      item
        Name = 'MENSALIDADE_1'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'MENSALIDADE_2'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'MENSALIDADE_3'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'MATERIAL_1'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'MATERIAL_2'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'MATERIAL_3'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'BLQ_TOP'
        DataType = ftSmallint
      end
      item
        Name = 'BLQ_BOTTOM'
        DataType = ftSmallint
      end
      item
        Name = 'BLQ_LEFT'
        DataType = ftSmallint
      end
      item
        Name = 'BLQ_RIGHT'
        DataType = ftSmallint
      end
      item
        Name = 'MEDIA'
        DataType = ftBCD
        Precision = 4
        Size = 1
      end
      item
        Name = 'MEDIA_EXAME'
        DataType = ftBCD
        Precision = 4
        Size = 1
      end
      item
        Name = 'RECUPBIM1'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RECUPBIM2'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RECUPBIM3'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TEMPO_CARTAO'
        DataType = ftBCD
        Precision = 4
        Size = 1
      end
      item
        Name = 'MES_MATERIAL1'
        DataType = ftSmallint
      end
      item
        Name = 'MES_MATERIAL2'
        DataType = ftSmallint
      end
      item
        Name = 'MES_MATERIAL3'
        DataType = ftSmallint
      end
      item
        Name = 'COR_ZEBRADO'
        DataType = ftInteger
      end
      item
        Name = 'SOM_OK_FREQUENCIA'
        DataType = ftInteger
      end
      item
        Name = 'SOM_OK_DURACAO'
        DataType = ftInteger
      end
      item
        Name = 'SOM_ERRO_FREQUENCIA'
        DataType = ftInteger
      end
      item
        Name = 'SOM_ERRO_DURACAO'
        DataType = ftInteger
      end
      item
        Name = 'TEXTO_REQUERIMENTO'
        DataType = ftString
        Size = 10000
      end
      item
        Name = 'TEXTO_HISTORICO'
        DataType = ftString
        Size = 10000
      end
      item
        Name = 'TEXTO_CERTIFICADO'
        DataType = ftString
        Size = 10000
      end
      item
        Name = 'PRIMEIRO_ALUNO'
        DataType = ftInteger
      end
      item
        Name = 'TAXA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FIM_MATRICULAS'
        DataType = ftDate
      end
      item
        Name = 'TEXTO_REQ_SEMI'
        DataType = ftString
        Size = 10000
      end
      item
        Name = 'MENSAGEM3'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'MENSAGEM4'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'REAJUSTE_1_2'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'REAJUSTE_3'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'VCTOFEVEREIRO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'STATUSNOTANET'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MES_MATERIAL4'
        DataType = ftSmallint
      end
      item
        Name = 'MATERIAL_4'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'MENSALIDADE_4'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'PARAMETOSAIDA'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CAMINHO'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'MENSALIDADE_5'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'CONT_REMESSA'
        DataType = ftInteger
      end
      item
        Name = 'DATA_REMESSA'
        DataType = ftDate
      end
      item
        Name = 'VALOR_PONTUALIDADE1'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'VALOR_PONTUALIDADE2'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'VALOR_PONTUALIDADE3'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'TEXTO_TRANSFERENCIA'
        DataType = ftString
        Size = 1000
      end>
    StoreDefs = True
    TableName = 'PARAMETROS'
    Left = 152
    Top = 1
    object ParametrosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object ParametrosPROX_BLOQUETO: TIntegerField
      FieldName = 'PROX_BLOQUETO'
    end
    object ParametrosLOCALPAG: TIBStringField
      FieldName = 'LOCALPAG'
      Size = 80
    end
    object ParametrosMENSAGEM1: TIBStringField
      FieldName = 'MENSAGEM1'
      Size = 80
    end
    object ParametrosMENSAGEM2: TIBStringField
      FieldName = 'MENSAGEM2'
      Size = 80
    end
    object ParametrosMENSAGEM3: TIBStringField
      FieldName = 'MENSAGEM3'
      Size = 80
    end
    object ParametrosMENSAGEM4: TIBStringField
      FieldName = 'MENSAGEM4'
      Size = 80
    end
    object ParametrosMENSAGEMSACADO: TIBStringField
      FieldName = 'MENSAGEMSACADO'
      Size = 80
    end
    object ParametrosCEDENTE: TIBStringField
      FieldName = 'CEDENTE'
      Size = 80
    end
    object ParametrosCAD_ALU_ORIG: TIBStringField
      FieldName = 'CAD_ALU_ORIG'
      Size = 120
    end
    object ParametrosDIRETORIO_SCA: TIBStringField
      FieldName = 'DIRETORIO_SCA'
      Size = 120
    end
    object ParametrosVCTO_PADRAO: TIntegerField
      FieldName = 'VCTO_PADRAO'
    end
    object ParametrosMENSALIDADE_1: TIBBCDField
      FieldName = 'MENSALIDADE_1'
      currency = True
      Precision = 9
      Size = 2
    end
    object ParametrosMENSALIDADE_2: TIBBCDField
      FieldName = 'MENSALIDADE_2'
      currency = True
      Precision = 9
      Size = 2
    end
    object ParametrosMENSALIDADE_3: TIBBCDField
      FieldName = 'MENSALIDADE_3'
      currency = True
      Precision = 9
      Size = 2
    end
    object ParametrosMATERIAL_1: TIBBCDField
      FieldName = 'MATERIAL_1'
      currency = True
      Precision = 9
      Size = 2
    end
    object ParametrosMATERIAL_2: TIBBCDField
      FieldName = 'MATERIAL_2'
      currency = True
      Precision = 9
      Size = 2
    end
    object ParametrosMATERIAL_3: TIBBCDField
      FieldName = 'MATERIAL_3'
      currency = True
      Precision = 9
      Size = 2
    end
    object ParametrosBLQ_TOP: TSmallintField
      FieldName = 'BLQ_TOP'
    end
    object ParametrosBLQ_BOTTOM: TSmallintField
      FieldName = 'BLQ_BOTTOM'
    end
    object ParametrosBLQ_LEFT: TSmallintField
      FieldName = 'BLQ_LEFT'
    end
    object ParametrosBLQ_RIGHT: TSmallintField
      FieldName = 'BLQ_RIGHT'
    end
    object ParametrosMEDIA: TIBBCDField
      FieldName = 'MEDIA'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object ParametrosMEDIA_EXAME: TIBBCDField
      FieldName = 'MEDIA_EXAME'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object ParametrosRECUPBIM1: TIBStringField
      FieldName = 'RECUPBIM1'
      Size = 1
    end
    object ParametrosRECUPBIM2: TIBStringField
      FieldName = 'RECUPBIM2'
      Size = 1
    end
    object ParametrosRECUPBIM3: TIBStringField
      FieldName = 'RECUPBIM3'
      Size = 1
    end
    object ParametrosTEMPO_CARTAO: TIBBCDField
      FieldName = 'TEMPO_CARTAO'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object ParametrosMES_MATERIAL1: TSmallintField
      FieldName = 'MES_MATERIAL1'
    end
    object ParametrosMES_MATERIAL2: TSmallintField
      FieldName = 'MES_MATERIAL2'
    end
    object ParametrosMES_MATERIAL3: TSmallintField
      FieldName = 'MES_MATERIAL3'
    end
    object ParametrosCOR_ZEBRADO: TIntegerField
      FieldName = 'COR_ZEBRADO'
    end
    object ParametrosSOM_OK_FREQUENCIA: TIntegerField
      FieldName = 'SOM_OK_FREQUENCIA'
      Required = True
      MaxValue = 5000
      MinValue = 100
    end
    object ParametrosSOM_OK_DURACAO: TIntegerField
      FieldName = 'SOM_OK_DURACAO'
      Required = True
      MaxValue = 1000
      MinValue = 100
    end
    object ParametrosSOM_ERRO_FREQUENCIA: TIntegerField
      FieldName = 'SOM_ERRO_FREQUENCIA'
      Required = True
      MaxValue = 5000
      MinValue = 100
    end
    object ParametrosSOM_ERRO_DURACAO: TIntegerField
      FieldName = 'SOM_ERRO_DURACAO'
      Required = True
      MaxValue = 1000
      MinValue = 100
    end
    object ParametrosTEXTO_REQUERIMENTO: TIBStringField
      FieldName = 'TEXTO_REQUERIMENTO'
      Size = 10000
    end
    object ParametrosTEXTO_HISTORICO: TIBStringField
      FieldName = 'TEXTO_HISTORICO'
      Size = 10000
    end
    object ParametrosTEXTO_CERTIFICADO: TIBStringField
      FieldName = 'TEXTO_CERTIFICADO'
      Size = 10000
    end
    object ParametrosPRIMEIRO_ALUNO: TIntegerField
      FieldName = 'PRIMEIRO_ALUNO'
    end
    object ParametrosTAXA: TIBStringField
      FieldName = 'TAXA'
      Size = 10
    end
    object ParametrosFIM_MATRICULAS: TDateField
      FieldName = 'FIM_MATRICULAS'
    end
    object ParametrosTEXTO_REQ_SEMI: TIBStringField
      FieldName = 'TEXTO_REQ_SEMI'
      Size = 10000
    end
    object ParametrosREAJUSTE_1_2: TIBBCDField
      FieldName = 'REAJUSTE_1_2'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 2
    end
    object ParametrosREAJUSTE_3: TIBBCDField
      FieldName = 'REAJUSTE_3'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 2
    end
    object ParametrosVCTOFEVEREIRO: TIBStringField
      Alignment = taRightJustify
      FieldName = 'VCTOFEVEREIRO'
      Size = 2
    end
    object ParametrosSTATUSNOTANET: TIBStringField
      FieldName = 'STATUSNOTANET'
      Size = 1
    end
    object ParametrosMES_MATERIAL4: TSmallintField
      FieldName = 'MES_MATERIAL4'
    end
    object ParametrosMATERIAL_4: TIBBCDField
      FieldName = 'MATERIAL_4'
      currency = True
      Precision = 9
      Size = 2
    end
    object ParametrosMENSALIDADE_4: TIBBCDField
      FieldName = 'MENSALIDADE_4'
      currency = True
      Precision = 9
      Size = 2
    end
    object ParametrosPARAMETOSAIDA: TIBStringField
      DisplayWidth = 5
      FieldName = 'PARAMETOSAIDA'
      Size = 5
    end
    object ParametrosCAMINHO: TIBStringField
      FieldName = 'CAMINHO'
      Size = 90
    end
    object ParametrosMENSALIDADE_5: TIBBCDField
      FieldName = 'MENSALIDADE_5'
      currency = True
      Precision = 9
      Size = 2
    end
    object ParametrosCONT_REMESSA: TIntegerField
      FieldName = 'CONT_REMESSA'
    end
    object ParametrosDATA_REMESSA: TDateField
      FieldName = 'DATA_REMESSA'
    end
    object ParametrosVALOR_PONTUALIDADE1: TIBBCDField
      FieldName = 'VALOR_PONTUALIDADE1'
      currency = True
      Precision = 9
      Size = 2
    end
    object ParametrosVALOR_PONTUALIDADE2: TIBBCDField
      FieldName = 'VALOR_PONTUALIDADE2'
      currency = True
      Precision = 9
      Size = 2
    end
    object ParametrosVALOR_PONTUALIDADE3: TIBBCDField
      FieldName = 'VALOR_PONTUALIDADE3'
      currency = True
      Precision = 9
      Size = 2
    end
    object ParametrosTEXTO_TRANSFERENCIA: TIBStringField
      FieldName = 'TEXTO_TRANSFERENCIA'
      Size = 1000
    end
  end
  object dsAlunos: TDataSource
    DataSet = Alunos
    Left = 84
    Top = 58
  end
  object Alunos: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    AfterInsert = AlunosAfterInsert
    AfterPost = AlunosAfterPost
    BeforePost = AlunosBeforePost
    OnCalcFields = AlunosCalcFields
    OnNewRecord = AlunosNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ALUNOS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into ALUNOS'
      '  (CODIGO, CODIGO_ESCOLA, NOME, TIPO_LOGADOURO, NUMERO, '
      'COMPLEMENTO, BAIRRO, '
      
        '   ENDERECO, CIDADE, UF, CEP, RG, COMPLEMENTO_RG, DATA_EXP_IDENT' +
        ', '
      'UF_IDENTIDADE, '
      '   ORGAO_EMIS_IDE, NASC_DATA, NACIONALIDADE, DATA_ENTR_PAIS, '
      'MUNICIPIO_NAS, '
      
        '   NASC_UF, CERTIDAO_CIVIL, DATA_EMI_CERT, NOME_CART_EXP, CPF, S' +
        'EXO, '
      'PAI_NOME, '
      '   PAI_PROFISSAO, PAI_NASCIMENTO, MAE_NOME, MAE_PROFISSAO, '
      'MAE_NASCIMENTO, '
      
        '   FONE, DATA_MATRICULA, BIMESTRE, CURSO, SERIE, TURMA, CHAMADA,' +
        ' '
      'STATUS, '
      
        '   DATA_SAIDA, BOLSA, OBS_HIST, SACADO, FINAL, MATERIAL, VENCIME' +
        'NTO, '
      'ANO, '
      
        '   BLOQUETO_1SEM, BLOQUETO_2SEM, MES_MATERIAL, SENHA, SACADO_RG,' +
        ' '
      'SACADO_CPF, '
      '   MOD_ESPORTIVA, H_ANO1, H_ESCOLA1, H_CIDADE1, H_UF1, H_ANO2, '
      'H_ESCOLA2, '
      
        '   H_CIDADE2, H_UF2, H_ANO3, H_ESCOLA3, H_CIDADE3, H_UF3, BOLSA_' +
        'OBS, '
      'CODIGO_SP, '
      '   CURSINHO, CONT_TOL, COR, EDU_ESPECIAL, TIPO_EDU_ESP, '
      'INC_CLASSE_COMU, '
      '   APOIO_PED_ESPE, CONDIC_ALUNO, CORR_FLUXO, BOLSA_FAMILIA, '
      'TRANSP_PUBLICO, '
      '   TRANSP_PUB_OFER, ZONA_RESID, CONCLUINTE, ADMI_APOS_CENSO, '
      'MOV_REND_ESCOL, '
      '   AT_ED_ESPECIALI, DATA_IGRESSO, CURSO_NOR_NM, NASC_CIDADE, '
      'UF_MEC, ORGAO_EMISSOR, '
      
        '   SEXO_E, TIPOCERTIDAO, UFCARTORIO, NUMERO_TERMO, FOLHA, LIVRO,' +
        ' '
      'CARTORIO_UF, '
      
        '   PASENHA, TIPOSANGUINEO, SITUACAO, RECLASS_INGR, RECLASS_DEST,' +
        ' '
      'PALOGIN, '
      
        '   USUARIO, OPCAO_ESPANHOL, CELULAR, TEL_RESIDENCIAL, TEL_CONTAT' +
        'O, '
      'E_MAIL, '
      '   FORMATURA, BOLSA_AD, AULA_AD, ID, ORIUNDO_ESCOLA, OBS_TEL, '
      'DATA_EFETUACAO, '
      '   EMAIL_MAE, EMAIL_ALUNO, INTINERARIO)'
      'values'
      '  (:CODIGO, :CODIGO_ESCOLA, :NOME, :TIPO_LOGADOURO, :NUMERO, '
      ':COMPLEMENTO, '
      
        '   :BAIRRO, :ENDERECO, :CIDADE, :UF, :CEP, :RG, :COMPLEMENTO_RG,' +
        ' '
      ':DATA_EXP_IDENT, '
      '   :UF_IDENTIDADE, :ORGAO_EMIS_IDE, :NASC_DATA, :NACIONALIDADE, '
      ':DATA_ENTR_PAIS, '
      '   :MUNICIPIO_NAS, :NASC_UF, :CERTIDAO_CIVIL, :DATA_EMI_CERT, '
      ':NOME_CART_EXP, '
      
        '   :CPF, :SEXO, :PAI_NOME, :PAI_PROFISSAO, :PAI_NASCIMENTO, :MAE' +
        '_NOME, '
      '   :MAE_PROFISSAO, :MAE_NASCIMENTO, :FONE, :DATA_MATRICULA, '
      ':BIMESTRE, '
      
        '   :CURSO, :SERIE, :TURMA, :CHAMADA, :STATUS, :DATA_SAIDA, :BOLS' +
        'A, '
      ':OBS_HIST, '
      
        '   :SACADO, :FINAL, :MATERIAL, :VENCIMENTO, :ANO, :BLOQUETO_1SEM' +
        ', '
      ':BLOQUETO_2SEM, '
      
        '   :MES_MATERIAL, :SENHA, :SACADO_RG, :SACADO_CPF, :MOD_ESPORTIV' +
        'A, '
      ':H_ANO1, '
      
        '   :H_ESCOLA1, :H_CIDADE1, :H_UF1, :H_ANO2, :H_ESCOLA2, :H_CIDAD' +
        'E2, '
      ':H_UF2, '
      
        '   :H_ANO3, :H_ESCOLA3, :H_CIDADE3, :H_UF3, :BOLSA_OBS, :CODIGO_' +
        'SP, '
      ':CURSINHO, '
      
        '   :CONT_TOL, :COR, :EDU_ESPECIAL, :TIPO_EDU_ESP, :INC_CLASSE_CO' +
        'MU, '
      ':APOIO_PED_ESPE, '
      '   :CONDIC_ALUNO, :CORR_FLUXO, :BOLSA_FAMILIA, :TRANSP_PUBLICO, '
      ':TRANSP_PUB_OFER, '
      '   :ZONA_RESID, :CONCLUINTE, :ADMI_APOS_CENSO, :MOV_REND_ESCOL, '
      ':AT_ED_ESPECIALI, '
      '   :DATA_IGRESSO, :CURSO_NOR_NM, :NASC_CIDADE, :UF_MEC, '
      ':ORGAO_EMISSOR, '
      '   :SEXO_E, :TIPOCERTIDAO, :UFCARTORIO, :NUMERO_TERMO, :FOLHA, '
      ':LIVRO, '
      
        '   :CARTORIO_UF, :PASENHA, :TIPOSANGUINEO, :SITUACAO, :RECLASS_I' +
        'NGR, '
      ':RECLASS_DEST, '
      
        '   :PALOGIN, :USUARIO, :OPCAO_ESPANHOL, :CELULAR, :TEL_RESIDENCI' +
        'AL, '
      ':TEL_CONTATO, '
      
        '   :E_MAIL, :FORMATURA, :BOLSA_AD, :AULA_AD, :ID, :ORIUNDO_ESCOL' +
        'A, '
      ':OBS_TEL, '
      '   :DATA_EFETUACAO, :EMAIL_MAE, :EMAIL_ALUNO, :INTINERARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  CODIGO_ESCOLA,'
      '  NOME,'
      '  TIPO_LOGADOURO,'
      '  NUMERO,'
      '  COMPLEMENTO,'
      '  BAIRRO,'
      '  ENDERECO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  RG,'
      '  COMPLEMENTO_RG,'
      '  DATA_EXP_IDENT,'
      '  UF_IDENTIDADE,'
      '  ORGAO_EMIS_IDE,'
      '  NASC_DATA,'
      '  NACIONALIDADE,'
      '  DATA_ENTR_PAIS,'
      '  MUNICIPIO_NAS,'
      '  NASC_UF,'
      '  CERTIDAO_CIVIL,'
      '  DATA_EMI_CERT,'
      '  NOME_CART_EXP,'
      '  CPF,'
      '  SEXO,'
      '  PAI_NOME,'
      '  PAI_PROFISSAO,'
      '  PAI_NASCIMENTO,'
      '  MAE_NOME,'
      '  MAE_PROFISSAO,'
      '  MAE_NASCIMENTO,'
      '  FONE,'
      '  DATA_MATRICULA,'
      '  BIMESTRE,'
      '  CURSO,'
      '  SERIE,'
      '  TURMA,'
      '  CHAMADA,'
      '  STATUS,'
      '  DATA_SAIDA,'
      '  BOLSA,'
      '  OBS_HIST,'
      '  SACADO,'
      '  FINAL,'
      '  MATERIAL,'
      '  VENCIMENTO,'
      '  ANO,'
      '  BLOQUETO_1SEM,'
      '  BLOQUETO_2SEM,'
      '  MES_MATERIAL,'
      '  SENHA,'
      '  SACADO_RG,'
      '  SACADO_CPF,'
      '  MOD_ESPORTIVA,'
      '  H_ANO1,'
      '  H_ESCOLA1,'
      '  H_CIDADE1,'
      '  H_UF1,'
      '  H_ANO2,'
      '  H_ESCOLA2,'
      '  H_CIDADE2,'
      '  H_UF2,'
      '  H_ANO3,'
      '  H_ESCOLA3,'
      '  H_CIDADE3,'
      '  H_UF3,'
      '  BOLSA_OBS,'
      '  CODIGO_SP,'
      '  CURSINHO,'
      '  CONT_TOL,'
      '  COR,'
      '  EDU_ESPECIAL,'
      '  TIPO_EDU_ESP,'
      '  INC_CLASSE_COMU,'
      '  APOIO_PED_ESPE,'
      '  CONDIC_ALUNO,'
      '  CORR_FLUXO,'
      '  BOLSA_FAMILIA,'
      '  TRANSP_PUBLICO,'
      '  TRANSP_PUB_OFER,'
      '  ZONA_RESID,'
      '  CONCLUINTE,'
      '  ADMI_APOS_CENSO,'
      '  MOV_REND_ESCOL,'
      '  AT_ED_ESPECIALI,'
      '  DATA_IGRESSO,'
      '  CURSO_NOR_NM,'
      '  NASC_CIDADE,'
      '  UF_MEC,'
      '  ORGAO_EMISSOR,'
      '  SEXO_E,'
      '  TIPOCERTIDAO,'
      '  UFCARTORIO,'
      '  NUMERO_TERMO,'
      '  FOLHA,'
      '  LIVRO,'
      '  CARTORIO_UF,'
      '  PASENHA,'
      '  TIPOSANGUINEO,'
      '  SITUACAO,'
      '  RECLASS_INGR,'
      '  RECLASS_DEST,'
      '  PALOGIN,'
      '  USUARIO,'
      '  OPCAO_ESPANHOL,'
      '  CELULAR,'
      '  TEL_RESIDENCIAL,'
      '  TEL_CONTATO,'
      '  E_MAIL,'
      '  FORMATURA,'
      '  BOLSA_AD,'
      '  AULA_AD,'
      '  ID,'
      '  ORIUNDO_ESCOLA,'
      '  OBS_TEL,'
      '  DATA_EFETUACAO,'
      '  EMAIL_MAE,'
      '  EMAIL_ALUNO,'
      '  INTINERARIO'
      'from ALUNOS '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * '
      'from ALUNOS'
      'where Codigo is not null   and  STATUS <> '#39'R'#39
      'order by Codigo'
      ''
      ''
      ''
      ''
      '')
    ModifySQL.Strings = (
      'update ALUNOS'
      'set'
      '  CODIGO = :CODIGO,'
      '  CODIGO_ESCOLA = :CODIGO_ESCOLA,'
      '  NOME = :NOME,'
      '  TIPO_LOGADOURO = :TIPO_LOGADOURO,'
      '  NUMERO = :NUMERO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  BAIRRO = :BAIRRO,'
      '  ENDERECO = :ENDERECO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  RG = :RG,'
      '  COMPLEMENTO_RG = :COMPLEMENTO_RG,'
      '  DATA_EXP_IDENT = :DATA_EXP_IDENT,'
      '  UF_IDENTIDADE = :UF_IDENTIDADE,'
      '  ORGAO_EMIS_IDE = :ORGAO_EMIS_IDE,'
      '  NASC_DATA = :NASC_DATA,'
      '  NACIONALIDADE = :NACIONALIDADE,'
      '  DATA_ENTR_PAIS = :DATA_ENTR_PAIS,'
      '  MUNICIPIO_NAS = :MUNICIPIO_NAS,'
      '  NASC_UF = :NASC_UF,'
      '  CERTIDAO_CIVIL = :CERTIDAO_CIVIL,'
      '  DATA_EMI_CERT = :DATA_EMI_CERT,'
      '  NOME_CART_EXP = :NOME_CART_EXP,'
      '  CPF = :CPF,'
      '  SEXO = :SEXO,'
      '  PAI_NOME = :PAI_NOME,'
      '  PAI_PROFISSAO = :PAI_PROFISSAO,'
      '  PAI_NASCIMENTO = :PAI_NASCIMENTO,'
      '  MAE_NOME = :MAE_NOME,'
      '  MAE_PROFISSAO = :MAE_PROFISSAO,'
      '  MAE_NASCIMENTO = :MAE_NASCIMENTO,'
      '  FONE = :FONE,'
      '  DATA_MATRICULA = :DATA_MATRICULA,'
      '  BIMESTRE = :BIMESTRE,'
      '  CURSO = :CURSO,'
      '  SERIE = :SERIE,'
      '  TURMA = :TURMA,'
      '  CHAMADA = :CHAMADA,'
      '  STATUS = :STATUS,'
      '  DATA_SAIDA = :DATA_SAIDA,'
      '  BOLSA = :BOLSA,'
      '  OBS_HIST = :OBS_HIST,'
      '  SACADO = :SACADO,'
      '  FINAL = :FINAL,'
      '  MATERIAL = :MATERIAL,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  ANO = :ANO,'
      '  BLOQUETO_1SEM = :BLOQUETO_1SEM,'
      '  BLOQUETO_2SEM = :BLOQUETO_2SEM,'
      '  MES_MATERIAL = :MES_MATERIAL,'
      '  SENHA = :SENHA,'
      '  SACADO_RG = :SACADO_RG,'
      '  SACADO_CPF = :SACADO_CPF,'
      '  MOD_ESPORTIVA = :MOD_ESPORTIVA,'
      '  H_ANO1 = :H_ANO1,'
      '  H_ESCOLA1 = :H_ESCOLA1,'
      '  H_CIDADE1 = :H_CIDADE1,'
      '  H_UF1 = :H_UF1,'
      '  H_ANO2 = :H_ANO2,'
      '  H_ESCOLA2 = :H_ESCOLA2,'
      '  H_CIDADE2 = :H_CIDADE2,'
      '  H_UF2 = :H_UF2,'
      '  H_ANO3 = :H_ANO3,'
      '  H_ESCOLA3 = :H_ESCOLA3,'
      '  H_CIDADE3 = :H_CIDADE3,'
      '  H_UF3 = :H_UF3,'
      '  BOLSA_OBS = :BOLSA_OBS,'
      '  CODIGO_SP = :CODIGO_SP,'
      '  CURSINHO = :CURSINHO,'
      '  CONT_TOL = :CONT_TOL,'
      '  COR = :COR,'
      '  EDU_ESPECIAL = :EDU_ESPECIAL,'
      '  TIPO_EDU_ESP = :TIPO_EDU_ESP,'
      '  INC_CLASSE_COMU = :INC_CLASSE_COMU,'
      '  APOIO_PED_ESPE = :APOIO_PED_ESPE,'
      '  CONDIC_ALUNO = :CONDIC_ALUNO,'
      '  CORR_FLUXO = :CORR_FLUXO,'
      '  BOLSA_FAMILIA = :BOLSA_FAMILIA,'
      '  TRANSP_PUBLICO = :TRANSP_PUBLICO,'
      '  TRANSP_PUB_OFER = :TRANSP_PUB_OFER,'
      '  ZONA_RESID = :ZONA_RESID,'
      '  CONCLUINTE = :CONCLUINTE,'
      '  ADMI_APOS_CENSO = :ADMI_APOS_CENSO,'
      '  MOV_REND_ESCOL = :MOV_REND_ESCOL,'
      '  AT_ED_ESPECIALI = :AT_ED_ESPECIALI,'
      '  DATA_IGRESSO = :DATA_IGRESSO,'
      '  CURSO_NOR_NM = :CURSO_NOR_NM,'
      '  NASC_CIDADE = :NASC_CIDADE,'
      '  UF_MEC = :UF_MEC,'
      '  ORGAO_EMISSOR = :ORGAO_EMISSOR,'
      '  SEXO_E = :SEXO_E,'
      '  TIPOCERTIDAO = :TIPOCERTIDAO,'
      '  UFCARTORIO = :UFCARTORIO,'
      '  NUMERO_TERMO = :NUMERO_TERMO,'
      '  FOLHA = :FOLHA,'
      '  LIVRO = :LIVRO,'
      '  CARTORIO_UF = :CARTORIO_UF,'
      '  PASENHA = :PASENHA,'
      '  TIPOSANGUINEO = :TIPOSANGUINEO,'
      '  SITUACAO = :SITUACAO,'
      '  RECLASS_INGR = :RECLASS_INGR,'
      '  RECLASS_DEST = :RECLASS_DEST,'
      '  PALOGIN = :PALOGIN,'
      '  USUARIO = :USUARIO,'
      '  OPCAO_ESPANHOL = :OPCAO_ESPANHOL,'
      '  CELULAR = :CELULAR,'
      '  TEL_RESIDENCIAL = :TEL_RESIDENCIAL,'
      '  TEL_CONTATO = :TEL_CONTATO,'
      '  E_MAIL = :E_MAIL,'
      '  FORMATURA = :FORMATURA,'
      '  BOLSA_AD = :BOLSA_AD,'
      '  AULA_AD = :AULA_AD,'
      '  ID = :ID,'
      '  ORIUNDO_ESCOLA = :ORIUNDO_ESCOLA,'
      '  OBS_TEL = :OBS_TEL,'
      '  DATA_EFETUACAO = :DATA_EFETUACAO,'
      '  EMAIL_MAE = :EMAIL_MAE,'
      '  EMAIL_ALUNO = :EMAIL_ALUNO,'
      '  INTINERARIO = :INTINERARIO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_ALUNOS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 24
    Top = 58
    object AlunosSerieX: TStringField
      FieldKind = fkCalculated
      FieldName = 'SerieX'
      Size = 15
      Calculated = True
    end
    object AlunosModEspX: TStringField
      FieldKind = fkCalculated
      FieldName = 'ModEspX'
      Calculated = True
    end
    object AlunosFinalX: TStringField
      FieldKind = fkCalculated
      FieldName = 'FinalX'
      Size = 15
      Calculated = True
    end
    object Alunoscoraluno: TIBStringField
      FieldKind = fkLookup
      FieldName = 'coraluno'
      LookupDataSet = Cores
      LookupKeyFields = 'CODIGO_COR'
      LookupResultField = 'COR'
      KeyFields = 'COR'
      Lookup = True
    end
    object Alunostiposangue: TIBStringField
      FieldKind = fkLookup
      FieldName = 'tiposangue'
      LookupDataSet = tiposanguineo
      LookupKeyFields = 'ID_SANGUE'
      LookupResultField = 'SANGUE'
      KeyFields = 'TIPOSANGUINEO'
      Lookup = True
    end
    object AlunosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"ALUNOS"."CODIGO"'
      Required = True
    end
    object AlunosCODIGO_ESCOLA: TIntegerField
      FieldName = 'CODIGO_ESCOLA'
      Origin = '"ALUNOS"."CODIGO_ESCOLA"'
    end
    object AlunosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ALUNOS"."NOME"'
      Required = True
      Size = 60
    end
    object AlunosTIPO_LOGADOURO: TIntegerField
      FieldName = 'TIPO_LOGADOURO'
      Origin = '"ALUNOS"."TIPO_LOGADOURO"'
    end
    object AlunosNUMERO: TSmallintField
      FieldName = 'NUMERO'
      Origin = '"ALUNOS"."NUMERO"'
    end
    object AlunosCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"ALUNOS"."COMPLEMENTO"'
    end
    object AlunosBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"ALUNOS"."BAIRRO"'
    end
    object AlunosENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"ALUNOS"."ENDERECO"'
      Size = 40
    end
    object AlunosCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"ALUNOS"."CIDADE"'
      Size = 35
    end
    object AlunosUF: TIBStringField
      FieldName = 'UF'
      Origin = '"ALUNOS"."UF"'
      FixedChar = True
      Size = 2
    end
    object AlunosCOMPLEMENTO_RG: TSmallintField
      FieldName = 'COMPLEMENTO_RG'
      Origin = '"ALUNOS"."COMPLEMENTO_RG"'
    end
    object AlunosDATA_EXP_IDENT: TDateField
      FieldName = 'DATA_EXP_IDENT'
      Origin = '"ALUNOS"."DATA_EXP_IDENT"'
    end
    object AlunosUF_IDENTIDADE: TIntegerField
      FieldName = 'UF_IDENTIDADE'
      Origin = '"ALUNOS"."UF_IDENTIDADE"'
    end
    object AlunosORGAO_EMIS_IDE: TIntegerField
      FieldName = 'ORGAO_EMIS_IDE'
      Origin = '"ALUNOS"."ORGAO_EMIS_IDE"'
    end
    object AlunosNASC_DATA: TDateField
      FieldName = 'NASC_DATA'
      Origin = '"ALUNOS"."NASC_DATA"'
    end
    object AlunosNACIONALIDADE: TIntegerField
      FieldName = 'NACIONALIDADE'
      Origin = '"ALUNOS"."NACIONALIDADE"'
    end
    object AlunosDATA_ENTR_PAIS: TDateField
      FieldName = 'DATA_ENTR_PAIS'
      Origin = '"ALUNOS"."DATA_ENTR_PAIS"'
    end
    object AlunosMUNICIPIO_NAS: TSmallintField
      FieldName = 'MUNICIPIO_NAS'
      Origin = '"ALUNOS"."MUNICIPIO_NAS"'
    end
    object AlunosNASC_UF: TIBStringField
      FieldName = 'NASC_UF'
      Origin = '"ALUNOS"."NASC_UF"'
      FixedChar = True
      Size = 2
    end
    object AlunosCERTIDAO_CIVIL: TSmallintField
      FieldName = 'CERTIDAO_CIVIL'
      Origin = '"ALUNOS"."CERTIDAO_CIVIL"'
    end
    object AlunosDATA_EMI_CERT: TDateField
      FieldName = 'DATA_EMI_CERT'
      Origin = '"ALUNOS"."DATA_EMI_CERT"'
    end
    object AlunosNOME_CART_EXP: TIBStringField
      FieldName = 'NOME_CART_EXP'
      Origin = '"ALUNOS"."NOME_CART_EXP"'
    end
    object AlunosSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"ALUNOS"."SEXO"'
      FixedChar = True
      Size = 1
    end
    object AlunosPAI_NOME: TIBStringField
      FieldName = 'PAI_NOME'
      Origin = '"ALUNOS"."PAI_NOME"'
      Size = 50
    end
    object AlunosPAI_PROFISSAO: TIBStringField
      FieldName = 'PAI_PROFISSAO'
      Origin = '"ALUNOS"."PAI_PROFISSAO"'
    end
    object AlunosPAI_NASCIMENTO: TDateField
      FieldName = 'PAI_NASCIMENTO'
      Origin = '"ALUNOS"."PAI_NASCIMENTO"'
    end
    object AlunosMAE_NOME: TIBStringField
      FieldName = 'MAE_NOME'
      Origin = '"ALUNOS"."MAE_NOME"'
      Size = 50
    end
    object AlunosMAE_PROFISSAO: TIBStringField
      FieldName = 'MAE_PROFISSAO'
      Origin = '"ALUNOS"."MAE_PROFISSAO"'
    end
    object AlunosMAE_NASCIMENTO: TDateField
      FieldName = 'MAE_NASCIMENTO'
      Origin = '"ALUNOS"."MAE_NASCIMENTO"'
    end
    object AlunosFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"ALUNOS"."FONE"'
      Size = 30
    end
    object AlunosDATA_MATRICULA: TDateField
      FieldName = 'DATA_MATRICULA'
      Origin = '"ALUNOS"."DATA_MATRICULA"'
    end
    object AlunosBIMESTRE: TSmallintField
      FieldName = 'BIMESTRE'
      Origin = '"ALUNOS"."BIMESTRE"'
    end
    object AlunosCURSO: TIntegerField
      FieldName = 'CURSO'
      Origin = '"ALUNOS"."CURSO"'
    end
    object AlunosSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = '"ALUNOS"."SERIE"'
    end
    object AlunosTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"ALUNOS"."TURMA"'
      FixedChar = True
      Size = 1
    end
    object AlunosCHAMADA: TSmallintField
      FieldName = 'CHAMADA'
      Origin = '"ALUNOS"."CHAMADA"'
    end
    object AlunosSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"ALUNOS"."STATUS"'
      FixedChar = True
      Size = 1
    end
    object AlunosDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = '"ALUNOS"."DATA_SAIDA"'
    end
    object AlunosBOLSA: TIBBCDField
      FieldName = 'BOLSA'
      Origin = '"ALUNOS"."BOLSA"'
      Precision = 9
      Size = 2
    end
    object AlunosOBS_HIST: TMemoField
      FieldName = 'OBS_HIST'
      Origin = '"ALUNOS"."OBS_HIST"'
      BlobType = ftMemo
      Size = 8
    end
    object AlunosSACADO: TIBStringField
      DisplayWidth = 50
      FieldName = 'SACADO'
      Origin = '"ALUNOS"."SACADO"'
      Size = 50
    end
    object AlunosFINAL: TIBStringField
      FieldName = 'FINAL'
      Origin = '"ALUNOS"."FINAL"'
      FixedChar = True
      Size = 1
    end
    object AlunosMATERIAL: TSmallintField
      FieldName = 'MATERIAL'
      Origin = '"ALUNOS"."MATERIAL"'
    end
    object AlunosVENCIMENTO: TSmallintField
      FieldName = 'VENCIMENTO'
      Origin = '"ALUNOS"."VENCIMENTO"'
    end
    object AlunosANO: TSmallintField
      FieldName = 'ANO'
      Origin = '"ALUNOS"."ANO"'
    end
    object AlunosBLOQUETO_1SEM: TSmallintField
      FieldName = 'BLOQUETO_1SEM'
      Origin = '"ALUNOS"."BLOQUETO_1SEM"'
    end
    object AlunosBLOQUETO_2SEM: TSmallintField
      FieldName = 'BLOQUETO_2SEM'
      Origin = '"ALUNOS"."BLOQUETO_2SEM"'
    end
    object AlunosMES_MATERIAL: TSmallintField
      FieldName = 'MES_MATERIAL'
      Origin = '"ALUNOS"."MES_MATERIAL"'
    end
    object AlunosSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"ALUNOS"."SENHA"'
      Size = 10
    end
    object AlunosSACADO_RG: TIBStringField
      FieldName = 'SACADO_RG'
      Origin = '"ALUNOS"."SACADO_RG"'
    end
    object AlunosSACADO_CPF: TIBStringField
      FieldName = 'SACADO_CPF'
      Origin = '"ALUNOS"."SACADO_CPF"'
      FixedChar = True
      Size = 15
    end
    object AlunosMOD_ESPORTIVA: TIBStringField
      FieldName = 'MOD_ESPORTIVA'
      Origin = '"ALUNOS"."MOD_ESPORTIVA"'
      FixedChar = True
      Size = 3
    end
    object AlunosH_ANO1: TIntegerField
      FieldName = 'H_ANO1'
      Origin = '"ALUNOS"."H_ANO1"'
    end
    object AlunosH_ESCOLA1: TIBStringField
      DisplayWidth = 50
      FieldName = 'H_ESCOLA1'
      Origin = '"ALUNOS"."H_ESCOLA1"'
      Size = 50
    end
    object AlunosH_CIDADE1: TIBStringField
      FieldName = 'H_CIDADE1'
      Origin = '"ALUNOS"."H_CIDADE1"'
      Size = 25
    end
    object AlunosH_UF1: TIBStringField
      FieldName = 'H_UF1'
      Origin = '"ALUNOS"."H_UF1"'
      FixedChar = True
      Size = 2
    end
    object AlunosH_ANO2: TIntegerField
      FieldName = 'H_ANO2'
      Origin = '"ALUNOS"."H_ANO2"'
    end
    object AlunosH_ESCOLA2: TIBStringField
      DisplayWidth = 50
      FieldName = 'H_ESCOLA2'
      Origin = '"ALUNOS"."H_ESCOLA2"'
      Size = 50
    end
    object AlunosH_CIDADE2: TIBStringField
      FieldName = 'H_CIDADE2'
      Origin = '"ALUNOS"."H_CIDADE2"'
      Size = 25
    end
    object AlunosH_UF2: TIBStringField
      FieldName = 'H_UF2'
      Origin = '"ALUNOS"."H_UF2"'
      FixedChar = True
      Size = 2
    end
    object AlunosH_ANO3: TIntegerField
      FieldName = 'H_ANO3'
      Origin = '"ALUNOS"."H_ANO3"'
    end
    object AlunosH_ESCOLA3: TIBStringField
      DisplayWidth = 50
      FieldName = 'H_ESCOLA3'
      Origin = '"ALUNOS"."H_ESCOLA3"'
      Size = 50
    end
    object AlunosH_CIDADE3: TIBStringField
      FieldName = 'H_CIDADE3'
      Origin = '"ALUNOS"."H_CIDADE3"'
      Size = 25
    end
    object AlunosH_UF3: TIBStringField
      FieldName = 'H_UF3'
      Origin = '"ALUNOS"."H_UF3"'
      FixedChar = True
      Size = 2
    end
    object AlunosBOLSA_OBS: TIBStringField
      FieldName = 'BOLSA_OBS'
      Origin = '"ALUNOS"."BOLSA_OBS"'
      Size = 50
    end
    object AlunosCODIGO_SP: TIBStringField
      FieldName = 'CODIGO_SP'
      Origin = '"ALUNOS"."CODIGO_SP"'
      FixedChar = True
      Size = 8
    end
    object AlunosCURSINHO: TSmallintField
      FieldName = 'CURSINHO'
      Origin = '"ALUNOS"."CURSINHO"'
    end
    object AlunosCONT_TOL: TIntegerField
      FieldName = 'CONT_TOL'
      Origin = '"ALUNOS"."CONT_TOL"'
    end
    object AlunosCOR: TIntegerField
      FieldName = 'COR'
      Origin = '"ALUNOS"."COR"'
    end
    object AlunosEDU_ESPECIAL: TIBStringField
      FieldName = 'EDU_ESPECIAL'
      Origin = '"ALUNOS"."EDU_ESPECIAL"'
      FixedChar = True
      Size = 1
    end
    object AlunosTIPO_EDU_ESP: TSmallintField
      FieldName = 'TIPO_EDU_ESP'
      Origin = '"ALUNOS"."TIPO_EDU_ESP"'
    end
    object AlunosINC_CLASSE_COMU: TSmallintField
      FieldName = 'INC_CLASSE_COMU'
      Origin = '"ALUNOS"."INC_CLASSE_COMU"'
    end
    object AlunosAPOIO_PED_ESPE: TSmallintField
      FieldName = 'APOIO_PED_ESPE'
      Origin = '"ALUNOS"."APOIO_PED_ESPE"'
    end
    object AlunosCONDIC_ALUNO: TSmallintField
      FieldName = 'CONDIC_ALUNO'
      Origin = '"ALUNOS"."CONDIC_ALUNO"'
    end
    object AlunosCORR_FLUXO: TSmallintField
      FieldName = 'CORR_FLUXO'
      Origin = '"ALUNOS"."CORR_FLUXO"'
    end
    object AlunosBOLSA_FAMILIA: TSmallintField
      FieldName = 'BOLSA_FAMILIA'
      Origin = '"ALUNOS"."BOLSA_FAMILIA"'
    end
    object AlunosTRANSP_PUBLICO: TSmallintField
      FieldName = 'TRANSP_PUBLICO'
      Origin = '"ALUNOS"."TRANSP_PUBLICO"'
    end
    object AlunosTRANSP_PUB_OFER: TSmallintField
      FieldName = 'TRANSP_PUB_OFER'
      Origin = '"ALUNOS"."TRANSP_PUB_OFER"'
    end
    object AlunosZONA_RESID: TSmallintField
      FieldName = 'ZONA_RESID'
      Origin = '"ALUNOS"."ZONA_RESID"'
    end
    object AlunosCONCLUINTE: TSmallintField
      FieldName = 'CONCLUINTE'
      Origin = '"ALUNOS"."CONCLUINTE"'
    end
    object AlunosADMI_APOS_CENSO: TSmallintField
      FieldName = 'ADMI_APOS_CENSO'
      Origin = '"ALUNOS"."ADMI_APOS_CENSO"'
    end
    object AlunosMOV_REND_ESCOL: TSmallintField
      FieldName = 'MOV_REND_ESCOL'
      Origin = '"ALUNOS"."MOV_REND_ESCOL"'
    end
    object AlunosAT_ED_ESPECIALI: TSmallintField
      FieldName = 'AT_ED_ESPECIALI'
      Origin = '"ALUNOS"."AT_ED_ESPECIALI"'
    end
    object AlunosDATA_IGRESSO: TDateField
      FieldName = 'DATA_IGRESSO'
      Origin = '"ALUNOS"."DATA_IGRESSO"'
    end
    object AlunosCURSO_NOR_NM: TSmallintField
      FieldName = 'CURSO_NOR_NM'
      Origin = '"ALUNOS"."CURSO_NOR_NM"'
    end
    object AlunosNASC_CIDADE: TIBStringField
      FieldName = 'NASC_CIDADE'
      Origin = '"ALUNOS"."NASC_CIDADE"'
      Size = 25
    end
    object AlunosUF_MEC: TIntegerField
      FieldName = 'UF_MEC'
      Origin = '"ALUNOS"."UF_MEC"'
    end
    object AlunosORGAO_EMISSOR: TIntegerField
      FieldName = 'ORGAO_EMISSOR'
      Origin = '"ALUNOS"."ORGAO_EMISSOR"'
    end
    object AlunosSEXO_E: TIntegerField
      FieldName = 'SEXO_E'
      Origin = '"ALUNOS"."SEXO_E"'
    end
    object AlunosUFCARTORIO: TIntegerField
      FieldName = 'UFCARTORIO'
      Origin = '"ALUNOS"."UFCARTORIO"'
    end
    object AlunosNUMERO_TERMO: TIntegerField
      FieldName = 'NUMERO_TERMO'
      Origin = '"ALUNOS"."NUMERO_TERMO"'
    end
    object AlunosFOLHA: TIBStringField
      FieldName = 'FOLHA'
      Origin = '"ALUNOS"."FOLHA"'
      Size = 4
    end
    object AlunosLIVRO: TIBStringField
      FieldName = 'LIVRO'
      Origin = '"ALUNOS"."LIVRO"'
      Size = 8
    end
    object AlunosCARTORIO_UF: TIntegerField
      FieldName = 'CARTORIO_UF'
      Origin = '"ALUNOS"."CARTORIO_UF"'
    end
    object AlunosPASENHA: TIBStringField
      FieldName = 'PASENHA'
      Origin = '"ALUNOS"."PASENHA"'
      Size = 10
    end
    object AlunosTIPOSANGUINEO: TIntegerField
      FieldName = 'TIPOSANGUINEO'
      Origin = '"ALUNOS"."TIPOSANGUINEO"'
    end
    object AlunosSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = '"ALUNOS"."SITUACAO"'
      FixedChar = True
      Size = 1
    end
    object AlunosRECLASS_INGR: TSmallintField
      FieldName = 'RECLASS_INGR'
      Origin = '"ALUNOS"."RECLASS_INGR"'
    end
    object AlunosRECLASS_DEST: TSmallintField
      FieldName = 'RECLASS_DEST'
      Origin = '"ALUNOS"."RECLASS_DEST"'
    end
    object AlunosPALOGIN: TIBStringField
      FieldName = 'PALOGIN'
      Origin = '"ALUNOS"."PALOGIN"'
      Size = 10
    end
    object AlunosUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"ALUNOS"."USUARIO"'
    end
    object AlunosOPCAO_ESPANHOL: TIBStringField
      FieldName = 'OPCAO_ESPANHOL'
      Origin = '"ALUNOS"."OPCAO_ESPANHOL"'
      FixedChar = True
      Size = 1
    end
    object AlunosCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"ALUNOS"."CELULAR"'
      Size = 14
    end
    object AlunosTEL_RESIDENCIAL: TIBStringField
      FieldName = 'TEL_RESIDENCIAL'
      Origin = '"ALUNOS"."TEL_RESIDENCIAL"'
      Size = 13
    end
    object AlunosTEL_CONTATO: TIBStringField
      FieldName = 'TEL_CONTATO'
      Origin = '"ALUNOS"."TEL_CONTATO"'
      Size = 14
    end
    object AlunosE_MAIL: TIBStringField
      DisplayWidth = 50
      FieldName = 'E_MAIL'
      Origin = '"ALUNOS"."E_MAIL"'
      Size = 50
    end
    object AlunosFORMATURA: TIBStringField
      FieldName = 'FORMATURA'
      Origin = '"ALUNOS"."FORMATURA"'
      FixedChar = True
      Size = 1
    end
    object AlunosBOLSA_AD: TIBBCDField
      FieldName = 'BOLSA_AD'
      Origin = '"ALUNOS"."BOLSA_AD"'
      Precision = 9
      Size = 2
    end
    object AlunosAULA_AD: TIBStringField
      FieldName = 'AULA_AD'
      Origin = '"ALUNOS"."AULA_AD"'
      FixedChar = True
      Size = 1
    end
    object AlunosID: TIBStringField
      FieldName = 'ID'
      Origin = '"ALUNOS"."ID"'
      Size = 12
    end
    object AlunosORIUNDO_ESCOLA: TIntegerField
      FieldName = 'ORIUNDO_ESCOLA'
      Origin = '"ALUNOS"."ORIUNDO_ESCOLA"'
      Required = True
    end
    object AlunosOBS_TEL: TIBStringField
      FieldName = 'OBS_TEL'
      Origin = '"ALUNOS"."OBS_TEL"'
      Size = 15
    end
    object AlunosDATA_EFETUACAO: TDateTimeField
      FieldName = 'DATA_EFETUACAO'
      Origin = '"ALUNOS"."DATA_EFETUACAO"'
    end
    object AlunosRG: TIBStringField
      FieldName = 'RG'
      Origin = '"ALUNOS"."RG"'
      Size = 35
    end
    object AlunosTIPOCERTIDAO: TIBStringField
      FieldName = 'TIPOCERTIDAO'
      Origin = '"ALUNOS"."TIPOCERTIDAO"'
      Size = 35
    end
    object AlunosEMAIL_MAE: TIBStringField
      FieldName = 'EMAIL_MAE'
      Origin = '"ALUNOS"."EMAIL_MAE"'
      Size = 50
    end
    object AlunosEMAIL_ALUNO: TIBStringField
      FieldName = 'EMAIL_ALUNO'
      Origin = '"ALUNOS"."EMAIL_ALUNO"'
      Size = 50
    end
    object AlunosCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"ALUNOS"."CPF"'
      Size = 25
    end
    object AlunosINTINERARIO: TIntegerField
      FieldName = 'INTINERARIO'
      Origin = '"ALUNOS"."INTINERARIO"'
      Required = True
    end
    object AlunosCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"ALUNOS"."CEP"'
      Size = 15
    end
  end
  object ContaAlunosQ: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select Count(Codigo) As TotalAlunos'
      'from ALUNOS')
    Left = 152
    Top = 58
    object ContaAlunosQTOTALALUNOS: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TOTALALUNOS'
      Required = True
      Calculated = True
    end
  end
  object dsBloquetos: TDataSource
    DataSet = Bloquetos
    Left = 84
    Top = 160
  end
  object Bloquetos: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    ObjectView = True
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BLOQUETOS'
      'where'
      '  NOSSO_NUMERO = :OLD_NOSSO_NUMERO')
    InsertSQL.Strings = (
      'insert into BLOQUETOS'
      '  (NOSSO_NUMERO, ALUNO, PARCELA, EMISSAO, VENCIMENTO, VALOR, '
      'PAGAMENTO, '
      
        '   VALOR_PAGO, MENSALIDADE, MATERIAL, DESCONTO, TIPO_PG, ANO_DV,' +
        ' '
      'DESCONTO_ANT, '
      '   MENSALIDADE_ANT, VALOR_ANT, BAULA_AD, ST, TP, MOTIVO, '
      'DATA_LIMITE, NEGOCIACAO)'
      'values'
      
        '  (:NOSSO_NUMERO, :ALUNO, :PARCELA, :EMISSAO, :VENCIMENTO, :VALO' +
        'R, '
      ':PAGAMENTO, '
      '   :VALOR_PAGO, :MENSALIDADE, :MATERIAL, :DESCONTO, :TIPO_PG, '
      ':ANO_DV, '
      
        '   :DESCONTO_ANT, :MENSALIDADE_ANT, :VALOR_ANT, :BAULA_AD, :ST, ' +
        ':TP, '
      ':MOTIVO, '
      '   :DATA_LIMITE, :NEGOCIACAO)')
    RefreshSQL.Strings = (
      'Select '
      '  NOSSO_NUMERO,'
      '  ALUNO,'
      '  PARCELA,'
      '  EMISSAO,'
      '  VENCIMENTO,'
      '  VALOR,'
      '  PAGAMENTO,'
      '  VALOR_PAGO,'
      '  MENSALIDADE,'
      '  MATERIAL,'
      '  DESCONTO,'
      '  TIPO_PG,'
      '  ANO_DV,'
      '  DESCONTO_ANT,'
      '  MENSALIDADE_ANT,'
      '  VALOR_ANT,'
      '  BAULA_AD,'
      '  ST,'
      '  TP,'
      '  MOTIVO,'
      '  DATA_LIMITE,'
      '  NEGOCIACAO'
      'from BLOQUETOS '
      'where'
      '  NOSSO_NUMERO = :NOSSO_NUMERO')
    SelectSQL.Strings = (
      'select * '
      'from BLOQUETOS'
      'where NOSSO_NUMERO > 0'
      'order by NOSSO_NUMERO')
    ModifySQL.Strings = (
      'update BLOQUETOS'
      'set'
      '  NOSSO_NUMERO = :NOSSO_NUMERO,'
      '  ALUNO = :ALUNO,'
      '  PARCELA = :PARCELA,'
      '  EMISSAO = :EMISSAO,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  VALOR = :VALOR,'
      '  PAGAMENTO = :PAGAMENTO,'
      '  VALOR_PAGO = :VALOR_PAGO,'
      '  MENSALIDADE = :MENSALIDADE,'
      '  MATERIAL = :MATERIAL,'
      '  DESCONTO = :DESCONTO,'
      '  TIPO_PG = :TIPO_PG,'
      '  ANO_DV = :ANO_DV,'
      '  DESCONTO_ANT = :DESCONTO_ANT,'
      '  MENSALIDADE_ANT = :MENSALIDADE_ANT,'
      '  VALOR_ANT = :VALOR_ANT,'
      '  BAULA_AD = :BAULA_AD,'
      '  ST = :ST,'
      '  TP = :TP,'
      '  MOTIVO = :MOTIVO,'
      '  DATA_LIMITE = :DATA_LIMITE,'
      '  NEGOCIACAO = :NEGOCIACAO'
      'where'
      '  NOSSO_NUMERO = :OLD_NOSSO_NUMERO')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 23
    Top = 160
    object BloquetosNOSSO_NUMERO: TIntegerField
      FieldName = 'NOSSO_NUMERO'
      Origin = '"BLOQUETOS"."NOSSO_NUMERO"'
      Required = True
    end
    object BloquetosALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = '"BLOQUETOS"."ALUNO"'
    end
    object BloquetosPARCELA: TSmallintField
      FieldName = 'PARCELA'
      Origin = '"BLOQUETOS"."PARCELA"'
    end
    object BloquetosEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"BLOQUETOS"."EMISSAO"'
    end
    object BloquetosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"BLOQUETOS"."VENCIMENTO"'
      EditMask = '!99/99/00;1;_'
    end
    object BloquetosVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"BLOQUETOS"."VALOR"'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"BLOQUETOS"."PAGAMENTO"'
    end
    object BloquetosVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"BLOQUETOS"."VALOR_PAGO"'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosMENSALIDADE: TIBBCDField
      FieldName = 'MENSALIDADE'
      Origin = '"BLOQUETOS"."MENSALIDADE"'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosMATERIAL: TIBBCDField
      FieldName = 'MATERIAL'
      Origin = '"BLOQUETOS"."MATERIAL"'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"BLOQUETOS"."DESCONTO"'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosTIPO_PG: TSmallintField
      FieldName = 'TIPO_PG'
      Origin = '"BLOQUETOS"."TIPO_PG"'
    end
    object BloquetosANO_DV: TIBStringField
      FieldName = 'ANO_DV'
      Origin = '"BLOQUETOS"."ANO_DV"'
      FixedChar = True
      Size = 2
    end
    object BloquetosMENSALIDADE_ANT: TIBBCDField
      FieldName = 'MENSALIDADE_ANT'
      Origin = '"BLOQUETOS"."MENSALIDADE_ANT"'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosVALOR_ANT: TIBBCDField
      FieldName = 'VALOR_ANT'
      Origin = '"BLOQUETOS"."VALOR_ANT"'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosBAULA_AD: TIBStringField
      FieldName = 'BAULA_AD'
      Origin = '"BLOQUETOS"."BAULA_AD"'
      FixedChar = True
      Size = 1
    end
    object BloquetosST: TIBStringField
      FieldName = 'ST'
      Origin = '"BLOQUETOS"."ST"'
      FixedChar = True
      Size = 1
    end
    object BloquetosTP: TIntegerField
      FieldName = 'TP'
      Origin = '"BLOQUETOS"."TP"'
    end
    object BloquetosMOTIVO: TIBStringField
      FieldName = 'MOTIVO'
      Origin = '"BLOQUETOS"."MOTIVO"'
      Size = 150
    end
    object BloquetosDATA_LIMITE: TDateField
      FieldName = 'DATA_LIMITE'
      Origin = '"BLOQUETOS"."DATA_LIMITE"'
      EditMask = '!99/99/00;1;_'
    end
    object BloquetosDESCONTO_ANT: TIBBCDField
      FieldName = 'DESCONTO_ANT'
      Origin = '"BLOQUETOS"."DESCONTO_ANT"'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosNEGOCIACAO: TIntegerField
      FieldName = 'NEGOCIACAO'
      Origin = '"BLOQUETOS"."NEGOCIACAO"'
    end
  end
  object dsBloquetosQ: TDataSource
    DataSet = BloquetosQ
    Left = 200
    Top = 112
  end
  object Turmas: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    OnCalcFields = TurmasCalcFields
    OnNewRecord = TurmasNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TURMAS'
      'where'
      '  SERIE = :OLD_SERIE and'
      '  TURMA = :OLD_TURMA')
    InsertSQL.Strings = (
      'insert into TURMAS'
      '  (SERIE, TURMA, PERIODO, VAGAS, NUMERO, CURSINHO)'
      'values'
      '  (:SERIE, :TURMA, :PERIODO, :VAGAS, :NUMERO, :CURSINHO)')
    RefreshSQL.Strings = (
      'Select '
      '  SERIE,'
      '  TURMA,'
      '  PERIODO,'
      '  VAGAS,'
      '  NUMERO,'
      '  CURSINHO'
      'from TURMAS '
      'where'
      '  SERIE = :SERIE and'
      '  TURMA = :TURMA')
    SelectSQL.Strings = (
      'select * '
      'from TURMAS'
      'order by SERIE,TURMA')
    ModifySQL.Strings = (
      'update TURMAS'
      'set'
      '  SERIE = :SERIE,'
      '  TURMA = :TURMA,'
      '  PERIODO = :PERIODO,'
      '  VAGAS = :VAGAS,'
      '  NUMERO = :NUMERO,'
      '  CURSINHO = :CURSINHO'
      'where'
      '  SERIE = :OLD_SERIE and'
      '  TURMA = :OLD_TURMA')
    Left = 23
    Top = 263
    object TurmasSERIE: TSmallintField
      FieldName = 'SERIE'
      Required = True
    end
    object TurmasTURMA: TIBStringField
      FieldName = 'TURMA'
      Required = True
      Size = 1
    end
    object TurmasPERIODO: TSmallintField
      FieldName = 'PERIODO'
    end
    object TurmasVAGAS: TIntegerField
      FieldName = 'VAGAS'
    end
    object TurmasPeriodoX: TStringField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'PeriodoX'
      Size = 10
      Calculated = True
    end
    object TurmasNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nome'
      Calculated = True
    end
    object TurmasSerieX: TStringField
      FieldKind = fkCalculated
      FieldName = 'SerieX'
      Size = 15
      Calculated = True
    end
    object TurmasNUMERO: TSmallintField
      FieldName = 'NUMERO'
      Origin = 'TURMAS.NUMERO'
    end
    object TurmasCURSINHO: TSmallintField
      FieldName = 'CURSINHO'
      Origin = 'TURMAS.CURSINHO'
    end
    object TurmasCursinhoSN: TStringField
      FieldKind = fkCalculated
      FieldName = 'CursinhoSN'
      Size = 1
      Calculated = True
    end
  end
  object dsTurmas: TDataSource
    DataSet = Turmas
    Left = 84
    Top = 263
  end
  object Disciplinas: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    AfterInsert = DisciplinasAfterInsert
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from DISCIPLINAS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into DISCIPLINAS'
      
        '  (CODIGO, NOME, NOME_RES, NOME_NO, NOME_RES_NO, MAX_FALTAS, FRE' +
        'NTES, NOME_ATA_1, '
      '   NOME_ATA_2, NOME_ATA_3, OPTATIVA, AREA_CONHECIMENTO)'
      'values'
      
        '  (:CODIGO, :NOME, :NOME_RES, :NOME_NO, :NOME_RES_NO, :MAX_FALTA' +
        'S, :FRENTES, '
      
        '   :NOME_ATA_1, :NOME_ATA_2, :NOME_ATA_3, :OPTATIVA, :AREA_CONHE' +
        'CIMENTO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME,'
      '  NOME_RES,'
      '  NOME_NO,'
      '  NOME_RES_NO,'
      '  MAX_FALTAS,'
      '  FRENTES,'
      '  NOME_ATA_1,'
      '  NOME_ATA_2,'
      '  NOME_ATA_3,'
      '  OPTATIVA,'
      '  AREA_CONHECIMENTO'
      'from DISCIPLINAS '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * '
      'from  DISCIPLINAS'
      'where Codigo > 0'
      'order by Codigo')
    ModifySQL.Strings = (
      'update DISCIPLINAS'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  NOME_RES = :NOME_RES,'
      '  NOME_NO = :NOME_NO,'
      '  NOME_RES_NO = :NOME_RES_NO,'
      '  MAX_FALTAS = :MAX_FALTAS,'
      '  FRENTES = :FRENTES,'
      '  NOME_ATA_1 = :NOME_ATA_1,'
      '  NOME_ATA_2 = :NOME_ATA_2,'
      '  NOME_ATA_3 = :NOME_ATA_3,'
      '  OPTATIVA = :OPTATIVA,'
      '  AREA_CONHECIMENTO = :AREA_CONHECIMENTO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 23
    Top = 310
    object DisciplinasCODIGO: TIntegerField
      DisplayWidth = 5
      FieldName = 'CODIGO'
      Required = True
    end
    object DisciplinasNOME: TIBStringField
      FieldName = 'NOME'
      Size = 40
    end
    object DisciplinasNOME_RES: TIBStringField
      FieldName = 'NOME_RES'
      Size = 4
    end
    object DisciplinasMAX_FALTAS: TIBBCDField
      FieldName = 'MAX_FALTAS'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 2
    end
    object DisciplinasFRENTES: TSmallintField
      FieldName = 'FRENTES'
      Origin = 'DISCIPLINAS.FRENTES'
    end
    object DisciplinasNOME_NO: TIBStringField
      FieldName = 'NOME_NO'
      Origin = 'DISCIPLINAS.NOME_NO'
      Size = 40
    end
    object DisciplinasNOME_RES_NO: TIBStringField
      FieldName = 'NOME_RES_NO'
      Origin = 'DISCIPLINAS.NOME_RES_NO'
      FixedChar = True
      Size = 4
    end
    object DisciplinasNOME_ATA_1: TIBStringField
      DisplayWidth = 7
      FieldName = 'NOME_ATA_1'
      Origin = 'DISCIPLINAS.NOME_ATA_1'
      Size = 7
    end
    object DisciplinasNOME_ATA_2: TIBStringField
      DisplayWidth = 7
      FieldName = 'NOME_ATA_2'
      Origin = 'DISCIPLINAS.NOME_ATA_2'
      Size = 7
    end
    object DisciplinasNOME_ATA_3: TIBStringField
      DisplayWidth = 7
      FieldName = 'NOME_ATA_3'
      Origin = 'DISCIPLINAS.NOME_ATA_3'
      Size = 7
    end
    object DisciplinasOPTATIVA: TIBStringField
      FieldName = 'OPTATIVA'
      Origin = '"DISCIPLINAS"."OPTATIVA"'
      Size = 10
    end
    object DisciplinasAREA_CONHECIMENTO: TIntegerField
      FieldName = 'AREA_CONHECIMENTO'
      Origin = '"DISCIPLINAS"."AREA_CONHECIMENTO"'
    end
  end
  object dsDisciplinas: TDataSource
    DataSet = Disciplinas
    Left = 84
    Top = 310
  end
  object Grade: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    OnCalcFields = GradeCalcFields
    OnNewRecord = GradeNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from GRADE'
      'where'
      '  SERIE = :OLD_SERIE and'
      '  DISCIPLINA = :OLD_DISCIPLINA')
    InsertSQL.Strings = (
      'insert into GRADE'
      
        '  (SERIE, DISCIPLINA, SEQUENCIA, CH_SEMANAL, CH_OFICIAL, CH_N_OF' +
        'ICIAL, '
      '   TIPO, QUANTSETORES)'
      'values'
      
        '  (:SERIE, :DISCIPLINA, :SEQUENCIA, :CH_SEMANAL, :CH_OFICIAL, :C' +
        'H_N_OFICIAL, '
      '   :TIPO, :QUANTSETORES)')
    RefreshSQL.Strings = (
      'Select '
      '  SERIE,'
      '  DISCIPLINA,'
      '  SEQUENCIA,'
      '  CH_SEMANAL,'
      '  CH_OFICIAL,'
      '  CH_N_OFICIAL,'
      '  TIPO,'
      '  QUANTSETORES'
      'from GRADE '
      'where'
      '  SERIE = :SERIE and'
      '  DISCIPLINA = :DISCIPLINA')
    SelectSQL.Strings = (
      'select *'
      'from GRADE'
      'where SERIE > 0'
      'order by SEQUENCIA')
    ModifySQL.Strings = (
      'update GRADE'
      'set'
      '  SERIE = :SERIE,'
      '  DISCIPLINA = :DISCIPLINA,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  CH_SEMANAL = :CH_SEMANAL,'
      '  CH_OFICIAL = :CH_OFICIAL,'
      '  CH_N_OFICIAL = :CH_N_OFICIAL,'
      '  TIPO = :TIPO,'
      '  QUANTSETORES = :QUANTSETORES'
      'where'
      '  SERIE = :OLD_SERIE and'
      '  DISCIPLINA = :OLD_DISCIPLINA')
    Left = 23
    Top = 355
    object GradeSERIE: TSmallintField
      FieldName = 'SERIE'
      Required = True
    end
    object GradeDISCIPLINA: TIntegerField
      FieldName = 'DISCIPLINA'
      Required = True
    end
    object GradeSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Required = True
    end
    object GradeCH_SEMANAL: TIntegerField
      FieldName = 'CH_SEMANAL'
    end
    object GradeCH_OFICIAL: TIntegerField
      FieldName = 'CH_OFICIAL'
    end
    object GradeCH_N_OFICIAL: TIntegerField
      FieldName = 'CH_N_OFICIAL'
    end
    object GradeTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object GradeTipoX: TStringField
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'TipoX'
      Size = 30
      Calculated = True
    end
    object GradeDisciplinaX: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'DisciplinaX'
      LookupDataSet = Disciplinas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'DISCIPLINA'
      Size = 40
      Lookup = True
    end
    object GradeQUANTSETORES: TIntegerField
      FieldName = 'QUANTSETORES'
      Origin = '"GRADE"."QUANTSETORES"'
    end
  end
  object dsGrade: TDataSource
    DataSet = Grade
    Left = 84
    Top = 355
  end
  object Mapa: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MAPA_AULA'
      'where'
      '  TUR_SERIE = :OLD_TUR_SERIE and'
      '  TUR_TURMA = :OLD_TUR_TURMA and'
      '  DIA_SEMANA = :OLD_DIA_SEMANA and'
      '  AULA = :OLD_AULA')
    InsertSQL.Strings = (
      'insert into MAPA_AULA'
      '  (TUR_SERIE, TUR_TURMA, DIA_SEMANA, AULA, DIS_CODIGO)'
      'values'
      '  (:TUR_SERIE, :TUR_TURMA, :DIA_SEMANA, :AULA, :DIS_CODIGO)')
    RefreshSQL.Strings = (
      'Select '
      '  TUR_SERIE,'
      '  TUR_TURMA,'
      '  DIA_SEMANA,'
      '  AULA,'
      '  DIS_CODIGO'
      'from MAPA_AULA '
      'where'
      '  TUR_SERIE = :TUR_SERIE and'
      '  TUR_TURMA = :TUR_TURMA and'
      '  DIA_SEMANA = :DIA_SEMANA and'
      '  AULA = :AULA')
    SelectSQL.Strings = (
      'select *'
      'from MAPA_AULA'
      'where TUR_SERIE > 0'
      'order by TUR_SERIE, TUR_TURMA')
    ModifySQL.Strings = (
      'update MAPA_AULA'
      'set'
      '  TUR_SERIE = :TUR_SERIE,'
      '  TUR_TURMA = :TUR_TURMA,'
      '  DIA_SEMANA = :DIA_SEMANA,'
      '  AULA = :AULA,'
      '  DIS_CODIGO = :DIS_CODIGO'
      'where'
      '  TUR_SERIE = :OLD_TUR_SERIE and'
      '  TUR_TURMA = :OLD_TUR_TURMA and'
      '  DIA_SEMANA = :OLD_DIA_SEMANA and'
      '  AULA = :OLD_AULA')
    Left = 23
    Top = 408
    object MapaTUR_SERIE: TSmallintField
      FieldName = 'TUR_SERIE'
      Required = True
    end
    object MapaTUR_TURMA: TIBStringField
      FieldName = 'TUR_TURMA'
      Required = True
      Size = 1
    end
    object MapaDIA_SEMANA: TSmallintField
      FieldName = 'DIA_SEMANA'
      Required = True
    end
    object MapaAULA: TSmallintField
      FieldName = 'AULA'
      Required = True
    end
    object MapaDIS_CODIGO: TIntegerField
      FieldName = 'DIS_CODIGO'
    end
  end
  object dsMapa: TDataSource
    DataSet = Mapa
    Left = 84
    Top = 408
  end
  object Notas: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    AfterPost = NotasAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NOTAS'
      'where'
      '  ALUNO = :OLD_ALUNO and'
      '  DISCIPLINA = :OLD_DISCIPLINA and'
      '  BIMESTRE = :OLD_BIMESTRE')
    InsertSQL.Strings = (
      'insert into NOTAS'
      
        '  (NOTA1, NOTA2, NOTA3, NOTA4, NOTA5, NOTA6, NOTA, RECUPBIM, REC' +
        'UPBIM1, '
      '   RECUPBIM2, RECUPBIM3)'
      'values'
      
        '  (:NOTA1, :NOTA2, :NOTA3, :NOTA4, :NOTA5, :NOTA6, :NOTA, :RECUP' +
        'BIM, :RECUPBIM1, '
      '   :RECUPBIM2, :RECUPBIM3)')
    RefreshSQL.Strings = (
      'Select '
      '  ALUNO,'
      '  DISCIPLINA,'
      '  BIMESTRE,'
      '  NOTA1,'
      '  NOTA2,'
      '  NOTA3,'
      '  NOTA4,'
      '  NOTA5,'
      '  NOTA6,'
      '  NOTA,'
      '  RECUPBIM,'
      '  RECUPBIM1,'
      '  RECUPBIM2,'
      '  RECUPBIM3,'
      '  PROFESSOR1,'
      '  PROFESSOR2,'
      '  PROFESSOR3,'
      '  STATUS,'
      '  USUARIO'
      'from NOTAS '
      'where'
      '  ALUNO = :ALUNO and'
      '  DISCIPLINA = :DISCIPLINA and'
      '  BIMESTRE = :BIMESTRE')
    SelectSQL.Strings = (
      'select A.*, B.CODIGO, B.CHAMADA, B.NOME, Disc.FRENTES'
      'from NOTAS A'
      'inner join ALUNOS B on B.CODIGO = A.ALUNO'
      'inner join DISCIPLINAS Disc on Disc.CODIGO = A.DISCIPLINA'
      'where B.SERIE = :serie and B.TURMA = :turma and'
      '          A.DISCIPLINA = :disciplina and'
      '          A.BIMESTRE = :bimestre'
      'order by B.nome collate PXW_INTL850')
    ModifySQL.Strings = (
      'update NOTAS'
      'set'
      '  NOTA1 = :NOTA1,'
      '  NOTA2 = :NOTA2,'
      '  NOTA3 = :NOTA3,'
      '  NOTA4 = :NOTA4,'
      '  NOTA5 = :NOTA5,'
      '  NOTA6 = :NOTA6,'
      '  NOTA = :NOTA,'
      '  RECUPBIM = :RECUPBIM,'
      '  RECUPBIM1 = :RECUPBIM1,'
      '  RECUPBIM2 = :RECUPBIM2,'
      '  RECUPBIM3 = :RECUPBIM3'
      'where'
      '  ALUNO = :OLD_ALUNO and'
      '  DISCIPLINA = :OLD_DISCIPLINA and'
      '  BIMESTRE = :OLD_BIMESTRE')
    Left = 152
    Top = 160
    object NotasALUNO: TIntegerField
      FieldName = 'ALUNO'
      Required = True
    end
    object NotasDISCIPLINA: TIntegerField
      FieldName = 'DISCIPLINA'
      Required = True
    end
    object NotasBIMESTRE: TSmallintField
      FieldName = 'BIMESTRE'
      Required = True
    end
    object NotasNOTA: TIBBCDField
      FieldName = 'NOTA'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasNOTA1: TIBBCDField
      FieldName = 'NOTA1'
      OnValidate = NotasNOTA1Validate
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasNOTA2: TIBBCDField
      FieldName = 'NOTA2'
      OnValidate = NotasNOTA2Validate
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasNOTA3: TIBBCDField
      FieldName = 'NOTA3'
      OnValidate = NotasNOTA3Validate
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasNOTA4: TIBBCDField
      FieldName = 'NOTA4'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasNOTA5: TIBBCDField
      FieldName = 'NOTA5'
      Origin = '"NOTAS"."NOTA5"'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasNOTA6: TIBBCDField
      FieldName = 'NOTA6'
      Origin = '"NOTAS"."NOTA6"'
      DisplayFormat = '#0.0'
      EditFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasRECUPBIM: TIBBCDField
      FieldName = 'RECUPBIM'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasRECUPBIM1: TIBBCDField
      FieldName = 'RECUPBIM1'
      Origin = 'NOTAS.RECUPBIM1'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasRECUPBIM2: TIBBCDField
      FieldName = 'RECUPBIM2'
      Origin = 'NOTAS.RECUPBIM2'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasRECUPBIM3: TIBBCDField
      FieldName = 'RECUPBIM3'
      Origin = '"NOTAS"."RECUPBIM3"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object NotasCHAMADA: TSmallintField
      FieldName = 'CHAMADA'
    end
    object NotasNOME: TIBStringField
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
    object NotasFRENTES: TSmallintField
      FieldName = 'FRENTES'
      Origin = 'DISCIPLINAS.FRENTES'
    end
    object NotasUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"NOTAS"."USUARIO"'
    end
  end
  object dsNotas: TDataSource
    DataSet = Notas
    Left = 208
    Top = 160
  end
  object Faltas: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FALTAS'
      'where'
      '  ALU_CODIGO = :OLD_ALU_CODIGO and'
      '  DIS_CODIGO = :OLD_DIS_CODIGO and'
      '  DATA = :OLD_DATA and'
      '  AULA = :OLD_AULA')
    InsertSQL.Strings = (
      'insert into FALTAS'
      '  (ALU_CODIGO, DIS_CODIGO, DATA, AULA, QTDADE, OBS)'
      'values'
      '  (:ALU_CODIGO, :DIS_CODIGO, :DATA, :AULA, :QTDADE, :OBS)')
    RefreshSQL.Strings = (
      'Select '
      '  ALU_CODIGO,'
      '  DIS_CODIGO,'
      '  DATA,'
      '  AULA,'
      '  QTDADE,'
      '  OBS'
      'from FALTAS '
      'where'
      '  ALU_CODIGO = :ALU_CODIGO and'
      '  DIS_CODIGO = :DIS_CODIGO and'
      '  DATA = :DATA and'
      '  AULA = :AULA')
    SelectSQL.Strings = (
      'select * '
      'from FALTAS'
      'where ALU_CODIGO > 0'
      'order by ALU_CODIGO,DATA')
    ModifySQL.Strings = (
      'update FALTAS'
      'set'
      '  ALU_CODIGO = :ALU_CODIGO,'
      '  DIS_CODIGO = :DIS_CODIGO,'
      '  DATA = :DATA,'
      '  AULA = :AULA,'
      '  QTDADE = :QTDADE,'
      '  OBS = :OBS'
      'where'
      '  ALU_CODIGO = :OLD_ALU_CODIGO and'
      '  DIS_CODIGO = :OLD_DIS_CODIGO and'
      '  DATA = :OLD_DATA and'
      '  AULA = :OLD_AULA')
    Left = 152
    Top = 263
    object FaltasALU_CODIGO: TIntegerField
      FieldName = 'ALU_CODIGO'
      Required = True
    end
    object FaltasDIS_CODIGO: TIntegerField
      FieldName = 'DIS_CODIGO'
      Required = True
    end
    object FaltasDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object FaltasQTDADE: TSmallintField
      FieldName = 'QTDADE'
    end
    object FaltasAULA: TSmallintField
      FieldName = 'AULA'
      Origin = '"FALTAS"."AULA"'
      Required = True
    end
    object FaltasOBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"FALTAS"."OBS"'
      Size = 100
    end
  end
  object dsFaltas: TDataSource
    DataSet = Faltas
    Left = 208
    Top = 263
  end
  object Boletim: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from Boletim(:serie,:turma,:n_ini,:n_fin,:tp_bol,:bimes' +
        'tre,:tp_nota,:media)')
    Left = 152
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
        Name = 'n_ini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'n_fin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tp_bol'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bimestre'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tp_nota'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'media'
        ParamType = ptUnknown
      end>
    object BoletimCOD_ALU: TIntegerField
      FieldName = 'COD_ALU'
      Origin = '"BOLETIM"."COD_ALU"'
    end
    object BoletimNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"BOLETIM"."NOME"'
      Size = 60
    end
    object BoletimCHAMADA: TSmallintField
      FieldName = 'CHAMADA'
      Origin = '"BOLETIM"."CHAMADA"'
    end
    object BoletimSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"BOLETIM"."SEXO"'
      FixedChar = True
      Size = 1
    end
    object BoletimDIS_NOME: TIBStringField
      FieldName = 'DIS_NOME'
      Origin = '"BOLETIM"."DIS_NOME"'
      Size = 40
    end
    object BoletimN1: TIBBCDField
      FieldName = 'N1'
      Origin = '"BOLETIM"."N1"'
      Precision = 4
      Size = 1
    end
    object BoletimN2: TIBBCDField
      FieldName = 'N2'
      Origin = '"BOLETIM"."N2"'
      Precision = 4
      Size = 1
    end
    object BoletimN3: TIBBCDField
      FieldName = 'N3'
      Origin = '"BOLETIM"."N3"'
      Precision = 4
      Size = 1
    end
    object BoletimN4: TIBBCDField
      FieldName = 'N4'
      Origin = '"BOLETIM"."N4"'
      Precision = 4
      Size = 1
    end
    object BoletimF1: TSmallintField
      FieldName = 'F1'
      Origin = '"BOLETIM"."F1"'
    end
    object BoletimF2: TSmallintField
      FieldName = 'F2'
      Origin = '"BOLETIM"."F2"'
    end
    object BoletimF3: TSmallintField
      FieldName = 'F3'
      Origin = '"BOLETIM"."F3"'
    end
    object BoletimF4: TSmallintField
      FieldName = 'F4'
      Origin = '"BOLETIM"."F4"'
    end
    object BoletimTOT_F: TSmallintField
      FieldName = 'TOT_F'
      Origin = '"BOLETIM"."TOT_F"'
    end
    object BoletimMEDIA_ANUAL: TIBBCDField
      FieldName = 'MEDIA_ANUAL'
      Origin = '"BOLETIM"."MEDIA_ANUAL"'
      Precision = 4
      Size = 1
    end
    object BoletimEXAME: TIBBCDField
      FieldName = 'EXAME'
      Origin = '"BOLETIM"."EXAME"'
      Precision = 4
      Size = 1
    end
    object BoletimMEDIA_FINAL: TIBBCDField
      FieldName = 'MEDIA_FINAL'
      Origin = '"BOLETIM"."MEDIA_FINAL"'
      Precision = 4
      Size = 1
    end
    object BoletimACIMA_MEDIA: TIBStringField
      FieldName = 'ACIMA_MEDIA'
      Origin = '"BOLETIM"."ACIMA_MEDIA"'
      FixedChar = True
      Size = 1
    end
  end
  object dsBoletim: TDataSource
    DataSet = Boletim
    Left = 208
    Top = 310
  end
  object BoletimR: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from Boletim_R(:serie,:turma,:n_ini,:n_fin,:tp_bol,'
      '                    :bimestre,:tp_nota,:tp_recbim,:media)')
    Left = 152
    Top = 360
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
        Name = 'n_ini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'n_fin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tp_bol'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bimestre'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tp_nota'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tp_recbim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'media'
        ParamType = ptUnknown
      end>
    object BoletimRCOD_ALU: TIntegerField
      FieldName = 'COD_ALU'
      Origin = '"BOLETIM_R"."COD_ALU"'
    end
    object BoletimRNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"BOLETIM_R"."NOME"'
      Size = 60
    end
    object BoletimRCHAMADA: TSmallintField
      FieldName = 'CHAMADA'
      Origin = '"BOLETIM_R"."CHAMADA"'
    end
    object BoletimRSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"BOLETIM_R"."SEXO"'
      FixedChar = True
      Size = 1
    end
    object BoletimRDIS_NOME: TIBStringField
      FieldName = 'DIS_NOME'
      Origin = '"BOLETIM_R"."DIS_NOME"'
      Size = 40
    end
    object BoletimRN1: TIBBCDField
      FieldName = 'N1'
      Origin = '"BOLETIM_R"."N1"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object BoletimRN2: TIBBCDField
      FieldName = 'N2'
      Origin = '"BOLETIM_R"."N2"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object BoletimRN3: TIBBCDField
      FieldName = 'N3'
      Origin = '"BOLETIM_R"."N3"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object BoletimRN4: TIBBCDField
      FieldName = 'N4'
      Origin = '"BOLETIM_R"."N4"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object BoletimRR1: TIBBCDField
      FieldName = 'R1'
      Origin = '"BOLETIM_R"."R1"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object BoletimRR2: TIBBCDField
      FieldName = 'R2'
      Origin = '"BOLETIM_R"."R2"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object BoletimRR3: TIBBCDField
      FieldName = 'R3'
      Origin = '"BOLETIM_R"."R3"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object BoletimRR4: TIBBCDField
      FieldName = 'R4'
      Origin = '"BOLETIM_R"."R4"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object BoletimRM1: TIBBCDField
      FieldName = 'M1'
      Origin = '"BOLETIM_R"."M1"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object BoletimRM2: TIBBCDField
      FieldName = 'M2'
      Origin = '"BOLETIM_R"."M2"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object BoletimRM3: TIBBCDField
      FieldName = 'M3'
      Origin = '"BOLETIM_R"."M3"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object BoletimRM4: TIBBCDField
      FieldName = 'M4'
      Origin = '"BOLETIM_R"."M4"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object BoletimRF1: TSmallintField
      FieldName = 'F1'
      Origin = '"BOLETIM_R"."F1"'
    end
    object BoletimRF2: TSmallintField
      FieldName = 'F2'
      Origin = '"BOLETIM_R"."F2"'
    end
    object BoletimRF3: TSmallintField
      FieldName = 'F3'
      Origin = '"BOLETIM_R"."F3"'
    end
    object BoletimRF4: TSmallintField
      FieldName = 'F4'
      Origin = '"BOLETIM_R"."F4"'
    end
    object BoletimRTOT_F: TSmallintField
      FieldName = 'TOT_F'
      Origin = '"BOLETIM_R"."TOT_F"'
    end
    object BoletimRMEDIA_ANUAL: TIBBCDField
      FieldName = 'MEDIA_ANUAL'
      Origin = '"BOLETIM_R"."MEDIA_ANUAL"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object BoletimREXAME: TIBBCDField
      FieldName = 'EXAME'
      Origin = '"BOLETIM_R"."EXAME"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object BoletimRMEDIA_FINAL: TIBBCDField
      FieldName = 'MEDIA_FINAL'
      Origin = '"BOLETIM_R"."MEDIA_FINAL"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object BoletimRACIMA_MEDIA: TIBStringField
      FieldName = 'ACIMA_MEDIA'
      Origin = '"BOLETIM_R"."ACIMA_MEDIA"'
      FixedChar = True
      Size = 1
    end
    object BoletimRDIS_CODIGO: TIntegerField
      FieldName = 'DIS_CODIGO'
      Origin = '"BOLETIM_R"."DIS_CODIGO"'
    end
    object BoletimRMODALIDADE: TIBStringField
      FieldName = 'MODALIDADE'
      Origin = '"BOLETIM_R"."MODALIDADE"'
      FixedChar = True
      Size = 3
    end
    object BoletimROPCAOESPANHOL: TIBStringField
      FieldName = 'OPCAOESPANHOL'
      Origin = '"BOLETIM_R"."OPCAOESPANHOL"'
      FixedChar = True
      Size = 1
    end
    object BoletimROPCAO: TIBStringField
      FieldName = 'OPCAO'
      Origin = '"BOLETIM_R"."OPCAO"'
      FixedChar = True
      Size = 1
    end
    object BoletimRSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = '"BOLETIM_R"."SITUACAO"'
      FixedChar = True
      Size = 1
    end
  end
  object dsBoletimR: TDataSource
    DataSet = BoletimR
    Left = 208
    Top = 355
  end
  object NotasA: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    AfterPost = NotasAAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NOTAS'
      'where'
      '  ALUNO = :OLD_ALUNO and'
      '  DISCIPLINA = :OLD_DISCIPLINA and'
      '  BIMESTRE = :OLD_BIMESTRE')
    InsertSQL.Strings = (
      'insert into NOTAS'
      '  (NOTA1, NOTA2, NOTA3, NOTA4, NOTA5, NOTA6,NOTA, RECUPBIM, '
      'RECUPBIM1, RECUPBIM2,  RECUPBIM3)'
      'values'
      
        '  (:NOTA1, :NOTA2, :NOTA3, :NOTA4, :NOTA5, :NOTA6, :NOTA, :RECUP' +
        'BIM, '
      ':RECUPBIM1, :RECUPBIM2, :RECUPBIM3)')
    RefreshSQL.Strings = (
      'select A.*, B.CODIGO, B.NOME, B.FRENTES'
      'from NOTAS A'
      'inner join DISCIPLINAS B on B.CODIGO = A.DISCIPLINA'
      'where A.ALUNO = :aluno and'
      '          A.DISCIPLINA = :disciplina and'
      '          A.BIMESTRE = :bimestre')
    SelectSQL.Strings = (
      'select N.*, D.CODIGO, D.NOME, D.FRENTES, G.SEQUENCIA'
      'from NOTAS N'
      'inner join DISCIPLINAS D on D.CODIGO = N.DISCIPLINA'
      
        'inner join GRADE G on G.DISCIPLINA = D.CODIGO and G.SERIE = :ser' +
        'ie'
      'where N.ALUNO = :aluno and'
      '           N.BIMESTRE = :bimestre'
      'order by G.SEQUENCIA')
    ModifySQL.Strings = (
      'update NOTAS'
      'set'
      '  NOTA1 = :NOTA1,'
      '  NOTA2 = :NOTA2,'
      '  NOTA3 = :NOTA3,'
      '  NOTA4 = :NOTA4,'
      '  NOTA5 = :NOTA5,'
      '  NOTA6 = :NOTA6,'
      '  NOTA = :NOTA,'
      '  RECUPBIM = :RECUPBIM,'
      ''
      '  '
      '  RECUPBIM1 = :RECUPBIM1,'
      '  RECUPBIM2 = :RECUPBIM2,'
      '  RECUPBIM3 = :RECUPBIM3'
      'where'
      '  ALUNO = :OLD_ALUNO and'
      '  DISCIPLINA = :OLD_DISCIPLINA and'
      '  BIMESTRE = :OLD_BIMESTRE')
    Left = 280
    Top = 160
    object NotasAALUNO: TIntegerField
      FieldName = 'ALUNO'
      Required = True
    end
    object NotasADISCIPLINA: TIntegerField
      FieldName = 'DISCIPLINA'
      Required = True
    end
    object NotasABIMESTRE: TSmallintField
      FieldName = 'BIMESTRE'
      Required = True
    end
    object NotasANOTA1: TIBBCDField
      FieldName = 'NOTA1'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasANOTA2: TIBBCDField
      FieldName = 'NOTA2'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasANOTA3: TIBBCDField
      FieldName = 'NOTA3'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasANOTA4: TIBBCDField
      FieldName = 'NOTA4'
      Origin = 'NOTAS.NOTA4'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasANOTA5: TIBBCDField
      FieldName = 'NOTA5'
      Origin = '"NOTAS"."NOTA5"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasANOTA6: TIBBCDField
      FieldName = 'NOTA6'
      Origin = '"NOTAS"."NOTA6"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasANOTA: TIBBCDField
      FieldName = 'NOTA'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasARECUPBIM: TIBBCDField
      FieldName = 'RECUPBIM'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasARECUPBIM1: TIBBCDField
      FieldName = 'RECUPBIM1'
      Origin = 'NOTAS.RECUPBIM1'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasARECUPBIM2: TIBBCDField
      FieldName = 'RECUPBIM2'
      Origin = 'NOTAS.RECUPBIM2'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasARECUPBIM3: TIBBCDField
      FieldName = 'RECUPBIM3'
      Origin = '"NOTAS"."RECUPBIM3"'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object NotasANOME: TIBStringField
      FieldName = 'NOME'
      Size = 40
    end
    object NotasASEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
    end
    object NotasAFRENTES: TSmallintField
      FieldName = 'FRENTES'
      Origin = 'DISCIPLINAS.FRENTES'
    end
  end
  object dsNotasA: TDataSource
    DataSet = NotasA
    Left = 320
    Top = 160
  end
  object DiasLetivos: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from DIAS_LETIVOS'
      'where'
      '  DATA = :OLD_DATA')
    InsertSQL.Strings = (
      'insert into DIAS_LETIVOS'
      '  (DATA)'
      'values'
      '  (:DATA)')
    RefreshSQL.Strings = (
      'Select '
      '  DATA'
      'from DIAS_LETIVOS '
      'where'
      '  DATA = :DATA')
    SelectSQL.Strings = (
      'select * '
      'from DIAS_LETIVOS'
      'where DATA is not null'
      'order by DATA')
    ModifySQL.Strings = (
      'update DIAS_LETIVOS'
      'set'
      '  DATA = :DATA'
      'where'
      '  DATA = :OLD_DATA')
    Left = 152
    Top = 408
    object DiasLetivosDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
  end
  object dsDiasLetivos: TDataSource
    DataSet = DiasLetivos
    Left = 208
    Top = 408
  end
  object NotasBim: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from NOTAS_TURMA(:serie,:turma,:bimestre,:tipo)'
      'order by alu_nome')
    Left = 272
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
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    object NotasBimALU_COD: TIntegerField
      FieldName = 'ALU_COD'
      Origin = 'NOTAS_TURMA.ALU_COD'
      DisplayFormat = '.,0'
    end
    object NotasBimALU_CHAMADA: TSmallintField
      FieldName = 'ALU_CHAMADA'
      Origin = 'NOTAS_TURMA.ALU_CHAMADA'
    end
    object NotasBimALU_NOME: TIBStringField
      FieldName = 'ALU_NOME'
      Origin = 'NOTAS_TURMA.ALU_NOME'
      Size = 60
    end
    object NotasBimN_01: TIBBCDField
      FieldName = 'N_01'
      Origin = 'NOTAS_TURMA.N_01'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasBimN_02: TIBBCDField
      FieldName = 'N_02'
      Origin = 'NOTAS_TURMA.N_02'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasBimN_03: TIBBCDField
      FieldName = 'N_03'
      Origin = 'NOTAS_TURMA.N_03'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasBimN_04: TIBBCDField
      FieldName = 'N_04'
      Origin = 'NOTAS_TURMA.N_04'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasBimN_05: TIBBCDField
      FieldName = 'N_05'
      Origin = 'NOTAS_TURMA.N_05'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasBimN_06: TIBBCDField
      FieldName = 'N_06'
      Origin = 'NOTAS_TURMA.N_06'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasBimN_07: TIBBCDField
      FieldName = 'N_07'
      Origin = 'NOTAS_TURMA.N_07'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasBimN_08: TIBBCDField
      FieldName = 'N_08'
      Origin = 'NOTAS_TURMA.N_08'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasBimN_09: TIBBCDField
      FieldName = 'N_09'
      Origin = 'NOTAS_TURMA.N_09'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasBimN_10: TIBBCDField
      FieldName = 'N_10'
      Origin = 'NOTAS_TURMA.N_10'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasBimN_11: TIBBCDField
      FieldName = 'N_11'
      Origin = 'NOTAS_TURMA.N_11'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasBimN_12: TIBBCDField
      FieldName = 'N_12'
      Origin = 'NOTAS_TURMA.N_12'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasBimN_13: TIBBCDField
      FieldName = 'N_13'
      Origin = 'NOTAS_TURMA.N_13'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasBimN_14: TIBBCDField
      FieldName = 'N_14'
      Origin = 'NOTAS_TURMA.N_14'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasBimN_15: TIBBCDField
      FieldName = 'N_15'
      Origin = 'NOTAS_TURMA.N_15'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
  end
  object dsNotasBim: TDataSource
    DataSet = NotasBim
    Left = 328
    Top = 310
  end
  object Bimestres: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BIMESTRES'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into BIMESTRES'
      '  (CODIGO, DESCRICAO, INICIO, FIM)'
      'values'
      '  (:CODIGO, :DESCRICAO, :INICIO, :FIM)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  DESCRICAO,'
      '  INICIO,'
      '  FIM'
      'from BIMESTRES '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select *'
      'from BIMESTRES'
      'where CODIGO > 0'
      'order by CODIGO')
    ModifySQL.Strings = (
      'update BIMESTRES'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  INICIO = :INICIO,'
      '  FIM = :FIM'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 272
    Top = 263
    object BimestresCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'BIMESTRES.CODIGO'
      Required = True
    end
    object BimestresDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'BIMESTRES.DESCRICAO'
      Size = 15
    end
    object BimestresINICIO: TDateField
      FieldName = 'INICIO'
      Origin = 'BIMESTRES.INICIO'
    end
    object BimestresFIM: TDateField
      FieldName = 'FIM'
      Origin = 'BIMESTRES.FIM'
    end
  end
  object dsBimestres: TDataSource
    DataSet = Bimestres
    Left = 336
    Top = 263
  end
  object AluRecup: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from ALU_RECUP_BIM(:serie,:turma,:bimestre,:media)'
      'order by alu_nome')
    Left = 272
    Top = 355
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
    object AluRecupALU_COD: TIntegerField
      FieldName = 'ALU_COD'
      Origin = 'ALU_RECUP_BIM.ALU_COD'
    end
    object AluRecupALU_CHAMADA: TSmallintField
      FieldName = 'ALU_CHAMADA'
      Origin = 'ALU_RECUP_BIM.ALU_CHAMADA'
    end
    object AluRecupALU_NOME: TIBStringField
      FieldName = 'ALU_NOME'
      Origin = 'ALU_RECUP_BIM.ALU_NOME'
      Size = 60
    end
    object AluRecupN_01: TIBStringField
      DisplayWidth = 6
      FieldName = 'N_01'
      Origin = 'ALU_RECUP_BIM.N_01'
      Size = 6
    end
    object AluRecupN_02: TIBStringField
      DisplayWidth = 6
      FieldName = 'N_02'
      Origin = 'ALU_RECUP_BIM.N_02'
      Size = 6
    end
    object AluRecupN_03: TIBStringField
      DisplayWidth = 6
      FieldName = 'N_03'
      Origin = 'ALU_RECUP_BIM.N_03'
      Size = 6
    end
    object AluRecupN_04: TIBStringField
      DisplayWidth = 6
      FieldName = 'N_04'
      Origin = 'ALU_RECUP_BIM.N_04'
      Size = 6
    end
    object AluRecupN_05: TIBStringField
      DisplayWidth = 6
      FieldName = 'N_05'
      Origin = 'ALU_RECUP_BIM.N_05'
      Size = 6
    end
    object AluRecupN_06: TIBStringField
      DisplayWidth = 6
      FieldName = 'N_06'
      Origin = 'ALU_RECUP_BIM.N_06'
      Size = 6
    end
    object AluRecupN_07: TIBStringField
      DisplayWidth = 6
      FieldName = 'N_07'
      Origin = 'ALU_RECUP_BIM.N_07'
      Size = 6
    end
    object AluRecupN_08: TIBStringField
      DisplayWidth = 6
      FieldName = 'N_08'
      Origin = 'ALU_RECUP_BIM.N_08'
      Size = 6
    end
    object AluRecupN_09: TIBStringField
      DisplayWidth = 6
      FieldName = 'N_09'
      Origin = 'ALU_RECUP_BIM.N_09'
      Size = 6
    end
    object AluRecupN_10: TIBStringField
      DisplayWidth = 6
      FieldName = 'N_10'
      Origin = 'ALU_RECUP_BIM.N_10'
      Size = 6
    end
    object AluRecupN_11: TIBStringField
      DisplayWidth = 6
      FieldName = 'N_11'
      Origin = 'ALU_RECUP_BIM.N_11'
      Size = 6
    end
    object AluRecupN_12: TIBStringField
      FieldName = 'N_12'
      Origin = 'ALU_RECUP_BIM.N_12'
      Size = 6
    end
    object AluRecupN_13: TIBStringField
      DisplayWidth = 6
      FieldName = 'N_13'
      Origin = 'ALU_RECUP_BIM.N_13'
      Size = 6
    end
    object AluRecupN_14: TIBStringField
      FieldName = 'N_14'
      Origin = 'ALU_RECUP_BIM.N_14'
      Size = 6
    end
    object AluRecupN_15: TIBStringField
      DisplayWidth = 6
      FieldName = 'N_15'
      Origin = 'ALU_RECUP_BIM.N_15'
      Size = 6
    end
    object AluRecupN_16: TIBStringField
      DisplayWidth = 6
      FieldName = 'N_16'
      Origin = 'ALU_RECUP_BIM.N_16'
      Size = 6
    end
    object AluRecupN_17: TIBStringField
      DisplayWidth = 6
      FieldName = 'N_17'
      Origin = 'ALU_RECUP_BIM.N_17'
      Size = 6
    end
    object AluRecupN_18: TIBStringField
      DisplayWidth = 6
      FieldName = 'N_18'
      Origin = 'ALU_RECUP_BIM.N_18'
      Size = 6
    end
    object AluRecupN_19: TIBStringField
      DisplayWidth = 6
      FieldName = 'N_19'
      Origin = 'ALU_RECUP_BIM.N_19'
      Size = 6
    end
    object AluRecupN_20: TIBStringField
      DisplayWidth = 6
      FieldName = 'N_20'
      Origin = 'ALU_RECUP_BIM.N_20'
      Size = 6
    end
  end
  object dsAluRecup: TDataSource
    DataSet = AluRecup
    Left = 328
    Top = 355
  end
  object MapaFin: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MAPA_FIN(:serie,:turma)')
    Left = 272
    Top = 408
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
    object MapaFinALU_COD: TIntegerField
      FieldName = 'ALU_COD'
      Origin = 'MAPA_FIN.ALU_COD'
    end
    object MapaFinALU_NOME: TIBStringField
      FieldName = 'ALU_NOME'
      Origin = 'MAPA_FIN.ALU_NOME'
      Size = 60
    end
    object MapaFinALU_VENCIMENTO: TSmallintField
      FieldName = 'ALU_VENCIMENTO'
      Origin = 'MAPA_FIN.ALU_VENCIMENTO'
    end
    object MapaFinALU_BOLSA: TIBBCDField
      FieldName = 'ALU_BOLSA'
      Origin = 'MAPA_FIN.ALU_BOLSA'
      DisplayFormat = '##0-%'
      Precision = 9
      Size = 2
    end
    object MapaFinALU_STATUS: TIBStringField
      FieldName = 'ALU_STATUS'
      Origin = 'MAPA_FIN.ALU_STATUS'
      FixedChar = True
      Size = 1
    end
    object MapaFinALU_MATERIAL: TIBStringField
      FieldName = 'ALU_MATERIAL'
      Origin = 'MAPA_FIN.ALU_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object MapaFinVAL_01: TIBBCDField
      FieldName = 'VAL_01'
      Origin = 'MAPA_FIN.VAL_01'
      currency = True
      Precision = 9
      Size = 2
    end
    object MapaFinDATA_01: TDateField
      FieldName = 'DATA_01'
      Origin = 'MAPA_FIN.DATA_01'
    end
    object MapaFinTP_01: TSmallintField
      FieldName = 'TP_01'
      Origin = 'MAPA_FIN.TP_01'
    end
    object MapaFinVAL_02: TIBBCDField
      FieldName = 'VAL_02'
      Origin = 'MAPA_FIN.VAL_02'
      currency = True
      Precision = 9
      Size = 2
    end
    object MapaFinDATA_02: TDateField
      FieldName = 'DATA_02'
      Origin = 'MAPA_FIN.DATA_02'
    end
    object MapaFinTP_02: TSmallintField
      FieldName = 'TP_02'
      Origin = 'MAPA_FIN.TP_02'
    end
    object MapaFinVAL_03: TIBBCDField
      FieldName = 'VAL_03'
      Origin = 'MAPA_FIN.VAL_03'
      currency = True
      Precision = 9
      Size = 2
    end
    object MapaFinDATA_03: TDateField
      FieldName = 'DATA_03'
      Origin = 'MAPA_FIN.DATA_03'
    end
    object MapaFinTP_03: TSmallintField
      FieldName = 'TP_03'
      Origin = 'MAPA_FIN.TP_03'
    end
    object MapaFinVAL_04: TIBBCDField
      FieldName = 'VAL_04'
      Origin = 'MAPA_FIN.VAL_04'
      currency = True
      Precision = 9
      Size = 2
    end
    object MapaFinDATA_04: TDateField
      FieldName = 'DATA_04'
      Origin = 'MAPA_FIN.DATA_04'
    end
    object MapaFinTP_04: TSmallintField
      FieldName = 'TP_04'
      Origin = 'MAPA_FIN.TP_04'
    end
    object MapaFinVAL_05: TIBBCDField
      FieldName = 'VAL_05'
      Origin = 'MAPA_FIN.VAL_05'
      currency = True
      Precision = 9
      Size = 2
    end
    object MapaFinDATA_05: TDateField
      FieldName = 'DATA_05'
      Origin = 'MAPA_FIN.DATA_05'
    end
    object MapaFinTP_05: TSmallintField
      FieldName = 'TP_05'
      Origin = 'MAPA_FIN.TP_05'
    end
    object MapaFinVAL_06: TIBBCDField
      FieldName = 'VAL_06'
      Origin = 'MAPA_FIN.VAL_06'
      currency = True
      Precision = 9
      Size = 2
    end
    object MapaFinDATA_06: TDateField
      FieldName = 'DATA_06'
      Origin = 'MAPA_FIN.DATA_06'
    end
    object MapaFinTP_06: TSmallintField
      FieldName = 'TP_06'
      Origin = 'MAPA_FIN.TP_06'
    end
    object MapaFinVAL_07: TIBBCDField
      FieldName = 'VAL_07'
      Origin = 'MAPA_FIN.VAL_07'
      currency = True
      Precision = 9
      Size = 2
    end
    object MapaFinDATA_07: TDateField
      FieldName = 'DATA_07'
      Origin = 'MAPA_FIN.DATA_07'
    end
    object MapaFinTP_07: TSmallintField
      FieldName = 'TP_07'
      Origin = 'MAPA_FIN.TP_07'
    end
    object MapaFinVAL_08: TIBBCDField
      FieldName = 'VAL_08'
      Origin = 'MAPA_FIN.VAL_08'
      currency = True
      Precision = 9
      Size = 2
    end
    object MapaFinDATA_08: TDateField
      FieldName = 'DATA_08'
      Origin = 'MAPA_FIN.DATA_08'
    end
    object MapaFinTP_08: TSmallintField
      FieldName = 'TP_08'
      Origin = 'MAPA_FIN.TP_08'
    end
    object MapaFinVAL_09: TIBBCDField
      FieldName = 'VAL_09'
      Origin = 'MAPA_FIN.VAL_09'
      currency = True
      Precision = 9
      Size = 2
    end
    object MapaFinDATA_09: TDateField
      FieldName = 'DATA_09'
      Origin = 'MAPA_FIN.DATA_09'
    end
    object MapaFinTP_09: TSmallintField
      FieldName = 'TP_09'
      Origin = 'MAPA_FIN.TP_09'
    end
    object MapaFinVAL_10: TIBBCDField
      FieldName = 'VAL_10'
      Origin = 'MAPA_FIN.VAL_10'
      currency = True
      Precision = 9
      Size = 2
    end
    object MapaFinDATA_10: TDateField
      FieldName = 'DATA_10'
      Origin = 'MAPA_FIN.DATA_10'
    end
    object MapaFinTP_10: TSmallintField
      FieldName = 'TP_10'
      Origin = 'MAPA_FIN.TP_10'
    end
    object MapaFinVAL_11: TIBBCDField
      FieldName = 'VAL_11'
      Origin = 'MAPA_FIN.VAL_11'
      currency = True
      Precision = 9
      Size = 2
    end
    object MapaFinDATA_11: TDateField
      FieldName = 'DATA_11'
      Origin = 'MAPA_FIN.DATA_11'
    end
    object MapaFinTP_11: TSmallintField
      FieldName = 'TP_11'
      Origin = 'MAPA_FIN.TP_11'
    end
    object MapaFinVAL_12: TIBBCDField
      FieldName = 'VAL_12'
      Origin = 'MAPA_FIN.VAL_12'
      currency = True
      Precision = 9
      Size = 2
    end
    object MapaFinDATA_12: TDateField
      FieldName = 'DATA_12'
      Origin = 'MAPA_FIN.DATA_12'
    end
    object MapaFinTP_12: TSmallintField
      FieldName = 'TP_12'
      Origin = 'MAPA_FIN.TP_12'
    end
    object ibstrngfldMapaFinCON2: TIBStringField
      FieldName = 'CON2'
      Origin = '"MAPA_FIN"."CON2"'
      FixedChar = True
      Size = 1
    end
    object ibstrngfldMapaFinCON3: TIBStringField
      FieldName = 'CON3'
      Origin = '"MAPA_FIN"."CON3"'
      FixedChar = True
      Size = 1
    end
    object ibstrngfldMapaFinCON4: TIBStringField
      FieldName = 'CON4'
      Origin = '"MAPA_FIN"."CON4"'
      FixedChar = True
      Size = 1
    end
    object ibstrngfldMapaFinCON5: TIBStringField
      FieldName = 'CON5'
      Origin = '"MAPA_FIN"."CON5"'
      FixedChar = True
      Size = 1
    end
    object ibstrngfldMapaFinCON6: TIBStringField
      FieldName = 'CON6'
      Origin = '"MAPA_FIN"."CON6"'
      FixedChar = True
      Size = 1
    end
    object ibstrngfldMapaFinCON7: TIBStringField
      FieldName = 'CON7'
      Origin = '"MAPA_FIN"."CON7"'
      FixedChar = True
      Size = 1
    end
    object ibstrngfldMapaFinCON8: TIBStringField
      FieldName = 'CON8'
      Origin = '"MAPA_FIN"."CON8"'
      FixedChar = True
      Size = 1
    end
    object ibstrngfldMapaFinCON9: TIBStringField
      FieldName = 'CON9'
      Origin = '"MAPA_FIN"."CON9"'
      FixedChar = True
      Size = 1
    end
    object ibstrngfldMapaFinCON10: TIBStringField
      FieldName = 'CON10'
      Origin = '"MAPA_FIN"."CON10"'
      FixedChar = True
      Size = 1
    end
    object ibstrngfldMapaFinCON11: TIBStringField
      FieldName = 'CON11'
      Origin = '"MAPA_FIN"."CON11"'
      FixedChar = True
      Size = 1
    end
    object ibstrngfldMapaFinCON12: TIBStringField
      FieldName = 'CON12'
      Origin = '"MAPA_FIN"."CON12"'
      FixedChar = True
      Size = 1
    end
    object MapaFinMES2: TIBStringField
      FieldName = 'MES2'
      Origin = '"MAPA_FIN"."MES2"'
      Size = 15
    end
    object MapaFinMES3: TIBStringField
      FieldName = 'MES3'
      Origin = '"MAPA_FIN"."MES3"'
      Size = 15
    end
    object MapaFinMES4: TIBStringField
      FieldName = 'MES4'
      Origin = '"MAPA_FIN"."MES4"'
      Size = 15
    end
    object MapaFinMES5: TIBStringField
      FieldName = 'MES5'
      Origin = '"MAPA_FIN"."MES5"'
      Size = 15
    end
    object MapaFinMES6: TIBStringField
      FieldName = 'MES6'
      Origin = '"MAPA_FIN"."MES6"'
      Size = 15
    end
    object MapaFinMES7: TIBStringField
      FieldName = 'MES7'
      Origin = '"MAPA_FIN"."MES7"'
      Size = 15
    end
    object MapaFinMES8: TIBStringField
      FieldName = 'MES8'
      Origin = '"MAPA_FIN"."MES8"'
      Size = 15
    end
    object MapaFinMES9: TIBStringField
      FieldName = 'MES9'
      Origin = '"MAPA_FIN"."MES9"'
      Size = 15
    end
    object MapaFinMES10: TIBStringField
      FieldName = 'MES10'
      Origin = '"MAPA_FIN"."MES10"'
      Size = 15
    end
    object MapaFinMES11: TIBStringField
      FieldName = 'MES11'
      Origin = '"MAPA_FIN"."MES11"'
      Size = 15
    end
    object MapaFinMES12: TIBStringField
      FieldName = 'MES12'
      Origin = '"MAPA_FIN"."MES12"'
      Size = 15
    end
  end
  object dsMapaFin: TDataSource
    DataSet = MapaFin
    Left = 344
    Top = 408
  end
  object FaltasDia: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    AfterCancel = AlunosAfterInsert
    OnCalcFields = FaltasDiaCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select MAX(A.CODIGO) as Codigo,'
      '          MAX(A.CHAMADA) as Chamada,'
      '          MAX(A.NOME) as Nome, '
      '          MAX(A.SERIE) as Serie,'
      '          MAX(A.TURMA) as Turma,'
      '          MAX(A.FONE) as Fone,'
      '          MAX(T.CURSINHO) as Cursinho,'
      '          MAX(A.PAI_NOME) as Pai,'
      '          MAX(A.MAE_NOME) as Mae,'
      '          MAX(A.ENDERECO) as Endereco,'
      '          MAX(A.COMPLEMENTO) as Comp,'
      '          MAX(A.BAIRRO) as Bairro,'
      '          MAX(A.CIDADE) as Cidade,'
      '          MAX(A.UF) as UF,'
      '          MAX(A.CEP) as Cep,'
      '          MAX(F.DATA) as Data,'
      '          MAX(F.OBS) as Observacao,'
      '          MAX(F.AULA) as Aula,'
      '          SUM(F.QTDADE) as Qtdade'
      'from FALTAS F join ALUNOS A on  A.CODIGO = F.ALU_CODIGO '
      'join TURMAS T on (T.SERIE = A.SERIE and T.TURMA = A.TURMA)'
      'where F.DATA = :Data and A.STATUS = '#39'A'#39
      'group by T.SERIE, T.TURMA, A.CODIGO'
      'having SUM(F.QTDADE) >= 2 '
      'order by T.SERIE, T.TURMA, A.CODIGO')
    Left = 392
    Top = 8
    object FaltasDiaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object FaltasDiaCHAMADA: TSmallintField
      FieldName = 'CHAMADA'
    end
    object FaltasDiaNOME: TIBStringField
      FieldName = 'NOME'
      Size = 60
    end
    object FaltasDiaSERIE: TSmallintField
      FieldName = 'SERIE'
    end
    object FaltasDiaTURMA: TIBStringField
      FieldName = 'TURMA'
      FixedChar = True
      Size = 1
    end
    object FaltasDiaFONE: TIBStringField
      FieldName = 'FONE'
      Size = 30
    end
    object FaltasDiaQTDADE: TLargeintField
      FieldName = 'QTDADE'
    end
    object FaltasDiaDATA: TDateField
      FieldName = 'DATA'
    end
    object FaltasDiaSerieX: TStringField
      FieldKind = fkCalculated
      FieldName = 'SerieX'
      Size = 15
      Calculated = True
    end
    object FaltasDiaPAI: TIBStringField
      FieldName = 'PAI'
      Size = 50
    end
    object FaltasDiaMAE: TIBStringField
      FieldName = 'MAE'
      Size = 50
    end
    object FaltasDiaCURSINHO: TSmallintField
      FieldName = 'CURSINHO'
    end
    object FaltasDiaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object FaltasDiaCOMP: TIBStringField
      FieldName = 'COMP'
    end
    object FaltasDiaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
    end
    object FaltasDiaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 25
    end
    object FaltasDiaUF: TIBStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object FaltasDiaCEP: TIBStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object FaltasDiaOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Size = 100
    end
    object FaltasDiaAULA: TSmallintField
      FieldName = 'AULA'
    end
  end
  object dsFaltasDia: TDataSource
    DataSet = FaltasDia
    Left = 448
    Top = 8
  end
  object AlunosT: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME,'
      '  CHAMADA,'
      '  DATA_MATRICULA'
      'from ALUNOS '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CODIGO, CHAMADA, NOME, DATA_MATRICULA'
      'from ALUNOS'
      'where SERIE = :serie and TURMA = :turma'
      'order by NOME')
    ModifySQL.Strings = (
      'update ALUNOS'
      'set'
      '  CODIGO = :CODIGO,'
      '  CHAMADA = :CHAMADA,'
      '  NOME = :NOME,'
      '  DATA_MATRICULA = :DATA_MATRICULA'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 392
    Top = 58
    object AlunosTCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ALUNOS.CODIGO'
      Required = True
    end
    object AlunosTCHAMADA: TSmallintField
      FieldName = 'CHAMADA'
      Origin = 'ALUNOS.CHAMADA'
    end
    object AlunosTNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'ALUNOS.NOME'
      Required = True
      Size = 60
    end
    object AlunosTDATA_MATRICULA: TDateField
      FieldName = 'DATA_MATRICULA'
      Origin = 'ALUNOS.DATA_MATRICULA'
    end
  end
  object dsAlunosT: TDataSource
    DataSet = AlunosT
    Left = 448
    Top = 58
  end
  object MediasAno: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from MEDIAS_ANUAIS(:serie,:turma)'
      'order by ALU_NOME'
      ''
      ''
      '')
    Left = 392
    Top = 112
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
    object MediasAnoALU_COD: TIntegerField
      FieldName = 'ALU_COD'
      Origin = 'MEDIAS_ANUAIS.ALU_COD'
    end
    object MediasAnoALU_CHAMADA: TSmallintField
      FieldName = 'ALU_CHAMADA'
      Origin = 'MEDIAS_ANUAIS.ALU_CHAMADA'
    end
    object MediasAnoALU_NOME: TIBStringField
      FieldName = 'ALU_NOME'
      Origin = 'MEDIAS_ANUAIS.ALU_NOME'
      Size = 60
    end
    object MediasAnoALU_STATUS: TIBStringField
      FieldName = 'ALU_STATUS'
      Origin = 'MEDIAS_ANUAIS.ALU_STATUS'
      FixedChar = True
      Size = 1
    end
    object MediasAnoM_01: TIBBCDField
      FieldName = 'M_01'
      Origin = 'MEDIAS_ANUAIS.M_01'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MediasAnoM_02: TIBBCDField
      FieldName = 'M_02'
      Origin = 'MEDIAS_ANUAIS.M_02'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MediasAnoM_03: TIBBCDField
      FieldName = 'M_03'
      Origin = 'MEDIAS_ANUAIS.M_03'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MediasAnoM_04: TIBBCDField
      FieldName = 'M_04'
      Origin = 'MEDIAS_ANUAIS.M_04'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MediasAnoM_05: TIBBCDField
      FieldName = 'M_05'
      Origin = 'MEDIAS_ANUAIS.M_05'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MediasAnoM_06: TIBBCDField
      FieldName = 'M_06'
      Origin = 'MEDIAS_ANUAIS.M_06'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MediasAnoM_07: TIBBCDField
      FieldName = 'M_07'
      Origin = 'MEDIAS_ANUAIS.M_07'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MediasAnoM_08: TIBBCDField
      FieldName = 'M_08'
      Origin = 'MEDIAS_ANUAIS.M_08'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MediasAnoM_09: TIBBCDField
      FieldName = 'M_09'
      Origin = 'MEDIAS_ANUAIS.M_09'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MediasAnoM_10: TIBBCDField
      FieldName = 'M_10'
      Origin = 'MEDIAS_ANUAIS.M_10'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MediasAnoM_11: TIBBCDField
      FieldName = 'M_11'
      Origin = 'MEDIAS_ANUAIS.M_11'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MediasAnoM_12: TIBBCDField
      FieldName = 'M_12'
      Origin = 'MEDIAS_ANUAIS.M_12'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MediasAnoM_13: TIBBCDField
      FieldName = 'M_13'
      Origin = 'MEDIAS_ANUAIS.M_13'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MediasAnoM_14: TIBBCDField
      FieldName = 'M_14'
      Origin = 'MEDIAS_ANUAIS.M_14'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MediasAnoM_15: TIBBCDField
      FieldName = 'M_15'
      Origin = 'MEDIAS_ANUAIS.M_15'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MediasAnoM_16: TIBBCDField
      FieldName = 'M_16'
      Origin = 'MEDIAS_ANUAIS.M_16'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MediasAnoM_17: TIBBCDField
      FieldName = 'M_17'
      Origin = 'MEDIAS_ANUAIS.M_17'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MediasAnoM_18: TIBBCDField
      FieldName = 'M_18'
      Origin = 'MEDIAS_ANUAIS.M_18'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MediasAnoRESULTADO: TIBStringField
      FieldName = 'RESULTADO'
      Origin = 'MEDIAS_ANUAIS.RESULTADO'
      Size = 15
    end
  end
  object dsMediasAno: TDataSource
    DataSet = MediasAno
    Left = 456
    Top = 112
  end
  object HistNotas: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    AfterPost = HistNotasAfterPost
    BeforePost = HistNotasBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from HIST_NOTAS'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  DISCIPLINA = :OLD_DISCIPLINA')
    InsertSQL.Strings = (
      'insert into HIST_NOTAS'
      '  (CODIGO, DISCIPLINA, NOTA1, CH1, NOTA2, CH2, NOTA3, CH3)'
      'values'
      
        '  (:CODIGO, :DISCIPLINA, :NOTA1, :CH1, :NOTA2, :CH2, :NOTA3, :CH' +
        '3)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  DISCIPLINA,'
      '  NOTA1,'
      '  CH1,'
      '  NOTA2,'
      '  CH2,'
      '  NOTA3,'
      '  CH3'
      'from HIST_NOTAS '
      'where'
      '  CODIGO = :CODIGO and'
      '  DISCIPLINA = :DISCIPLINA')
    SelectSQL.Strings = (
      'select * '
      'from HIST_NOTAS'
      'where CODIGO = :codigo')
    ModifySQL.Strings = (
      'update HIST_NOTAS'
      'set'
      '  CODIGO = :CODIGO,'
      '  DISCIPLINA = :DISCIPLINA,'
      '  NOTA1 = :NOTA1,'
      '  CH1 = :CH1,'
      '  NOTA2 = :NOTA2,'
      '  CH2 = :CH2,'
      '  NOTA3 = :NOTA3,'
      '  CH3 = :CH3'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  DISCIPLINA = :OLD_DISCIPLINA')
    DataSource = dsAlunos
    Left = 23
    Top = 112
    object HistNotasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'HIST_NOTAS.CODIGO'
    end
    object HistNotasDISCIPLINA: TIntegerField
      DisplayLabel = 'Disciplina'
      FieldName = 'DISCIPLINA'
      Origin = 'HIST_NOTAS.DISCIPLINA'
    end
    object HistNotasNOTA1: TIBBCDField
      DisplayLabel = 'Nota'
      FieldName = 'NOTA1'
      Origin = 'HIST_NOTAS.NOTA1'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object HistNotasCH1: TIntegerField
      DisplayLabel = 'CH'
      FieldName = 'CH1'
      Origin = 'HIST_NOTAS.CH1'
    end
    object HistNotasNOTA2: TIBBCDField
      DisplayLabel = 'Nota'
      FieldName = 'NOTA2'
      Origin = 'HIST_NOTAS.NOTA2'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object HistNotasCH2: TIntegerField
      DisplayLabel = 'CH'
      FieldName = 'CH2'
      Origin = 'HIST_NOTAS.CH2'
    end
    object HistNotasNOTA3: TIBBCDField
      DisplayLabel = 'Nota'
      FieldName = 'NOTA3'
      Origin = 'HIST_NOTAS.NOTA3'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object HistNotasCH3: TIntegerField
      DisplayLabel = 'CH'
      FieldName = 'CH3'
      Origin = 'HIST_NOTAS.CH3'
    end
    object HistNotasDisciplinaX: TStringField
      FieldKind = fkLookup
      FieldName = 'DisciplinaX'
      LookupDataSet = Disciplinas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'DISCIPLINA'
      Size = 40
      Lookup = True
    end
  end
  object dsHistNotas: TDataSource
    DataSet = HistNotas
    Left = 84
    Top = 112
  end
  object TotAl: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select count(CODIGO) as Total'
      'from ALUNOS'
      'where STATUS='#39'A'#39)
    Left = 392
    Top = 160
    object TotAlTOTAL: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Required = True
      Calculated = True
    end
  end
  object dsTotAl: TDataSource
    DataSet = TotAl
    Left = 448
    Top = 160
  end
  object Estatistica: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ESTAT_ALUNOS')
    Left = 616
    Top = 164
    object EstatisticaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'ESTAT_ALUNOS.DESCRICAO'
      FixedChar = True
    end
    object EstatisticaREMATRICULADOS: TIntegerField
      FieldName = 'REMATRICULADOS'
      Origin = 'ESTAT_ALUNOS.REMATRICULADOS'
    end
    object EstatisticaNOVOS: TIntegerField
      FieldName = 'NOVOS'
      Origin = 'ESTAT_ALUNOS.NOVOS'
    end
    object EstatisticaATIVOS: TIntegerField
      FieldName = 'ATIVOS'
      Origin = 'ESTAT_ALUNOS.ATIVOS'
    end
    object EstatisticaDESISTENTES: TIntegerField
      FieldName = 'DESISTENTES'
      Origin = 'ESTAT_ALUNOS.DESISTENTES'
    end
    object EstatisticaTRANSFERIDOS: TIntegerField
      FieldName = 'TRANSFERIDOS'
      Origin = 'ESTAT_ALUNOS.TRANSFERIDOS'
    end
    object EstatisticaOUTROS: TIntegerField
      FieldName = 'OUTROS'
      Origin = 'ESTAT_ALUNOS.OUTROS'
    end
    object EstatisticaMAT_SIM: TIntegerField
      FieldName = 'MAT_SIM'
      Origin = 'ESTAT_ALUNOS.MAT_SIM'
    end
    object EstatisticaMAT_NAO: TIntegerField
      FieldName = 'MAT_NAO'
      Origin = 'ESTAT_ALUNOS.MAT_NAO'
    end
    object EstatisticaN_ATIVOS: TIntegerField
      FieldName = 'N_ATIVOS'
      Origin = 'ESTAT_ALUNOS.N_ATIVOS'
    end
  end
  object MedAta: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from MEDIAS_FINAIS_ATA(:serie,:turma)'
      'order by alu_chamada, alu_nome'
      '')
    Left = 392
    Top = 262
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
    object MedAtaALU_COD: TIntegerField
      FieldName = 'ALU_COD'
      Origin = 'MEDIAS_FINAIS_ATA.ALU_COD'
    end
    object MedAtaALU_CHAMADA: TSmallintField
      FieldName = 'ALU_CHAMADA'
      Origin = 'MEDIAS_FINAIS_ATA.ALU_CHAMADA'
    end
    object MedAtaALU_NOME: TIBStringField
      FieldName = 'ALU_NOME'
      Origin = 'MEDIAS_FINAIS_ATA.ALU_NOME'
      Size = 60
    end
    object MedAtaALU_STATUS: TIBStringField
      FieldName = 'ALU_STATUS'
      Origin = 'MEDIAS_FINAIS_ATA.ALU_STATUS'
      FixedChar = True
      Size = 1
    end
    object MedAtaM_01: TIBBCDField
      FieldName = 'M_01'
      Origin = 'MEDIAS_FINAIS_ATA.M_01'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MedAtaM_02: TIBBCDField
      FieldName = 'M_02'
      Origin = 'MEDIAS_FINAIS_ATA.M_02'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MedAtaM_03: TIBBCDField
      FieldName = 'M_03'
      Origin = 'MEDIAS_FINAIS_ATA.M_03'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MedAtaM_04: TIBBCDField
      FieldName = 'M_04'
      Origin = 'MEDIAS_FINAIS_ATA.M_04'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MedAtaM_05: TIBBCDField
      FieldName = 'M_05'
      Origin = 'MEDIAS_FINAIS_ATA.M_05'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MedAtaM_06: TIBBCDField
      FieldName = 'M_06'
      Origin = 'MEDIAS_FINAIS_ATA.M_06'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MedAtaM_07: TIBBCDField
      FieldName = 'M_07'
      Origin = 'MEDIAS_FINAIS_ATA.M_07'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MedAtaM_08: TIBBCDField
      FieldName = 'M_08'
      Origin = 'MEDIAS_FINAIS_ATA.M_08'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MedAtaM_09: TIBBCDField
      FieldName = 'M_09'
      Origin = 'MEDIAS_FINAIS_ATA.M_09'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MedAtaM_10: TIBBCDField
      FieldName = 'M_10'
      Origin = 'MEDIAS_FINAIS_ATA.M_10'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MedAtaM_11: TIBBCDField
      FieldName = 'M_11'
      Origin = 'MEDIAS_FINAIS_ATA.M_11'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MedAtaM_12: TIBBCDField
      FieldName = 'M_12'
      Origin = 'MEDIAS_FINAIS_ATA.M_12'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MedAtaM_13: TIBBCDField
      FieldName = 'M_13'
      Origin = 'MEDIAS_FINAIS_ATA.M_13'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MedAtaM_14: TIBBCDField
      FieldName = 'M_14'
      Origin = 'MEDIAS_FINAIS_ATA.M_14'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MedAtaM_15: TIBBCDField
      FieldName = 'M_15'
      Origin = 'MEDIAS_FINAIS_ATA.M_15'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MedAtaM_16: TIBBCDField
      FieldName = 'M_16'
      Origin = 'MEDIAS_FINAIS_ATA.M_16'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MedAtaM_17: TIBBCDField
      FieldName = 'M_17'
      Origin = 'MEDIAS_FINAIS_ATA.M_17'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MedAtaM_18: TIBBCDField
      FieldName = 'M_18'
      Origin = 'MEDIAS_FINAIS_ATA.M_18'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MedAtaRESULTADO: TIBStringField
      FieldName = 'RESULTADO'
      Origin = 'MEDIAS_FINAIS_ATA.RESULTADO'
      Size = 15
    end
    object MedAtaMODALIDADE: TIBStringField
      FieldName = 'MODALIDADE'
      Origin = '"MEDIAS_FINAIS_ATA"."MODALIDADE"'
      FixedChar = True
      Size = 3
    end
  end
  object dsMedAta: TDataSource
    DataSet = MedAta
    Left = 448
    Top = 262
  end
  object EstatTur: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    OnCalcFields = EstatTurCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(SERIE) as Seriea,'
      '          max(TURMA) as Turmaa,'
      '          count(*) as Qtd'
      'from ALUNOS'
      'where STATUS = '#39'A'#39
      'group by Serie,Turma')
    Left = 680
    Top = 164
    object EstatTurQTD: TIntegerField
      FieldName = 'QTD'
      Required = True
    end
    object EstatTurSerieX: TStringField
      FieldKind = fkCalculated
      FieldName = 'SerieX'
      Calculated = True
    end
    object EstatTurSERIEA: TSmallintField
      FieldName = 'SERIEA'
    end
    object EstatTurTURMAA: TIBStringField
      FieldName = 'TURMAA'
      FixedChar = True
      Size = 1
    end
  end
  object Mat_Lecionada: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MAT_LECIONADA'
      'where'
      '  SERIE = :OLD_SERIE and'
      '  BIMESTRE = :OLD_BIMESTRE and'
      '  DISCIPLINA = :OLD_DISCIPLINA')
    InsertSQL.Strings = (
      'insert into MAT_LECIONADA'
      '  (SERIE, BIMESTRE, DISCIPLINA, CONTEUDO)'
      'values'
      '  (:SERIE, :BIMESTRE, :DISCIPLINA, :CONTEUDO)')
    RefreshSQL.Strings = (
      'Select '
      '  SERIE,'
      '  BIMESTRE,'
      '  DISCIPLINA,'
      '  CONTEUDO'
      'from MAT_LECIONADA '
      'where'
      '  SERIE = :SERIE and'
      '  BIMESTRE = :BIMESTRE and'
      '  DISCIPLINA = :DISCIPLINA')
    SelectSQL.Strings = (
      'select * '
      'from MAT_LECIONADA'
      'where '
      '   DISCIPLINA = :disciplina and'
      '   SERIE = :serie and '
      '   BIMESTRE = :bimestre'
      'order by DISCIPLINA, SERIE, BIMESTRE')
    ModifySQL.Strings = (
      'update MAT_LECIONADA'
      'set'
      '  SERIE = :SERIE,'
      '  BIMESTRE = :BIMESTRE,'
      '  DISCIPLINA = :DISCIPLINA,'
      '  CONTEUDO = :CONTEUDO'
      'where'
      '  SERIE = :OLD_SERIE and'
      '  BIMESTRE = :OLD_BIMESTRE and'
      '  DISCIPLINA = :OLD_DISCIPLINA')
    Left = 264
    Top = 112
    object Mat_LecionadaSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = 'MAT_LECIONADA.SERIE'
      Required = True
    end
    object Mat_LecionadaBIMESTRE: TSmallintField
      FieldName = 'BIMESTRE'
      Origin = 'MAT_LECIONADA.BIMESTRE'
      Required = True
    end
    object Mat_LecionadaDISCIPLINA: TIntegerField
      FieldName = 'DISCIPLINA'
      Origin = 'MAT_LECIONADA.DISCIPLINA'
      Required = True
    end
    object Mat_LecionadaCONTEUDO: TIBStringField
      FieldName = 'CONTEUDO'
      Origin = 'MAT_LECIONADA.CONTEUDO'
      Size = 32000
    end
  end
  object dsMat_Lecionada: TDataSource
    DataSet = Mat_Lecionada
    Left = 320
    Top = 112
  end
  object Plantoes: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    OnCalcFields = PlantoesCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PLANTOES'
      'where'
      '  DATA = :OLD_DATA and'
      '  DISCIPLINA = :OLD_DISCIPLINA and'
      '  ALUNO = :OLD_ALUNO')
    InsertSQL.Strings = (
      'insert into PLANTOES'
      '  (DATA, DISCIPLINA, ALUNO, PROFESSOR)'
      'values'
      '  (:DATA, :DISCIPLINA, :ALUNO, :PROFESSOR)')
    RefreshSQL.Strings = (
      'Select '
      '  P.DATA,'
      '  P.DISCIPLINA,'
      '  P.ALUNO,'
      '  P.PROFESSOR,'
      '  A.NOME as AluNome,'
      '  A.SERIE,'
      '  A.TURMA'
      'from PLANTOES P'
      'join ALUNOS A on A.CODIGO = P.ALUNO'
      'where'
      '  P.DATA = :DATA and'
      '  P.DISCIPLINA = :DISCIPLINA and'
      '  P.ALUNO = :ALUNO')
    SelectSQL.Strings = (
      'select P.*, '
      '   A.NOME as AluNome,'
      '   A.SERIE,'
      '   A.TURMA'
      'from PLANTOES P'
      'join ALUNOS A on A.CODIGO = P.ALUNO'
      'where P.DATA = :data and P.DISCIPLINA = :disciplina'
      'order by A.NOME')
    ModifySQL.Strings = (
      'update PLANTOES'
      'set'
      '  DATA = :DATA,'
      '  DISCIPLINA = :DISCIPLINA,'
      '  ALUNO = :ALUNO,'
      '  PROFESSOR = :PROFESSOR'
      'where'
      '  DATA = :OLD_DATA and'
      '  DISCIPLINA = :OLD_DISCIPLINA and'
      '  ALUNO = :OLD_ALUNO')
    Left = 264
    Top = 58
    object PlantoesDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = 'PLANTOES.DATA'
      Required = True
    end
    object PlantoesDISCIPLINA: TIntegerField
      DisplayLabel = 'Disciplina'
      FieldName = 'DISCIPLINA'
      Origin = 'PLANTOES.DISCIPLINA'
      Required = True
    end
    object PlantoesALUNO: TIntegerField
      DisplayLabel = 'Aluno'
      FieldName = 'ALUNO'
      Origin = 'PLANTOES.ALUNO'
      Required = True
    end
    object PlantoesPROFESSOR: TIBStringField
      FieldName = 'PROFESSOR'
      Origin = 'PLANTOES.PROFESSOR'
    end
    object PlantoesALUNOME: TIBStringField
      FieldName = 'ALUNOME'
      Origin = 'ALUNOS.NOME'
      Size = 60
    end
    object PlantoesSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = 'ALUNOS.SERIE'
    end
    object PlantoesTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = 'ALUNOS.TURMA'
      FixedChar = True
      Size = 1
    end
    object PlantoesSerieX: TStringField
      FieldKind = fkCalculated
      FieldName = 'SerieX'
      Size = 15
      Calculated = True
    end
  end
  object dsPlantoes: TDataSource
    DataSet = Plantoes
    Left = 320
    Top = 58
  end
  object Ocorrencias: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    AutoCalcFields = False
    OnCalcFields = OcorrenciasCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from OCORRENCIAS'
      'where'
      '  ALUNO = :OLD_ALUNO and'
      '  HORA = :OLD_HORA')
    InsertSQL.Strings = (
      'insert into OCORRENCIAS'
      '  (ALUNO, HORA, TEXTO,TIPO)'
      'values'
      '  (:ALUNO, :HORA, :TEXTO,:TIPO)')
    RefreshSQL.Strings = (
      'Select '
      '  O.ALUNO,'
      '  O.HORA,'
      '  O.TEXTO,'
      '  O.TIPO,'
      '  A.NOME'
      'from OCORRENCIAS O'
      'join ALUNOS A on A.CODIGO = O.ALUNO'
      'where'
      '  O.ALUNO = :ALUNO and'
      '  O.HORA = :HORA')
    SelectSQL.Strings = (
      'select O.*, '
      '     A.NOME,'
      '     A.SERIE,'
      '     A.TURMA'
      'from OCORRENCIAS O'
      'join ALUNOS A on A.CODIGO = O.ALUNO'
      'where O.ALUNO is not null'
      'order by O.HORA desc')
    ModifySQL.Strings = (
      'update OCORRENCIAS'
      'set'
      '  ALUNO = :ALUNO,'
      '  HORA = :HORA,'
      '  TEXTO = :TEXTO,'
      '  TIPO = :TIPO'
      'where'
      '  ALUNO = :OLD_ALUNO and'
      '  HORA = :OLD_HORA')
    Left = 416
    Top = 408
    object OcorrenciasALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = 'OCORRENCIAS.ALUNO'
      Required = True
    end
    object OcorrenciasHORA: TDateTimeField
      FieldName = 'HORA'
      Origin = 'OCORRENCIAS.HORA'
      Required = True
    end
    object OcorrenciasTEXTO: TIBStringField
      FieldName = 'TEXTO'
      Origin = 'OCORRENCIAS.TEXTO'
      Size = 1000
    end
    object OcorrenciasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'ALUNOS.NOME'
      Size = 60
    end
    object OcorrenciasSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = 'ALUNOS.SERIE'
    end
    object OcorrenciasTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = 'ALUNOS.TURMA'
      FixedChar = True
      Size = 1
    end
    object OcorrenciasSerieX: TStringField
      FieldKind = fkCalculated
      FieldName = 'SerieX'
      Size = 15
      Calculated = True
    end
    object OcorrenciasHoraX: TStringField
      FieldKind = fkCalculated
      FieldName = 'HoraX'
      Size = 12
      Calculated = True
    end
    object OcorrenciasTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"OCORRENCIAS"."TIPO"'
      FixedChar = True
      Size = 1
    end
  end
  object dsOcorrencias: TDataSource
    DataSet = Ocorrencias
    Left = 488
    Top = 408
  end
  object Diario: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from DIARIO(:Serie,:Turma,:Disciplina,:Bimestre)'
      ''
      '')
    Left = 504
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Turma'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Disciplina'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Bimestre'
        ParamType = ptUnknown
      end>
    object DiarioALU_COD: TIntegerField
      FieldName = 'ALU_COD'
      Origin = 'DIARIO.ALU_COD'
    end
    object DiarioALU_CHAMADA: TSmallintField
      FieldName = 'ALU_CHAMADA'
      Origin = 'DIARIO.ALU_CHAMADA'
    end
    object DiarioALU_NOME: TIBStringField
      FieldName = 'ALU_NOME'
      Origin = 'DIARIO.ALU_NOME'
      Size = 60
    end
    object DiarioALU_STATUS: TIBStringField
      FieldName = 'ALU_STATUS'
      Origin = 'DIARIO.ALU_STATUS'
      FixedChar = True
      Size = 1
    end
    object DiarioALU_DATA_SAIDA: TDateField
      FieldName = 'ALU_DATA_SAIDA'
      Origin = 'DIARIO.ALU_DATA_SAIDA'
    end
    object DiarioALU_SEXO: TIBStringField
      FieldName = 'ALU_SEXO'
      Origin = 'DIARIO.ALU_SEXO'
      FixedChar = True
      Size = 1
    end
    object DiarioDET_FALTAS: TIBStringField
      DisplayWidth = 93
      FieldName = 'DET_FALTAS'
      Origin = 'DIARIO.DET_FALTAS'
      Size = 93
    end
    object DiarioMEDIA: TIBBCDField
      FieldName = 'MEDIA'
      Origin = 'DIARIO.MEDIA'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object DiarioTOT_FALTAS: TIntegerField
      FieldName = 'TOT_FALTAS'
      Origin = 'DIARIO.TOT_FALTAS'
    end
    object DiarioMODALIDADE: TIBStringField
      FieldName = 'MODALIDADE'
      Origin = '"DIARIO"."MODALIDADE"'
      FixedChar = True
      Size = 3
    end
    object DiarioDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DIARIO"."DATA"'
    end
  end
  object DiarioD: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from DIARIO_DET(:Serie,:Turma,:Disciplina,:Bimestre)')
    Left = 504
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Turma'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Disciplina'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Bimestre'
        ParamType = ptUnknown
      end>
    object DiarioDDATA: TDateField
      FieldName = 'DATA'
      Origin = 'DIARIO_DET.DATA'
    end
    object DiarioDDIA_SEMANA: TSmallintField
      FieldName = 'DIA_SEMANA'
      Origin = 'DIARIO_DET.DIA_SEMANA'
    end
    object DiarioDAULA: TSmallintField
      FieldName = 'AULA'
      Origin = 'DIARIO_DET.AULA'
    end
  end
  object dsDiario: TDataSource
    DataSet = Diario
    Left = 552
    Top = 8
  end
  object dsDiarioD: TDataSource
    DataSet = DiarioD
    Left = 552
    Top = 58
  end
  object ColecC: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from COLECIONADOR_CANHOTOS(:Serie,:Turma,:Disciplina)')
    Left = 504
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Turma'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Disciplina'
        ParamType = ptUnknown
      end>
    object ColecCALU_CODIGO: TIntegerField
      FieldName = 'ALU_CODIGO'
      Origin = 'COLECIONADOR_CANHOTOS.ALU_CODIGO'
    end
    object ColecCALU_CHAMADA: TSmallintField
      FieldName = 'ALU_CHAMADA'
      Origin = 'COLECIONADOR_CANHOTOS.ALU_CHAMADA'
    end
    object ColecCALU_NOME: TIBStringField
      FieldName = 'ALU_NOME'
      Origin = 'COLECIONADOR_CANHOTOS.ALU_NOME'
      Size = 60
    end
    object ColecCALU_STATUS: TIBStringField
      FieldName = 'ALU_STATUS'
      Origin = 'COLECIONADOR_CANHOTOS.ALU_STATUS'
      FixedChar = True
      Size = 1
    end
    object ColecCALU_DATA_SAIDA: TDateField
      FieldName = 'ALU_DATA_SAIDA'
      Origin = 'COLECIONADOR_CANHOTOS.ALU_DATA_SAIDA'
    end
    object ColecCM1: TIBBCDField
      FieldName = 'M1'
      Origin = 'COLECIONADOR_CANHOTOS.M1'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object ColecCM2: TIBBCDField
      FieldName = 'M2'
      Origin = 'COLECIONADOR_CANHOTOS.M2'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object ColecCM3: TIBBCDField
      FieldName = 'M3'
      Origin = 'COLECIONADOR_CANHOTOS.M3'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object ColecCM4: TIBBCDField
      FieldName = 'M4'
      Origin = 'COLECIONADOR_CANHOTOS.M4'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object ColecCMEDIA_ANUAL: TIBBCDField
      FieldName = 'MEDIA_ANUAL'
      Origin = 'COLECIONADOR_CANHOTOS.MEDIA_ANUAL'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object ColecCEXAME: TIBBCDField
      FieldName = 'EXAME'
      Origin = 'COLECIONADOR_CANHOTOS.EXAME'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object ColecCMEDIA_FINAL: TIBBCDField
      FieldName = 'MEDIA_FINAL'
      Origin = 'COLECIONADOR_CANHOTOS.MEDIA_FINAL'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object ColecCF1: TSmallintField
      FieldName = 'F1'
      Origin = 'COLECIONADOR_CANHOTOS.F1'
    end
    object ColecCF2: TSmallintField
      FieldName = 'F2'
      Origin = 'COLECIONADOR_CANHOTOS.F2'
    end
    object ColecCF3: TSmallintField
      FieldName = 'F3'
      Origin = 'COLECIONADOR_CANHOTOS.F3'
    end
    object ColecCF4: TSmallintField
      FieldName = 'F4'
      Origin = 'COLECIONADOR_CANHOTOS.F4'
    end
    object ColecCTOT_FALTAS: TSmallintField
      FieldName = 'TOT_FALTAS'
      Origin = 'COLECIONADOR_CANHOTOS.TOT_FALTAS'
    end
    object ColecCRESULTADO: TIBStringField
      FieldName = 'RESULTADO'
      Origin = 'COLECIONADOR_CANHOTOS.RESULTADO'
      FixedChar = True
      Size = 3
    end
    object ColecCNBIMESTRE: TSmallintField
      FieldName = 'NBIMESTRE'
      Origin = 'COLECIONADOR_CANHOTOS.NBIMESTRE'
    end
  end
  object dsColecC: TDataSource
    DataSet = ColecC
    Left = 560
    Top = 112
  end
  object Semi: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    AfterInsert = SemiAfterInsert
    AfterPost = SemiAfterPost
    OnNewRecord = SemiNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ALUNOS_SEMI'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into ALUNOS_SEMI'
      
        '  (CODIGO, NOME, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP,' +
        ' RG, NASC_DATA, '
      
        '   NASC_CIDADE, NASC_UF, SEXO, PAI_NOME, MAE_NOME, FONE, DATA_MA' +
        'TRICULA, '
      
        '   STATUS, DATA_SAIDA, BOLSA, MATERIAL, VENCIMENTO, BOLSA_OBS, C' +
        'URSO, BLOQUETO, '
      '   TURNO, USUARIO, CPF, SACADO_CPF)'
      'values'
      
        '  (:CODIGO, :NOME, :ENDERECO, :COMPLEMENTO, :BAIRRO, :CIDADE, :U' +
        'F, :CEP, '
      
        '   :RG, :NASC_DATA, :NASC_CIDADE, :NASC_UF, :SEXO, :PAI_NOME, :M' +
        'AE_NOME, '
      
        '   :FONE, :DATA_MATRICULA, :STATUS, :DATA_SAIDA, :BOLSA, :MATERI' +
        'AL, :VENCIMENTO, '
      
        '   :BOLSA_OBS, :CURSO, :BLOQUETO, :TURNO, :USUARIO, :CPF, :SACAD' +
        'O_CPF)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME,'
      '  ENDERECO,'
      '  COMPLEMENTO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  RG,'
      '  NASC_DATA,'
      '  NASC_CIDADE,'
      '  NASC_UF,'
      '  SEXO,'
      '  PAI_NOME,'
      '  MAE_NOME,'
      '  FONE,'
      '  DATA_MATRICULA,'
      '  STATUS,'
      '  DATA_SAIDA,'
      '  BOLSA,'
      '  MATERIAL,'
      '  VENCIMENTO,'
      '  BOLSA_OBS,'
      '  CURSO,'
      '  BLOQUETO,'
      '  TURNO,'
      '  USUARIO,'
      '  CPF,'
      '  SACADO_CPF'
      'from ALUNOS_SEMI '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * '
      'from ALUNOS_SEMI'
      'where CODIGO is not null'
      'order by CODIGO')
    ModifySQL.Strings = (
      'update ALUNOS_SEMI'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  ENDERECO = :ENDERECO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  RG = :RG,'
      '  NASC_DATA = :NASC_DATA,'
      '  NASC_CIDADE = :NASC_CIDADE,'
      '  NASC_UF = :NASC_UF,'
      '  SEXO = :SEXO,'
      '  PAI_NOME = :PAI_NOME,'
      '  MAE_NOME = :MAE_NOME,'
      '  FONE = :FONE,'
      '  DATA_MATRICULA = :DATA_MATRICULA,'
      '  STATUS = :STATUS,'
      '  DATA_SAIDA = :DATA_SAIDA,'
      '  BOLSA = :BOLSA,'
      '  MATERIAL = :MATERIAL,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  BOLSA_OBS = :BOLSA_OBS,'
      '  CURSO = :CURSO,'
      '  BLOQUETO = :BLOQUETO,'
      '  TURNO = :TURNO,'
      '  USUARIO = :USUARIO,'
      '  CPF = :CPF,'
      '  SACADO_CPF = :SACADO_CPF'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_ALUNOS_SEMI'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 504
    Top = 160
    object SemiCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"ALUNOS_SEMI"."CODIGO"'
      Required = True
    end
    object SemiNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ALUNOS_SEMI"."NOME"'
      Required = True
      Size = 60
    end
    object SemiENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"ALUNOS_SEMI"."ENDERECO"'
      Size = 40
    end
    object SemiCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"ALUNOS_SEMI"."COMPLEMENTO"'
    end
    object SemiBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"ALUNOS_SEMI"."BAIRRO"'
    end
    object SemiCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"ALUNOS_SEMI"."CIDADE"'
      Size = 25
    end
    object SemiUF: TIBStringField
      FieldName = 'UF'
      Origin = '"ALUNOS_SEMI"."UF"'
      FixedChar = True
      Size = 2
    end
    object SemiCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"ALUNOS_SEMI"."CEP"'
      FixedChar = True
      Size = 9
    end
    object SemiRG: TIBStringField
      FieldName = 'RG'
      Origin = '"ALUNOS_SEMI"."RG"'
      Size = 25
    end
    object SemiNASC_DATA: TDateField
      FieldName = 'NASC_DATA'
      Origin = '"ALUNOS_SEMI"."NASC_DATA"'
    end
    object SemiNASC_CIDADE: TIBStringField
      FieldName = 'NASC_CIDADE'
      Origin = '"ALUNOS_SEMI"."NASC_CIDADE"'
      Size = 25
    end
    object SemiNASC_UF: TIBStringField
      FieldName = 'NASC_UF'
      Origin = '"ALUNOS_SEMI"."NASC_UF"'
      FixedChar = True
      Size = 2
    end
    object SemiSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"ALUNOS_SEMI"."SEXO"'
      FixedChar = True
      Size = 1
    end
    object SemiPAI_NOME: TIBStringField
      FieldName = 'PAI_NOME'
      Origin = '"ALUNOS_SEMI"."PAI_NOME"'
      Size = 50
    end
    object SemiMAE_NOME: TIBStringField
      FieldName = 'MAE_NOME'
      Origin = '"ALUNOS_SEMI"."MAE_NOME"'
      Size = 50
    end
    object SemiFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"ALUNOS_SEMI"."FONE"'
      Size = 30
    end
    object SemiDATA_MATRICULA: TDateField
      FieldName = 'DATA_MATRICULA'
      Origin = '"ALUNOS_SEMI"."DATA_MATRICULA"'
    end
    object SemiSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"ALUNOS_SEMI"."STATUS"'
      FixedChar = True
      Size = 1
    end
    object SemiDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = '"ALUNOS_SEMI"."DATA_SAIDA"'
    end
    object SemiBOLSA: TIBBCDField
      FieldName = 'BOLSA'
      Origin = '"ALUNOS_SEMI"."BOLSA"'
      Precision = 9
      Size = 2
    end
    object SemiMATERIAL: TSmallintField
      FieldName = 'MATERIAL'
      Origin = '"ALUNOS_SEMI"."MATERIAL"'
    end
    object SemiVENCIMENTO: TSmallintField
      FieldName = 'VENCIMENTO'
      Origin = '"ALUNOS_SEMI"."VENCIMENTO"'
    end
    object SemiBOLSA_OBS: TIBStringField
      FieldName = 'BOLSA_OBS'
      Origin = '"ALUNOS_SEMI"."BOLSA_OBS"'
      Size = 50
    end
    object SemiCURSO: TIBStringField
      FieldName = 'CURSO'
      Origin = '"ALUNOS_SEMI"."CURSO"'
      Required = True
      Size = 4
    end
    object SemiBLOQUETO: TIntegerField
      FieldName = 'BLOQUETO'
      Origin = '"ALUNOS_SEMI"."BLOQUETO"'
      Required = True
    end
    object SemiTURNO: TIBStringField
      FieldName = 'TURNO'
      Origin = '"ALUNOS_SEMI"."TURNO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SemiUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"ALUNOS_SEMI"."USUARIO"'
    end
    object SemiCPF: TSmallintField
      FieldName = 'CPF'
      Origin = '"ALUNOS_SEMI"."CPF"'
    end
    object SemiSACADO_CPF: TIBStringField
      FieldName = 'SACADO_CPF'
      Origin = '"ALUNOS_SEMI"."SACADO_CPF"'
      Size = 15
    end
  end
  object dsSemi: TDataSource
    DataSet = Semi
    Left = 552
    Top = 160
  end
  object IBQGeral: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select codigo, nome, material'
      'from alunos_semi'
      'where codigo is not null'
      'order by nome')
    Left = 500
    Top = 472
    object IBQGeralCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ALUNOS_SEMI.CODIGO'
      Required = True
    end
    object IBQGeralNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'ALUNOS_SEMI.NOME'
      Required = True
      Size = 60
    end
    object IBQGeralMATERIAL: TSmallintField
      FieldName = 'MATERIAL'
      Origin = 'ALUNOS_SEMI.MATERIAL'
    end
  end
  object DSGeral: TDataSource
    DataSet = IBQGeral
    Left = 556
    Top = 472
  end
  object IBQPagantes: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select a.nome, a.curso, a.status, r.n_recibo, r.valor, r.situaca' +
        'o'
      'from alunos_semi a join recibo r on a.codigo=r.cod_aluno'
      
        'where (a.status='#39'A'#39')  and (r.n_recibo=:refer) and (r.situacao=:s' +
        'it) and (a.curso=:cur)'
      'order by    a.nome'
      '')
    Left = 364
    Top = 472
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'refer'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sit'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cur'
        ParamType = ptUnknown
      end>
    object IBQPagantesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ALUNOS_SEMI"."NOME"'
      Required = True
      Size = 60
    end
    object IBQPagantesCURSO: TIBStringField
      FieldName = 'CURSO'
      Origin = '"ALUNOS_SEMI"."CURSO"'
      Required = True
      Size = 4
    end
    object IBQPagantesSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"ALUNOS_SEMI"."STATUS"'
      FixedChar = True
      Size = 1
    end
    object IBQPagantesN_RECIBO: TIntegerField
      FieldName = 'N_RECIBO'
      Origin = '"RECIBO"."N_RECIBO"'
      Required = True
    end
    object IBQPagantesVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"RECIBO"."VALOR"'
      Required = True
      Precision = 9
      Size = 2
    end
    object IBQPagantesSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = '"RECIBO"."SITUACAO"'
      Required = True
      Size = 5
    end
  end
  object DSPagantes: TDataSource
    DataSet = IBQPagantes
    Left = 436
    Top = 472
  end
  object DSAtu_Hist: TDataSource
    DataSet = Atu_Hist
    Left = 87
    Top = 472
  end
  object Atu_Hist: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ATUALIZA_HIST(:cod,:serie,:disc)')
    Left = 24
    Top = 472
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'disc'
        ParamType = ptUnknown
      end>
    object Atu_HistALU_COD: TIntegerField
      FieldName = 'ALU_COD'
      Origin = 'ATUALIZA_HIST.ALU_COD'
    end
    object Atu_HistALU_STATUS: TIBStringField
      FieldName = 'ALU_STATUS'
      Origin = 'ATUALIZA_HIST.ALU_STATUS'
      FixedChar = True
      Size = 1
    end
    object Atu_HistRESULTADO: TIBStringField
      FieldName = 'RESULTADO'
      Origin = 'ATUALIZA_HIST.RESULTADO'
      Size = 15
    end
    object Atu_HistDISC: TIntegerField
      FieldName = 'DISC'
      Origin = 'ATUALIZA_HIST.DISC'
    end
    object Atu_HistM_ANUAL: TIBBCDField
      FieldName = 'M_ANUAL'
      Origin = 'ATUALIZA_HIST.M_ANUAL'
      Precision = 9
      Size = 1
    end
    object Atu_HistEXAME_N: TIBBCDField
      FieldName = 'EXAME_N'
      Origin = '"ATUALIZA_HIST"."EXAME_N"'
      Precision = 9
      Size = 1
    end
  end
  object RCarne: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from Recibos_Carnes(:SERIEE, :TURMAE, :NOME_INI, :NOME_FIM)')
    Left = 500
    Top = 548
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SERIEE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURMAE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOME_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOME_FIM'
        ParamType = ptUnknown
      end>
    object RCarneNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'RECIBOS_CARNES.NOME'
      Size = 60
    end
    object RCarneSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = 'RECIBOS_CARNES.SERIE'
    end
    object RCarneTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = 'RECIBOS_CARNES.TURMA'
      FixedChar = True
      Size = 1
    end
  end
  object DSRCarne: TDataSource
    DataSet = RCarne
    Left = 572
    Top = 548
  end
  object DSDocAlunos: TDataSource
    DataSet = DocAlunos
    Left = 88
    Top = 548
  end
  object DocAlunos: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    AfterInsert = DocAlunosAfterInsert
    AfterPost = DocAlunosAfterPost
    BeforePost = DocAlunosBeforePost
    OnCalcFields = DocAlunosCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from DOC_ALUNOS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into DOC_ALUNOS'
      
        '  (CODIGO, NOME, ENDERECO, COMPLEMENTO, BAIRRO, CIDADE, UF, CEP,' +
        ' RG, NASC_DATA, '
      
        '   NASC_CIDADE, NASC_UF, SEXO, PAI_NOME, PAI_PROFISSAO, PAI_NASC' +
        'IMENTO, '
      
        '   MAE_NOME, MAE_PROFISSAO, MAE_NASCIMENTO, FONE, DATA_MATRICULA' +
        ', BIMESTRE, '
      
        '   CURSO, SERIE, TURMA, CHAMADA, STATUS, DATA_SAIDA, BOLSA, OBS_' +
        'HIST, SACADO, '
      
        '   FINAL, MATERIAL, VENCIMENTO, ANO, BLOQUETO_1SEM, BLOQUETO_2SE' +
        'M, MES_MATERIAL, '
      
        '   SENHA, SACADO_RG, SACADO_CPF, MOD_ESPORTIVA, H_ANO1, H_ESCOLA' +
        '1, H_CIDADE1, '
      
        '   H_UF1, H_ANO2, H_ESCOLA2, H_CIDADE2, H_UF2, H_ANO3, H_ESCOLA3' +
        ', H_CIDADE3, '
      '   H_UF3, BOLSA_OBS, CODIGO_SP, CURSINHO, ID)'
      'values'
      
        '  (:CODIGO, :NOME, :ENDERECO, :COMPLEMENTO, :BAIRRO, :CIDADE, :U' +
        'F, :CEP, '
      
        '   :RG, :NASC_DATA, :NASC_CIDADE, :NASC_UF, :SEXO, :PAI_NOME, :P' +
        'AI_PROFISSAO, '
      
        '   :PAI_NASCIMENTO, :MAE_NOME, :MAE_PROFISSAO, :MAE_NASCIMENTO, ' +
        ':FONE, '
      
        '   :DATA_MATRICULA, :BIMESTRE, :CURSO, :SERIE, :TURMA, :CHAMADA,' +
        ' :STATUS, '
      
        '   :DATA_SAIDA, :BOLSA, :OBS_HIST, :SACADO, :FINAL, :MATERIAL, :' +
        'VENCIMENTO, '
      
        '   :ANO, :BLOQUETO_1SEM, :BLOQUETO_2SEM, :MES_MATERIAL, :SENHA, ' +
        ':SACADO_RG, '
      
        '   :SACADO_CPF, :MOD_ESPORTIVA, :H_ANO1, :H_ESCOLA1, :H_CIDADE1,' +
        ' :H_UF1, '
      
        '   :H_ANO2, :H_ESCOLA2, :H_CIDADE2, :H_UF2, :H_ANO3, :H_ESCOLA3,' +
        ' :H_CIDADE3, '
      '   :H_UF3, :BOLSA_OBS, :CODIGO_SP, :CURSINHO, :ID)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME,'
      '  ENDERECO,'
      '  COMPLEMENTO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  RG,'
      '  NASC_DATA,'
      '  NASC_CIDADE,'
      '  NASC_UF,'
      '  SEXO,'
      '  PAI_NOME,'
      '  PAI_PROFISSAO,'
      '  PAI_NASCIMENTO,'
      '  MAE_NOME,'
      '  MAE_PROFISSAO,'
      '  MAE_NASCIMENTO,'
      '  FONE,'
      '  DATA_MATRICULA,'
      '  BIMESTRE,'
      '  CURSO,'
      '  SERIE,'
      '  TURMA,'
      '  CHAMADA,'
      '  STATUS,'
      '  DATA_SAIDA,'
      '  BOLSA,'
      '  OBS_HIST,'
      '  SACADO,'
      '  FINAL,'
      '  MATERIAL,'
      '  VENCIMENTO,'
      '  ANO,'
      '  BLOQUETO_1SEM,'
      '  BLOQUETO_2SEM,'
      '  MES_MATERIAL,'
      '  SENHA,'
      '  SACADO_RG,'
      '  SACADO_CPF,'
      '  MOD_ESPORTIVA,'
      '  H_ANO1,'
      '  H_ESCOLA1,'
      '  H_CIDADE1,'
      '  H_UF1,'
      '  H_ANO2,'
      '  H_ESCOLA2,'
      '  H_CIDADE2,'
      '  H_UF2,'
      '  H_ANO3,'
      '  H_ESCOLA3,'
      '  H_CIDADE3,'
      '  H_UF3,'
      '  BOLSA_OBS,'
      '  CODIGO_SP,'
      '  CURSINHO,'
      '  ID'
      'from DOC_ALUNOS '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * '
      'from DOC_ALUNOS'
      'where Codigo is not null and STATUS <> '#39'R'#39' '
      'order by Codigo')
    ModifySQL.Strings = (
      'update DOC_ALUNOS'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  ENDERECO = :ENDERECO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  RG = :RG,'
      '  NASC_DATA = :NASC_DATA,'
      '  NASC_CIDADE = :NASC_CIDADE,'
      '  NASC_UF = :NASC_UF,'
      '  SEXO = :SEXO,'
      '  PAI_NOME = :PAI_NOME,'
      '  PAI_PROFISSAO = :PAI_PROFISSAO,'
      '  PAI_NASCIMENTO = :PAI_NASCIMENTO,'
      '  MAE_NOME = :MAE_NOME,'
      '  MAE_PROFISSAO = :MAE_PROFISSAO,'
      '  MAE_NASCIMENTO = :MAE_NASCIMENTO,'
      '  FONE = :FONE,'
      '  DATA_MATRICULA = :DATA_MATRICULA,'
      '  BIMESTRE = :BIMESTRE,'
      '  CURSO = :CURSO,'
      '  SERIE = :SERIE,'
      '  TURMA = :TURMA,'
      '  CHAMADA = :CHAMADA,'
      '  STATUS = :STATUS,'
      '  DATA_SAIDA = :DATA_SAIDA,'
      '  BOLSA = :BOLSA,'
      '  OBS_HIST = :OBS_HIST,'
      '  SACADO = :SACADO,'
      '  FINAL = :FINAL,'
      '  MATERIAL = :MATERIAL,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  ANO = :ANO,'
      '  BLOQUETO_1SEM = :BLOQUETO_1SEM,'
      '  BLOQUETO_2SEM = :BLOQUETO_2SEM,'
      '  MES_MATERIAL = :MES_MATERIAL,'
      '  SENHA = :SENHA,'
      '  SACADO_RG = :SACADO_RG,'
      '  SACADO_CPF = :SACADO_CPF,'
      '  MOD_ESPORTIVA = :MOD_ESPORTIVA,'
      '  H_ANO1 = :H_ANO1,'
      '  H_ESCOLA1 = :H_ESCOLA1,'
      '  H_CIDADE1 = :H_CIDADE1,'
      '  H_UF1 = :H_UF1,'
      '  H_ANO2 = :H_ANO2,'
      '  H_ESCOLA2 = :H_ESCOLA2,'
      '  H_CIDADE2 = :H_CIDADE2,'
      '  H_UF2 = :H_UF2,'
      '  H_ANO3 = :H_ANO3,'
      '  H_ESCOLA3 = :H_ESCOLA3,'
      '  H_CIDADE3 = :H_CIDADE3,'
      '  H_UF3 = :H_UF3,'
      '  BOLSA_OBS = :BOLSA_OBS,'
      '  CODIGO_SP = :CODIGO_SP,'
      '  CURSINHO = :CURSINHO,'
      '  ID = :ID'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_DOC_ALUNOS_ID'
    Left = 24
    Top = 548
    object DocAlunosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ALUNOS.CODIGO'
      Required = True
    end
    object DocAlunosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'ALUNOS.NOME'
      Required = True
      Size = 60
    end
    object DocAlunosENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'ALUNOS.ENDERECO'
      Size = 40
    end
    object DocAlunosCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'ALUNOS.COMPLEMENTO'
    end
    object DocAlunosBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'ALUNOS.BAIRRO'
    end
    object DocAlunosCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'ALUNOS.CIDADE'
      Size = 25
    end
    object DocAlunosUF: TIBStringField
      FieldName = 'UF'
      Origin = 'ALUNOS.UF'
      FixedChar = True
      Size = 2
    end
    object DocAlunosCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'ALUNOS.CEP'
      FixedChar = True
      Size = 9
    end
    object DocAlunosNASC_DATA: TDateField
      FieldName = 'NASC_DATA'
      Origin = 'ALUNOS.NASC_DATA'
    end
    object DocAlunosNASC_CIDADE: TIBStringField
      FieldName = 'NASC_CIDADE'
      Origin = 'ALUNOS.NASC_CIDADE'
      Size = 25
    end
    object DocAlunosNASC_UF: TIBStringField
      FieldName = 'NASC_UF'
      Origin = 'ALUNOS.NASC_UF'
      FixedChar = True
      Size = 2
    end
    object DocAlunosSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = 'ALUNOS.SEXO'
      FixedChar = True
      Size = 1
    end
    object DocAlunosPAI_NOME: TIBStringField
      FieldName = 'PAI_NOME'
      Origin = 'ALUNOS.PAI_NOME'
      Size = 50
    end
    object DocAlunosPAI_PROFISSAO: TIBStringField
      FieldName = 'PAI_PROFISSAO'
      Origin = 'ALUNOS.PAI_PROFISSAO'
    end
    object DocAlunosPAI_NASCIMENTO: TDateField
      FieldName = 'PAI_NASCIMENTO'
      Origin = 'ALUNOS.PAI_NASCIMENTO'
    end
    object DocAlunosMAE_NOME: TIBStringField
      FieldName = 'MAE_NOME'
      Origin = 'ALUNOS.MAE_NOME'
      Size = 50
    end
    object DocAlunosMAE_PROFISSAO: TIBStringField
      FieldName = 'MAE_PROFISSAO'
      Origin = 'ALUNOS.MAE_PROFISSAO'
    end
    object DocAlunosMAE_NASCIMENTO: TDateField
      FieldName = 'MAE_NASCIMENTO'
      Origin = 'ALUNOS.MAE_NASCIMENTO'
    end
    object DocAlunosFONE: TIBStringField
      FieldName = 'FONE'
      Origin = 'ALUNOS.FONE'
      Size = 30
    end
    object DocAlunosDATA_MATRICULA: TDateField
      FieldName = 'DATA_MATRICULA'
      Origin = 'ALUNOS.DATA_MATRICULA'
    end
    object DocAlunosBIMESTRE: TSmallintField
      FieldName = 'BIMESTRE'
      Origin = 'ALUNOS.BIMESTRE'
    end
    object DocAlunosCURSO: TIntegerField
      FieldName = 'CURSO'
      Origin = 'ALUNOS.CURSO'
    end
    object DocAlunosSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = 'ALUNOS.SERIE'
    end
    object DocAlunosTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = 'ALUNOS.TURMA'
      FixedChar = True
      Size = 1
    end
    object DocAlunosCHAMADA: TSmallintField
      FieldName = 'CHAMADA'
      Origin = 'ALUNOS.CHAMADA'
    end
    object DocAlunosSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'ALUNOS.STATUS'
      FixedChar = True
      Size = 1
    end
    object DocAlunosDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = 'ALUNOS.DATA_SAIDA'
    end
    object DocAlunosBOLSA: TIBBCDField
      FieldName = 'BOLSA'
      Origin = 'ALUNOS.BOLSA'
      Precision = 9
      Size = 2
    end
    object DocAlunosOBS_HIST: TMemoField
      FieldName = 'OBS_HIST'
      Origin = 'ALUNOS.OBS_HIST'
      BlobType = ftMemo
      Size = 8
    end
    object DocAlunosSACADO: TIBStringField
      FieldName = 'SACADO'
      Origin = 'ALUNOS.SACADO'
      Size = 40
    end
    object DocAlunosFINAL: TIBStringField
      FieldName = 'FINAL'
      Origin = 'ALUNOS.FINAL'
      FixedChar = True
      Size = 1
    end
    object DocAlunosMATERIAL: TSmallintField
      FieldName = 'MATERIAL'
      Origin = 'ALUNOS.MATERIAL'
    end
    object DocAlunosVENCIMENTO: TSmallintField
      FieldName = 'VENCIMENTO'
      Origin = 'ALUNOS.VENCIMENTO'
    end
    object DocAlunosANO: TSmallintField
      FieldName = 'ANO'
      Origin = 'ALUNOS.ANO'
    end
    object DocAlunosBLOQUETO_1SEM: TSmallintField
      FieldName = 'BLOQUETO_1SEM'
      Origin = 'ALUNOS.BLOQUETO_1SEM'
    end
    object DocAlunosBLOQUETO_2SEM: TSmallintField
      FieldName = 'BLOQUETO_2SEM'
      Origin = 'ALUNOS.BLOQUETO_2SEM'
    end
    object DocAlunosMES_MATERIAL: TSmallintField
      FieldName = 'MES_MATERIAL'
      Origin = 'ALUNOS.MES_MATERIAL'
    end
    object DocAlunosSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = 'ALUNOS.SENHA'
      Size = 10
    end
    object DocAlunosSACADO_RG: TIBStringField
      FieldName = 'SACADO_RG'
      Origin = 'ALUNOS.SACADO_RG'
    end
    object DocAlunosSACADO_CPF: TIBStringField
      FieldName = 'SACADO_CPF'
      Origin = 'ALUNOS.SACADO_CPF'
      FixedChar = True
      Size = 15
    end
    object DocAlunosMOD_ESPORTIVA: TIBStringField
      FieldName = 'MOD_ESPORTIVA'
      Origin = 'ALUNOS.MOD_ESPORTIVA'
      FixedChar = True
      Size = 3
    end
    object DocAlunosH_ANO1: TIntegerField
      FieldName = 'H_ANO1'
      Origin = 'ALUNOS.H_ANO1'
    end
    object DocAlunosH_ESCOLA1: TIBStringField
      FieldName = 'H_ESCOLA1'
      Origin = 'ALUNOS.H_ESCOLA1'
      Size = 40
    end
    object DocAlunosH_CIDADE1: TIBStringField
      FieldName = 'H_CIDADE1'
      Origin = 'ALUNOS.H_CIDADE1'
      Size = 25
    end
    object DocAlunosH_UF1: TIBStringField
      FieldName = 'H_UF1'
      Origin = 'ALUNOS.H_UF1'
      FixedChar = True
      Size = 2
    end
    object DocAlunosH_ANO2: TIntegerField
      FieldName = 'H_ANO2'
      Origin = 'ALUNOS.H_ANO2'
    end
    object DocAlunosH_ESCOLA2: TIBStringField
      FieldName = 'H_ESCOLA2'
      Origin = 'ALUNOS.H_ESCOLA2'
      Size = 40
    end
    object DocAlunosH_CIDADE2: TIBStringField
      FieldName = 'H_CIDADE2'
      Origin = 'ALUNOS.H_CIDADE2'
      Size = 25
    end
    object DocAlunosH_UF2: TIBStringField
      FieldName = 'H_UF2'
      Origin = 'ALUNOS.H_UF2'
      FixedChar = True
      Size = 2
    end
    object DocAlunosH_ANO3: TIntegerField
      FieldName = 'H_ANO3'
      Origin = 'ALUNOS.H_ANO3'
    end
    object DocAlunosH_ESCOLA3: TIBStringField
      FieldName = 'H_ESCOLA3'
      Origin = 'ALUNOS.H_ESCOLA3'
      Size = 40
    end
    object DocAlunosH_CIDADE3: TIBStringField
      FieldName = 'H_CIDADE3'
      Origin = 'ALUNOS.H_CIDADE3'
      Size = 25
    end
    object DocAlunosH_UF3: TIBStringField
      FieldName = 'H_UF3'
      Origin = 'ALUNOS.H_UF3'
      FixedChar = True
      Size = 2
    end
    object DocAlunosBOLSA_OBS: TIBStringField
      FieldName = 'BOLSA_OBS'
      Origin = 'ALUNOS.BOLSA_OBS'
      Size = 50
    end
    object DocAlunosCODIGO_SP: TIBStringField
      FieldName = 'CODIGO_SP'
      Origin = 'ALUNOS.CODIGO_SP'
      FixedChar = True
      Size = 8
    end
    object DocAlunosCURSINHO: TSmallintField
      FieldName = 'CURSINHO'
      Origin = 'DOC_ALUNOS.CURSINHO'
    end
    object DocAlunosSerieX: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'SerieX'
      Calculated = True
    end
    object DocAlunosFinalX: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'FinalX'
      Calculated = True
    end
    object DocAlunosModEspX: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'ModEspX'
      Calculated = True
    end
    object DocAlunosID: TIBStringField
      FieldName = 'ID'
      Origin = '"DOC_ALUNOS"."ID"'
      Size = 12
    end
    object DocAlunosRG: TIBStringField
      DisplayWidth = 35
      FieldName = 'RG'
      Origin = '"DOC_ALUNOS"."RG"'
      Size = 35
    end
  end
  object NotasAlunos: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    AfterPost = NotasAlunosAfterPost
    BeforePost = NotasAlunosBeforePost
    OnNewRecord = NotasAlunosNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from DOC_NOTAS'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  DISCIPLINA = :OLD_DISCIPLINA')
    InsertSQL.Strings = (
      'insert into DOC_NOTAS'
      '  (CODIGO, DISCIPLINA, NOTA1, CH1, NOTA2, CH2, NOTA3, CH3, TIPO)'
      'values'
      
        '  (:CODIGO, :DISCIPLINA, :NOTA1, :CH1, :NOTA2, :CH2, :NOTA3, :CH' +
        '3, :TIPO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  DISCIPLINA,'
      '  NOTA1,'
      '  CH1,'
      '  NOTA2,'
      '  CH2,'
      '  NOTA3,'
      '  CH3,'
      '  TIPO'
      'from DOC_NOTAS '
      'where'
      '  CODIGO = :CODIGO and'
      '  DISCIPLINA = :DISCIPLINA')
    SelectSQL.Strings = (
      'select *'
      'from DOC_NOTAS'
      'where CODIGO = :codigo')
    ModifySQL.Strings = (
      'update DOC_NOTAS'
      'set'
      '  CODIGO = :CODIGO,'
      '  DISCIPLINA = :DISCIPLINA,'
      '  NOTA1 = :NOTA1,'
      '  CH1 = :CH1,'
      '  NOTA2 = :NOTA2,'
      '  CH2 = :CH2,'
      '  NOTA3 = :NOTA3,'
      '  CH3 = :CH3,'
      '  TIPO = :TIPO'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  DISCIPLINA = :OLD_DISCIPLINA')
    DataSource = DSDocAlunos
    Left = 24
    Top = 600
    object NotasAlunosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'DOC_NOTAS.CODIGO'
      Required = True
    end
    object NotasAlunosDISCIPLINA: TIntegerField
      FieldName = 'DISCIPLINA'
      Origin = 'DOC_NOTAS.DISCIPLINA'
      Required = True
    end
    object NotasAlunosNOTA1: TIBBCDField
      FieldName = 'NOTA1'
      Origin = 'DOC_NOTAS.NOTA1'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasAlunosCH1: TIntegerField
      FieldName = 'CH1'
      Origin = 'DOC_NOTAS.CH1'
    end
    object NotasAlunosNOTA2: TIBBCDField
      FieldName = 'NOTA2'
      Origin = 'DOC_NOTAS.NOTA2'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasAlunosCH2: TIntegerField
      FieldName = 'CH2'
      Origin = 'DOC_NOTAS.CH2'
    end
    object NotasAlunosNOTA3: TIBBCDField
      FieldName = 'NOTA3'
      Origin = 'DOC_NOTAS.NOTA3'
      DisplayFormat = '#0.0'
      Precision = 4
      Size = 1
    end
    object NotasAlunosCH3: TIntegerField
      FieldName = 'CH3'
      Origin = 'DOC_NOTAS.CH3'
    end
    object NotasAlunosDisciplinaX: TIBStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'DisciplinaX'
      LookupDataSet = Disciplinas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'DISCIPLINA'
      Size = 40
      Lookup = True
    end
    object NotasAlunosTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"DOC_NOTAS"."TIPO"'
      FixedChar = True
      Size = 1
    end
  end
  object DSNotasAlunos: TDataSource
    DataSet = NotasAlunos
    Left = 104
    Top = 600
  end
  object DSBNotas: TDataSource
    DataSet = BNotas
    Left = 272
    Top = 548
  end
  object BNotas: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select *'
      'from notas'
      
        'where bimestre = :bbimestre and aluno = :baluno and disciplina =' +
        ' :bdisciplina'
      ''
      ''
      '')
    Left = 336
    Top = 548
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'bbimestre'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'baluno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bdisciplina'
        ParamType = ptUnknown
      end>
    object BNotasALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = 'NOTAS.ALUNO'
      Required = True
    end
    object BNotasDISCIPLINA: TIntegerField
      FieldName = 'DISCIPLINA'
      Origin = 'NOTAS.DISCIPLINA'
      Required = True
    end
    object BNotasBIMESTRE: TSmallintField
      FieldName = 'BIMESTRE'
      Origin = 'NOTAS.BIMESTRE'
      Required = True
    end
    object BNotasNOTA1: TIBBCDField
      FieldName = 'NOTA1'
      Origin = 'NOTAS.NOTA1'
      Precision = 4
      Size = 1
    end
    object BNotasNOTA2: TIBBCDField
      FieldName = 'NOTA2'
      Origin = 'NOTAS.NOTA2'
      Precision = 4
      Size = 1
    end
    object BNotasNOTA3: TIBBCDField
      FieldName = 'NOTA3'
      Origin = 'NOTAS.NOTA3'
      Precision = 4
      Size = 1
    end
    object BNotasNOTA4: TIBBCDField
      FieldName = 'NOTA4'
      Origin = 'NOTAS.NOTA4'
      Precision = 4
      Size = 1
    end
    object BNotasNOTA5: TIBBCDField
      FieldName = 'NOTA5'
      Origin = 'NOTAS.NOTA5'
      Precision = 4
      Size = 1
    end
    object BNotasNOTA6: TIBBCDField
      FieldName = 'NOTA6'
      Origin = 'NOTAS.NOTA6'
      Precision = 4
      Size = 1
    end
    object BNotasNOTA: TIBBCDField
      FieldName = 'NOTA'
      Origin = 'NOTAS.NOTA'
      Precision = 4
      Size = 1
    end
    object BNotasRECUPBIM: TIBBCDField
      FieldName = 'RECUPBIM'
      Origin = 'NOTAS.RECUPBIM'
      Precision = 4
      Size = 1
    end
    object BNotasRECUPBIM1: TIBBCDField
      FieldName = 'RECUPBIM1'
      Origin = 'NOTAS.RECUPBIM1'
      Precision = 4
      Size = 1
    end
    object BNotasRECUPBIM2: TIBBCDField
      FieldName = 'RECUPBIM2'
      Origin = 'NOTAS.RECUPBIM2'
      Precision = 4
      Size = 1
    end
    object BNotasRECUPBIM3: TIBBCDField
      FieldName = 'RECUPBIM3'
      Origin = 'NOTAS.RECUPBIM3'
      Precision = 4
      Size = 1
    end
  end
  object NotasB: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NOTAS'
      'where'
      '  ALUNO = :OLD_ALUNO and'
      '  DISCIPLINA = :OLD_DISCIPLINA and'
      '  BIMESTRE = :OLD_BIMESTRE and'
      '  NOTA1 = :OLD_NOTA1 and'
      '  NOTA2 = :OLD_NOTA2 and'
      '  NOTA3 = :OLD_NOTA3 and'
      '  NOTA4 = :OLD_NOTA4 and'
      '  NOTA5 = :OLD_NOTA5 and'
      '  NOTA6 = :OLD_NOTA6 and'
      '  NOTA = :OLD_NOTA and'
      '  RECUPBIM = :OLD_RECUPBIM and'
      '  RECUPBIM1 = :OLD_RECUPBIM1 and'
      '  RECUPBIM2 = :OLD_RECUPBIM2 and'
      '  RECUPBIM3 = :OLD_RECUPBIM3')
    InsertSQL.Strings = (
      'insert into NOTAS'
      
        '  (ALUNO, DISCIPLINA, BIMESTRE, NOTA1, NOTA2, NOTA3, NOTA4, NOTA' +
        '5, NOTA6, '
      '   NOTA, RECUPBIM, RECUPBIM1, RECUPBIM2, RECUPBIM3)'
      'values'
      
        '  (:ALUNO, :DISCIPLINA, :BIMESTRE, :NOTA1, :NOTA2, :NOTA3, :NOTA' +
        '4, :NOTA5, '
      '   :NOTA6, :NOTA, :RECUPBIM, :RECUPBIM1, :RECUPBIM2, :RECUPBIM3)')
    RefreshSQL.Strings = (
      'Select '
      '  ALUNO,'
      '  DISCIPLINA,'
      '  BIMESTRE,'
      '  NOTA1,'
      '  NOTA2,'
      '  NOTA3,'
      '  NOTA4,'
      '  NOTA5,'
      '  NOTA6,'
      '  NOTA,'
      '  RECUPBIM,'
      '  RECUPBIM1,'
      '  RECUPBIM2,'
      '  RECUPBIM3'
      'from NOTAS '
      'where'
      '  ALUNO = :ALUNO and'
      '  DISCIPLINA = :DISCIPLINA and'
      '  BIMESTRE = :BIMESTRE and'
      '  NOTA1 = :NOTA1 and'
      '  NOTA2 = :NOTA2 and'
      '  NOTA3 = :NOTA3 and'
      '  NOTA4 = :NOTA4 and'
      '  NOTA5 = :NOTA5 and'
      '  NOTA6 = :NOTA6 and'
      '  NOTA = :NOTA and'
      '  RECUPBIM = :RECUPBIM and'
      '  RECUPBIM1 = :RECUPBIM1 and'
      '  RECUPBIM2 = :RECUPBIM2 and'
      '  RECUPBIM3 = :RECUPBIM3')
    SelectSQL.Strings = (
      'select *'
      'from NOTAS N'
      'where N.ALUNO = :aluno and'
      '           N.BIMESTRE = :bimestre and'
      '           N.disciplina = :disciplina'
      ''
      ''
      ''
      ''
      '')
    ModifySQL.Strings = (
      'update NOTAS'
      'set'
      '  ALUNO = :ALUNO,'
      '  DISCIPLINA = :DISCIPLINA,'
      '  BIMESTRE = :BIMESTRE,'
      '  NOTA1 = :NOTA1,'
      '  NOTA2 = :NOTA2,'
      '  NOTA3 = :NOTA3,'
      '  NOTA4 = :NOTA4,'
      '  NOTA5 = :NOTA5,'
      '  NOTA6 = :NOTA6,'
      '  NOTA = :NOTA,'
      '  RECUPBIM = :RECUPBIM,'
      '  RECUPBIM1 = :RECUPBIM1,'
      '  RECUPBIM2 = :RECUPBIM2,'
      '  RECUPBIM3 = :RECUPBIM3'
      'where'
      '  ALUNO = :OLD_ALUNO and'
      '  DISCIPLINA = :OLD_DISCIPLINA and'
      '  BIMESTRE = :OLD_BIMESTRE and'
      '  NOTA1 = :OLD_NOTA1 and'
      '  NOTA2 = :OLD_NOTA2 and'
      '  NOTA3 = :OLD_NOTA3 and'
      '  NOTA4 = :OLD_NOTA4 and'
      '  NOTA5 = :OLD_NOTA5 and'
      '  NOTA6 = :OLD_NOTA6 and'
      '  NOTA = :OLD_NOTA and'
      '  RECUPBIM = :OLD_RECUPBIM and'
      '  RECUPBIM1 = :OLD_RECUPBIM1 and'
      '  RECUPBIM2 = :OLD_RECUPBIM2 and'
      '  RECUPBIM3 = :OLD_RECUPBIM3')
    Left = 384
    Top = 548
    object NotasBALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = 'NOTAS.ALUNO'
      Required = True
    end
    object NotasBDISCIPLINA: TIntegerField
      FieldName = 'DISCIPLINA'
      Origin = 'NOTAS.DISCIPLINA'
      Required = True
    end
    object NotasBBIMESTRE: TSmallintField
      FieldName = 'BIMESTRE'
      Origin = 'NOTAS.BIMESTRE'
      Required = True
    end
    object NotasBNOTA1: TIBBCDField
      FieldName = 'NOTA1'
      Origin = 'NOTAS.NOTA1'
      Precision = 4
      Size = 1
    end
    object NotasBNOTA2: TIBBCDField
      FieldName = 'NOTA2'
      Origin = 'NOTAS.NOTA2'
      Precision = 4
      Size = 1
    end
    object NotasBNOTA3: TIBBCDField
      FieldName = 'NOTA3'
      Origin = 'NOTAS.NOTA3'
      Precision = 4
      Size = 1
    end
    object NotasBNOTA4: TIBBCDField
      FieldName = 'NOTA4'
      Origin = 'NOTAS.NOTA4'
      Precision = 4
      Size = 1
    end
    object NotasBNOTA5: TIBBCDField
      FieldName = 'NOTA5'
      Origin = 'NOTAS.NOTA5'
      Precision = 4
      Size = 1
    end
    object NotasBNOTA6: TIBBCDField
      FieldName = 'NOTA6'
      Origin = 'NOTAS.NOTA6'
      Precision = 4
      Size = 1
    end
    object NotasBNOTA: TIBBCDField
      FieldName = 'NOTA'
      Origin = 'NOTAS.NOTA'
      Precision = 4
      Size = 1
    end
    object NotasBRECUPBIM: TIBBCDField
      FieldName = 'RECUPBIM'
      Origin = 'NOTAS.RECUPBIM'
      Precision = 4
      Size = 1
    end
    object NotasBRECUPBIM1: TIBBCDField
      FieldName = 'RECUPBIM1'
      Origin = 'NOTAS.RECUPBIM1'
      Precision = 4
      Size = 1
    end
    object NotasBRECUPBIM2: TIBBCDField
      FieldName = 'RECUPBIM2'
      Origin = 'NOTAS.RECUPBIM2'
      Precision = 4
      Size = 1
    end
    object NotasBRECUPBIM3: TIBBCDField
      FieldName = 'RECUPBIM3'
      Origin = 'NOTAS.RECUPBIM3'
      Precision = 4
      Size = 1
    end
  end
  object DSNotasB: TDataSource
    DataSet = NotasB
    Left = 440
    Top = 548
  end
  object Recibo: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from RECIBO'
      'where'
      '  COD_ALUNO = :OLD_COD_ALUNO and'
      '  N_RECIBO = :OLD_N_RECIBO')
    InsertSQL.Strings = (
      'insert into RECIBO'
      
        '  (COD_ALUNO, N_RECIBO, VALOR, DATA_EXP, SITUACAO, DATA_BAIXA, D' +
        'ATA_VENC, '
      '   VALOR_PAGO)'
      'values'
      
        '  (:COD_ALUNO, :N_RECIBO, :VALOR, :DATA_EXP, :SITUACAO, :DATA_BA' +
        'IXA, :DATA_VENC, '
      '   :VALOR_PAGO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_ALUNO,'
      '  N_RECIBO,'
      '  VALOR,'
      '  DATA_EXP,'
      '  SITUACAO,'
      '  DATA_BAIXA,'
      '  DATA_VENC,'
      '  VALOR_PAGO'
      'from RECIBO '
      'where'
      '  COD_ALUNO = :COD_ALUNO and'
      '  N_RECIBO = :N_RECIBO')
    SelectSQL.Strings = (
      'select * '
      'from RECIBO'
      'where COD_ALUNO is not null'
      'order by cod_aluno'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    ModifySQL.Strings = (
      'update RECIBO'
      'set'
      '  COD_ALUNO = :COD_ALUNO,'
      '  N_RECIBO = :N_RECIBO,'
      '  VALOR = :VALOR,'
      '  DATA_EXP = :DATA_EXP,'
      '  SITUACAO = :SITUACAO,'
      '  DATA_BAIXA = :DATA_BAIXA,'
      '  DATA_VENC = :DATA_VENC,'
      '  VALOR_PAGO = :VALOR_PAGO'
      'where'
      '  COD_ALUNO = :OLD_COD_ALUNO and'
      '  N_RECIBO = :OLD_N_RECIBO')
    GeneratorField.Field = 'N_RECIBO'
    GeneratorField.Generator = 'GEN_RECIBO'
    Left = 512
    Top = 262
    object ReciboCOD_ALUNO: TIntegerField
      FieldName = 'COD_ALUNO'
      Origin = '"RECIBO"."COD_ALUNO"'
      Required = True
    end
    object ReciboN_RECIBO: TIntegerField
      FieldName = 'N_RECIBO'
      Origin = '"RECIBO"."N_RECIBO"'
      Required = True
    end
    object ReciboVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"RECIBO"."VALOR"'
      Required = True
      currency = True
      Precision = 9
      Size = 2
    end
    object ReciboDATA_EXP: TDateField
      FieldName = 'DATA_EXP'
      Origin = '"RECIBO"."DATA_EXP"'
    end
    object ReciboSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = '"RECIBO"."SITUACAO"'
      Required = True
      Size = 5
    end
    object ReciboDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
      Origin = '"RECIBO"."DATA_BAIXA"'
    end
    object ReciboDATA_VENC: TDateField
      FieldName = 'DATA_VENC'
      Origin = '"RECIBO"."DATA_VENC"'
    end
    object ReciboVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"RECIBO"."VALOR_PAGO"'
      currency = True
      Precision = 9
      Size = 2
    end
    object Recibonomealuno: TIBStringField
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'nomealuno'
      LookupDataSet = Alunos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'COD_ALUNO'
      Size = 60
      Lookup = True
    end
  end
  object dsRecibo: TDataSource
    DataSet = Recibo
    Left = 576
    Top = 262
  end
  object DsCores: TDataSource
    DataSet = Cores
    Left = 160
    Top = 548
  end
  object Cores: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from CORES'
      'where'
      '  CODIGO_COR = :OLD_CODIGO_COR')
    InsertSQL.Strings = (
      'insert into CORES'
      '  (CODIGO_COR, COR)'
      'values'
      '  (:CODIGO_COR, :COR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO_COR,'
      '  COR'
      'from CORES '
      'where'
      '  CODIGO_COR = :CODIGO_COR')
    SelectSQL.Strings = (
      'select * '
      'from CORES'
      'order by COR')
    ModifySQL.Strings = (
      'update CORES'
      'set'
      '  CODIGO_COR = :CODIGO_COR,'
      '  COR = :COR'
      'where'
      '  CODIGO_COR = :OLD_CODIGO_COR')
    GeneratorField.Field = 'CODIGO_COR'
    GeneratorField.Generator = 'GEN_CORES'
    Left = 216
    Top = 548
    object CoresCODIGO_COR: TIntegerField
      FieldName = 'CODIGO_COR'
      Origin = '"CORES"."CODIGO_COR"'
      Required = True
    end
    object CoresCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"CORES"."COR"'
      Size = 9
    end
  end
  object nossonumero: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    OnCalcFields = nossonumeroCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select Blq.*, Alu.CODIGO, Alu.NOME, Alu.FONE,Alu.SERIE, Alu.TURM' +
        'A, Alu.BOLSA, Alu.MATERIAL'
      'from BLOQUETOS Blq join ALUNOS Alu on Blq.ALUNO = Alu.CODIGO'
      
        'where Blq.vencimento between :dataini and :datafim and Blq.pagam' +
        'ento is null'
      'order by Blq.PARCELA'
      '')
    Left = 576
    Top = 600
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dataini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datafim'
        ParamType = ptUnknown
      end>
    object nossonumeroNOSSO_NUMERO: TIntegerField
      FieldName = 'NOSSO_NUMERO'
      Origin = '"BLOQUETOS"."NOSSO_NUMERO"'
      Required = True
    end
    object nossonumeroALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = '"BLOQUETOS"."ALUNO"'
    end
    object nossonumeroPARCELA: TSmallintField
      FieldName = 'PARCELA'
      Origin = '"BLOQUETOS"."PARCELA"'
    end
    object nossonumeroEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"BLOQUETOS"."EMISSAO"'
    end
    object nossonumeroVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"BLOQUETOS"."VENCIMENTO"'
    end
    object nossonumeroVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"BLOQUETOS"."VALOR"'
      Precision = 9
      Size = 2
    end
    object nossonumeroPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"BLOQUETOS"."PAGAMENTO"'
    end
    object nossonumeroVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"BLOQUETOS"."VALOR_PAGO"'
      Precision = 9
      Size = 2
    end
    object nossonumeroMENSALIDADE: TIBBCDField
      FieldName = 'MENSALIDADE'
      Origin = '"BLOQUETOS"."MENSALIDADE"'
      Precision = 9
      Size = 2
    end
    object nossonumeroMATERIAL: TIBBCDField
      FieldName = 'MATERIAL'
      Origin = '"BLOQUETOS"."MATERIAL"'
      Precision = 9
      Size = 2
    end
    object nossonumeroDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"BLOQUETOS"."DESCONTO"'
      Precision = 9
      Size = 2
    end
    object nossonumeroTIPO_PG: TSmallintField
      FieldName = 'TIPO_PG'
      Origin = '"BLOQUETOS"."TIPO_PG"'
    end
    object nossonumeroANO_DV: TIBStringField
      FieldName = 'ANO_DV'
      Origin = '"BLOQUETOS"."ANO_DV"'
      FixedChar = True
      Size = 2
    end
    object nossonumeroNossoNum: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'NossoNum'
      Size = 11
      Calculated = True
    end
    object nossonumeroParcelaX: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'ParcelaX'
      Size = 5
      Calculated = True
    end
    object nossonumeroCodBarras: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'CodBarras'
      Size = 44
      Calculated = True
    end
    object nossonumeroCampo1: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'Campo1'
      Size = 11
      Calculated = True
    end
    object nossonumeroCampo2: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'Campo2'
      Size = 12
      Calculated = True
    end
    object nossonumeroCampo3: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'Campo3'
      Size = 12
      Calculated = True
    end
    object nossonumeroCampo4: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'Campo4'
      Size = 1
      Calculated = True
    end
    object nossonumeroCampo5: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'Campo5'
      Size = 14
      Calculated = True
    end
    object nossonumeroSerieX: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'SerieX'
      Calculated = True
    end
    object nossonumeroMesX: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'MesX'
      Size = 10
      Calculated = True
    end
    object nossonumeroTipo_Pg_X: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'Tipo_Pg_X'
      Size = 10
      Calculated = True
    end
    object nossonumeroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"ALUNOS"."CODIGO"'
      Required = True
    end
    object nossonumeroNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ALUNOS"."NOME"'
      Required = True
      Size = 60
    end
    object nossonumeroFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"ALUNOS"."FONE"'
      Size = 30
    end
    object nossonumeroSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = '"ALUNOS"."SERIE"'
    end
    object nossonumeroTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"ALUNOS"."TURMA"'
      FixedChar = True
      Size = 1
    end
    object nossonumeroBOLSA: TIBBCDField
      FieldName = 'BOLSA'
      Origin = '"ALUNOS"."BOLSA"'
      Precision = 9
      Size = 2
    end
    object nossonumeroMATERIAL1: TSmallintField
      FieldName = 'MATERIAL1'
      Origin = '"ALUNOS"."MATERIAL"'
    end
  end
  object dsnossonumero: TDataSource
    DataSet = nossonumero
    Left = 496
    Top = 600
  end
  object Professores: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    OnNewRecord = ProfessoresNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PROFESSORES'
      'where'
      '  COD_PROF = :OLD_COD_PROF')
    InsertSQL.Strings = (
      'insert into PROFESSORES'
      
        '  (COD_PROF, TIPO, LOGIN, SENHA, COD_ESCOLA, ANO, NOME, DATA_NAS' +
        'C, SEXO, '
      
        '   MAE, TIPO_LOGADOURO, ENDERECO, NIMERO, COMPLEMENTO, BAIRRO, U' +
        'F, MUNICIPIO, '
      
        '   CEP, FUNCAO, FUNCAO_AUX, ENSINO_FUND_5A8, ENSINO_FUND_1A4, EN' +
        'SINO_FUND_1A5, '
      
        '   ENSINO_FUND_6A9, ENSINO_MEDIO_INT, EDUC_JOVENS_1A4, EDUC_JOVE' +
        'NS_5A8, '
      
        '   EDUC_JOVENS_ADULTOS_MEDIO, EDU_JOVENS_ADULTOS_TECN, NEES, IDE' +
        'NTIDADE, '
      
        '   NUMEROIDENTIDADE, COMPLEMENTOIDENTI, DATAEMISSAOIDENT, UFIDEN' +
        'TIDADE, '
      
        '   ORGAOEMISSORIDENT, DATAADMISSAO, ESCOLARIDADE, MUN_NAS, UF_NA' +
        'S, ADMINISTRADOR, '
      '   EMAIL)'
      'values'
      
        '  (:COD_PROF, :TIPO, :LOGIN, :SENHA, :COD_ESCOLA, :ANO, :NOME, :' +
        'DATA_NASC, '
      
        '   :SEXO, :MAE, :TIPO_LOGADOURO, :ENDERECO, :NIMERO, :COMPLEMENT' +
        'O, :BAIRRO, '
      
        '   :UF, :MUNICIPIO, :CEP, :FUNCAO, :FUNCAO_AUX, :ENSINO_FUND_5A8' +
        ', :ENSINO_FUND_1A4, '
      
        '   :ENSINO_FUND_1A5, :ENSINO_FUND_6A9, :ENSINO_MEDIO_INT, :EDUC_' +
        'JOVENS_1A4, '
      
        '   :EDUC_JOVENS_5A8, :EDUC_JOVENS_ADULTOS_MEDIO, :EDU_JOVENS_ADU' +
        'LTOS_TECN, '
      
        '   :NEES, :IDENTIDADE, :NUMEROIDENTIDADE, :COMPLEMENTOIDENTI, :D' +
        'ATAEMISSAOIDENT, '
      
        '   :UFIDENTIDADE, :ORGAOEMISSORIDENT, :DATAADMISSAO, :ESCOLARIDA' +
        'DE, :MUN_NAS, '
      '   :UF_NAS, :ADMINISTRADOR, :EMAIL)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_PROF,'
      '  TIPO,'
      '  LOGIN,'
      '  SENHA,'
      '  COD_ESCOLA,'
      '  ANO,'
      '  NOME,'
      '  DATA_NASC,'
      '  SEXO,'
      '  MAE,'
      '  TIPO_LOGADOURO,'
      '  ENDERECO,'
      '  NIMERO,'
      '  COMPLEMENTO,'
      '  BAIRRO,'
      '  UF,'
      '  MUNICIPIO,'
      '  CEP,'
      '  FUNCAO,'
      '  FUNCAO_AUX,'
      '  ENSINO_FUND_5A8,'
      '  ENSINO_FUND_1A4,'
      '  ENSINO_FUND_1A5,'
      '  ENSINO_FUND_6A9,'
      '  ENSINO_MEDIO_INT,'
      '  EDUC_JOVENS_1A4,'
      '  EDUC_JOVENS_5A8,'
      '  EDUC_JOVENS_ADULTOS_MEDIO,'
      '  EDU_JOVENS_ADULTOS_TECN,'
      '  NEES,'
      '  IDENTIDADE,'
      '  NUMEROIDENTIDADE,'
      '  COMPLEMENTOIDENTI,'
      '  DATAEMISSAOIDENT,'
      '  UFIDENTIDADE,'
      '  ORGAOEMISSORIDENT,'
      '  DATAADMISSAO,'
      '  ESCOLARIDADE,'
      '  MUN_NAS,'
      '  UF_NAS,'
      '  ADMINISTRADOR,'
      '  EMAIL'
      'from PROFESSORES '
      'where'
      '  COD_PROF = :COD_PROF')
    SelectSQL.Strings = (
      'select * '
      'from PROFESSORES'
      'order by NOME')
    ModifySQL.Strings = (
      'update PROFESSORES'
      'set'
      '  COD_PROF = :COD_PROF,'
      '  TIPO = :TIPO,'
      '  LOGIN = :LOGIN,'
      '  SENHA = :SENHA,'
      '  COD_ESCOLA = :COD_ESCOLA,'
      '  ANO = :ANO,'
      '  NOME = :NOME,'
      '  DATA_NASC = :DATA_NASC,'
      '  SEXO = :SEXO,'
      '  MAE = :MAE,'
      '  TIPO_LOGADOURO = :TIPO_LOGADOURO,'
      '  ENDERECO = :ENDERECO,'
      '  NIMERO = :NIMERO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  BAIRRO = :BAIRRO,'
      '  UF = :UF,'
      '  MUNICIPIO = :MUNICIPIO,'
      '  CEP = :CEP,'
      '  FUNCAO = :FUNCAO,'
      '  FUNCAO_AUX = :FUNCAO_AUX,'
      '  ENSINO_FUND_5A8 = :ENSINO_FUND_5A8,'
      '  ENSINO_FUND_1A4 = :ENSINO_FUND_1A4,'
      '  ENSINO_FUND_1A5 = :ENSINO_FUND_1A5,'
      '  ENSINO_FUND_6A9 = :ENSINO_FUND_6A9,'
      '  ENSINO_MEDIO_INT = :ENSINO_MEDIO_INT,'
      '  EDUC_JOVENS_1A4 = :EDUC_JOVENS_1A4,'
      '  EDUC_JOVENS_5A8 = :EDUC_JOVENS_5A8,'
      '  EDUC_JOVENS_ADULTOS_MEDIO = :EDUC_JOVENS_ADULTOS_MEDIO,'
      '  EDU_JOVENS_ADULTOS_TECN = :EDU_JOVENS_ADULTOS_TECN,'
      '  NEES = :NEES,'
      '  IDENTIDADE = :IDENTIDADE,'
      '  NUMEROIDENTIDADE = :NUMEROIDENTIDADE,'
      '  COMPLEMENTOIDENTI = :COMPLEMENTOIDENTI,'
      '  DATAEMISSAOIDENT = :DATAEMISSAOIDENT,'
      '  UFIDENTIDADE = :UFIDENTIDADE,'
      '  ORGAOEMISSORIDENT = :ORGAOEMISSORIDENT,'
      '  DATAADMISSAO = :DATAADMISSAO,'
      '  ESCOLARIDADE = :ESCOLARIDADE,'
      '  MUN_NAS = :MUN_NAS,'
      '  UF_NAS = :UF_NAS,'
      '  ADMINISTRADOR = :ADMINISTRADOR,'
      '  EMAIL = :EMAIL'
      'where'
      '  COD_PROF = :OLD_COD_PROF')
    GeneratorField.Field = 'COD_PROF'
    GeneratorField.Generator = 'GEN_PROFESSORES'
    Left = 624
    Top = 58
    object ProfessoresCOD_PROF: TIntegerField
      FieldName = 'COD_PROF'
      Origin = '"PROFESSORES"."COD_PROF"'
      Required = True
    end
    object ProfessoresTIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = '"PROFESSORES"."TIPO"'
    end
    object ProfessoresCOD_ESCOLA: TIntegerField
      FieldName = 'COD_ESCOLA'
      Origin = '"PROFESSORES"."COD_ESCOLA"'
    end
    object ProfessoresANO: TSmallintField
      FieldName = 'ANO'
      Origin = '"PROFESSORES"."ANO"'
    end
    object ProfessoresNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"PROFESSORES"."NOME"'
      Size = 70
    end
    object ProfessoresDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      Origin = '"PROFESSORES"."DATA_NASC"'
    end
    object ProfessoresSEXO: TSmallintField
      FieldName = 'SEXO'
      Origin = '"PROFESSORES"."SEXO"'
    end
    object ProfessoresMAE: TIBStringField
      FieldName = 'MAE'
      Origin = '"PROFESSORES"."MAE"'
      Size = 70
    end
    object ProfessoresTIPO_LOGADOURO: TIBStringField
      FieldName = 'TIPO_LOGADOURO'
      Origin = '"PROFESSORES"."TIPO_LOGADOURO"'
      Size = 3
    end
    object ProfessoresENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"PROFESSORES"."ENDERECO"'
      Size = 50
    end
    object ProfessoresNIMERO: TIBStringField
      FieldName = 'NIMERO'
      Origin = '"PROFESSORES"."NIMERO"'
      Size = 10
    end
    object ProfessoresCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"PROFESSORES"."COMPLEMENTO"'
      Size = 15
    end
    object ProfessoresBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"PROFESSORES"."BAIRRO"'
      Size = 50
    end
    object ProfessoresUF: TSmallintField
      FieldName = 'UF'
      Origin = '"PROFESSORES"."UF"'
    end
    object ProfessoresMUNICIPIO: TIntegerField
      FieldName = 'MUNICIPIO'
      Origin = '"PROFESSORES"."MUNICIPIO"'
    end
    object ProfessoresFUNCAO: TSmallintField
      FieldName = 'FUNCAO'
      Origin = '"PROFESSORES"."FUNCAO"'
    end
    object ProfessoresFUNCAO_AUX: TSmallintField
      FieldName = 'FUNCAO_AUX'
      Origin = '"PROFESSORES"."FUNCAO_AUX"'
    end
    object ProfessoresENSINO_FUND_5A8: TSmallintField
      FieldName = 'ENSINO_FUND_5A8'
      Origin = '"PROFESSORES"."ENSINO_FUND_5A8"'
    end
    object ProfessoresENSINO_FUND_1A4: TSmallintField
      FieldName = 'ENSINO_FUND_1A4'
      Origin = '"PROFESSORES"."ENSINO_FUND_1A4"'
    end
    object ProfessoresENSINO_FUND_1A5: TSmallintField
      FieldName = 'ENSINO_FUND_1A5'
      Origin = '"PROFESSORES"."ENSINO_FUND_1A5"'
    end
    object ProfessoresENSINO_FUND_6A9: TSmallintField
      FieldName = 'ENSINO_FUND_6A9'
      Origin = '"PROFESSORES"."ENSINO_FUND_6A9"'
    end
    object ProfessoresENSINO_MEDIO_INT: TSmallintField
      FieldName = 'ENSINO_MEDIO_INT'
      Origin = '"PROFESSORES"."ENSINO_MEDIO_INT"'
    end
    object ProfessoresEDUC_JOVENS_1A4: TSmallintField
      FieldName = 'EDUC_JOVENS_1A4'
      Origin = '"PROFESSORES"."EDUC_JOVENS_1A4"'
    end
    object ProfessoresEDUC_JOVENS_5A8: TSmallintField
      FieldName = 'EDUC_JOVENS_5A8'
      Origin = '"PROFESSORES"."EDUC_JOVENS_5A8"'
    end
    object ProfessoresEDUC_JOVENS_ADULTOS_MEDIO: TSmallintField
      FieldName = 'EDUC_JOVENS_ADULTOS_MEDIO'
      Origin = '"PROFESSORES"."EDUC_JOVENS_ADULTOS_MEDIO"'
    end
    object ProfessoresEDU_JOVENS_ADULTOS_TECN: TSmallintField
      FieldName = 'EDU_JOVENS_ADULTOS_TECN'
      Origin = '"PROFESSORES"."EDU_JOVENS_ADULTOS_TECN"'
    end
    object ProfessoresNEES: TSmallintField
      FieldName = 'NEES'
      Origin = '"PROFESSORES"."NEES"'
    end
    object ProfessoresIDENTIDADE: TIntegerField
      FieldName = 'IDENTIDADE'
      Origin = '"PROFESSORES"."IDENTIDADE"'
    end
    object ProfessoresNUMEROIDENTIDADE: TIBStringField
      FieldName = 'NUMEROIDENTIDADE'
      Origin = '"PROFESSORES"."NUMEROIDENTIDADE"'
      Size = 15
    end
    object ProfessoresCOMPLEMENTOIDENTI: TIBStringField
      FieldName = 'COMPLEMENTOIDENTI'
      Origin = '"PROFESSORES"."COMPLEMENTOIDENTI"'
      Size = 4
    end
    object ProfessoresDATAEMISSAOIDENT: TDateField
      FieldName = 'DATAEMISSAOIDENT'
      Origin = '"PROFESSORES"."DATAEMISSAOIDENT"'
    end
    object ProfessoresORGAOEMISSORIDENT: TIntegerField
      FieldName = 'ORGAOEMISSORIDENT'
      Origin = '"PROFESSORES"."ORGAOEMISSORIDENT"'
    end
    object ProfessoresDATAADMISSAO: TDateField
      FieldName = 'DATAADMISSAO'
      Origin = '"PROFESSORES"."DATAADMISSAO"'
    end
    object ProfessoresESCOLARIDADE: TIntegerField
      FieldName = 'ESCOLARIDADE'
      Origin = '"PROFESSORES"."ESCOLARIDADE"'
    end
    object ProfessoresMUN_NAS: TIntegerField
      FieldName = 'MUN_NAS'
      Origin = '"PROFESSORES"."MUN_NAS"'
    end
    object ProfessoresUF_NAS: TIntegerField
      FieldName = 'UF_NAS'
      Origin = '"PROFESSORES"."UF_NAS"'
    end
    object ProfessoresLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = '"PROFESSORES"."LOGIN"'
      Size = 8
    end
    object ProfessoresSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"PROFESSORES"."SENHA"'
      Size = 6
    end
    object ProfessoresCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"PROFESSORES"."CEP"'
      EditMask = '00000\-999;1;_'
      Size = 9
    end
    object ProfessoresUFIDENTIDADE: TIBStringField
      FieldName = 'UFIDENTIDADE'
      Origin = '"PROFESSORES"."UFIDENTIDADE"'
      FixedChar = True
      Size = 2
    end
    object ProfessoresADMINISTRADOR: TSmallintField
      FieldName = 'ADMINISTRADOR'
      Origin = '"PROFESSORES"."ADMINISTRADOR"'
    end
    object ProfessoresEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"PROFESSORES"."EMAIL"'
      Size = 40
    end
    object Professorescidade: TIBStringField
      FieldKind = fkLookup
      FieldName = 'cidade'
      LookupDataSet = qMunicipio
      LookupKeyFields = 'COD_MUNICIPIO'
      LookupResultField = 'NOME_MUNICIPIO'
      KeyFields = 'MUNICIPIO'
      Lookup = True
    end
  end
  object dsProfessores: TDataSource
    DataSet = Professores
    Left = 624
    Top = 112
  end
  object orgao: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ORGAOS'
      'where'
      '  COD_ORGAO = :OLD_COD_ORGAO')
    InsertSQL.Strings = (
      'insert into ORGAOS'
      '  (COD_ORGAO, NOME)'
      'values'
      '  (:COD_ORGAO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_ORGAO,'
      '  NOME'
      'from ORGAOS '
      'where'
      '  COD_ORGAO = :COD_ORGAO')
    SelectSQL.Strings = (
      'select * '
      'from ORGAOS'
      'order by NOME')
    ModifySQL.Strings = (
      'update ORGAOS'
      'set'
      '  COD_ORGAO = :COD_ORGAO,'
      '  NOME = :NOME'
      'where'
      '  COD_ORGAO = :OLD_COD_ORGAO')
    GeneratorField.Field = 'COD_ORGAO'
    GeneratorField.Generator = 'GEN_ORGAOS_ID'
    Left = 816
    Top = 160
    object orgaoCOD_ORGAO: TIntegerField
      FieldName = 'COD_ORGAO'
      Origin = '"ORGAOS"."COD_ORGAO"'
      Required = True
    end
    object orgaoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ORGAOS"."NOME"'
      Size = 40
    end
  end
  object pais: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PAISES'
      'where'
      '  COD_PAIS = :OLD_COD_PAIS')
    InsertSQL.Strings = (
      'insert into PAISES'
      '  (COD_PAIS, NOME_PAIS)'
      'values'
      '  (:COD_PAIS, :NOME_PAIS)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_PAIS,'
      '  NOME_PAIS'
      'from PAISES '
      'where'
      '  COD_PAIS = :COD_PAIS')
    SelectSQL.Strings = (
      'select * '
      'from PAISES'
      'order by NOME_PAIS')
    ModifySQL.Strings = (
      'update PAISES'
      'set'
      '  COD_PAIS = :COD_PAIS,'
      '  NOME_PAIS = :NOME_PAIS'
      'where'
      '  COD_PAIS = :OLD_COD_PAIS')
    GeneratorField.Field = 'COD_PAIS'
    GeneratorField.Generator = 'GEN_PAISES_ID'
    Left = 696
    Top = 58
    object paisCOD_PAIS: TIntegerField
      FieldName = 'COD_PAIS'
      Origin = '"PAISES"."COD_PAIS"'
      Required = True
    end
    object paisNOME_PAIS: TIBStringField
      FieldName = 'NOME_PAIS'
      Origin = '"PAISES"."NOME_PAIS"'
      Size = 25
    end
  end
  object logadouro: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from LOGADOURO'
      'where'
      '  COD_LOGADOURO = :OLD_COD_LOGADOURO')
    InsertSQL.Strings = (
      'insert into LOGADOURO'
      '  (COD_LOGADOURO, NOME_LOGADOURO)'
      'values'
      '  (:COD_LOGADOURO, :NOME_LOGADOURO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_LOGADOURO,'
      '  NOME_LOGADOURO'
      'from LOGADOURO '
      'where'
      '  COD_LOGADOURO = :COD_LOGADOURO')
    SelectSQL.Strings = (
      'select * '
      'from LOGADOURO'
      'order by NOME_LOGADOURO')
    ModifySQL.Strings = (
      'update LOGADOURO'
      'set'
      '  COD_LOGADOURO = :COD_LOGADOURO,'
      '  NOME_LOGADOURO = :NOME_LOGADOURO'
      'where'
      '  COD_LOGADOURO = :OLD_COD_LOGADOURO')
    Left = 752
    Top = 160
    object logadouroCOD_LOGADOURO: TIntegerField
      FieldName = 'COD_LOGADOURO'
      Origin = '"LOGADOURO"."COD_LOGADOURO"'
      Required = True
    end
    object logadouroNOME_LOGADOURO: TIBStringField
      FieldName = 'NOME_LOGADOURO'
      Origin = '"LOGADOURO"."NOME_LOGADOURO"'
    end
  end
  object dsorgao: TDataSource
    DataSet = orgao
    Left = 816
    Top = 212
  end
  object dspais: TDataSource
    DataSet = pais
    Left = 696
    Top = 112
  end
  object dslogadouro: TDataSource
    DataSet = logadouro
    Left = 752
    Top = 212
  end
  object dsend_cob: TDataSource
    DataSet = end_cob
    Left = 208
    Top = 600
  end
  object end_cob: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    OnNewRecord = end_cobNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from END_COB'
      'where'
      '  COD_ALUNO = :OLD_COD_ALUNO')
    InsertSQL.Strings = (
      'insert into END_COB'
      '  (COD_ALUNO, ENDERECO, NUMERO, CEP, TELEFONE, CIDADE)'
      'values'
      '  (:COD_ALUNO, :ENDERECO, :NUMERO, :CEP, :TELEFONE, :CIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_ALUNO,'
      '  ENDERECO,'
      '  NUMERO,'
      '  CEP,'
      '  TELEFONE,'
      '  CIDADE'
      'from END_COB '
      'where'
      '  COD_ALUNO = :COD_ALUNO')
    SelectSQL.Strings = (
      'select * '
      'from END_COB'
      'where COD_ALUNO = :CODIGO'
      'order by COD_ALUNO')
    ModifySQL.Strings = (
      'update END_COB'
      'set'
      '  COD_ALUNO = :COD_ALUNO,'
      '  ENDERECO = :ENDERECO,'
      '  NUMERO = :NUMERO,'
      '  CEP = :CEP,'
      '  TELEFONE = :TELEFONE,'
      '  CIDADE = :CIDADE'
      'where'
      '  COD_ALUNO = :OLD_COD_ALUNO')
    DataSource = dsAlunos
    Left = 272
    Top = 600
    object end_cobCOD_ALUNO: TIntegerField
      FieldName = 'COD_ALUNO'
      Origin = '"END_COB"."COD_ALUNO"'
      Required = True
    end
    object end_cobENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"END_COB"."ENDERECO"'
      Size = 30
    end
    object end_cobNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"END_COB"."NUMERO"'
      Size = 8
    end
    object end_cobCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"END_COB"."CEP"'
      Size = 9
    end
    object end_cobTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"END_COB"."TELEFONE"'
      Size = 15
    end
    object end_cobCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"END_COB"."CIDADE"'
    end
    object end_cobESTADO: TIBStringField
      FieldKind = fkLookup
      FieldName = 'ESTADO'
      LookupDataSet = qMunicipio
      LookupKeyFields = 'COD_MUNICIPIO'
      LookupResultField = 'UF'
      KeyFields = 'CIDADE'
      Lookup = True
    end
  end
  object dsGradePorfessor: TDataSource
    DataSet = ibGradeprofessor
    Left = 408
    Top = 312
  end
  object ibGradeprofessor: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    OnNewRecord = ibGradeprofessorNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from GRADEPROFESSOR'
      'where'
      '  PROFESSOR = :OLD_PROFESSOR and'
      '  DISCIPLINA = :OLD_DISCIPLINA and'
      '  TURMA = :OLD_TURMA and'
      '  SERIE = :OLD_SERIE')
    InsertSQL.Strings = (
      'insert into GRADEPROFESSOR'
      '  (PROFESSOR, DISCIPLINA, TURMA, SERIE, HORA, SETOR)'
      'values'
      '  (:PROFESSOR, :DISCIPLINA, :TURMA, :SERIE, :HORA, :SETOR)')
    RefreshSQL.Strings = (
      'Select '
      '  PROFESSOR,'
      '  DISCIPLINA,'
      '  TURMA,'
      '  SERIE,'
      '  HORA,'
      '  SETOR'
      'from GRADEPROFESSOR '
      'where'
      '  PROFESSOR = :PROFESSOR and'
      '  DISCIPLINA = :DISCIPLINA and'
      '  TURMA = :TURMA and'
      '  SERIE = :SERIE')
    SelectSQL.Strings = (
      'select * '
      'from GRADEPROFESSOR'
      'where PROFESSOR = :COD_PROF')
    ModifySQL.Strings = (
      'update GRADEPROFESSOR'
      'set'
      '  PROFESSOR = :PROFESSOR,'
      '  DISCIPLINA = :DISCIPLINA,'
      '  TURMA = :TURMA,'
      '  SERIE = :SERIE,'
      '  HORA = :HORA,'
      '  SETOR = :SETOR'
      'where'
      '  PROFESSOR = :OLD_PROFESSOR and'
      '  DISCIPLINA = :OLD_DISCIPLINA and'
      '  TURMA = :OLD_TURMA and'
      '  SERIE = :OLD_SERIE')
    DataSource = dsProfessores
    Left = 504
    Top = 306
    object ibGradeprofessorPROFESSOR: TIntegerField
      FieldName = 'PROFESSOR'
      Origin = '"GRADEPROFESSOR"."PROFESSOR"'
      Required = True
    end
    object ibGradeprofessorDISCIPLINA: TIntegerField
      FieldName = 'DISCIPLINA'
      Origin = '"GRADEPROFESSOR"."DISCIPLINA"'
      Required = True
    end
    object ibGradeprofessorTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"GRADEPROFESSOR"."TURMA"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ibGradeprofessorSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = '"GRADEPROFESSOR"."SERIE"'
      Required = True
    end
    object ibGradeprofessorHORA: TDateTimeField
      FieldName = 'HORA'
      Origin = '"GRADEPROFESSOR"."HORA"'
    end
    object ibGradeprofessornomedisciplina: TIBStringField
      DisplayWidth = 35
      FieldKind = fkLookup
      FieldName = 'nomedisciplina'
      LookupDataSet = Disciplinas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'DISCIPLINA'
      Size = 35
      Lookup = True
    end
    object ibGradeprofessorSETOR: TIBStringField
      FieldName = 'SETOR'
      Origin = '"GRADEPROFESSOR"."SETOR"'
      FixedChar = True
      Size = 1
    end
  end
  object dstiposanguineo: TDataSource
    DataSet = tiposanguineo
    Left = 592
    Top = 306
  end
  object tiposanguineo: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TIPOSANGUINEO'
      'where'
      '  ID_SANGUE = :OLD_ID_SANGUE')
    InsertSQL.Strings = (
      'insert into TIPOSANGUINEO'
      '  (ID_SANGUE, SANGUE)'
      'values'
      '  (:ID_SANGUE, :SANGUE)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_SANGUE,'
      '  SANGUE'
      'from TIPOSANGUINEO '
      'where'
      '  ID_SANGUE = :ID_SANGUE')
    SelectSQL.Strings = (
      'select * from TIPOSANGUINEO')
    ModifySQL.Strings = (
      'update TIPOSANGUINEO'
      'set'
      '  ID_SANGUE = :ID_SANGUE,'
      '  SANGUE = :SANGUE'
      'where'
      '  ID_SANGUE = :OLD_ID_SANGUE')
    Left = 672
    Top = 306
    object tiposanguineoID_SANGUE: TIntegerField
      FieldName = 'ID_SANGUE'
      Origin = '"TIPOSANGUINEO"."ID_SANGUE"'
      Required = True
    end
    object tiposanguineoSANGUE: TIBStringField
      FieldName = 'SANGUE'
      Origin = '"TIPOSANGUINEO"."SANGUE"'
      FixedChar = True
      Size = 3
    end
  end
  object upMunicipio: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_MUNICIPIO,'
      '  UF,'
      '  NOME_MUNICIPIO'
      'from MUNICIPIO '
      'where'
      '  COD_MUNICIPIO = :COD_MUNICIPIO')
    ModifySQL.Strings = (
      'update MUNICIPIO'
      'set'
      '  COD_MUNICIPIO = :COD_MUNICIPIO,'
      '  UF = :UF,'
      '  NOME_MUNICIPIO = :NOME_MUNICIPIO'
      'where'
      '  COD_MUNICIPIO = :OLD_COD_MUNICIPIO')
    InsertSQL.Strings = (
      'insert into MUNICIPIO'
      '  (COD_MUNICIPIO, UF, NOME_MUNICIPIO)'
      'values'
      '  (:COD_MUNICIPIO, :UF, :NOME_MUNICIPIO)')
    DeleteSQL.Strings = (
      'delete from MUNICIPIO'
      'where'
      '  COD_MUNICIPIO = :OLD_COD_MUNICIPIO')
    Left = 680
    Top = 352
  end
  object qMunicipio: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from MUNICIPIO'
      'Order By NOME_MUNICIPIO')
    UpdateObject = upMunicipio
    Left = 680
    Top = 396
    object qMunicipioCOD_MUNICIPIO: TIntegerField
      FieldName = 'COD_MUNICIPIO'
      Origin = '"MUNICIPIO"."COD_MUNICIPIO"'
      Required = True
    end
    object qMunicipioUF: TIBStringField
      FieldName = 'UF'
      Origin = '"MUNICIPIO"."UF"'
      FixedChar = True
      Size = 2
    end
    object qMunicipioNOME_MUNICIPIO: TIBStringField
      FieldName = 'NOME_MUNICIPIO'
      Origin = '"MUNICIPIO"."NOME_MUNICIPIO"'
      Size = 30
    end
  end
  object dsMunicipio: TDataSource
    DataSet = qMunicipio
    Left = 680
    Top = 448
  end
  object qatualizaPuxaNotas: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ATUALIZA_PUXANOTAS(:cod,:serie,:disc)')
    Left = 32
    Top = 212
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'disc'
        ParamType = ptUnknown
      end>
    object qatualizaPuxaNotasALU_COD: TIntegerField
      FieldName = 'ALU_COD'
      Origin = '"ATUALIZA_HIST"."ALU_COD"'
    end
    object qatualizaPuxaNotasALU_STATUS: TIBStringField
      FieldName = 'ALU_STATUS'
      Origin = '"ATUALIZA_HIST"."ALU_STATUS"'
      FixedChar = True
      Size = 1
    end
    object qatualizaPuxaNotasRESULTADO: TIBStringField
      FieldName = 'RESULTADO'
      Origin = '"ATUALIZA_HIST"."RESULTADO"'
      Size = 15
    end
    object qatualizaPuxaNotasDISC: TIntegerField
      FieldName = 'DISC'
      Origin = '"ATUALIZA_HIST"."DISC"'
    end
    object qatualizaPuxaNotasM_ANUAL: TIBBCDField
      FieldName = 'M_ANUAL'
      Origin = '"ATUALIZA_HIST"."M_ANUAL"'
      Precision = 9
      Size = 1
    end
    object qatualizaPuxaNotasEXAME_N: TIBBCDField
      FieldName = 'EXAME_N'
      Origin = '"ATUALIZA_HIST"."EXAME_N"'
      Precision = 9
      Size = 1
    end
  end
  object dsAtualizaPuxaNotas: TDataSource
    DataSet = qatualizaPuxaNotas
    Left = 136
    Top = 212
  end
  object dsManutencaoFrentes: TDataSource
    DataSet = qManutencaoFrentes
    Left = 784
    Top = 448
  end
  object qManutencaoFrentes: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    OnCalcFields = qManutencaoFrentesCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from MFRENTES'
      'where DISCIPLINA is not null'
      'order by SERIEF, TURMAF, DISCIPLINA')
    UpdateObject = upManutencaoFrentes
    Left = 776
    Top = 396
    object qManutencaoFrentesDISCIPLINA: TIntegerField
      FieldName = 'DISCIPLINA'
      Origin = '"MFRENTES"."DISCIPLINA"'
      Required = True
    end
    object qManutencaoFrentesTURMAF: TIBStringField
      FieldName = 'TURMAF'
      Origin = '"MFRENTES"."TURMAF"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qManutencaoFrentesSERIEF: TSmallintField
      FieldName = 'SERIEF'
      Origin = '"MFRENTES"."SERIEF"'
      Required = True
    end
    object qManutencaoFrentesQFRENTES: TIntegerField
      FieldName = 'QFRENTES'
      Origin = '"MFRENTES"."QFRENTES"'
      Required = True
    end
    object qManutencaoFrentesnomedisciplina: TIBStringField
      FieldKind = fkLookup
      FieldName = 'nomedisciplina'
      LookupDataSet = Disciplinas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'DISCIPLINA'
      Lookup = True
    end
    object qManutencaoFrentesseriex: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'seriex'
      Calculated = True
    end
  end
  object upManutencaoFrentes: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  DISCIPLINA,'
      '  TURMAF,'
      '  SERIEF,'
      '  QFRENTES'
      'from MFRENTES '
      'where'
      '  DISCIPLINA = :DISCIPLINA and'
      '  TURMAF = :TURMAF and'
      '  SERIEF = :SERIEF')
    ModifySQL.Strings = (
      'update MFRENTES'
      'set'
      '  DISCIPLINA = :DISCIPLINA,'
      '  TURMAF = :TURMAF,'
      '  SERIEF = :SERIEF,'
      '  QFRENTES = :QFRENTES'
      'where'
      '  DISCIPLINA = :OLD_DISCIPLINA and'
      '  TURMAF = :OLD_TURMAF and'
      '  SERIEF = :OLD_SERIEF')
    InsertSQL.Strings = (
      'insert into MFRENTES'
      '  (DISCIPLINA, TURMAF, SERIEF, QFRENTES)'
      'values'
      '  (:DISCIPLINA, :TURMAF, :SERIEF, :QFRENTES)')
    DeleteSQL.Strings = (
      'delete from MFRENTES'
      'where'
      '  DISCIPLINA = :OLD_DISCIPLINA and'
      '  TURMAF = :OLD_TURMAF and'
      '  SERIEF = :OLD_SERIEF')
    Left = 776
    Top = 352
  end
  object dsNotasAnt: TDataSource
    DataSet = qNotasAnt
    Left = 888
    Top = 160
  end
  object qNotasAnt: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select A.*, B.CODIGO, B.CHAMADA, B.NOME, Disc.FRENTES'
      'from NOTAS A'
      'inner join ALUNOS B on B.CODIGO = A.ALUNO'
      'inner join DISCIPLINAS Disc on Disc.CODIGO = A.DISCIPLINA'
      'where B.SERIE = :serie and B.TURMA = :turma and'
      '          A.DISCIPLINA = :disciplina and'
      '          A.BIMESTRE = :bimestre')
    Left = 952
    Top = 160
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
    object qNotasAntALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = '"NOTAS"."ALUNO"'
      Required = True
    end
    object qNotasAntDISCIPLINA: TIntegerField
      FieldName = 'DISCIPLINA'
      Origin = '"NOTAS"."DISCIPLINA"'
      Required = True
    end
    object qNotasAntBIMESTRE: TSmallintField
      FieldName = 'BIMESTRE'
      Origin = '"NOTAS"."BIMESTRE"'
      Required = True
    end
    object qNotasAntNOTA1: TIBBCDField
      FieldName = 'NOTA1'
      Origin = '"NOTAS"."NOTA1"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object qNotasAntNOTA2: TIBBCDField
      FieldName = 'NOTA2'
      Origin = '"NOTAS"."NOTA2"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object qNotasAntNOTA3: TIBBCDField
      FieldName = 'NOTA3'
      Origin = '"NOTAS"."NOTA3"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object qNotasAntNOTA4: TIBBCDField
      FieldName = 'NOTA4'
      Origin = '"NOTAS"."NOTA4"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object qNotasAntNOTA5: TIBBCDField
      FieldName = 'NOTA5'
      Origin = '"NOTAS"."NOTA5"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object qNotasAntNOTA6: TIBBCDField
      FieldName = 'NOTA6'
      Origin = '"NOTAS"."NOTA6"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object qNotasAntNOTA: TIBBCDField
      FieldName = 'NOTA'
      Origin = '"NOTAS"."NOTA"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object qNotasAntRECUPBIM: TIBBCDField
      FieldName = 'RECUPBIM'
      Origin = '"NOTAS"."RECUPBIM"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object qNotasAntRECUPBIM1: TIBBCDField
      FieldName = 'RECUPBIM1'
      Origin = '"NOTAS"."RECUPBIM1"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object qNotasAntRECUPBIM2: TIBBCDField
      FieldName = 'RECUPBIM2'
      Origin = '"NOTAS"."RECUPBIM2"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object qNotasAntRECUPBIM3: TIBBCDField
      FieldName = 'RECUPBIM3'
      Origin = '"NOTAS"."RECUPBIM3"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object qNotasAntPROFESSOR1: TIntegerField
      FieldName = 'PROFESSOR1'
      Origin = '"NOTAS"."PROFESSOR1"'
    end
    object qNotasAntPROFESSOR2: TIntegerField
      FieldName = 'PROFESSOR2'
      Origin = '"NOTAS"."PROFESSOR2"'
    end
    object qNotasAntPROFESSOR3: TIntegerField
      FieldName = 'PROFESSOR3'
      Origin = '"NOTAS"."PROFESSOR3"'
    end
    object qNotasAntSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"NOTAS"."STATUS"'
      FixedChar = True
      Size = 1
    end
    object qNotasAntUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"NOTAS"."USUARIO"'
    end
    object qNotasAntCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"ALUNOS"."CODIGO"'
      Required = True
    end
    object qNotasAntCHAMADA: TSmallintField
      FieldName = 'CHAMADA'
      Origin = '"ALUNOS"."CHAMADA"'
    end
    object qNotasAntNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ALUNOS"."NOME"'
      Required = True
      Size = 60
    end
    object qNotasAntFRENTES: TSmallintField
      FieldName = 'FRENTES'
      Origin = '"DISCIPLINAS"."FRENTES"'
    end
  end
  object saEstado: TDataSource
    DataSet = estado
    Left = 872
    Top = 240
  end
  object estado: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ESTADO'
      'where'
      '  COD_UF = :OLD_COD_UF')
    InsertSQL.Strings = (
      'insert into ESTADO'
      '  (COD_UF, UF)'
      'values'
      '  (:COD_UF, :UF)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_UF,'
      '  UF'
      'from ESTADO '
      'where'
      '  COD_UF = :COD_UF')
    SelectSQL.Strings = (
      'select *'
      'from ESTADO'
      'where cod_uf is not null'
      'order by uf')
    ModifySQL.Strings = (
      'update ESTADO'
      'set'
      '  COD_UF = :COD_UF,'
      '  UF = :UF'
      'where'
      '  COD_UF = :OLD_COD_UF')
    Left = 936
    Top = 240
    object estadoCOD_UF: TIntegerField
      FieldName = 'COD_UF'
      Origin = '"ESTADO"."COD_UF"'
      Required = True
    end
    object estadoUF: TIBStringField
      FieldName = 'UF'
      Origin = '"ESTADO"."UF"'
      FixedChar = True
      Size = 2
    end
  end
  object IqCont: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from CONT_RECUP(:serie,:turma,:bimestre,:media)')
    Left = 382
    Top = 359
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
    object IqContN_01_F1: TIntegerField
      FieldName = 'N_01_F1'
      Origin = '"CONT_RECUP"."N_01_F1"'
    end
    object IqContN_01_F2: TIntegerField
      FieldName = 'N_01_F2'
      Origin = '"CONT_RECUP"."N_01_F2"'
    end
    object IqContN_01_F3: TIntegerField
      FieldName = 'N_01_F3'
      Origin = '"CONT_RECUP"."N_01_F3"'
    end
    object IqContN_02_F1: TIntegerField
      FieldName = 'N_02_F1'
      Origin = '"CONT_RECUP"."N_02_F1"'
    end
    object IqContN_02_F2: TIntegerField
      FieldName = 'N_02_F2'
      Origin = '"CONT_RECUP"."N_02_F2"'
    end
    object IqContN_02_F3: TIntegerField
      FieldName = 'N_02_F3'
      Origin = '"CONT_RECUP"."N_02_F3"'
    end
    object IqContN_03_F1: TIntegerField
      FieldName = 'N_03_F1'
      Origin = '"CONT_RECUP"."N_03_F1"'
    end
    object IqContN_03_F2: TIntegerField
      FieldName = 'N_03_F2'
      Origin = '"CONT_RECUP"."N_03_F2"'
    end
    object IqContN_03_F3: TIntegerField
      FieldName = 'N_03_F3'
      Origin = '"CONT_RECUP"."N_03_F3"'
    end
    object IqContN_04_F1: TIntegerField
      FieldName = 'N_04_F1'
      Origin = '"CONT_RECUP"."N_04_F1"'
    end
    object IqContN_04_F2: TIntegerField
      FieldName = 'N_04_F2'
      Origin = '"CONT_RECUP"."N_04_F2"'
    end
    object IqContN_04_F3: TIntegerField
      FieldName = 'N_04_F3'
      Origin = '"CONT_RECUP"."N_04_F3"'
    end
    object IqContN_05_F1: TIntegerField
      FieldName = 'N_05_F1'
      Origin = '"CONT_RECUP"."N_05_F1"'
    end
    object IqContN_05_F2: TIntegerField
      FieldName = 'N_05_F2'
      Origin = '"CONT_RECUP"."N_05_F2"'
    end
    object IqContN_05_F3: TIntegerField
      FieldName = 'N_05_F3'
      Origin = '"CONT_RECUP"."N_05_F3"'
    end
    object IqContN_06_F1: TIntegerField
      FieldName = 'N_06_F1'
      Origin = '"CONT_RECUP"."N_06_F1"'
    end
    object IqContN_06_F2: TIntegerField
      FieldName = 'N_06_F2'
      Origin = '"CONT_RECUP"."N_06_F2"'
    end
    object IqContN_06_F3: TIntegerField
      FieldName = 'N_06_F3'
      Origin = '"CONT_RECUP"."N_06_F3"'
    end
    object IqContN_07_F1: TIntegerField
      FieldName = 'N_07_F1'
      Origin = '"CONT_RECUP"."N_07_F1"'
    end
    object IqContN_07_F2: TIntegerField
      FieldName = 'N_07_F2'
      Origin = '"CONT_RECUP"."N_07_F2"'
    end
    object IqContN_07_F3: TIntegerField
      FieldName = 'N_07_F3'
      Origin = '"CONT_RECUP"."N_07_F3"'
    end
    object IqContN_08_F1: TIntegerField
      FieldName = 'N_08_F1'
      Origin = '"CONT_RECUP"."N_08_F1"'
    end
    object IqContN_08_F2: TIntegerField
      FieldName = 'N_08_F2'
      Origin = '"CONT_RECUP"."N_08_F2"'
    end
    object IqContN_08_F3: TIntegerField
      FieldName = 'N_08_F3'
      Origin = '"CONT_RECUP"."N_08_F3"'
    end
    object IqContN_09_F1: TIntegerField
      FieldName = 'N_09_F1'
      Origin = '"CONT_RECUP"."N_09_F1"'
    end
    object IqContN_09_F2: TIntegerField
      FieldName = 'N_09_F2'
      Origin = '"CONT_RECUP"."N_09_F2"'
    end
    object IqContN_09_F3: TIntegerField
      FieldName = 'N_09_F3'
      Origin = '"CONT_RECUP"."N_09_F3"'
    end
    object IqContN_10_F1: TIntegerField
      FieldName = 'N_10_F1'
      Origin = '"CONT_RECUP"."N_10_F1"'
    end
    object IqContN_10_F2: TIntegerField
      FieldName = 'N_10_F2'
      Origin = '"CONT_RECUP"."N_10_F2"'
    end
    object IqContN_10_F3: TIntegerField
      FieldName = 'N_10_F3'
      Origin = '"CONT_RECUP"."N_10_F3"'
    end
    object IqContN_11_F1: TIntegerField
      FieldName = 'N_11_F1'
      Origin = '"CONT_RECUP"."N_11_F1"'
    end
    object IqContN_11_F2: TIntegerField
      FieldName = 'N_11_F2'
      Origin = '"CONT_RECUP"."N_11_F2"'
    end
    object IqContN_11_F3: TIntegerField
      FieldName = 'N_11_F3'
      Origin = '"CONT_RECUP"."N_11_F3"'
    end
    object IqContN_12_F1: TIntegerField
      FieldName = 'N_12_F1'
      Origin = '"CONT_RECUP"."N_12_F1"'
    end
    object IqContN_12_F2: TIntegerField
      FieldName = 'N_12_F2'
      Origin = '"CONT_RECUP"."N_12_F2"'
    end
    object IqContN_12_F3: TIntegerField
      FieldName = 'N_12_F3'
      Origin = '"CONT_RECUP"."N_12_F3"'
    end
    object IqContN_13_F1: TIntegerField
      FieldName = 'N_13_F1'
      Origin = '"CONT_RECUP"."N_13_F1"'
    end
    object IqContN_13_F2: TIntegerField
      FieldName = 'N_13_F2'
      Origin = '"CONT_RECUP"."N_13_F2"'
    end
    object IqContN_13_F3: TIntegerField
      FieldName = 'N_13_F3'
      Origin = '"CONT_RECUP"."N_13_F3"'
    end
    object IqContN_14_F1: TIntegerField
      FieldName = 'N_14_F1'
      Origin = '"CONT_RECUP"."N_14_F1"'
    end
    object IqContN_14_F2: TIntegerField
      FieldName = 'N_14_F2'
      Origin = '"CONT_RECUP"."N_14_F2"'
    end
    object IqContN_14_F3: TIntegerField
      FieldName = 'N_14_F3'
      Origin = '"CONT_RECUP"."N_14_F3"'
    end
    object IqContN_15_F1: TIntegerField
      FieldName = 'N_15_F1'
      Origin = '"CONT_RECUP"."N_15_F1"'
    end
    object IqContN_15_F2: TIntegerField
      FieldName = 'N_15_F2'
      Origin = '"CONT_RECUP"."N_15_F2"'
    end
    object IqContN_15_F3: TIntegerField
      FieldName = 'N_15_F3'
      Origin = '"CONT_RECUP"."N_15_F3"'
    end
    object IqContN_16_F1: TIntegerField
      FieldName = 'N_16_F1'
      Origin = '"CONT_RECUP"."N_16_F1"'
    end
    object IqContN_16_F2: TIntegerField
      FieldName = 'N_16_F2'
      Origin = '"CONT_RECUP"."N_16_F2"'
    end
    object IqContN_16_F3: TIntegerField
      FieldName = 'N_16_F3'
      Origin = '"CONT_RECUP"."N_16_F3"'
    end
    object IqContN_17_F1: TIntegerField
      FieldName = 'N_17_F1'
      Origin = '"CONT_RECUP"."N_17_F1"'
    end
    object IqContN_17_F2: TIntegerField
      FieldName = 'N_17_F2'
      Origin = '"CONT_RECUP"."N_17_F2"'
    end
    object IqContN_17_F3: TIntegerField
      FieldName = 'N_17_F3'
      Origin = '"CONT_RECUP"."N_17_F3"'
    end
    object IqContN_18_F1: TIntegerField
      FieldName = 'N_18_F1'
      Origin = '"CONT_RECUP"."N_18_F1"'
    end
    object IqContN_18_F2: TIntegerField
      FieldName = 'N_18_F2'
      Origin = '"CONT_RECUP"."N_18_F2"'
    end
    object IqContN_18_F3: TIntegerField
      FieldName = 'N_18_F3'
      Origin = '"CONT_RECUP"."N_18_F3"'
    end
    object IqContN_19_F1: TIntegerField
      FieldName = 'N_19_F1'
      Origin = '"CONT_RECUP"."N_19_F1"'
    end
    object IqContN_19_F2: TIntegerField
      FieldName = 'N_19_F2'
      Origin = '"CONT_RECUP"."N_19_F2"'
    end
    object IqContN_19_F3: TIntegerField
      FieldName = 'N_19_F3'
      Origin = '"CONT_RECUP"."N_19_F3"'
    end
    object IqContN_20_F1: TIntegerField
      FieldName = 'N_20_F1'
      Origin = '"CONT_RECUP"."N_20_F1"'
    end
    object IqContN_20_F2: TIntegerField
      FieldName = 'N_20_F2'
      Origin = '"CONT_RECUP"."N_20_F2"'
    end
    object IqContN_20_F3: TIntegerField
      FieldName = 'N_20_F3'
      Origin = '"CONT_RECUP"."N_20_F3"'
    end
  end
  object dsCont: TDataSource
    DataSet = IqCont
    Left = 446
    Top = 359
  end
  object MapaInd: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from MEDIAS_FINAIS_ATA_Ind(:serie,:turma)'
      'order by alu_chamada, alu_nome')
    Left = 696
    Top = 552
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
    object MapaIndALU_COD: TIntegerField
      FieldName = 'ALU_COD'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."ALU_COD"'
    end
    object MapaIndALU_CHAMADA: TSmallintField
      FieldName = 'ALU_CHAMADA'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."ALU_CHAMADA"'
    end
    object MapaIndALU_NOME: TIBStringField
      FieldName = 'ALU_NOME'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."ALU_NOME"'
      Size = 60
    end
    object MapaIndALU_STATUS: TIBStringField
      FieldName = 'ALU_STATUS'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."ALU_STATUS"'
      FixedChar = True
      Size = 1
    end
    object MapaIndM_01: TIBBCDField
      FieldName = 'M_01'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."M_01"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MapaIndM_02: TIBBCDField
      FieldName = 'M_02'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."M_02"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MapaIndM_03: TIBBCDField
      FieldName = 'M_03'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."M_03"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MapaIndM_04: TIBBCDField
      FieldName = 'M_04'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."M_04"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MapaIndM_05: TIBBCDField
      FieldName = 'M_05'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."M_05"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MapaIndM_06: TIBBCDField
      FieldName = 'M_06'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."M_06"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MapaIndM_07: TIBBCDField
      FieldName = 'M_07'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."M_07"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MapaIndM_08: TIBBCDField
      FieldName = 'M_08'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."M_08"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MapaIndM_09: TIBBCDField
      FieldName = 'M_09'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."M_09"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MapaIndM_10: TIBBCDField
      FieldName = 'M_10'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."M_10"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MapaIndM_11: TIBBCDField
      FieldName = 'M_11'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."M_11"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MapaIndM_12: TIBBCDField
      FieldName = 'M_12'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."M_12"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MapaIndM_13: TIBBCDField
      FieldName = 'M_13'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."M_13"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MapaIndM_14: TIBBCDField
      FieldName = 'M_14'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."M_14"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MapaIndM_15: TIBBCDField
      FieldName = 'M_15'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."M_15"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MapaIndM_16: TIBBCDField
      FieldName = 'M_16'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."M_16"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MapaIndM_17: TIBBCDField
      FieldName = 'M_17'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."M_17"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MapaIndM_18: TIBBCDField
      FieldName = 'M_18'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."M_18"'
      DisplayFormat = '#0.0'
      Precision = 9
      Size = 1
    end
    object MapaIndMODALIDADE: TIBStringField
      FieldName = 'MODALIDADE'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."MODALIDADE"'
      FixedChar = True
      Size = 3
    end
    object MapaIndRESULTADO: TIBStringField
      FieldName = 'RESULTADO'
      Origin = '"MEDIAS_FINAIS_ATA_IND"."RESULTADO"'
      Size = 15
    end
  end
  object dsMapaInd: TDataSource
    DataSet = MapaInd
    Left = 776
    Top = 552
  end
  object dsSerieIps: TDataSource
    DataSet = ibSerieIps
    Left = 784
    Top = 608
  end
  object ibSerieIps: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BeforePost = ibSerieIpsBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from SERIE_IPS'
      'where'
      '  ID_IPS = :OLD_ID_IPS')
    InsertSQL.Strings = (
      'insert into SERIE_IPS'
      '  (ID_IPS, SERIE, TURMA, IP)'
      'values'
      '  (:ID_IPS, :SERIE, :TURMA, :IP)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_IPS,'
      '  SERIE,'
      '  TURMA,'
      '  IP'
      'from SERIE_IPS '
      'where'
      '  ID_IPS = :ID_IPS')
    SelectSQL.Strings = (
      'select * '
      'from SERIE_IPS')
    ModifySQL.Strings = (
      'update SERIE_IPS'
      'set'
      '  ID_IPS = :ID_IPS,'
      '  SERIE = :SERIE,'
      '  TURMA = :TURMA,'
      '  IP = :IP'
      'where'
      '  ID_IPS = :OLD_ID_IPS')
    GeneratorField.Field = 'ID_IPS'
    GeneratorField.Generator = 'GEN_SERIE_IPS_ID'
    Left = 696
    Top = 608
    object ibSerieIpsID_IPS: TIntegerField
      FieldName = 'ID_IPS'
      Origin = '"SERIE_IPS"."ID_IPS"'
      Required = True
    end
    object ibSerieIpsSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = '"SERIE_IPS"."SERIE"'
    end
    object ibSerieIpsTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"SERIE_IPS"."TURMA"'
      FixedChar = True
      Size = 1
    end
    object ibSerieIpsIP: TIBStringField
      FieldName = 'IP'
      Origin = '"SERIE_IPS"."IP"'
      Size = 15
    end
    object ibSerieIpsSALA: TIBStringField
      FieldName = 'SALA'
      Origin = '"SERIE_IPS"."SALA"'
      Size = 4
    end
    object ibSerieIpsPORTA: TIBStringField
      FieldName = 'PORTA'
      Origin = '"SERIE_IPS"."PORTA"'
      Size = 4
    end
  end
  object dsDigital: TDataSource
    DataSet = ibDigital
    Left = 840
    Top = 560
  end
  object ibDigital: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from DIGITAL'
      'where'
      '  ID_DIGITAL = :OLD_ID_DIGITAL')
    InsertSQL.Strings = (
      'insert into DIGITAL'
      '  (ID_DIGITAL, IMPRESSAO, ALUNO)'
      'values'
      '  (:ID_DIGITAL, :IMPRESSAO, :ALUNO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_DIGITAL,'
      '  IMPRESSAO,'
      '  ALUNO'
      'from DIGITAL '
      'where'
      '  ID_DIGITAL = :ID_DIGITAL')
    SelectSQL.Strings = (
      'select * '
      'from DIGITAL'
      'where ID_DIGITAL is not null')
    ModifySQL.Strings = (
      'update DIGITAL'
      'set'
      '  ID_DIGITAL = :ID_DIGITAL,'
      '  IMPRESSAO = :IMPRESSAO,'
      '  ALUNO = :ALUNO'
      'where'
      '  ID_DIGITAL = :OLD_ID_DIGITAL')
    GeneratorField.Field = 'ID_DIGITAL'
    GeneratorField.Generator = 'GEN_DIGITAL_ID'
    Left = 888
    Top = 560
    object ibDigitalID_DIGITAL: TIntegerField
      FieldName = 'ID_DIGITAL'
      Origin = '"DIGITAL"."ID_DIGITAL"'
      Required = True
    end
    object ibDigitalALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = '"DIGITAL"."ALUNO"'
    end
    object ibDigitalIMPRESSAO: TBlobField
      FieldName = 'IMPRESSAO'
      Origin = '"DIGITAL"."IMPRESSAO"'
      BlobType = ftBlob
      Size = 8
    end
  end
  object dsRetornoMotivo: TDataSource
    DataSet = ibRetornoMotivo
    Left = 344
    Top = 616
  end
  object ibRetornoMotivo: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from RETORNO_MOTIVO'
      'where'
      '  RETORNO_ID = :OLD_RETORNO_ID')
    InsertSQL.Strings = (
      'insert into RETORNO_MOTIVO'
      '  (RETORNO_ID, NOSSO_NUMERO, COD_MOTIVO, MOTIVO)'
      'values'
      '  (:RETORNO_ID, :NOSSO_NUMERO, :COD_MOTIVO, :MOTIVO)')
    RefreshSQL.Strings = (
      'Select '
      '  RETORNO_ID,'
      '  NOSSO_NUMERO,'
      '  COD_MOTIVO,'
      '  MOTIVO'
      'from RETORNO_MOTIVO '
      'where'
      '  RETORNO_ID = :RETORNO_ID')
    SelectSQL.Strings = (
      'select *'
      'from RETORNO_MOTIVO')
    ModifySQL.Strings = (
      'update RETORNO_MOTIVO'
      'set'
      '  RETORNO_ID = :RETORNO_ID,'
      '  NOSSO_NUMERO = :NOSSO_NUMERO,'
      '  COD_MOTIVO = :COD_MOTIVO,'
      '  MOTIVO = :MOTIVO'
      'where'
      '  RETORNO_ID = :OLD_RETORNO_ID')
    GeneratorField.Field = 'RETORNO_ID'
    GeneratorField.Generator = 'GEN_RETORNO_MOTIVO_ID'
    Left = 440
    Top = 616
    object ibRetornoMotivoRETORNO_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'RETORNO_ID'
      Origin = '"RETORNO_MOTIVO"."RETORNO_ID"'
      Required = True
    end
    object ibRetornoMotivoNOSSO_NUMERO: TIntegerField
      FieldName = 'NOSSO_NUMERO'
      Origin = '"RETORNO_MOTIVO"."NOSSO_NUMERO"'
    end
    object ibRetornoMotivoCOD_MOTIVO: TIBStringField
      FieldName = 'COD_MOTIVO'
      Origin = '"RETORNO_MOTIVO"."COD_MOTIVO"'
      Size = 10
    end
    object ibRetornoMotivoMOTIVO: TIBStringField
      FieldName = 'MOTIVO'
      Origin = '"RETORNO_MOTIVO"."MOTIVO"'
      Size = 150
    end
  end
  object dshorarioplantao: TDataSource
    DataSet = thorarioplantao
    Left = 704
    Top = 16
  end
  object thorarioplantao: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    OnNewRecord = thorarioplantaoNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PLANTOES_NET'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into PLANTOES_NET'
      
        '  (CODIGO, HORAS, DIA_SEMANA, PROFESSOR, DISCIPLINA, SERIE, TIPO' +
        ', UNIDADE)'
      'values'
      
        '  (:CODIGO, :HORAS, :DIA_SEMANA, :PROFESSOR, :DISCIPLINA, :SERIE' +
        ', :TIPO, '
      '   :UNIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  HORAS,'
      '  DIA_SEMANA,'
      '  PROFESSOR,'
      '  DISCIPLINA,'
      '  SERIE,'
      '  TIPO,'
      '  UNIDADE'
      'from PLANTOES_NET '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from PLANTOES_NET')
    ModifySQL.Strings = (
      'update PLANTOES_NET'
      'set'
      '  CODIGO = :CODIGO,'
      '  HORAS = :HORAS,'
      '  DIA_SEMANA = :DIA_SEMANA,'
      '  PROFESSOR = :PROFESSOR,'
      '  DISCIPLINA = :DISCIPLINA,'
      '  SERIE = :SERIE,'
      '  TIPO = :TIPO,'
      '  UNIDADE = :UNIDADE'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_PLANTOES_NET_ID'
    Left = 792
    Top = 16
    object thorarioplantaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PLANTOES_NET"."CODIGO"'
      Required = True
    end
    object thorarioplantaoHORAS: TIBStringField
      FieldName = 'HORAS'
      Origin = '"PLANTOES_NET"."HORAS"'
      EditMask = '!90:00;1;_'
    end
    object thorarioplantaoDIA_SEMANA: TIBStringField
      FieldName = 'DIA_SEMANA'
      Origin = '"PLANTOES_NET"."DIA_SEMANA"'
      Size = 15
    end
    object thorarioplantaoPROFESSOR: TIntegerField
      FieldName = 'PROFESSOR'
      Origin = '"PLANTOES_NET"."PROFESSOR"'
    end
    object thorarioplantaoDISCIPLINA: TIntegerField
      FieldName = 'DISCIPLINA'
      Origin = '"PLANTOES_NET"."DISCIPLINA"'
    end
    object thorarioplantaoSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"PLANTOES_NET"."SERIE"'
      Size = 15
    end
    object thorarioplantaoTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"PLANTOES_NET"."TIPO"'
      Size = 50
    end
    object thorarioplantaoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PLANTOES_NET"."UNIDADE"'
      FixedChar = True
      Size = 2
    end
  end
  object Bloquetos_Delete: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BLOQUETOS_DELETE'
      'where'
      '  NOSSO_NUMERO = :OLD_NOSSO_NUMERO')
    InsertSQL.Strings = (
      'insert into BLOQUETOS_DELETE'
      '  (NOSSO_NUMERO, ALUNO, PARCELA, EMISSAO, VENCIMENTO, VALOR, '
      'PAGAMENTO, '
      
        '   VALOR_PAGO, MENSALIDADE, MATERIAL, DESCONTO, TIPO_PG, ANO_DV,' +
        ' '
      'DESCONTO_ANT, '
      '   MENSALIDADE_ANT, VALOR_ANT, BAULA_AD, ST, TP, MOTIVO, '
      'DATA_LIMITE)'
      'values'
      
        '  (:NOSSO_NUMERO, :ALUNO, :PARCELA, :EMISSAO, :VENCIMENTO, :VALO' +
        'R, '
      ':PAGAMENTO, '
      '   :VALOR_PAGO, :MENSALIDADE, :MATERIAL, :DESCONTO, :TIPO_PG, '
      ':ANO_DV, '
      
        '   :DESCONTO_ANT, :MENSALIDADE_ANT, :VALOR_ANT, :BAULA_AD, :ST, ' +
        ':TP, '
      ':MOTIVO, '
      '   :DATA_LIMITE)')
    RefreshSQL.Strings = (
      'Select '
      '  NOSSO_NUMERO,'
      '  ALUNO,'
      '  PARCELA,'
      '  EMISSAO,'
      '  VENCIMENTO,'
      '  VALOR,'
      '  PAGAMENTO,'
      '  VALOR_PAGO,'
      '  MENSALIDADE,'
      '  MATERIAL,'
      '  DESCONTO,'
      '  TIPO_PG,'
      '  ANO_DV,'
      '  DESCONTO_ANT,'
      '  MENSALIDADE_ANT,'
      '  VALOR_ANT,'
      '  BAULA_AD,'
      '  ST,'
      '  TP,'
      '  MOTIVO,'
      '  DATA_LIMITE'
      'from BLOQUETOS_DELETE '
      'where'
      '  NOSSO_NUMERO = :NOSSO_NUMERO')
    SelectSQL.Strings = (
      'select *'
      'from BLOQUETOS_DELETE')
    ModifySQL.Strings = (
      'update BLOQUETOS_DELETE'
      'set'
      '  NOSSO_NUMERO = :NOSSO_NUMERO,'
      '  ALUNO = :ALUNO,'
      '  PARCELA = :PARCELA,'
      '  EMISSAO = :EMISSAO,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  VALOR = :VALOR,'
      '  PAGAMENTO = :PAGAMENTO,'
      '  VALOR_PAGO = :VALOR_PAGO,'
      '  MENSALIDADE = :MENSALIDADE,'
      '  MATERIAL = :MATERIAL,'
      '  DESCONTO = :DESCONTO,'
      '  TIPO_PG = :TIPO_PG,'
      '  ANO_DV = :ANO_DV,'
      '  DESCONTO_ANT = :DESCONTO_ANT,'
      '  MENSALIDADE_ANT = :MENSALIDADE_ANT,'
      '  VALOR_ANT = :VALOR_ANT,'
      '  BAULA_AD = :BAULA_AD,'
      '  ST = :ST,'
      '  TP = :TP,'
      '  MOTIVO = :MOTIVO,'
      '  DATA_LIMITE = :DATA_LIMITE'
      'where'
      '  NOSSO_NUMERO = :OLD_NOSSO_NUMERO')
    Left = 616
    Top = 368
    object Bloquetos_DeleteNOSSO_NUMERO: TIntegerField
      FieldName = 'NOSSO_NUMERO'
      Origin = '"BLOQUETOS_DELETE"."NOSSO_NUMERO"'
      Required = True
    end
    object Bloquetos_DeleteALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = '"BLOQUETOS_DELETE"."ALUNO"'
    end
    object Bloquetos_DeletePARCELA: TSmallintField
      FieldName = 'PARCELA'
      Origin = '"BLOQUETOS_DELETE"."PARCELA"'
    end
    object Bloquetos_DeleteEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"BLOQUETOS_DELETE"."EMISSAO"'
    end
    object Bloquetos_DeleteVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"BLOQUETOS_DELETE"."VENCIMENTO"'
    end
    object Bloquetos_DeleteVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"BLOQUETOS_DELETE"."VALOR"'
      Precision = 9
      Size = 2
    end
    object Bloquetos_DeletePAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"BLOQUETOS_DELETE"."PAGAMENTO"'
    end
    object Bloquetos_DeleteVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"BLOQUETOS_DELETE"."VALOR_PAGO"'
      Precision = 9
      Size = 2
    end
    object Bloquetos_DeleteMENSALIDADE: TIBBCDField
      FieldName = 'MENSALIDADE'
      Origin = '"BLOQUETOS_DELETE"."MENSALIDADE"'
      Precision = 9
      Size = 2
    end
    object Bloquetos_DeleteMATERIAL: TIBBCDField
      FieldName = 'MATERIAL'
      Origin = '"BLOQUETOS_DELETE"."MATERIAL"'
      Precision = 9
      Size = 2
    end
    object Bloquetos_DeleteDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"BLOQUETOS_DELETE"."DESCONTO"'
      Precision = 9
      Size = 2
    end
    object Bloquetos_DeleteTIPO_PG: TSmallintField
      FieldName = 'TIPO_PG'
      Origin = '"BLOQUETOS_DELETE"."TIPO_PG"'
    end
    object Bloquetos_DeleteANO_DV: TIBStringField
      FieldName = 'ANO_DV'
      Origin = '"BLOQUETOS_DELETE"."ANO_DV"'
      FixedChar = True
      Size = 2
    end
    object Bloquetos_DeleteDESCONTO_ANT: TIBBCDField
      FieldName = 'DESCONTO_ANT'
      Origin = '"BLOQUETOS_DELETE"."DESCONTO_ANT"'
      Precision = 9
      Size = 2
    end
    object Bloquetos_DeleteMENSALIDADE_ANT: TIBBCDField
      FieldName = 'MENSALIDADE_ANT'
      Origin = '"BLOQUETOS_DELETE"."MENSALIDADE_ANT"'
      Precision = 9
      Size = 2
    end
    object Bloquetos_DeleteVALOR_ANT: TIBBCDField
      FieldName = 'VALOR_ANT'
      Origin = '"BLOQUETOS_DELETE"."VALOR_ANT"'
      Precision = 9
      Size = 2
    end
    object Bloquetos_DeleteBAULA_AD: TIBStringField
      FieldName = 'BAULA_AD'
      Origin = '"BLOQUETOS_DELETE"."BAULA_AD"'
      FixedChar = True
      Size = 1
    end
    object Bloquetos_DeleteST: TIBStringField
      FieldName = 'ST'
      Origin = '"BLOQUETOS_DELETE"."ST"'
      FixedChar = True
      Size = 1
    end
    object Bloquetos_DeleteTP: TIntegerField
      FieldName = 'TP'
      Origin = '"BLOQUETOS_DELETE"."TP"'
    end
    object Bloquetos_DeleteMOTIVO: TIBStringField
      FieldName = 'MOTIVO'
      Origin = '"BLOQUETOS_DELETE"."MOTIVO"'
      Size = 150
    end
    object Bloquetos_DeleteDATA_LIMITE: TDateField
      FieldName = 'DATA_LIMITE'
      Origin = '"BLOQUETOS_DELETE"."DATA_LIMITE"'
    end
  end
  object DsBloqueto_Delete: TDataSource
    DataSet = Bloquetos_Delete
    Left = 528
    Top = 360
  end
  object DsNegociacao: TDataSource
    DataSet = Negociacao
    Left = 632
    Top = 504
  end
  object Negociacao: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NEGOCIACAO'
      'where'
      '  COD_NEGOCIACAO = :OLD_COD_NEGOCIACAO')
    InsertSQL.Strings = (
      'insert into NEGOCIACAO'
      
        '  (COD_NEGOCIACAO, DATA, QUANT, DIAS, ALUNO, VALOR, ANOTACAO, DA' +
        'TA_NEGOCIACAO)'
      'values'
      
        '  (:COD_NEGOCIACAO, :DATA, :QUANT, :DIAS, :ALUNO, :VALOR, :ANOTA' +
        'CAO, :DATA_NEGOCIACAO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_NEGOCIACAO,'
      '  DATA,'
      '  QUANT,'
      '  DIAS,'
      '  ALUNO,'
      '  VALOR,'
      '  ANOTACAO,'
      '  DATA_NEGOCIACAO'
      'from NEGOCIACAO '
      'where'
      '  COD_NEGOCIACAO = :COD_NEGOCIACAO')
    SelectSQL.Strings = (
      'select * '
      'from NEGOCIACAO')
    ModifySQL.Strings = (
      'update NEGOCIACAO'
      'set'
      '  COD_NEGOCIACAO = :COD_NEGOCIACAO,'
      '  DATA = :DATA,'
      '  QUANT = :QUANT,'
      '  DIAS = :DIAS,'
      '  ALUNO = :ALUNO,'
      '  VALOR = :VALOR,'
      '  ANOTACAO = :ANOTACAO,'
      '  DATA_NEGOCIACAO = :DATA_NEGOCIACAO'
      'where'
      '  COD_NEGOCIACAO = :OLD_COD_NEGOCIACAO')
    GeneratorField.Field = 'COD_NEGOCIACAO'
    GeneratorField.Generator = 'GEN_NEGOCIACAO_ID'
    Left = 696
    Top = 504
    object NegociacaoCOD_NEGOCIACAO: TIntegerField
      FieldName = 'COD_NEGOCIACAO'
      Origin = '"NEGOCIACAO"."COD_NEGOCIACAO"'
      Required = True
    end
    object NegociacaoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"NEGOCIACAO"."DATA"'
    end
    object NegociacaoQUANT: TIntegerField
      FieldName = 'QUANT'
      Origin = '"NEGOCIACAO"."QUANT"'
    end
    object NegociacaoDIAS: TIntegerField
      FieldName = 'DIAS'
      Origin = '"NEGOCIACAO"."DIAS"'
    end
    object NegociacaoALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = '"NEGOCIACAO"."ALUNO"'
    end
    object NegociacaoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"NEGOCIACAO"."VALOR"'
      currency = True
      Precision = 9
      Size = 2
    end
    object NegociacaoANOTACAO: TIBStringField
      FieldName = 'ANOTACAO'
      Origin = '"NEGOCIACAO"."ANOTACAO"'
      Size = 1000
    end
    object NegociacaoDATA_NEGOCIACAO: TDateField
      FieldName = 'DATA_NEGOCIACAO'
      Origin = '"NEGOCIACAO"."DATA_NEGOCIACAO"'
    end
  end
  object dsAtualizaPuxaNotas2: TDataSource
    DataSet = AtualizaPuxaNotas2
    Left = 360
    Top = 208
  end
  object AtualizaPuxaNotas2: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ATUALIZA_PUXANOTAS2(:cod,:serie,:disc)')
    Left = 248
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'disc'
        ParamType = ptUnknown
      end>
    object AtualizaPuxaNotas2ALU_COD: TIntegerField
      FieldName = 'ALU_COD'
      Origin = '"ATUALIZA_PUXANOTAS2"."ALU_COD"'
    end
    object AtualizaPuxaNotas2ALU_STATUS: TIBStringField
      FieldName = 'ALU_STATUS'
      Origin = '"ATUALIZA_PUXANOTAS2"."ALU_STATUS"'
      FixedChar = True
      Size = 1
    end
    object AtualizaPuxaNotas2RESULTADO: TIBStringField
      FieldName = 'RESULTADO'
      Origin = '"ATUALIZA_PUXANOTAS2"."RESULTADO"'
      Size = 15
    end
    object AtualizaPuxaNotas2DISC: TIntegerField
      FieldName = 'DISC'
      Origin = '"ATUALIZA_PUXANOTAS2"."DISC"'
    end
    object AtualizaPuxaNotas2M_ANUAL: TIBBCDField
      FieldName = 'M_ANUAL'
      Origin = '"ATUALIZA_PUXANOTAS2"."M_ANUAL"'
      Precision = 9
      Size = 1
    end
    object AtualizaPuxaNotas2EXAME_N: TIBBCDField
      FieldName = 'EXAME_N'
      Origin = '"ATUALIZA_PUXANOTAS2"."EXAME_N"'
      Precision = 9
      Size = 1
    end
  end
  object AtualizaPuxaNotas1: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ATUALIZA_PUXANOTAS1(:cod,:serie,:disc)')
    Left = 472
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'disc'
        ParamType = ptUnknown
      end>
    object AtualizaPuxaNotas1ALU_COD: TIntegerField
      FieldName = 'ALU_COD'
      Origin = '"ATUALIZA_PUXANOTAS1"."ALU_COD"'
    end
    object AtualizaPuxaNotas1ALU_STATUS: TIBStringField
      FieldName = 'ALU_STATUS'
      Origin = '"ATUALIZA_PUXANOTAS1"."ALU_STATUS"'
      FixedChar = True
      Size = 1
    end
    object AtualizaPuxaNotas1RESULTADO: TIBStringField
      FieldName = 'RESULTADO'
      Origin = '"ATUALIZA_PUXANOTAS1"."RESULTADO"'
      Size = 15
    end
    object AtualizaPuxaNotas1DISC: TIntegerField
      FieldName = 'DISC'
      Origin = '"ATUALIZA_PUXANOTAS1"."DISC"'
    end
    object AtualizaPuxaNotas1M_ANUAL: TIBBCDField
      FieldName = 'M_ANUAL'
      Origin = '"ATUALIZA_PUXANOTAS1"."M_ANUAL"'
      Precision = 9
      Size = 1
    end
    object AtualizaPuxaNotas1EXAME_N: TIBBCDField
      FieldName = 'EXAME_N'
      Origin = '"ATUALIZA_PUXANOTAS1"."EXAME_N"'
      Precision = 9
      Size = 1
    end
  end
  object dsAtualizaPuxaNotas1: TDataSource
    DataSet = AtualizaPuxaNotas1
    Left = 592
    Top = 208
  end
  object DsAutorizacao: TDataSource
    DataSet = Autorizacao
    Left = 224
    Top = 480
  end
  object Autorizacao: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    OnCalcFields = AutorizacaoCalcFields
    OnNewRecord = AutorizacaoNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from AUTO_CARTAO'
      'where'
      '  ALUNOS = :OLD_ALUNOS and'
      '  AUTORIZACAO = :OLD_AUTORIZACAO')
    InsertSQL.Strings = (
      'insert into AUTO_CARTAO'
      
        '  (ALUNOS, AUTORIZACAO, NOME_TITULAR, DATA_PAGAMENTO, PARCELAS, ' +
        'FORMAP, '
      '   VALORP, MEMOBS)'
      'values'
      
        '  (:ALUNOS, :AUTORIZACAO, :NOME_TITULAR, :DATA_PAGAMENTO, :PARCE' +
        'LAS, :FORMAP, '
      '   :VALORP, :MEMOBS)')
    RefreshSQL.Strings = (
      'Select '
      '  ALUNOS,'
      '  AUTORIZACAO,'
      '  NOME_TITULAR,'
      '  DATA_PAGAMENTO,'
      '  PARCELAS,'
      '  FORMAP,'
      '  VALORP,'
      '  MEMOBS'
      'from AUTO_CARTAO '
      'where'
      '  ALUNOS = :ALUNOS and'
      '  AUTORIZACAO = :AUTORIZACAO')
    SelectSQL.Strings = (
      'select  *'
      'from AUTO_CARTAO'
      'where alunos = :codigo')
    ModifySQL.Strings = (
      'update AUTO_CARTAO'
      'set'
      '  ALUNOS = :ALUNOS,'
      '  AUTORIZACAO = :AUTORIZACAO,'
      '  NOME_TITULAR = :NOME_TITULAR,'
      '  DATA_PAGAMENTO = :DATA_PAGAMENTO,'
      '  PARCELAS = :PARCELAS,'
      '  FORMAP = :FORMAP,'
      '  VALORP = :VALORP,'
      '  MEMOBS = :MEMOBS'
      'where'
      '  ALUNOS = :OLD_ALUNOS and'
      '  AUTORIZACAO = :OLD_AUTORIZACAO')
    Left = 152
    Top = 480
    object AutorizacaoALUNOS: TIntegerField
      FieldName = 'ALUNOS'
      Origin = '"AUTO_CARTAO"."ALUNOS"'
      Required = True
    end
    object AutorizacaoAUTORIZACAO: TIBStringField
      FieldName = 'AUTORIZACAO'
      Origin = '"AUTO_CARTAO"."AUTORIZACAO"'
      Required = True
      Size = 25
    end
    object AutorizacaoNOME_TITULAR: TIBStringField
      FieldName = 'NOME_TITULAR'
      Origin = '"AUTO_CARTAO"."NOME_TITULAR"'
      Size = 50
    end
    object AutorizacaoDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"AUTO_CARTAO"."DATA_PAGAMENTO"'
    end
    object AutorizacaoFORMAP: TIBStringField
      FieldName = 'FORMAP'
      Origin = '"AUTO_CARTAO"."FORMAP"'
      FixedChar = True
      Size = 2
    end
    object AutorizacaoVALORP: TIBBCDField
      FieldName = 'VALORP'
      Origin = '"AUTO_CARTAO"."VALORP"'
      currency = True
      Precision = 9
      Size = 2
    end
    object AutorizacaoMEMOBS: TIBStringField
      FieldName = 'MEMOBS'
      Origin = '"AUTO_CARTAO"."MEMOBS"'
      Size = 250
    end
    object AutorizacaoTOTAL: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
    object AutorizacaoPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
    end
  end
  object BloquetosQ: TIBQuery
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    OnCalcFields = BloquetosQCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select Blq.*, Alu.CODIGO, Alu.NOME, Alu.FONE,'
      'Alu.SERIE, Alu.TURMA, Alu.BOLSA, Alu.BOLSA_AD, Alu.sacado_cpf,'
      'Alu.cep, Alu.sacado, Alu.endereco'
      'from BLOQUETOS Blq, ALUNOS Alu'
      'where (Blq.ALUNO = Alu.CODIGO) '
      '   and (Blq.PARCELA >= :Parc1) and (Blq.PARCELA <= :Parc2) '
      '   and (Blq.NOSSO_NUMERO >= :Bloq1) '
      '   and (Blq.NOSSO_NUMERO <= :Bloq2)'
      '   and (Blq.ALUNO = :Aluno)'
      '   and (Alu.SERIE = :Serie)'
      '   and (Alu.TURMA = :Turma)   '
      'order by Blq.NOSSO_NUMERO')
    Left = 144
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Parc1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Parc2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Bloq1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Bloq2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Aluno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Turma'
        ParamType = ptUnknown
      end>
    object BloquetosQMesX: TStringField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'MesX'
      Size = 10
      Calculated = True
    end
    object BloquetosQParcelaX: TStringField
      DisplayWidth = 5
      FieldKind = fkCalculated
      FieldName = 'ParcelaX'
      Size = 5
      Calculated = True
    end
    object BloquetosQCampo1: TStringField
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'Campo1'
      Size = 11
      Calculated = True
    end
    object BloquetosQCampo2: TStringField
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'Campo2'
      Size = 12
      Calculated = True
    end
    object BloquetosQCampo3: TStringField
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'Campo3'
      Size = 12
      Calculated = True
    end
    object BloquetosQCampo4: TStringField
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Campo4'
      Size = 1
      Calculated = True
    end
    object BloquetosQCampo5: TStringField
      DisplayWidth = 14
      FieldKind = fkCalculated
      FieldName = 'Campo5'
      Size = 14
      Calculated = True
    end
    object BloquetosQCodBarras: TStringField
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'CodBarras'
      Size = 44
      Calculated = True
    end
    object BloquetosQTipo_Pg_X: TStringField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Tipo_Pg_X'
      Size = 10
      Calculated = True
    end
    object BloquetosQSerieX: TStringField
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'SerieX'
      Calculated = True
    end
    object BloquetosQNossoNum: TStringField
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'NossoNum'
      Size = 11
      Calculated = True
    end
    object BloquetosQNOSSO_NUMERO: TIntegerField
      FieldName = 'NOSSO_NUMERO'
      Origin = '"BLOQUETOS"."NOSSO_NUMERO"'
      Required = True
    end
    object BloquetosQALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = '"BLOQUETOS"."ALUNO"'
    end
    object BloquetosQPARCELA: TSmallintField
      FieldName = 'PARCELA'
      Origin = '"BLOQUETOS"."PARCELA"'
    end
    object BloquetosQEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"BLOQUETOS"."EMISSAO"'
    end
    object BloquetosQVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"BLOQUETOS"."VENCIMENTO"'
    end
    object BloquetosQVALOR: TIBBCDField
      DisplayWidth = 15
      FieldName = 'VALOR'
      Origin = '"BLOQUETOS"."VALOR"'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosQPAGAMENTO: TDateField
      DisplayWidth = 15
      FieldName = 'PAGAMENTO'
      Origin = '"BLOQUETOS"."PAGAMENTO"'
    end
    object BloquetosQVALOR_PAGO: TIBBCDField
      DisplayWidth = 15
      FieldName = 'VALOR_PAGO'
      Origin = '"BLOQUETOS"."VALOR_PAGO"'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosQMENSALIDADE: TIBBCDField
      DisplayWidth = 15
      FieldName = 'MENSALIDADE'
      Origin = '"BLOQUETOS"."MENSALIDADE"'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosQMATERIAL: TIBBCDField
      FieldName = 'MATERIAL'
      Origin = '"BLOQUETOS"."MATERIAL"'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosQDESCONTO: TIBBCDField
      DisplayWidth = 15
      FieldName = 'DESCONTO'
      Origin = '"BLOQUETOS"."DESCONTO"'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosQTIPO_PG: TSmallintField
      FieldName = 'TIPO_PG'
      Origin = '"BLOQUETOS"."TIPO_PG"'
    end
    object BloquetosQANO_DV: TIBStringField
      FieldName = 'ANO_DV'
      Origin = '"BLOQUETOS"."ANO_DV"'
      FixedChar = True
      Size = 2
    end
    object BloquetosQDESCONTO_ANT: TIBBCDField
      DisplayWidth = 15
      FieldName = 'DESCONTO_ANT'
      Origin = '"BLOQUETOS"."DESCONTO_ANT"'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosQMENSALIDADE_ANT: TIBBCDField
      DisplayWidth = 15
      FieldName = 'MENSALIDADE_ANT'
      Origin = '"BLOQUETOS"."MENSALIDADE_ANT"'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosQVALOR_ANT: TIBBCDField
      DisplayWidth = 15
      FieldName = 'VALOR_ANT'
      Origin = '"BLOQUETOS"."VALOR_ANT"'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosQBAULA_AD: TIBStringField
      FieldName = 'BAULA_AD'
      Origin = '"BLOQUETOS"."BAULA_AD"'
      FixedChar = True
      Size = 1
    end
    object BloquetosQST: TIBStringField
      FieldName = 'ST'
      Origin = '"BLOQUETOS"."ST"'
      FixedChar = True
      Size = 1
    end
    object BloquetosQTP: TIntegerField
      FieldName = 'TP'
      Origin = '"BLOQUETOS"."TP"'
    end
    object BloquetosQMOTIVO: TIBStringField
      FieldName = 'MOTIVO'
      Origin = '"BLOQUETOS"."MOTIVO"'
      Size = 150
    end
    object BloquetosQDATA_LIMITE: TDateField
      FieldName = 'DATA_LIMITE'
      Origin = '"BLOQUETOS"."DATA_LIMITE"'
    end
    object BloquetosQNEGOCIACAO: TIntegerField
      FieldName = 'NEGOCIACAO'
      Origin = '"BLOQUETOS"."NEGOCIACAO"'
    end
    object BloquetosQCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"ALUNOS"."CODIGO"'
      Required = True
    end
    object BloquetosQNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ALUNOS"."NOME"'
      Required = True
      Size = 60
    end
    object BloquetosQFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"ALUNOS"."FONE"'
      Size = 30
    end
    object BloquetosQSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = '"ALUNOS"."SERIE"'
    end
    object BloquetosQTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"ALUNOS"."TURMA"'
      FixedChar = True
      Size = 1
    end
    object BloquetosQBOLSA: TIBBCDField
      FieldName = 'BOLSA'
      Origin = '"ALUNOS"."BOLSA"'
      Precision = 9
      Size = 2
    end
    object BloquetosQBOLSA_AD: TIBBCDField
      FieldName = 'BOLSA_AD'
      Origin = '"ALUNOS"."BOLSA_AD"'
      Precision = 9
      Size = 2
    end
    object BloquetosQSACADO_CPF: TIBStringField
      FieldName = 'SACADO_CPF'
      Origin = '"ALUNOS"."SACADO_CPF"'
      FixedChar = True
      Size = 15
    end
    object BloquetosQCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"ALUNOS"."CEP"'
      FixedChar = True
      Size = 9
    end
    object BloquetosQSACADO: TIBStringField
      DisplayWidth = 60
      FieldName = 'SACADO'
      Origin = '"ALUNOS"."SACADO"'
      Size = 60
    end
    object BloquetosQENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"ALUNOS"."ENDERECO"'
      Size = 40
    end
  end
  object Areas: TIBDataSet
    Database = DB_ANGLO
    Transaction = IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ARE_CONHECIMENTO'
      'where'
      '  ID_AREA = :OLD_ID_AREA')
    InsertSQL.Strings = (
      'insert into ARE_CONHECIMENTO'
      '  (ID_AREA, NOME_AREA)'
      'values'
      '  (:ID_AREA, :NOME_AREA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_AREA,'
      '  NOME_AREA'
      'from ARE_CONHECIMENTO '
      'where'
      '  ID_AREA = :ID_AREA')
    SelectSQL.Strings = (
      'select *'
      'from ARE_CONHECIMENTO')
    ModifySQL.Strings = (
      'update ARE_CONHECIMENTO'
      'set'
      '  ID_AREA = :ID_AREA,'
      '  NOME_AREA = :NOME_AREA'
      'where'
      '  ID_AREA = :OLD_ID_AREA')
    GeneratorField.Field = 'ID_AREA'
    GeneratorField.Generator = 'GEN_ARE_CONHECIMENTO'
    Left = 968
    Top = 352
    object AreasID_AREA: TIntegerField
      Alignment = taCenter
      FieldName = 'ID_AREA'
      Origin = '"ARE_CONHECIMENTO"."ID_AREA"'
      Required = True
    end
    object AreasNOME_AREA: TIBStringField
      FieldName = 'NOME_AREA'
      Origin = '"ARE_CONHECIMENTO"."NOME_AREA"'
      Size = 45
    end
  end
  object DsArea: TDataSource
    DataSet = Areas
    Left = 1016
    Top = 352
  end
end
