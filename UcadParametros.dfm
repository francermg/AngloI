object CadParametros: TCadParametros
  Left = 431
  Top = 178
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Parâmetros'
  ClientHeight = 464
  ClientWidth = 590
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 590
    Height = 577
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Bloquetos'
      object Label1: TLabel
        Left = 1
        Top = 13
        Width = 93
        Height = 13
        Alignment = taRightJustify
        Caption = 'Origem Alunos :'
      end
      object Label2: TLabel
        Left = 5
        Top = 64
        Width = 89
        Height = 13
        Alignment = taRightJustify
        Caption = 'Próx.Bloqueto :'
        FocusControl = DBEdit1
      end
      object Label5: TLabel
        Left = 5
        Top = 134
        Width = 129
        Height = 13
        Caption = 'Mensagem / Bloqueto:'
      end
      object Label8: TLabel
        Left = 5
        Top = 93
        Width = 187
        Height = 13
        Caption = 'Local de Pagamento /  Bloqueto:'
      end
      object Label3: TLabel
        Left = 400
        Top = 88
        Width = 101
        Height = 13
        Alignment = taRightJustify
        Caption = 'Dia Vcto Padrão :'
        FocusControl = DBEdit6
      end
      object Label4: TLabel
        Left = 12
        Top = 283
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = '1ª Série :'
        FocusControl = DBEdit7
      end
      object Label6: TLabel
        Left = 12
        Top = 307
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = '2ª Série :'
        FocusControl = DBEdit8
      end
      object Label7: TLabel
        Left = 12
        Top = 331
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = '3ª Série :'
        FocusControl = DBEdit9
      end
      object Label9: TLabel
        Left = 75
        Top = 263
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'Mensalidade'
        FocusControl = DBEdit6
      end
      object Label10: TLabel
        Left = 176
        Top = 263
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Material'
        FocusControl = DBEdit6
      end
      object Label11: TLabel
        Left = 3
        Top = 259
        Width = 57
        Height = 13
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = 'VALORES'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label12: TLabel
        Left = 427
        Top = 267
        Width = 116
        Height = 13
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = 'Margens Bloqueto'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label13: TLabel
        Left = 434
        Top = 291
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'Superior :'
        FocusControl = DBEdit6
      end
      object Label15: TLabel
        Left = 430
        Top = 315
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Esquerda :'
        FocusControl = DBEdit6
      end
      object Label14: TLabel
        Left = 6
        Top = 37
        Width = 88
        Height = 13
        Alignment = taRightJustify
        Caption = 'Diretório SCA :'
      end
      object Gauge1: TGauge
        Left = 446
        Top = 15
        Width = 73
        Height = 15
        Progress = 0
        Visible = False
      end
      object ArqX: TLabel
        Left = 446
        Top = 0
        Width = 31
        Height = 13
        Caption = 'ArqX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label18: TLabel
        Left = 286
        Top = 256
        Width = 54
        Height = 26
        Alignment = taCenter
        Caption = 'Recup.'#13#10'Bimestral'
        FocusControl = DBEdit6
      end
      object Label29: TLabel
        Left = 236
        Top = 263
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Até Mês'
        FocusControl = DBEdit6
      end
      object Label21: TLabel
        Left = 350
        Top = 255
        Width = 77
        Height = 26
        Caption = 'Valor'#13#10'Pontualidade.'
      end
      object Label33: TLabel
        Left = 321
        Top = 283
        Width = 41
        Height = 26
        Caption = '1ª e 2ª'#13#10'Séries'
        Visible = False
      end
      object Label34: TLabel
        Left = 317
        Top = 332
        Width = 47
        Height = 13
        Caption = '3ª Série'
        Visible = False
      end
      object Label35: TLabel
        Left = 406
        Top = 294
        Width = 14
        Height = 13
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label36: TLabel
        Left = 406
        Top = 294
        Width = 14
        Height = 13
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label37: TLabel
        Left = 362
        Top = 64
        Width = 141
        Height = 13
        Caption = 'Dia Vcto Mês Fevereiro :'
      end
      object lbl2: TLabel
        Left = 72
        Top = 351
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pontualidade'
        FocusControl = DBEdit6
      end
      object Label39: TLabel
        Left = 12
        Top = 371
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = '1ª Série :'
        FocusControl = DBEdit7
      end
      object Label40: TLabel
        Left = 12
        Top = 395
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = '2ª Série :'
        FocusControl = DBEdit8
      end
      object Label41: TLabel
        Left = 12
        Top = 419
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = '3ª Série :'
        FocusControl = DBEdit9
      end
      object FilenameEdit1: TFilenameEdit
        Left = 101
        Top = 8
        Width = 339
        Height = 21
        Filter = 'Arquivos DBF (*.dbf)|*.dbf'
        InitialDir = 'c:\'
        DialogTitle = 'Selecione arquivo original de Alunos'
        DirectInput = False
        NumGlyphs = 1
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 101
        Top = 59
        Width = 64
        Height = 21
        DataField = 'PROXIMO_BLOQUETO_I'
        DataSource = DM2.dsParametros_B
        Enabled = False
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 5
        Top = 107
        Width = 484
        Height = 21
        DataField = 'LOCALPAG'
        DataSource = DM.dsParametros
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 5
        Top = 148
        Width = 484
        Height = 21
        DataField = 'MENSAGEM1'
        DataSource = DM.dsParametros
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 5
        Top = 169
        Width = 484
        Height = 21
        DataField = 'MENSAGEM2'
        DataSource = DM.dsParametros
        TabOrder = 5
      end
      object DBEdit5: TDBEdit
        Left = 5
        Top = 235
        Width = 484
        Height = 21
        DataField = 'MENSAGEMSACADO'
        DataSource = DM.dsParametros
        TabOrder = 6
      end
      object DBEdit6: TDBEdit
        Left = 508
        Top = 85
        Width = 35
        Height = 21
        DataField = 'VCTO_PADRAO'
        DataSource = DM.dsParametros
        TabOrder = 7
      end
      object DBEdit7: TDBEdit
        Left = 73
        Top = 278
        Width = 74
        Height = 21
        DataField = 'MENSALIDADE_1'
        DataSource = DM.dsParametros
        TabOrder = 8
      end
      object DBEdit8: TDBEdit
        Left = 73
        Top = 302
        Width = 74
        Height = 21
        DataField = 'MENSALIDADE_2'
        DataSource = DM.dsParametros
        TabOrder = 10
      end
      object DBEdit9: TDBEdit
        Left = 73
        Top = 326
        Width = 74
        Height = 21
        DataField = 'MENSALIDADE_3'
        DataSource = DM.dsParametros
        TabOrder = 12
      end
      object DBEdit10: TDBEdit
        Left = 161
        Top = 278
        Width = 74
        Height = 21
        DataField = 'MATERIAL_1'
        DataSource = DM.dsParametros
        TabOrder = 9
      end
      object DBEdit11: TDBEdit
        Left = 161
        Top = 302
        Width = 74
        Height = 21
        DataField = 'MATERIAL_2'
        DataSource = DM.dsParametros
        TabOrder = 11
      end
      object DBEdit12: TDBEdit
        Left = 161
        Top = 326
        Width = 74
        Height = 21
        DataField = 'MATERIAL_3'
        DataSource = DM.dsParametros
        TabOrder = 13
      end
      object DBEdit13: TDBEdit
        Left = 498
        Top = 286
        Width = 27
        Height = 21
        DataField = 'BLQ_TOP'
        DataSource = DM.dsParametros
        TabOrder = 24
      end
      object DBEdit15: TDBEdit
        Left = 498
        Top = 310
        Width = 27
        Height = 21
        DataField = 'BLQ_LEFT'
        DataSource = DM.dsParametros
        TabOrder = 25
      end
      object DirectoryEdit1: TDirectoryEdit
        Left = 101
        Top = 32
        Width = 304
        Height = 21
        DialogText = 'Selecione diretório do SCA original / ANO'
        DirectInput = False
        NumGlyphs = 1
        ButtonWidth = 20
        TabOrder = 1
      end
      object Atualiza: TBitBtn
        Left = 410
        Top = 32
        Width = 132
        Height = 21
        Caption = 'Atualiza Arquivos'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 23
        OnClick = AtualizaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300130000031
          00333773F77777FF7733331000909000133333377737F777FF33330098F0F890
          0333337733F733F77F33370980FFF08907333373373F373373F33099FF0FFFF9
          903337F3F373F33FF7F33090FFF0FF00903337F73337F37737F33099FFF0FFF9
          9033373F33F7F3F33733370980F0F0890733337FF737F7337F33330098F0F890
          03333F77FF3733377FFF000009999900000377777FFFFF77777F088700000008
          77037F3377777773337F088887707888870373F3337773F33373307880707088
          7033373FF737F73FF733337003303300733333777337FF777333333333000333
          3333333333777333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object CheckBox1: TCheckBox
        Left = 288
        Top = 283
        Width = 25
        Height = 17
        TabOrder = 20
      end
      object CheckBox2: TCheckBox
        Left = 288
        Top = 307
        Width = 25
        Height = 17
        TabOrder = 21
      end
      object CheckBox3: TCheckBox
        Left = 288
        Top = 331
        Width = 24
        Height = 17
        TabOrder = 22
      end
      object DBEdit22: TDBEdit
        Left = 241
        Top = 326
        Width = 29
        Height = 21
        DataField = 'MES_MATERIAL3'
        DataSource = DM.dsParametros
        TabOrder = 19
      end
      object DBEdit21: TDBEdit
        Left = 241
        Top = 302
        Width = 29
        Height = 21
        DataField = 'MES_MATERIAL2'
        DataSource = DM.dsParametros
        TabOrder = 18
      end
      object DBEdit20: TDBEdit
        Left = 241
        Top = 278
        Width = 29
        Height = 21
        DataField = 'MES_MATERIAL1'
        DataSource = DM.dsParametros
        TabOrder = 17
      end
      object DBEdit17: TDBEdit
        Left = 370
        Top = 286
        Width = 34
        Height = 21
        DataField = 'REAJUSTE_1_2'
        DataSource = DM.dsParametros
        TabOrder = 26
        Visible = False
      end
      object DBEdit18: TDBEdit
        Left = 370
        Top = 286
        Width = 33
        Height = 21
        DataField = 'REAJUSTE_3'
        DataSource = DM.dsParametros
        TabOrder = 27
      end
      object DBEdit27: TDBEdit
        Left = 5
        Top = 191
        Width = 484
        Height = 21
        DataField = 'MENSAGEM3'
        DataSource = DM.dsParametros
        TabOrder = 28
      end
      object DBEdit28: TDBEdit
        Left = 5
        Top = 213
        Width = 484
        Height = 21
        DataField = 'MENSAGEM4'
        DataSource = DM.dsParametros
        TabOrder = 29
      end
      object DBEdit29: TDBEdit
        Left = 508
        Top = 62
        Width = 36
        Height = 21
        DataField = 'VCTOFEVEREIRO'
        DataSource = DM.dsParametros
        TabOrder = 30
      end
      object DBEdit30: TDBEdit
        Left = 73
        Top = 366
        Width = 71
        Height = 21
        DataField = 'VALOR_PONTUALIDADE1'
        DataSource = DM.dsParametros
        TabOrder = 14
      end
      object DBEdit31: TDBEdit
        Left = 73
        Top = 390
        Width = 71
        Height = 21
        DataField = 'VALOR_PONTUALIDADE2'
        DataSource = DM.dsParametros
        TabOrder = 15
      end
      object DBEdit32: TDBEdit
        Left = 73
        Top = 414
        Width = 71
        Height = 21
        DataField = 'VALOR_PONTUALIDADE3'
        DataSource = DM.dsParametros
        TabOrder = 16
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Diversos'
      ImageIndex = 1
      object Label16: TLabel
        Left = 53
        Top = 24
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Média :'
        FocusControl = DBEdit14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 161
        Top = 45
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tempo (s) :'
        FocusControl = DBEdit19
      end
      object Label22: TLabel
        Left = 160
        Top = 24
        Width = 110
        Height = 13
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = 'TEMPO / CARTÃO'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label28: TLabel
        Left = 19
        Top = 69
        Width = 108
        Height = 13
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = 'COR / ZEBRADO :'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      object Shape1: TShape
        Left = 131
        Top = 88
        Width = 137
        Height = 52
        Pen.Style = psClear
      end
      object Shape2: TShape
        Left = 132
        Top = 89
        Width = 135
        Height = 10
        Brush.Color = clSilver
        Pen.Style = psClear
      end
      object Shape3: TShape
        Left = 132
        Top = 105
        Width = 135
        Height = 10
        Brush.Color = clSilver
        Pen.Style = psClear
      end
      object Shape4: TShape
        Left = 132
        Top = 121
        Width = 135
        Height = 10
        Brush.Color = clSilver
        Pen.Style = psClear
      end
      object Label20: TLabel
        Left = 5
        Top = 48
        Width = 94
        Height = 13
        Alignment = taRightJustify
        Caption = 'Média Exame :'
        FocusControl = DBEdit16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape5: TShape
        Left = 311
        Top = 168
        Width = 225
        Height = 41
        Brush.Color = clBtnFace
      end
      object DBEdit14: TDBEdit
        Left = 104
        Top = 19
        Width = 35
        Height = 21
        DataField = 'MEDIA'
        DataSource = DM.dsParametros
        Enabled = False
        TabOrder = 0
      end
      object DBEdit19: TDBEdit
        Left = 234
        Top = 40
        Width = 39
        Height = 21
        DataField = 'TEMPO_CARTAO'
        DataSource = DM.dsParametros
        TabOrder = 2
      end
      object MudaCor: TBitBtn
        Left = 19
        Top = 88
        Width = 105
        Height = 25
        Caption = '&Trocar Cor'
        TabOrder = 3
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
          33333333333F8888883F33330000324334222222443333388F3833333388F333
          000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
          F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
          223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
          3338888300003AAAAAAA33333333333888888833333333330000333333333333
          333333333333333333FFFFFF000033333333333344444433FFFF333333888888
          00003A444333333A22222438888F333338F3333800003A2243333333A2222438
          F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
          22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
          33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
          3333333333338888883333330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object GroupBox1: TGroupBox
        Left = 311
        Top = 8
        Width = 250
        Height = 73
        Caption = 'Som OK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object Label25: TLabel
          Left = 11
          Top = 21
          Width = 135
          Height = 13
          Alignment = taRightJustify
          Caption = 'Frequência (100-5000):'
          FocusControl = DBEdit23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 25
          Top = 45
          Width = 121
          Height = 13
          Alignment = taRightJustify
          Caption = 'Duração (100-1000):'
          FocusControl = DBEdit24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit23: TDBEdit
          Left = 155
          Top = 16
          Width = 39
          Height = 21
          DataField = 'SOM_OK_FREQUENCIA'
          DataSource = DM.dsParametros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit24: TDBEdit
          Left = 155
          Top = 40
          Width = 39
          Height = 21
          DataField = 'SOM_OK_DURACAO'
          DataSource = DM.dsParametros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object BitBtn2: TBitBtn
          Left = 200
          Top = 16
          Width = 40
          Height = 45
          Caption = 'Testa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn2Click
        end
      end
      object GroupBox2: TGroupBox
        Left = 311
        Top = 88
        Width = 250
        Height = 73
        Caption = 'Som ERRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object Label26: TLabel
          Left = 11
          Top = 21
          Width = 135
          Height = 13
          Alignment = taRightJustify
          Caption = 'Frequência (100-5000):'
          FocusControl = DBEdit25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 25
          Top = 45
          Width = 121
          Height = 13
          Alignment = taRightJustify
          Caption = 'Duração (100-1000):'
          FocusControl = DBEdit26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit25: TDBEdit
          Left = 155
          Top = 16
          Width = 39
          Height = 21
          DataField = 'SOM_ERRO_FREQUENCIA'
          DataSource = DM.dsParametros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit26: TDBEdit
          Left = 155
          Top = 40
          Width = 39
          Height = 21
          DataField = 'SOM_ERRO_DURACAO'
          DataSource = DM.dsParametros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object BitBtn3: TBitBtn
          Left = 200
          Top = 16
          Width = 40
          Height = 45
          Caption = 'Testa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn3Click
        end
      end
      object Panel1: TPanel
        Left = 16
        Top = 152
        Width = 110
        Height = 151
        Enabled = False
        TabOrder = 6
        object Label17: TLabel
          Left = 16
          Top = 8
          Width = 78
          Height = 39
          Alignment = taCenter
          Caption = 'Distribuição'#13#10'de Alunos'#13#10'nas Turmas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Gauge2: TGauge
          Left = 5
          Top = 132
          Width = 100
          Height = 14
          Progress = 0
          Visible = False
        end
        object Dist1: TBitBtn
          Left = 16
          Top = 56
          Width = 75
          Height = 25
          Caption = '1ª Série'
          TabOrder = 0
          OnClick = Dist1Click
        end
        object Dist2: TBitBtn
          Left = 16
          Top = 80
          Width = 75
          Height = 25
          Caption = '2ª Série'
          TabOrder = 1
          OnClick = Dist2Click
        end
        object Dist3: TBitBtn
          Left = 16
          Top = 104
          Width = 75
          Height = 25
          Caption = '3ª Série'
          TabOrder = 2
          OnClick = Dist3Click
        end
      end
      object Panel2: TPanel
        Left = 126
        Top = 152
        Width = 110
        Height = 151
        Enabled = False
        TabOrder = 7
        object Label19: TLabel
          Left = 8
          Top = 8
          Width = 96
          Height = 39
          Alignment = taCenter
          Caption = 'Reorganização'#13#10'dos Números'#13#10'nas Turmas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Gauge3: TGauge
          Left = 5
          Top = 132
          Width = 100
          Height = 14
          Progress = 0
          Visible = False
        end
        object Reorg1: TBitBtn
          Left = 16
          Top = 56
          Width = 75
          Height = 25
          Caption = '1ª Série'
          TabOrder = 0
          OnClick = Reorg1Click
        end
        object Reorg2: TBitBtn
          Left = 16
          Top = 80
          Width = 75
          Height = 25
          Caption = '2ª Série'
          TabOrder = 1
          OnClick = Reorg2Click
        end
        object Reorg3: TBitBtn
          Left = 16
          Top = 104
          Width = 75
          Height = 25
          Caption = '3ª Série'
          TabOrder = 2
          OnClick = Reorg3Click
        end
      end
      object DBEdit16: TDBEdit
        Left = 104
        Top = 43
        Width = 35
        Height = 21
        DataField = 'MEDIA_EXAME'
        DataSource = DM.dsParametros
        Enabled = False
        TabOrder = 1
      end
      object notasnet: TDBCheckBox
        Left = 319
        Top = 184
        Width = 209
        Height = 17
        DataField = 'STATUSNOTANET'
        DataSource = DM.dsParametros
        TabOrder = 8
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
      object edtarquivo: TFilenameEdit
        Left = 16
        Top = 320
        Width = 289
        Height = 21
        Enabled = False
        NumGlyphs = 1
        TabOrder = 9
        Visible = False
        OnExit = edtarquivoExit
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Textos'
      ImageIndex = 2
      object Label30: TLabel
        Left = 11
        Top = 123
        Width = 111
        Height = 13
        Caption = 'Texto / Histórico'
        FocusControl = DBEdit14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 11
        Top = 6
        Width = 144
        Height = 13
        Caption = 'Texto / Requerimento'
        FocusControl = DBEdit14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 11
        Top = 221
        Width = 124
        Height = 13
        Caption = 'Texto / Certificado'
        FocusControl = DBEdit14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBMemo1: TDBMemo
        Left = 8
        Top = 137
        Width = 557
        Height = 77
        DataField = 'TEXTO_HISTORICO'
        DataSource = DM.dsParametros
        Enabled = False
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object DBMemo2: TDBMemo
        Left = 8
        Top = 20
        Width = 557
        Height = 97
        DataField = 'TEXTO_REQUERIMENTO'
        DataSource = DM.dsParametros
        Enabled = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object DBMemo3: TDBMemo
        Left = 8
        Top = 235
        Width = 557
        Height = 74
        DataField = 'TEXTO_CERTIFICADO'
        DataSource = DM.dsParametros
        Enabled = False
        ScrollBars = ssVertical
        TabOrder = 2
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 504
    Top = 428
    Width = 75
    Height = 25
    Caption = '&Fecha'
    TabOrder = 1
    Kind = bkClose
    Layout = blGlyphRight
  end
  object IBSQL1: TIBSQL
    Database = DM.DB_ANGLO
    ParamCheck = True
    Transaction = DM.IBTr_ANGLO
    Left = 464
    Top = 384
  end
  object Notas: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from NOTAS'
      'where ALUNO = :aluno and DISCIPLINA = :disciplina and'
      '          BIMESTRE = :bimestre')
    Left = 248
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'aluno'
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
    object NotasNOTA1: TIBBCDField
      FieldName = 'NOTA1'
      Precision = 4
      Size = 1
    end
    object NotasNOTA2: TIBBCDField
      FieldName = 'NOTA2'
      Precision = 4
      Size = 1
    end
    object NotasNOTA3: TIBBCDField
      FieldName = 'NOTA3'
      Precision = 4
      Size = 1
    end
    object NotasNOTA: TIBBCDField
      FieldName = 'NOTA'
      Precision = 4
      Size = 1
    end
    object NotasRECUPBIM: TIBBCDField
      FieldName = 'RECUPBIM'
      Precision = 4
      Size = 1
    end
  end
  object IncFaltaA: TIBStoredProc
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    StoredProcName = 'INC_FALTAS_ALUNO'
    Left = 384
    Top = 392
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ALUNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DISCIPLINA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DIA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'QTDADE'
        ParamType = ptInput
      end>
  end
  object FS1: TFormStorage
    StoredValues = <>
    Left = 196
    Top = 392
  end
  object IncDiasLetivos: TIBStoredProc
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    StoredProcName = 'INCLUI_DIAS_LETIVOS'
    Left = 312
    Top = 392
    ParamData = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
end
