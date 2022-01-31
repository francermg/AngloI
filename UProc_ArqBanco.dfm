object Proc_ArqBanco: TProc_ArqBanco
  Left = 185
  Top = 162
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Processa Arquivo Banco'
  ClientHeight = 558
  ClientWidth = 317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 49
    Height = 13
    Alignment = taRightJustify
    Caption = 'Arquivo:'
  end
  object Label2: TLabel
    Left = 81
    Top = 432
    Width = 119
    Height = 16
    Alignment = taRightJustify
    Caption = 'bloquetos/Total..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Tot: TLabel
    Left = 248
    Top = 432
    Width = 32
    Height = 16
    Alignment = taRightJustify
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 318
    Top = 80
    Width = 79
    Height = 16
    Alignment = taRightJustify
    Caption = 'Qt e-mails :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 342
    Top = 99
    Width = 55
    Height = 16
    Alignment = taRightJustify
    Caption = 'Status :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object LabelQtMail: TLabel
    Left = 406
    Top = 80
    Width = 9
    Height = 16
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelStatus: TLabel
    Left = 406
    Top = 99
    Width = 9
    Height = 16
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Qt: TLabel
    Left = 60
    Top = 432
    Width = 9
    Height = 16
    Alignment = taRightJustify
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Texto: TRxRichEdit
    Left = 484
    Top = 390
    Width = 273
    Height = 121
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    HideScrollBars = False
    ParentFont = False
    TabOrder = 3
    WordWrap = False
  end
  object BitBtn1: TBitBtn
    Left = 237
    Top = 458
    Width = 75
    Height = 25
    Caption = '&Fecha'
    TabOrder = 0
    Kind = bkClose
    Layout = blGlyphRight
  end
  object Arquivo: TFilenameEdit
    Left = 63
    Top = 11
    Width = 237
    Height = 21
    Filter = 'Arquivos CRT (*.crt)|*.CRT|All files (*.*)|*.*'
    InitialDir = 'C:\AngloII\Retorno\2017'
    DialogTitle = 'Selecione o Arquivo'
    DirectInput = False
    NumGlyphs = 1
    TabOrder = 1
  end
  object RxDBGrid1: TRxDBGrid
    Left = 14
    Top = 42
    Width = 294
    Height = 388
    DataSource = dsArqTemp
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'Nº Documento'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Dt.Pagto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Width = 88
        Visible = True
      end>
  end
  object Proc: TBitBtn
    Left = 134
    Top = 458
    Width = 91
    Height = 25
    Caption = 'Processa'
    Enabled = False
    TabOrder = 5
    OnClick = ProcClick
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
    Layout = blGlyphRight
    NumGlyphs = 2
  end
  object Carrega: TBitBtn
    Left = 32
    Top = 458
    Width = 91
    Height = 25
    Caption = 'Carrega'
    TabOrder = 4
    OnClick = CarregaClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
      44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
      00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
      33833F333383F33300003333AA463362A433333333383F333833F33300003333
      6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
      33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
      6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
      000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
      333383333333F3330000333333322AAA4333333333333833333F333300003333
      333322A4333333333333338333F333330000333333344A433333333333333338
      3F333333000033333336A24333333333333333833F333333000033333336AA43
      33333333333333833F3333330000333333336663333333333333333888333333
      0000}
    Layout = blGlyphRight
    NumGlyphs = 2
  end
  object RxDBGrid2: TRxDBGrid
    Left = 424
    Top = 112
    Width = 425
    Height = 345
    DataSource = dsMails
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    OnDblClick = RxDBGrid2DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NUM'
        Title.Caption = 'Nº'
        Width = 21
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ASSUNTO'
        Title.Caption = 'Assunto'
        Width = 142
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Visible = True
      end>
  end
  object LeMail: TBitBtn
    Left = 448
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Lê e-mail'
    TabOrder = 7
    OnClick = LeMailClick
  end
  object Memo1: TMemo
    Left = 456
    Top = 200
    Width = 361
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
  end
  object FS1: TFormStorage
    UseRegistry = True
    StoredProps.Strings = (
      'Arquivo.FileName')
    StoredValues = <>
    Left = 208
    Top = 120
  end
  object ArqTemp: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'DATA'
        DataType = ftDate
      end
      item
        Name = 'VALOR'
        DataType = ftCurrency
      end
      item
        Name = 'DV'
        DataType = ftString
        Size = 20
      end>
    Left = 160
    Top = 120
    object ArqTempNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object ArqTempDATA: TDateField
      FieldName = 'DATA'
    end
    object ArqTempVALOR: TCurrencyField
      FieldName = 'VALOR'
    end
    object ArqTempDV: TStringField
      FieldName = 'DV'
    end
  end
  object dsArqTemp: TDataSource
    DataSet = ArqTemp
    Left = 96
    Top = 120
  end
  object Mail: TNMPOP3
    Host = 'dourados.br'
    Port = 110
    ReportLevel = 0
    UserID = 'vlamir'
    Parse = False
    Password = 'xsw9093'
    DeleteOnRead = False
    AttachFilePath = '.\attach\'
    Left = 424
    Top = 8
  end
  object Mails: TRxMemoryData
    FieldDefs = <>
    Left = 352
    Top = 8
    object MailsNUM: TIntegerField
      FieldName = 'NUM'
    end
    object MailsASSUNTO: TStringField
      FieldName = 'ASSUNTO'
      Size = 50
    end
    object MailsDATA: TStringField
      FieldName = 'DATA'
      Size = 30
    end
  end
  object dsMails: TDataSource
    DataSet = Mails
    Left = 312
    Top = 8
  end
  object Bloquetos: TIBDataSet
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BLOQUETOS'
      'where'
      '  NOSSO_NUMERO = :OLD_NOSSO_NUMERO')
    InsertSQL.Strings = (
      'insert into BLOQUETOS'
      
        '  (NOSSO_NUMERO, ALUNO, PARCELA, EMISSAO, VENCIMENTO, VALOR, PAG' +
        'AMENTO, '
      
        '   VALOR_PAGO, MENSALIDADE, MATERIAL, DESCONTO, TIPO_PG, ANO_DV,' +
        ' DESCONTO_ANT, '
      
        '   MENSALIDADE_ANT, VALOR_ANT, BAULA_AD, ST, TP, MOTIVO, DATA_LI' +
        'MITE, NEGOCIACAO)'
      'values'
      
        '  (:NOSSO_NUMERO, :ALUNO, :PARCELA, :EMISSAO, :VENCIMENTO, :VALO' +
        'R, :PAGAMENTO, '
      
        '   :VALOR_PAGO, :MENSALIDADE, :MATERIAL, :DESCONTO, :TIPO_PG, :A' +
        'NO_DV, '
      
        '   :DESCONTO_ANT, :MENSALIDADE_ANT, :VALOR_ANT, :BAULA_AD, :ST, ' +
        ':TP, :MOTIVO, '
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
      'select *'
      'from BLOQUETOS'
      'where NOSSO_NUMERO = :num and ANO_DV = :anodv')
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
    Left = 176
    Top = 188
    object BloquetosNOSSO_NUMERO: TIntegerField
      FieldName = 'NOSSO_NUMERO'
      Origin = 'BLOQUETOS.NOSSO_NUMERO'
      Required = True
    end
    object BloquetosALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = 'BLOQUETOS.ALUNO'
    end
    object BloquetosPARCELA: TSmallintField
      FieldName = 'PARCELA'
      Origin = 'BLOQUETOS.PARCELA'
    end
    object BloquetosEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'BLOQUETOS.EMISSAO'
    end
    object BloquetosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'BLOQUETOS.VENCIMENTO'
    end
    object BloquetosVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'BLOQUETOS.VALOR'
      Precision = 9
      Size = 2
    end
    object BloquetosPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = 'BLOQUETOS.PAGAMENTO'
    end
    object BloquetosVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = 'BLOQUETOS.VALOR_PAGO'
      Precision = 9
      Size = 2
    end
    object BloquetosMENSALIDADE: TIBBCDField
      FieldName = 'MENSALIDADE'
      Origin = 'BLOQUETOS.MENSALIDADE'
      Precision = 9
      Size = 2
    end
    object BloquetosMATERIAL: TIBBCDField
      FieldName = 'MATERIAL'
      Origin = 'BLOQUETOS.MATERIAL'
      Precision = 9
      Size = 2
    end
    object BloquetosDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'BLOQUETOS.DESCONTO'
      Precision = 9
      Size = 2
    end
    object BloquetosTIPO_PG: TSmallintField
      FieldName = 'TIPO_PG'
      Origin = 'BLOQUETOS.TIPO_PG'
    end
    object BloquetosANO_DV: TIBStringField
      FieldName = 'ANO_DV'
      Origin = 'BLOQUETOS.ANO_DV'
      FixedChar = True
      Size = 2
    end
    object BloquetosST: TIBStringField
      FieldName = 'ST'
      Origin = '"BLOQUETOS"."ST"'
      FixedChar = True
      Size = 1
    end
  end
  object Bloquetos_deletados: TIBDataSet
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from BLOQUETOS_DELETE'
      'where'
      '  NOSSO_NUMERO = :OLD_NOSSO_NUMERO')
    InsertSQL.Strings = (
      'insert into BLOQUETOS_DELETE'
      
        '  (NOSSO_NUMERO, ALUNO, PARCELA, EMISSAO, VENCIMENTO, VALOR, PAG' +
        'AMENTO, '
      '   VALOR_PAGO, MENSALIDADE, MATERIAL, DESCONTO, TIPO_PG)'
      'values'
      
        '  (:NOSSO_NUMERO, :ALUNO, :PARCELA, :EMISSAO, :VENCIMENTO, :VALO' +
        'R, :PAGAMENTO, '
      '   :VALOR_PAGO, :MENSALIDADE, :MATERIAL, :DESCONTO, :TIPO_PG)')
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
      '  TIPO_PG'
      'from BLOQUETOS_DELETE '
      'where'
      '  NOSSO_NUMERO = :NOSSO_NUMERO')
    SelectSQL.Strings = (
      'select *'
      'from BLOQUETOS_DELETE'
      'where NOSSO_NUMERO = :num and ANO_DV = :anodv')
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
      '  TIPO_PG = :TIPO_PG'
      'where'
      '  NOSSO_NUMERO = :OLD_NOSSO_NUMERO')
    Left = 184
    Top = 272
    object Bloquetos_deletadosNOSSO_NUMERO: TIntegerField
      FieldName = 'NOSSO_NUMERO'
      Origin = '"BLOQUETOS_DELETE"."NOSSO_NUMERO"'
      Required = True
    end
    object Bloquetos_deletadosALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = '"BLOQUETOS_DELETE"."ALUNO"'
    end
    object Bloquetos_deletadosPARCELA: TSmallintField
      FieldName = 'PARCELA'
      Origin = '"BLOQUETOS_DELETE"."PARCELA"'
    end
    object Bloquetos_deletadosEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"BLOQUETOS_DELETE"."EMISSAO"'
    end
    object Bloquetos_deletadosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"BLOQUETOS_DELETE"."VENCIMENTO"'
    end
    object Bloquetos_deletadosVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"BLOQUETOS_DELETE"."VALOR"'
      Precision = 9
      Size = 2
    end
    object Bloquetos_deletadosPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"BLOQUETOS_DELETE"."PAGAMENTO"'
    end
    object Bloquetos_deletadosVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"BLOQUETOS_DELETE"."VALOR_PAGO"'
      Precision = 9
      Size = 2
    end
    object Bloquetos_deletadosMENSALIDADE: TIBBCDField
      FieldName = 'MENSALIDADE'
      Origin = '"BLOQUETOS_DELETE"."MENSALIDADE"'
      Precision = 9
      Size = 2
    end
    object Bloquetos_deletadosMATERIAL: TIBBCDField
      FieldName = 'MATERIAL'
      Origin = '"BLOQUETOS_DELETE"."MATERIAL"'
      Precision = 9
      Size = 2
    end
    object Bloquetos_deletadosDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"BLOQUETOS_DELETE"."DESCONTO"'
      Precision = 9
      Size = 2
    end
    object Bloquetos_deletadosTIPO_PG: TSmallintField
      FieldName = 'TIPO_PG'
      Origin = '"BLOQUETOS_DELETE"."TIPO_PG"'
    end
    object Bloquetos_deletadosANO_DV: TIBStringField
      FieldName = 'ANO_DV'
      Origin = '"BLOQUETOS_DELETE"."ANO_DV"'
      FixedChar = True
      Size = 2
    end
    object Bloquetos_deletadosDESCONTO_ANT: TIBBCDField
      FieldName = 'DESCONTO_ANT'
      Origin = '"BLOQUETOS_DELETE"."DESCONTO_ANT"'
      Precision = 9
      Size = 2
    end
    object Bloquetos_deletadosMENSALIDADE_ANT: TIBBCDField
      FieldName = 'MENSALIDADE_ANT'
      Origin = '"BLOQUETOS_DELETE"."MENSALIDADE_ANT"'
      Precision = 9
      Size = 2
    end
    object Bloquetos_deletadosVALOR_ANT: TIBBCDField
      FieldName = 'VALOR_ANT'
      Origin = '"BLOQUETOS_DELETE"."VALOR_ANT"'
      Precision = 9
      Size = 2
    end
    object Bloquetos_deletadosBAULA_AD: TIBStringField
      FieldName = 'BAULA_AD'
      Origin = '"BLOQUETOS_DELETE"."BAULA_AD"'
      FixedChar = True
      Size = 1
    end
    object Bloquetos_deletadosST: TIBStringField
      FieldName = 'ST'
      Origin = '"BLOQUETOS_DELETE"."ST"'
      FixedChar = True
      Size = 1
    end
    object Bloquetos_deletadosTP: TIntegerField
      FieldName = 'TP'
      Origin = '"BLOQUETOS_DELETE"."TP"'
    end
    object Bloquetos_deletadosMOTIVO: TIBStringField
      FieldName = 'MOTIVO'
      Origin = '"BLOQUETOS_DELETE"."MOTIVO"'
      Size = 150
    end
    object Bloquetos_deletadosDATA_LIMITE: TDateField
      FieldName = 'DATA_LIMITE'
      Origin = '"BLOQUETOS_DELETE"."DATA_LIMITE"'
    end
  end
end
