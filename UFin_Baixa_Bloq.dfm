object Fin_Baixa_Bloq: TFin_Baixa_Bloq
  Left = 489
  Top = 163
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Baixa de Bloquetos Bancários'
  ClientHeight = 391
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 444
    Height = 352
    Align = alTop
    TabOrder = 3
    Visible = False
    object Label1: TLabel
      Left = 16
      Top = 48
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nº Bloqueto :'
    end
    object Label2: TLabel
      Left = 190
      Top = 47
      Width = 5
      Height = 13
      Alignment = taRightJustify
      Caption = '-'
    end
    object Label3: TLabel
      Left = 76
      Top = 80
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Código :'
    end
    object Label4: TLabel
      Left = 47
      Top = 96
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Aluno :'
    end
    object DBText1: TDBText
      Left = 132
      Top = 80
      Width = 54
      Height = 13
      AutoSize = True
      DataField = 'ALUNO'
      DataSource = dsBloquetos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 132
      Top = 96
      Width = 54
      Height = 13
      AutoSize = True
      DataField = 'NOMEALUNO'
      DataSource = dsBloquetos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 5
      Top = 120
      Width = 120
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nosso Nº Completo :'
    end
    object NossoNCompl: TLabel
      Left = 132
      Top = 120
      Width = 88
      Height = 13
      Caption = 'NossoNCompl'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label6: TLabel
      Left = 74
      Top = 144
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'Parcela :'
    end
    object DBText3: TDBText
      Left = 132
      Top = 144
      Width = 54
      Height = 13
      AutoSize = True
      DataField = 'PARCELA'
      DataSource = dsBloquetos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 50
      Top = 160
      Width = 75
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vencimento :'
    end
    object DBText4: TDBText
      Left = 132
      Top = 160
      Width = 54
      Height = 13
      AutoSize = True
      DataField = 'VENCIMENTO'
      DataSource = dsBloquetos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 64
      Top = 224
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor (=) :'
    end
    object DBText5: TDBText
      Left = 132
      Top = 224
      Width = 54
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'VALOR'
      DataSource = dsBloquetos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 23
      Top = 176
      Width = 102
      Height = 13
      Alignment = taRightJustify
      Caption = 'Mensalidade (+) :'
    end
    object DBText7: TDBText
      Left = 132
      Top = 176
      Width = 54
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'MENSALIDADE'
      DataSource = dsBloquetos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 48
      Top = 192
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = 'Material (+) :'
    end
    object DBText8: TDBText
      Left = 132
      Top = 192
      Width = 54
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'MATERIAL'
      DataSource = dsBloquetos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 44
      Top = 208
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = 'Desconto (-) :'
    end
    object DBText9: TDBText
      Left = 132
      Top = 208
      Width = 54
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'DESCONTO'
      DataSource = dsBloquetos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 19
      Top = 223
      Width = 174
      Height = 17
    end
    object Label9: TLabel
      Left = 21
      Top = 256
      Width = 104
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Pagamento :'
    end
    object Label13: TLabel
      Left = 50
      Top = 280
      Width = 75
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor PAGO :'
    end
    object Label14: TLabel
      Left = 232
      Top = 152
      Width = 165
      Height = 13
      Caption = 'Sequência das Operações'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object PrefBloq: TLabel
      Left = 98
      Top = 48
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = '01/2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Baixa: TBitBtn
      Left = 125
      Top = 311
      Width = 75
      Height = 25
      Caption = '&Baixa'
      TabOrder = 5
      OnClick = BaixaClick
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
    object CurrencyEdit1: TCurrencyEdit
      Left = 131
      Top = 43
      Width = 57
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0;- 0'
      TabOrder = 1
      OnKeyPress = CurrencyEdit1KeyPress
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 196
      Top = 43
      Width = 16
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0;- 0'
      MaxLength = 1
      TabOrder = 2
      ZeroEmpty = False
      OnExit = CurrencyEdit2Exit
      OnKeyPress = CurrencyEdit2KeyPress
    end
    object DBEdit1: TDBEdit
      Left = 131
      Top = 251
      Width = 78
      Height = 21
      DataField = 'PAGAMENTO'
      DataSource = dsBloquetos
      TabOrder = 3
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 131
      Top = 275
      Width = 62
      Height = 21
      DataField = 'VALOR_PAGO'
      DataSource = dsBloquetos
      TabOrder = 4
      OnKeyPress = DBEdit2KeyPress
    end
    object Cancela: TBitBtn
      Left = 218
      Top = 311
      Width = 83
      Height = 25
      Cancel = True
      Caption = '&Cancela'
      TabOrder = 6
      OnClick = CancelaClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object Memo1: TMemo
      Left = 232
      Top = 168
      Width = 185
      Height = 129
      TabStop = False
      Lines.Strings = (
        'Memo1')
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 8
    end
    object TipoPG: TRadioGroup
      Left = 44
      Top = 4
      Width = 173
      Height = 30
      Caption = 'Tipo / Pagamento'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Banco'
        'Tesouraria')
      TabOrder = 0
    end
    object Exclui: TBitBtn
      Left = 320
      Top = 311
      Width = 73
      Height = 25
      Caption = '&Exclui'
      TabOrder = 7
      OnClick = ExcluiClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object Fecha: TBitBtn
    Left = 332
    Top = 359
    Width = 83
    Height = 25
    Caption = '&Fecha'
    TabOrder = 2
    Kind = bkClose
    Layout = blGlyphRight
  end
  object Entra: TBitBtn
    Left = 130
    Top = 359
    Width = 83
    Height = 25
    Caption = '&Entra'
    TabOrder = 1
    OnClick = EntraClick
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
  object Senha: TEdit
    Left = 16
    Top = 360
    Width = 97
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
    OnKeyPress = SenhaKeyPress
  end
  object FS1: TFormStorage
    UseRegistry = True
    StoredValues = <>
    Left = 392
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
      '   VALOR_PAGO, MENSALIDADE, MATERIAL, DESCONTO, TIPO_PG, ST)'
      'values'
      
        '  (:NOSSO_NUMERO, :ALUNO, :PARCELA, :EMISSAO, :VENCIMENTO, :VALO' +
        'R, :PAGAMENTO, '
      
        '   :VALOR_PAGO, :MENSALIDADE, :MATERIAL, :DESCONTO, :TIPO_PG, :S' +
        'T)')
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
      '  TP'
      'from BLOQUETOS '
      'where'
      '  NOSSO_NUMERO = :NOSSO_NUMERO')
    SelectSQL.Strings = (
      'select B.*, A.NOME as NomeAluno'
      'from BLOQUETOS B'
      'join ALUNOS A on B.ALUNO = A.CODIGO'
      'where B.Nosso_Numero = :Nosso_Numero')
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
      '  ST = :ST'
      'where'
      '  NOSSO_NUMERO = :OLD_NOSSO_NUMERO')
    Left = 392
    Top = 44
    object BloquetosNOSSO_NUMERO: TIntegerField
      FieldName = 'NOSSO_NUMERO'
      Required = True
    end
    object BloquetosALUNO: TIntegerField
      FieldName = 'ALUNO'
    end
    object BloquetosPARCELA: TSmallintField
      FieldName = 'PARCELA'
    end
    object BloquetosEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object BloquetosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object BloquetosVALOR: TIBBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
    end
    object BloquetosVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosMENSALIDADE: TIBBCDField
      FieldName = 'MENSALIDADE'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosMATERIAL: TIBBCDField
      FieldName = 'MATERIAL'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 9
      Size = 2
    end
    object BloquetosNOMEALUNO: TIBStringField
      FieldName = 'NOMEALUNO'
      Required = True
      Size = 60
    end
    object BloquetosTIPO_PG: TSmallintField
      FieldName = 'TIPO_PG'
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
    object BloquetosDESCONTO_ANT: TIBBCDField
      FieldName = 'DESCONTO_ANT'
      Origin = '"BLOQUETOS"."DESCONTO_ANT"'
      Precision = 9
      Size = 2
    end
    object BloquetosMENSALIDADE_ANT: TIBBCDField
      FieldName = 'MENSALIDADE_ANT'
      Origin = '"BLOQUETOS"."MENSALIDADE_ANT"'
      Precision = 9
      Size = 2
    end
    object BloquetosVALOR_ANT: TIBBCDField
      FieldName = 'VALOR_ANT'
      Origin = '"BLOQUETOS"."VALOR_ANT"'
      Precision = 9
      Size = 2
    end
    object BloquetosBAULA_AD: TIBStringField
      FieldName = 'BAULA_AD'
      Origin = '"BLOQUETOS"."BAULA_AD"'
      FixedChar = True
      Size = 1
    end
    object BloquetosTP: TIntegerField
      FieldName = 'TP'
      Origin = '"BLOQUETOS"."TP"'
    end
  end
  object dsBloquetos: TDataSource
    DataSet = Bloquetos
    Left = 392
    Top = 88
  end
end
