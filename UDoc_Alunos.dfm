object Doc_Alunos: TDoc_Alunos
  Left = 365
  Top = 182
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'DOCUMENTOS DE ALUNOS ANTIGOS'
  ClientHeight = 553
  ClientWidth = 954
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 954
    Height = 468
    ActivePage = Tab1
    Align = alTop
    TabOrder = 1
    object Tab1: TTabSheet
      Caption = 'Dados Pessoais'
      object Label1: TLabel
        Left = 57
        Top = 8
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'Código :'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 64
        Top = 32
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome :'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 44
        Top = 56
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Endereço :'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 17
        Top = 80
        Width = 89
        Height = 13
        Alignment = taRightJustify
        Caption = 'Complemento :'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 62
        Top = 104
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Bairro :'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 30
        Top = 128
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cidade / UF :'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 74
        Top = 152
        Width = 32
        Height = 13
        Alignment = taRightJustify
        Caption = 'CEP :'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 80
        Top = 176
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'RG :'
      end
      object Label10: TLabel
        Left = 35
        Top = 200
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Nasc. :'
        FocusControl = DBEdit10
      end
      object Label11: TLabel
        Left = 22
        Top = 224
        Width = 84
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cidade Nasc. :'
        FocusControl = DBEdit11
      end
      object Label13: TLabel
        Left = 444
        Top = 176
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Sexo :'
      end
      object Label20: TLabel
        Left = 70
        Top = 344
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fone :'
        FocusControl = DBEdit20
      end
      object Label19: TLabel
        Left = 319
        Top = 320
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nasc. Mãe :'
        FocusControl = DBEdit19
        Visible = False
      end
      object Label18: TLabel
        Left = 18
        Top = 320
        Width = 88
        Height = 13
        Alignment = taRightJustify
        Caption = 'Profissão Mãe :'
        FocusControl = DBEdit18
      end
      object Label17: TLabel
        Left = 37
        Top = 296
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome Mãe :'
        FocusControl = DBEdit17
      end
      object Label16: TLabel
        Left = 325
        Top = 272
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nasc. Pai :'
        FocusControl = DBEdit16
        Visible = False
      end
      object Label15: TLabel
        Left = 24
        Top = 272
        Width = 82
        Height = 13
        Alignment = taRightJustify
        Caption = 'Profissão Pai :'
        FocusControl = DBEdit15
      end
      object Label14: TLabel
        Left = 43
        Top = 248
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome Pai :'
        FocusControl = DBEdit14
      end
      object Label48: TLabel
        Left = 459
        Top = 99
        Width = 51
        Height = 13
        Caption = 'Procura'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 112
        Top = 368
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'SerieX'
        DataSource = DM.DSDocAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label53: TLabel
        Left = 18
        Top = 368
        Width = 88
        Height = 13
        Alignment = taRightJustify
        Caption = 'Série / Turma :'
        FocusControl = DBEdit2
      end
      object Label56: TLabel
        Left = 471
        Top = 381
        Width = 95
        Height = 13
        Alignment = taRightJustify
        Caption = 'Alunos ATIVOS :'
        FocusControl = DBEdit2
      end
      object DBText11: TDBText
        Left = 572
        Top = 381
        Width = 62
        Height = 13
        AutoSize = True
        DataField = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label72: TLabel
        Left = 225
        Top = 368
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Código SP:'
        FocusControl = DBEdit2
      end
      object DBText14: TDBText
        Left = 296
        Top = 368
        Width = 62
        Height = 13
        AutoSize = True
        DataField = 'CODIGO_SP'
        DataSource = DM.DSDocAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 112
        Top = 3
        Width = 74
        Height = 21
        Color = clMenu
        DataField = 'CODIGO'
        DataSource = DM.DSDocAlunos
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 112
        Top = 27
        Width = 424
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = DM.DSDocAlunos
        Enabled = False
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 112
        Top = 51
        Width = 281
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERECO'
        DataSource = DM.DSDocAlunos
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 112
        Top = 75
        Width = 144
        Height = 21
        DataField = 'COMPLEMENTO'
        DataSource = DM.DSDocAlunos
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 112
        Top = 99
        Width = 144
        Height = 21
        DataField = 'BAIRRO'
        DataSource = DM.DSDocAlunos
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 112
        Top = 123
        Width = 202
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CIDADE'
        DataSource = DM.DSDocAlunos
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 320
        Top = 123
        Width = 25
        Height = 21
        CharCase = ecUpperCase
        DataField = 'UF'
        DataSource = DM.DSDocAlunos
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 112
        Top = 147
        Width = 67
        Height = 21
        DataField = 'CEP'
        DataSource = DM.DSDocAlunos
        TabOrder = 8
      end
      object DBEdit10: TDBEdit
        Left = 112
        Top = 195
        Width = 74
        Height = 21
        DataField = 'NASC_DATA'
        DataSource = DM.DSDocAlunos
        TabOrder = 10
      end
      object DBEdit11: TDBEdit
        Left = 112
        Top = 219
        Width = 202
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NASC_CIDADE'
        DataSource = DM.DSDocAlunos
        TabOrder = 11
      end
      object DBEdit12: TDBEdit
        Left = 320
        Top = 219
        Width = 25
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NASC_UF'
        DataSource = DM.DSDocAlunos
        TabOrder = 12
      end
      object DBEdit20: TDBEdit
        Left = 112
        Top = 339
        Width = 214
        Height = 21
        DataField = 'FONE'
        DataSource = DM.DSDocAlunos
        TabOrder = 19
      end
      object DBEdit19: TDBEdit
        Left = 392
        Top = 315
        Width = 74
        Height = 21
        DataField = 'MAE_NASCIMENTO'
        DataSource = DM.DSDocAlunos
        TabOrder = 18
        Visible = False
      end
      object DBEdit18: TDBEdit
        Left = 112
        Top = 315
        Width = 144
        Height = 21
        DataField = 'MAE_PROFISSAO'
        DataSource = DM.DSDocAlunos
        TabOrder = 17
      end
      object DBEdit17: TDBEdit
        Left = 112
        Top = 291
        Width = 354
        Height = 21
        CharCase = ecUpperCase
        DataField = 'MAE_NOME'
        DataSource = DM.DSDocAlunos
        TabOrder = 16
      end
      object DBEdit16: TDBEdit
        Left = 392
        Top = 267
        Width = 74
        Height = 21
        DataField = 'PAI_NASCIMENTO'
        DataSource = DM.DSDocAlunos
        TabOrder = 15
        Visible = False
      end
      object DBEdit15: TDBEdit
        Left = 112
        Top = 267
        Width = 161
        Height = 21
        DataField = 'PAI_PROFISSAO'
        DataSource = DM.DSDocAlunos
        TabOrder = 14
      end
      object DBEdit14: TDBEdit
        Left = 112
        Top = 243
        Width = 354
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PAI_NOME'
        DataSource = DM.DSDocAlunos
        TabOrder = 13
      end
      object PesqAluno: TRxDBLookupCombo
        Left = 247
        Top = 1
        Width = 330
        Height = 21
        DropDownCount = 25
        DisplayEmpty = 'Pesquisa por Nome'
        EmptyValue = '0'
        EmptyItemColor = clSilver
        LookupField = 'CODIGO'
        LookupDisplay = 'NOME'
        LookupSource = DM.DSDocAlunos
        TabOrder = 1
      end
      object Panel2: TPanel
        Left = 460
        Top = 112
        Width = 134
        Height = 33
        BevelOuter = bvNone
        Color = clGray
        TabOrder = 20
        object Label47: TLabel
          Left = 13
          Top = 8
          Width = 49
          Height = 13
          Caption = 'Código :'
        end
        object Codigo2: TCurrencyEdit
          Left = 67
          Top = 5
          Width = 57
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0;- 0'
          TabOrder = 0
          OnChange = Codigo2Change
          OnExit = Codigo2Exit
        end
      end
      object RxDBComboBox2: TRxDBComboBox
        Left = 488
        Top = 171
        Width = 105
        Height = 21
        Style = csDropDownList
        DataField = 'SEXO'
        DataSource = DM.DSDocAlunos
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Feminino'
          'Masculino')
        TabOrder = 9
        Values.Strings = (
          'F'
          'M')
      end
      object DBEdit9: TDBEdit
        Left = 113
        Top = 172
        Width = 321
        Height = 21
        DataField = 'RG'
        DataSource = DM.DSDocAlunos
        TabOrder = 21
      end
    end
    object Tab2: TTabSheet
      Caption = 'Dados Controle'
      ImageIndex = 1
      object Label7: TLabel
        Left = 40
        Top = 16
        Width = 91
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Matrícula :'
        FocusControl = DBEdit21
      end
      object Label12: TLabel
        Left = 71
        Top = 40
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = 'Bimestre :'
        FocusControl = DBEdit22
      end
      object Label22: TLabel
        Left = 92
        Top = 64
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Série :'
        FocusControl = DBESerie
      end
      object Label24: TLabel
        Left = 67
        Top = 112
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Chamada :'
        FocusControl = DBEdit26
      end
      object Label25: TLabel
        Left = 86
        Top = 136
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Status :'
      end
      object Label26: TLabel
        Left = 59
        Top = 160
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Saída :'
        FocusControl = DBEdit28
      end
      object Label27: TLabel
        Left = 91
        Top = 184
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'Bolsa :'
        FocusControl = DBEdit29
      end
      object Label29: TLabel
        Left = 80
        Top = 232
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'Sacado :'
        FocusControl = DBEdit30
      end
      object Label31: TLabel
        Left = 77
        Top = 304
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'Material :'
      end
      object Label32: TLabel
        Left = 193
        Top = 328
        Width = 98
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vencimento Dia :'
        FocusControl = DBEdit33
      end
      object Label33: TLabel
        Left = 100
        Top = 352
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Ano :'
        FocusControl = DBEdit34
      end
      object Label40: TLabel
        Left = 29
        Top = 328
        Width = 102
        Height = 13
        Alignment = taRightJustify
        Caption = 'Material até Mês :'
        FocusControl = DBEdit21
      end
      object Label39: TLabel
        Left = 159
        Top = 36
        Width = 6
        Height = 13
        Caption = 'º'
        FocusControl = DBEdit22
      end
      object Label42: TLabel
        Left = 180
        Top = 184
        Width = 12
        Height = 13
        Alignment = taRightJustify
        Caption = '%'
        FocusControl = DBEdit29
      end
      object Label44: TLabel
        Left = 232
        Top = 16
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'Código :'
        FocusControl = DBEdit1
      end
      object DBText4: TDBText
        Left = 288
        Top = 16
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label45: TLabel
        Left = 239
        Top = 32
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome :'
        FocusControl = DBEdit2
      end
      object DBText5: TDBText
        Left = 288
        Top = 32
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 86
        Top = 88
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Turma :'
        FocusControl = DBESerie
      end
      object Label41: TLabel
        Left = 100
        Top = 256
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'CPF :'
        FocusControl = DBEdit30
      end
      object Label49: TLabel
        Left = 269
        Top = 256
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'RG :'
        FocusControl = DBEdit30
      end
      object Label51: TLabel
        Left = 159
        Top = 60
        Width = 6
        Height = 13
        Caption = 'ª'
        FocusControl = DBEdit22
      end
      object Pai: TSpeedButton
        Left = 423
        Top = 224
        Width = 23
        Height = 12
        Caption = 'Pai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = PaiClick
      end
      object Mae: TSpeedButton
        Left = 423
        Top = 236
        Width = 23
        Height = 12
        Caption = 'Mãe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = MaeClick
      end
      object Label30: TLabel
        Left = 256
        Top = 352
        Width = 35
        Height = 13
        Alignment = taRightJustify
        Caption = 'Final :'
        FocusControl = DBEdit31
      end
      object Label58: TLabel
        Left = 38
        Top = 280
        Width = 93
        Height = 13
        Alignment = taRightJustify
        Caption = 'Mod. Esportiva :'
      end
      object DBText12: TDBText
        Left = 320
        Top = 352
        Width = 62
        Height = 13
        AutoSize = True
        DataField = 'FinalX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label70: TLabel
        Left = 19
        Top = 208
        Width = 112
        Height = 13
        Alignment = taRightJustify
        Caption = 'Observação Bolsa :'
        FocusControl = DBEdit29
      end
      object Label71: TLabel
        Left = 217
        Top = 48
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Código SP:'
        FocusControl = DBEdit2
      end
      object DBText13: TDBText
        Left = 288
        Top = 48
        Width = 62
        Height = 13
        AutoSize = True
        DataField = 'CODIGO_SP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 136
        Top = 292
        Width = 105
        Height = 29
        Columns = 2
        DataField = 'MATERIAL'
        DataSource = DM.DSDocAlunos
        Items.Strings = (
          'Sim'
          'Não')
        TabOrder = 13
        Values.Strings = (
          '1'
          '0')
      end
      object DBEdit21: TDBEdit
        Left = 136
        Top = 11
        Width = 74
        Height = 21
        DataField = 'DATA_MATRICULA'
        DataSource = DM.DSDocAlunos
        TabOrder = 0
      end
      object DBEdit22: TDBEdit
        Left = 136
        Top = 35
        Width = 20
        Height = 21
        DataField = 'BIMESTRE'
        DataSource = DM.DSDocAlunos
        TabOrder = 1
      end
      object DBESerie: TDBEdit
        Left = 136
        Top = 59
        Width = 20
        Height = 21
        DataField = 'SERIE'
        DataSource = DM.DSDocAlunos
        TabOrder = 2
      end
      object DBETurma: TDBEdit
        Left = 136
        Top = 83
        Width = 20
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TURMA'
        DataSource = DM.DSDocAlunos
        TabOrder = 3
      end
      object DBEdit26: TDBEdit
        Left = 136
        Top = 107
        Width = 33
        Height = 21
        DataField = 'CHAMADA'
        DataSource = DM.DSDocAlunos
        TabOrder = 4
      end
      object DBEdit28: TDBEdit
        Left = 136
        Top = 155
        Width = 74
        Height = 21
        DataField = 'DATA_SAIDA'
        DataSource = DM.DSDocAlunos
        TabOrder = 6
      end
      object DBEdit29: TDBEdit
        Left = 136
        Top = 179
        Width = 41
        Height = 21
        DataField = 'BOLSA'
        DataSource = DM.DSDocAlunos
        TabOrder = 7
      end
      object DBEdit30: TDBEdit
        Left = 136
        Top = 227
        Width = 284
        Height = 21
        DataField = 'SACADO'
        DataSource = DM.DSDocAlunos
        TabOrder = 9
      end
      object DBEdit31: TDBEdit
        Left = 296
        Top = 347
        Width = 19
        Height = 21
        DataField = 'FINAL'
        DataSource = DM.DSDocAlunos
        Enabled = False
        TabOrder = 17
      end
      object DBEdit33: TDBEdit
        Left = 296
        Top = 323
        Width = 33
        Height = 21
        DataField = 'VENCIMENTO'
        DataSource = DM.DSDocAlunos
        TabOrder = 15
      end
      object DBEdit34: TDBEdit
        Left = 136
        Top = 347
        Width = 41
        Height = 21
        DataField = 'ANO'
        DataSource = DM.DSDocAlunos
        Enabled = False
        TabOrder = 16
      end
      object DBEdit36: TDBEdit
        Left = 136
        Top = 323
        Width = 25
        Height = 21
        DataField = 'MES_MATERIAL'
        DataSource = DM.DSDocAlunos
        TabOrder = 14
      end
      object ComboStatus: TRxDBComboBox
        Left = 136
        Top = 131
        Width = 97
        Height = 21
        Style = csDropDownList
        DataField = 'STATUS'
        DataSource = DM.DSDocAlunos
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Ativo'
          'Desistente'
          'Transferido'
          'Reclassificado'
          'Outros')
        TabOrder = 5
        Values.Strings = (
          'A'
          'D'
          'T'
          'R'
          'O')
      end
      object CPF: TDBEdit
        Left = 136
        Top = 251
        Width = 121
        Height = 21
        DataField = 'SACADO_CPF'
        DataSource = DM.DSDocAlunos
        TabOrder = 10
        OnExit = CPFExit
      end
      object DBEdit23: TDBEdit
        Left = 300
        Top = 251
        Width = 149
        Height = 21
        DataField = 'SACADO_RG'
        DataSource = DM.DSDocAlunos
        TabOrder = 11
      end
      object ModEspCombo: TRxDBComboBox
        Left = 136
        Top = 275
        Width = 153
        Height = 21
        Style = csDropDownList
        DataField = 'MOD_ESPORTIVA'
        DataSource = DM.DSDocAlunos
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Educação Física'
          'Natação'
          'Voleibol'
          'Handebol'
          'Fut-Sal'
          'Musculação'
          'Basquetebol')
        TabOrder = 12
        Values.Strings = (
          'EDF'
          'NAT'
          'VOL'
          'HAN'
          'FTS'
          'MUS'
          'BAS')
      end
      object DBEdit13: TDBEdit
        Left = 136
        Top = 203
        Width = 284
        Height = 21
        DataField = 'BOLSA_OBS'
        DataSource = DM.DSDocAlunos
        TabOrder = 8
      end
    end
    object Tab3: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 2
      object DBGrid1: TDBGrid
        Left = 8
        Top = 48
        Width = 588
        Height = 297
        DataSource = DM.DSDocAlunos
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'Código'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 421
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BLOQUETO_1SEM'
            Title.Caption = 'B1'
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BLOQUETO_2SEM'
            Title.Caption = 'B2'
            Width = 27
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 7
        Top = 4
        Width = 590
        Height = 33
        BevelOuter = bvNone
        Color = clGray
        TabOrder = 0
        object Label35: TLabel
          Left = 13
          Top = 8
          Width = 49
          Height = 13
          Caption = 'Código :'
        end
        object Label36: TLabel
          Left = 208
          Top = 8
          Width = 42
          Height = 13
          Caption = 'Nome :'
        end
        object Nome: TEdit
          Left = 256
          Top = 5
          Width = 241
          Height = 21
          TabOrder = 1
          OnChange = NomeChange
        end
        object Pesquisa: TBitBtn
          Left = 505
          Top = 6
          Width = 71
          Height = 20
          Caption = 'Pesquisa'
          TabOrder = 2
          OnClick = PesquisaClick
        end
        object Codigo: TCurrencyEdit
          Left = 67
          Top = 5
          Width = 57
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0;- 0'
          TabOrder = 0
          OnChange = CodigoChange
        end
      end
    end
    object Tab6: TTabSheet
      Caption = 'Histórico/Transferência'
      ImageIndex = 5
      OnShow = Tab6Show
      object Bevel1: TBevel
        Left = 483
        Top = 49
        Width = 85
        Height = 15
      end
      object Label52: TLabel
        Left = 136
        Top = 0
        Width = 88
        Height = 13
        Alignment = taRightJustify
        Caption = 'Série / Turma :'
        FocusControl = DBEdit2
      end
      object DBText7: TDBText
        Left = 230
        Top = 0
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'SerieX'
        DataSource = DM.DSDocAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label54: TLabel
        Left = 7
        Top = 0
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'Código :'
        FocusControl = DBEdit1
      end
      object DBText9: TDBText
        Left = 62
        Top = 0
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'CODIGO'
        DataSource = DM.DSDocAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 62
        Top = 13
        Width = 259
        Height = 13
        DataField = 'NOME'
        DataSource = DM.DSDocAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 8
        Top = 348
        Width = 86
        Height = 13
        Alignment = taRightJustify
        Caption = 'Obs.Histórico'
        FocusControl = DBMemo1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label59: TLabel
        Left = 138
        Top = 275
        Width = 25
        Height = 13
        Caption = 'Ano'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label63: TLabel
        Left = 81
        Top = 293
        Width = 53
        Height = 13
        Caption = '1ª Série'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label60: TLabel
        Left = 185
        Top = 275
        Width = 42
        Height = 13
        Caption = 'Escola'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label61: TLabel
        Left = 458
        Top = 275
        Width = 44
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label62: TLabel
        Left = 663
        Top = 275
        Width = 17
        Height = 13
        Caption = 'UF'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label64: TLabel
        Left = 81
        Top = 313
        Width = 53
        Height = 13
        Caption = '2ª Série'
        FocusControl = DBEdit35
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label65: TLabel
        Left = 81
        Top = 333
        Width = 53
        Height = 13
        Caption = '3ª Série'
        FocusControl = DBEdit40
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label66: TLabel
        Left = 481
        Top = 3
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data :'
        FocusControl = DBEdit1
        OnDblClick = Label46DblClick
      end
      object Label67: TLabel
        Left = 500
        Top = 50
        Width = 53
        Height = 13
        Caption = '1ª Série'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel2: TBevel
        Left = 572
        Top = 49
        Width = 101
        Height = 15
      end
      object Bevel3: TBevel
        Left = 678
        Top = 49
        Width = 107
        Height = 15
      end
      object Label68: TLabel
        Left = 589
        Top = 50
        Width = 53
        Height = 13
        Caption = '2ª Série'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label69: TLabel
        Left = 702
        Top = 50
        Width = 53
        Height = 13
        Caption = '3ª Série'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label57: TLabel
        Left = 14
        Top = 13
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome :'
        FocusControl = DBEdit2
      end
      object AnoLetivoT: TLabel
        Left = 619
        Top = 3
        Width = 69
        Height = 13
        Caption = 'Ano Letivo :'
      end
      object lbl1: TLabel
        Left = 353
        Top = 3
        Width = 19
        Height = 13
        Caption = 'ID:'
      end
      object lbl6: TLabel
        Left = 712
        Top = 3
        Width = 117
        Height = 13
        Caption = 'Data do documento:'
      end
      object RadioGroup1: TRadioGroup
        Left = 2
        Top = 65
        Width = 128
        Height = 205
        Caption = 'Tipo do documento'
        ItemIndex = 0
        Items.Strings = (
          'Histórico'
          'Transferência'
          'Certificado')
        TabOrder = 17
      end
      object RxDBGrid3: TRxDBGrid
        Left = 133
        Top = 67
        Width = 708
        Height = 205
        DataSource = DM.DSNotasAlunos
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnKeyPress = RxDBGrid3KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'DisciplinaX'
            Title.Caption = 'Disciplina'
            Width = 332
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTA1'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CH1'
            Title.Alignment = taCenter
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTA2'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CH2'
            Title.Alignment = taCenter
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTA3'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CH3'
            Title.Alignment = taCenter
            Width = 40
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'TIPO'
            Visible = True
          end>
      end
      object DBMemo1: TDBMemo
        Left = 8
        Top = 367
        Width = 643
        Height = 72
        DataField = 'OBS_HIST'
        DataSource = DM.DSDocAlunos
        TabOrder = 13
      end
      object DBEdit24: TDBEdit
        Left = 137
        Top = 288
        Width = 40
        Height = 21
        DataField = 'H_ANO1'
        DataSource = DM.DSDocAlunos
        TabOrder = 1
      end
      object DBEdit25: TDBEdit
        Left = 182
        Top = 288
        Width = 269
        Height = 21
        DataField = 'H_ESCOLA1'
        DataSource = DM.DSDocAlunos
        TabOrder = 2
      end
      object DBEdit27: TDBEdit
        Left = 457
        Top = 288
        Width = 179
        Height = 21
        DataField = 'H_CIDADE1'
        DataSource = DM.DSDocAlunos
        TabOrder = 3
      end
      object DBEdit32: TDBEdit
        Left = 662
        Top = 288
        Width = 25
        Height = 21
        DataField = 'H_UF1'
        DataSource = DM.DSDocAlunos
        TabOrder = 4
      end
      object DBEdit35: TDBEdit
        Left = 137
        Top = 308
        Width = 40
        Height = 21
        DataField = 'H_ANO2'
        DataSource = DM.DSDocAlunos
        TabOrder = 5
      end
      object DBEdit37: TDBEdit
        Left = 182
        Top = 308
        Width = 269
        Height = 21
        DataField = 'H_ESCOLA2'
        DataSource = DM.DSDocAlunos
        TabOrder = 6
      end
      object DBEdit38: TDBEdit
        Left = 457
        Top = 308
        Width = 179
        Height = 21
        DataField = 'H_CIDADE2'
        DataSource = DM.DSDocAlunos
        TabOrder = 7
      end
      object DBEdit39: TDBEdit
        Left = 662
        Top = 308
        Width = 25
        Height = 21
        DataField = 'H_UF2'
        DataSource = DM.DSDocAlunos
        TabOrder = 8
      end
      object DBEdit40: TDBEdit
        Left = 137
        Top = 328
        Width = 40
        Height = 21
        DataField = 'H_ANO3'
        DataSource = DM.DSDocAlunos
        TabOrder = 9
      end
      object DBEdit41: TDBEdit
        Left = 182
        Top = 328
        Width = 269
        Height = 21
        DataField = 'H_ESCOLA3'
        DataSource = DM.DSDocAlunos
        TabOrder = 10
      end
      object DBEdit42: TDBEdit
        Left = 457
        Top = 328
        Width = 179
        Height = 21
        DataField = 'H_CIDADE3'
        DataSource = DM.DSDocAlunos
        TabOrder = 11
      end
      object DBEdit43: TDBEdit
        Left = 662
        Top = 328
        Width = 25
        Height = 21
        DataField = 'H_UF3'
        DataSource = DM.DSDocAlunos
        TabOrder = 12
      end
      object ImpHistorico: TBitBtn
        Left = 657
        Top = 371
        Width = 102
        Height = 25
        Caption = 'Imprime'
        TabOrder = 14
        OnClick = ImpHistoricoClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
      end
      object DataHist: TDateEdit
        Left = 482
        Top = 17
        Width = 127
        Height = 21
        DefaultToday = True
        DialogTitle = 'Selecione a data.'
        NumGlyphs = 2
        TabOrder = 16
      end
      object RadioGroup2: TRadioGroup
        Left = 4
        Top = 34
        Width = 469
        Height = 30
        Caption = 'Resultado final'
        Columns = 5
        ItemIndex = 0
        Items.Strings = (
          'Aprovado'
          'Reprovado'
          'Cursando'
          'Desistente'
          'Em branco')
        TabOrder = 18
      end
      object AnoLetivo: TEdit
        Left = 620
        Top = 18
        Width = 72
        Height = 21
        TabOrder = 19
      end
      object dbedtID: TDBEdit
        Left = 352
        Top = 17
        Width = 121
        Height = 21
        DataField = 'ID'
        DataSource = DM.DSDocAlunos
        TabOrder = 15
      end
      object btn1: TBitBtn
        Left = 659
        Top = 408
        Width = 99
        Height = 25
        Caption = 'Imprime/Ata'
        TabOrder = 20
        OnClick = btn1Click
      end
      object DataDoc: TDateEdit
        Left = 713
        Top = 17
        Width = 111
        Height = 21
        DefaultToday = True
        DialogTitle = 'Seleciona a data'
        NumGlyphs = 2
        TabOrder = 21
      end
    end
    object tsdados: TTabSheet
      Caption = 'Parâmetros'
      ImageIndex = 4
      object bvl1: TBevel
        Left = 32
        Top = 216
        Width = 393
        Height = 115
      end
      object lbl2: TLabel
        Left = 32
        Top = 24
        Width = 119
        Height = 13
        Caption = 'Nome da Secretária:'
      end
      object lbl3: TLabel
        Left = 32
        Top = 80
        Width = 232
        Height = 13
        Caption = 'Obeservações para a Ata de Adaptação:'
      end
      object lbl4: TLabel
        Left = 44
        Top = 247
        Width = 358
        Height = 78
        Caption = 
          'As notas que forem inseridas na terceira coluna  e que o  tipo '#13 +
          #10'for "A" serão impressas na Ata.'#13#10'Digite  o  nome  da secretaria' +
          ' e obeservações se necessárias '#13#10'para impresão da Ata.'#13#10'Na aba  ' +
          '"Histórico/Transferência" o usuário encontra o botão'#13#10'"Imprimi/A' +
          'ta"'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 44
        Top = 223
        Width = 337
        Height = 13
        Caption = 'Instruções para a impressão de Atas de adaptação:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtSecretaria: TEdit
        Left = 32
        Top = 40
        Width = 625
        Height = 21
        TabOrder = 0
      end
      object mmoObs: TMemo
        Left = 32
        Top = 104
        Width = 625
        Height = 89
        TabOrder = 1
      end
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 11
    Top = 521
    Width = 256
    Height = 25
    DataSource = DM.DSDocAlunos
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
    Hints.Strings = (
      'Primeiro'
      'Anterior'
      'Próximo'
      'Último'
      'Inserir'
      'Apagar'
      'Alterar'
      'Gravar'
      'Cancelar'
      'Atualizar')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = DBNavigator1Click
  end
  object BitBtn1: TBitBtn
    Left = 495
    Top = 516
    Width = 129
    Height = 25
    Caption = '&Fecha'
    TabOrder = 0
    Kind = bkClose
    Layout = blGlyphRight
  end
  object Filtro: TRxSwitch
    Left = 445
    Top = 490
    Width = 39
    Height = 56
    Caption = 'Filtro'
    GlyphOn.Data = {
      36180000424D3618000000000000360000002800000020000000300000000100
      2000000000000018000000000000000000000000000000000000FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF000000000000000000808080808080
      8000808080808080800080808080808080008080808080808000808080808080
      8000808080808080800080808080808080008080808080808000000000000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF000000008080808000808080808080
      8000808080808080800080808080808080008080808080808000808080808080
      8000808080808080800080808080808080008080800000000000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000FFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000FFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000FFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000FFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000FFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000FFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF000000000000000000FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFF00000000008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF000000000000000000FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFF00000000008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF0000000080808080008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF0000000080808080008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FF0000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFF000000000080808080808080008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FF0000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFF000000000080808080808080008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00000000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00000000808080800080808080808080008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000808080800080808080808080008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00000000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00000000808080800080808080808080008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FF0000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFF000000000080808080808080008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF0000000080808080008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF000000000000000000FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFF00000000008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF000000000000000000FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFF0000000000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00}
    TabOrder = 3
    TextPosition = tpAbove
    OnOff = FiltroOff
    Data = {02}
  end
  object Ordem: TRadioGroup
    Left = 345
    Top = 496
    Width = 89
    Height = 53
    Caption = 'Ordem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ItemIndex = 1
    Items.Strings = (
      'p/ Código'
      'p/ Nome')
    ParentFont = False
    TabOrder = 4
    OnClick = OrdemClick
  end
  object FS1: TFormStorage
    Options = [fpState, fpPosition, fpActiveControl]
    StoredProps.Strings = (
      'RadioGroup1.ItemIndex'
      'edtSecretaria.Anchors'
      'mmoObs.Align')
    StoredValues = <>
    Left = 764
    Top = 340
  end
  object Disc: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select D.NOME_RES, D.NOME_ATA_1, D.NOME_ATA_2, '
      '          D.NOME_ATA_3, G.CH_OFICIAL'
      'from GRADE G'
      'join DISCIPLINAS D on G.DISCIPLINA = D.CODIGO'
      'where G.SEQUENCIA = :seq and'
      '           G.SERIE = :ser and'
      '           G.TIPO <> '#39'NO'#39)
    Left = 656
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'seq'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ser'
        ParamType = ptUnknown
      end>
    object DiscNOME_RES: TIBStringField
      FieldName = 'NOME_RES'
      Origin = '"DISCIPLINAS"."NOME_RES"'
      FixedChar = True
      Size = 4
    end
    object DiscNOME_ATA_1: TIBStringField
      FieldName = 'NOME_ATA_1'
      Origin = '"DISCIPLINAS"."NOME_ATA_1"'
      Size = 10
    end
    object DiscNOME_ATA_2: TIBStringField
      FieldName = 'NOME_ATA_2'
      Origin = '"DISCIPLINAS"."NOME_ATA_2"'
      Size = 10
    end
    object DiscNOME_ATA_3: TIBStringField
      FieldName = 'NOME_ATA_3'
      Origin = '"DISCIPLINAS"."NOME_ATA_3"'
      Size = 10
    end
    object DiscCH_OFICIAL: TIntegerField
      FieldName = 'CH_OFICIAL'
      Origin = '"GRADE"."CH_OFICIAL"'
    end
  end
end
