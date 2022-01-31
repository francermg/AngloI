object Mov_Frequencia: TMov_Frequencia
  Left = 267
  Top = 212
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'FREQUÊNCIA'
  ClientHeight = 413
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DSem: TLabel
    Left = 160
    Top = 392
    Width = 37
    Height = 13
    Caption = 'DSem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 7
    Top = 392
    Width = 38
    Height = 13
    Caption = 'Data :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MensagemData: TRxLabel
    Left = 14
    Top = 359
    Width = 156
    Height = 25
    Caption = 'MensagemData'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -20
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 829
    Top = 369
    Width = 75
    Height = 25
    Caption = '&Fecha'
    TabOrder = 0
    Kind = bkClose
    Layout = blGlyphRight
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 2
    Width = 921
    Height = 360
    ActivePage = TabSheet1
    PopupMenu = Pop1
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'CARTÕES / Presença'
      OnHide = TabSheet1Hide
      object NomeAluno: TRxLabel
        Left = 16
        Top = 110
        Width = 158
        Height = 32
        Caption = 'NomeAluno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Mensagem: TRxLabel
        Left = 16
        Top = 46
        Width = 109
        Height = 25
        Caption = 'Mensagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -20
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Turma: TRxLabel
        Left = 16
        Top = 138
        Width = 65
        Height = 25
        Caption = 'Turma'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Codigo: TRxLabel
        Left = 176
        Top = 138
        Width = 70
        Height = 25
        Caption = 'Código'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Cartao: TEdit
        Left = 47
        Top = 17
        Width = 121
        Height = 24
        BorderStyle = bsNone
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenu
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnExit = CartaoExit
        OnKeyPress = CartaoKeyPress
      end
      object LerCartoes: TBitBtn
        Left = 42
        Top = 14
        Width = 209
        Height = 29
        Caption = 'Ler Cartões / PRESENÇA [F5]'
        TabOrder = 0
        OnClick = LerCartoesClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
          305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
          005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
          B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
          B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
          B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
          B0557777FF577777F7F500000E055550805577777F7555575755500000555555
          05555777775555557F5555000555555505555577755555557555}
        NumGlyphs = 2
      end
      object Aula: TRadioGroup
        Left = 5
        Top = 280
        Width = 457
        Height = 45
        Caption = 'Aula'
        Columns = 7
        ItemIndex = 0
        Items.Strings = (
          '1ª'
          '2ª'
          '3ª'
          '4ª'
          '5ª'
          '6ª'
          'T.T.')
        TabOrder = 1
        OnClick = AulaClick
      end
      object GroupBox1: TGroupBox
        Left = 2
        Top = 232
        Width = 389
        Height = 45
        Caption = 'Cancelar Faltas Geradas'
        TabOrder = 2
        object Label6: TLabel
          Left = 10
          Top = 21
          Width = 88
          Height = 13
          Alignment = taRightJustify
          Caption = 'Série / Turma :'
        end
        object TurmaCanc: TRxDBLookupCombo
          Left = 103
          Top = 16
          Width = 193
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DisplayEmpty = '<< Todas as Turmas >>'
          EmptyItemColor = clMenu
          LookupField = 'Nome'
          LookupDisplay = 'Nome'
          LookupSource = DM.dsTurmas
          TabOrder = 0
        end
        object BitBtn2: TBitBtn
          Left = 303
          Top = 15
          Width = 77
          Height = 23
          Caption = 'Cancela'
          TabOrder = 1
          OnClick = BitBtn2Click
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
      end
      object RPeriodo: TRadioGroup
        Left = 397
        Top = 234
        Width = 284
        Height = 41
        Caption = 'Período'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Matutino'
          'Vespertino'
          'Todos')
        TabOrder = 4
      end
      object btnAtualiza: TButton
        Left = 632
        Top = 304
        Width = 129
        Height = 25
        Caption = 'Atualiza Data/Hora'
        DragCursor = crHandPoint
        TabOrder = 5
        OnClick = btnAtualizaClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Falta / Presença'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnHide = TabSheet2Hide
      object TurmaF: TRxLabel
        Left = 16
        Top = 97
        Width = 65
        Height = 25
        Caption = 'Turma'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object NomeAlunoF: TRxLabel
        Left = 16
        Top = 70
        Width = 158
        Height = 32
        Caption = 'NomeAluno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object MensagemF: TRxLabel
        Left = 16
        Top = 46
        Width = 109
        Height = 25
        Caption = 'Mensagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -20
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label3: TLabel
        Left = 128
        Top = 130
        Width = 90
        Height = 13
        Caption = 'AULAS DADAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 464
        Top = 130
        Width = 49
        Height = 13
        Caption = 'FALTAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CodigoF: TRxLabel
        Left = 280
        Top = 97
        Width = 70
        Height = 25
        Caption = 'Código'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label35: TLabel
        Left = 221
        Top = 22
        Width = 76
        Height = 13
        Caption = '[F6] Código :'
      end
      object LerCartoesF: TBitBtn
        Left = 25
        Top = 11
        Width = 192
        Height = 25
        Caption = 'Ler Cartões / FALTAS [F5]'
        TabOrder = 0
        OnClick = LerCartoesClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
          305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
          005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
          B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
          B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
          B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
          B0557777FF577777F7F500000E055550805577777F7555575755500000555555
          05555777775555557F5555000555555505555577755555557555}
        NumGlyphs = 2
      end
      object RxDBGrid2: TRxDBGrid
        Left = 21
        Top = 150
        Width = 314
        Height = 149
        Color = 12582911
        DataSource = dsMapa
        Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDblClick = MFaltaClick
        TitleButtons = True
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'AULA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DISCIPLINA'
            Title.Caption = 'Disciplina'
            Width = 254
            Visible = True
          end>
      end
      object MPresenca: TBitBtn
        Left = 352
        Top = 124
        Width = 105
        Height = 22
        Caption = '  Presença'
        TabOrder = 3
        OnClick = MPresencaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F88F33333333333009033
          333333333F8838F333333333009990333333333F883338FFFFFF330099999000
          00003F883333388888880099999999999990883FF33333FFFFF8330099999000
          000033883FF33888888833330099903333333333883FF8F33333333333009033
          33333333338838F3333333333333003333333333333388333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object MFalta: TBitBtn
        Left = 224
        Top = 124
        Width = 105
        Height = 22
        Caption = 'Falta     '
        TabOrder = 4
        OnClick = MFaltaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333FF3333333333333003333
          3333333333773FF3333333333309003333333333337F773FF333333333099900
          33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
          99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
          33333333337F3F77333333333309003333333333337F77333333333333003333
          3333333333773333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Layout = blGlyphRight
        NumGlyphs = 2
      end
      object RxDBGrid1: TRxDBGrid
        Left = 347
        Top = 148
        Width = 346
        Height = 149
        Color = 11777023
        DataSource = dsFaltas
        Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDblClick = MPresencaClick
        MultiSelect = True
        TitleButtons = True
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'AULA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DISCIPLINA'
            Title.Caption = 'Disciplina'
            Width = 253
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDADE'
            Title.Caption = 'Qtd'
            Width = 32
            Visible = True
          end>
      end
      object PesqCodigo: TCurrencyEdit
        Left = 304
        Top = 19
        Width = 57
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '0;- 0'
        TabOrder = 1
        OnChange = PesqCodigoChange
        OnExit = PesqCodigoExit
        OnKeyPress = PesqCodigoKeyPress
      end
      object PesqAluno: TRxDBLookupCombo
        Left = 373
        Top = 21
        Width = 299
        Height = 21
        DropDownCount = 25
        DisplayEmpty = 'Pesquisa por Nome'
        EmptyValue = '0'
        EmptyItemColor = clSilver
        LookupField = 'CODIGO'
        LookupDisplay = 'NOME'
        LookupSource = DM.dsAlunos
        TabOrder = 2
        OnCloseUp = PesqAlunoCloseUp
        OnEnter = PesqAlunoEnter
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Faltas / Dia'
      ImageIndex = 2
      OnHide = TabSheet3Hide
      OnShow = TabSheet3Show
      object Imprime: TBitBtn
        Left = 657
        Top = 289
        Width = 93
        Height = 27
        Caption = '&Imprime'
        TabOrder = 0
        OnClick = ImprimeClick
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
      object RxDBGrid3: TRxDBGrid
        Left = 0
        Top = 0
        Width = 913
        Height = 265
        Cursor = crHandPoint
        Align = alTop
        DataSource = DM.dsFaltasDia
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDblClick = RxDBGrid3DblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SERIE'
            Title.Caption = 'Sér'
            Width = 27
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TURMA'
            Title.Caption = 'Tur'
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'Código'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHAMADA'
            Title.Caption = 'Ch'
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome do Aluno'
            Width = 328
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDADE'
            Title.Caption = 'Qtd'
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FONE'
            Title.Caption = 'Fone'
            Width = 205
            Visible = True
          end>
      end
      object TpFaltasDia: TRadioGroup
        Left = 8
        Top = 291
        Width = 489
        Height = 30
        Columns = 4
        ItemIndex = 0
        Items.Strings = (
          'TODOS'
          'Ausentes'
          'Atrasados'
          'Foram Embora')
        TabOrder = 2
        OnClick = TpFaltasDiaClick
      end
      object endereco: TCheckBox
        Left = 640
        Top = 272
        Width = 113
        Height = 17
        Caption = 'Com endereço.'
        TabOrder = 3
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Faltas / Aluno'
      ImageIndex = 3
      OnHide = TabSheet4Hide
      OnShow = TabSheet4Show
      object Label5: TLabel
        Left = 7
        Top = 273
        Width = 89
        Height = 13
        Alignment = taRightJustify
        Caption = 'Código Aluno:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 11
        Top = 249
        Width = 85
        Height = 13
        Alignment = taRightJustify
        Caption = 'Período - DE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 207
        Top = 249
        Width = 9
        Height = 13
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object FoneAluno2: TLabel
        Left = 475
        Top = 263
        Width = 77
        Height = 13
        Caption = 'FoneAluno2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object SerieAluno2: TLabel
        Left = 475
        Top = 276
        Width = 79
        Height = 13
        Caption = 'SerieAluno2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label8: TLabel
        Left = 27
        Top = 297
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'Disciplina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PesqAluno2: TRxDBLookupCombo
        Left = 166
        Top = 269
        Width = 299
        Height = 21
        DropDownCount = 25
        DisplayEmpty = 'Pesquisa por Nome'
        EmptyValue = '0'
        EmptyItemColor = clSilver
        LookupField = 'CODIGO'
        LookupDisplay = 'NOME'
        LookupSource = DM.dsAlunos
        TabOrder = 4
        OnCloseUp = PesqAluno2CloseUp
        OnEnter = PesqAluno2Enter
        OnExit = PesqAluno2Exit
      end
      object RxDBGrid4: TRxDBGrid
        Left = 0
        Top = 0
        Width = 913
        Height = 241
        Align = alTop
        DataSource = dsFaltasAlu
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DiaSemanaX'
            Title.Caption = 'Dia Semana'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'AULA'
            Title.Alignment = taCenter
            Title.Caption = 'Aula'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DISCIPLINA'
            Title.Caption = 'Disciplina'
            Width = 412
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDADE'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd'
            Width = 45
            Visible = True
          end>
      end
      object ImprimeA: TBitBtn
        Left = 623
        Top = 286
        Width = 89
        Height = 22
        Caption = '&Imprime'
        Enabled = False
        TabOrder = 5
        OnClick = ImprimeAClick
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
      object PesqCodigo2: TCurrencyEdit
        Left = 104
        Top = 269
        Width = 57
        Height = 21
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '0;- 0'
        TabOrder = 3
        OnEnter = PesqCodigo2Enter
        OnExit = PesqCodigo2Exit
        OnKeyPress = PesqCodigo2KeyPress
      end
      object DateEdit1: TDateEdit
        Left = 104
        Top = 245
        Width = 97
        Height = 21
        AutoSelect = False
        DefaultToday = True
        DialogTitle = 'Selecione a Data'
        NumGlyphs = 2
        TabOrder = 1
        OnChange = DateEdit1Change
      end
      object DateEdit2: TDateEdit
        Left = 222
        Top = 245
        Width = 97
        Height = 21
        AutoSelect = False
        DefaultToday = True
        DialogTitle = 'Selecione a Data'
        NumGlyphs = 2
        TabOrder = 2
        OnChange = DateEdit1Change
      end
      object Abona: TBitBtn
        Left = 623
        Top = 261
        Width = 89
        Height = 22
        Caption = ' Abona'
        Enabled = False
        TabOrder = 6
        OnClick = AbonaClick
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
      object Combo_Bim: TRxDBLookupCombo
        Left = 328
        Top = 245
        Width = 137
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DisplayEmpty = '<< Bimestre >>'
        LookupField = 'DESCRICAO'
        LookupSource = DM.dsBimestres
        TabOrder = 7
        OnChange = Combo_BimChange
      end
      object PesqDisciplina: TRxDBLookupCombo
        Left = 105
        Top = 294
        Width = 299
        Height = 21
        DropDownCount = 20
        DisplayEmpty = '<<Todas as Disciplinas>>'
        EmptyValue = '0'
        EmptyItemColor = clSilver
        LookupField = 'CODIGO'
        LookupDisplay = 'NOME'
        LookupSource = DM.dsDisciplinas
        TabOrder = 8
        OnCloseUp = PesqDisciplinaCloseUp
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Importa/Presença'
      ImageIndex = 4
      object Shape1: TShape
        Left = 620
        Top = 38
        Width = 265
        Height = 85
      end
      object Label9: TLabel
        Left = 620
        Top = 128
        Width = 69
        Height = 13
        Caption = 'Mensagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Visible = False
      end
      object Gauge: TGauge
        Left = 620
        Top = 144
        Width = 201
        Height = 17
        Progress = 0
        Visible = False
      end
      object RxLabel1: TRxLabel
        Left = 620
        Top = 168
        Width = 209
        Height = 13
        Caption = 'Presenças atualizadas com sucesso.'
        Visible = False
      end
      object Label10: TLabel
        Left = 8
        Top = 8
        Width = 213
        Height = 13
        Caption = 'Selecione o arquivo a ser carregado:'
      end
      object Label11: TLabel
        Left = 620
        Top = 224
        Width = 293
        Height = 52
        Caption = 
          'Instruções:'#13#10'1 - Selecione o arquivo a ser carregado.'#13#10'2 - Cliqu' +
          'e no botão Carrega/Arquivo.'#13#10'3 - Clique no botão importar Gerar ' +
          'presença.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 636
        Top = 66
        Width = 196
        Height = 52
        Caption = 
          'Para que seja feito o controle  de'#13#10'presença com o registro da s' +
          'aida '#13#10'do  aluno  mantenha  esta  opção '#13#10'habilitada.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Total: TLabel
        Left = 9
        Top = 284
        Width = 27
        Height = 13
        Caption = 'Total'
      end
      object Texto: TRxDBRichEdit
        Left = 72
        Top = 312
        Width = 745
        Height = 255
        TabOrder = 3
        Visible = False
      end
      object BCarega: TBitBtn
        Left = 320
        Top = 287
        Width = 129
        Height = 23
        Cursor = crHandPoint
        Caption = 'Carrega/Arquivo'
        TabOrder = 0
        OnClick = BCaregaClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF3E8E5CB9887B46941BA7653FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0EDCC9B8AB6673FD9A671F3
          DCACAC5933FBF8F7F9F4F2FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF5F3
          D2A898B4653DD58949F7C479FFDA89F7CA85AF5D35B66E4CB66D48B36844CEA1
          8FFDFAF9FFFFFFFFFFFFFFFFFFAC5A33CF8444FDB45AFFB656FFAE4EFFA645FF
          AF58FEBB62FEBA5FFDB75FEEA654C47030B46A4AF9F4F1FFFFFFFFFFFFC48A6F
          BE6426E88C33FFAE4BFFAD4CFFA543FDA64BE88E35E78931EC8F35FFAD49FFB7
          53CB712AC2876EFFFFFFFFFFFFFFFFFFEAD7D0BA7759BE6D33E9AA5FFFD786F8
          C77CA34418B87254B1623FC37033FFDC89FBD482AB501FFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE3C9C1BB795EC27F4DE6C084B1623BFFFFFFFFFFFFA14822CC8F
          55DAA669A84D1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFAE1C3BBB9
          7353C58B72FFFFFFFFFFFFE0C1B1CD9C8BCE9D8CD5AB98FFFFFFFFFFFFD1A48E
          C99380C8917EDAB5A3FFFFFFFFFFFFC89077B56C47D7B0A4FCF8F7FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA54918DAAA6CD59F63A1431AFAF5F3FFFFFFB2
          6741E9C78ACB8E57B8704FDAB7ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA5126
          F4C676FFE089CC7B3BAD5932B76F4DA44618F5C075FFD682EFB265C57234B56B
          48E4C9C0FFFFFFFFFFFFFFFFFFCD9C89C16322FFB350FFB14BF29638EC8F33ED
          9236FDA44AFFA13FFFAA47FFAE49EF9739C46925BC7958FFFFFFFFFFFFFCF9F8
          BE7F63BB6328E7A053F8B25CFAB65FFAB55FFEB25CFFA949FFB052FFB859FAB2
          59CF8444AF603AFFFFFFFFFFFFFFFFFFFEFDFDD9B4A6B56F4FB46B45B56C48A9
          542AF5CA89FFDD8FF6C47BD28547B4643ED5AD9FFBF8F6FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFDFCFBFFFFFFAF603CEFD9A9D7A472B56741CFA091F9F4
          F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF
          8160B3653FCE9E8EF6EDEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object Arquivo: TFilenameEdit
        Left = 8
        Top = 24
        Width = 431
        Height = 21
        NumGlyphs = 1
        TabOrder = 1
      end
      object RxDBGrid5: TRxDBGrid
        Left = 8
        Top = 48
        Width = 609
        Height = 233
        DataSource = DsTabelaFrequencia
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Aluno'
            Title.Caption = 'Nome'
            Width = 331
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Hora'
            Width = 84
            Visible = True
          end>
      end
      object bimporta: TBitBtn
        Left = 494
        Top = 289
        Width = 115
        Height = 22
        Cursor = crHandPoint
        Caption = 'Gerar presença'
        TabOrder = 4
        OnClick = bimportaClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABA3925E6735B6A99DFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F3F2EF6A79493FC45A537F3EC3BBAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B09D4A9A4558E9924CD274537A37CF
          CDC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAF9
          758F5B5BCF7A7CE8AB6DE8A351CE74557D39D9DCD0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFC8D0BC44943D89EEB596F3C58AEBB879ECAF50
          CC72588139E4E8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFC83A46F
          6CCE82A1FAD15CCD7678E6A595F3C87CF2B84FC86D5D8A43E9EEE5FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFDFE8DA44943898FCC95FC774417D254198366CE39891
          F9CC7CF7C14BC3646A9752F4F7F3FFFFFFFFFFFFFFFFFFFFFFFF91B8855AD07A
          5FD57F5D994BFEFEFEC6D6BE43923151CB6D81F9C67AFECA44C05D71A25CFBFC
          FAFFFFFFFFFFFFFFFFFF42A13C44D06257A04AF0F5EEFFFFFFFFFFFFDDE8D96A
          A4593AB4466EF2B372FFD03FBB5382B273FFFFFFFFFFFFFFFFFF2D99244CA542
          E7F0E5FFFFFFFFFFFFFFFFFFFFFFFFFBFCFA9FC5952E9F2659E89669FFD238B8
          498BBC81FFFFFFFFFFFFE1EFDFEAF3E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFCDE3C93EA23342D46E65FCBE34B7469DCB99FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF4EA6BB5642FBE
          475BF5A42DB43CB3DBB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF9FD19F33B53F44DD692CB230FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFD6ECD643B7461DAD1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object DBCheckBox1: TDBCheckBox
        Left = 632
        Top = 46
        Width = 241
        Height = 17
        Caption = 'Controle de presença com saida'
        Color = clWhite
        DataField = 'PARAMETOSAIDA'
        DataSource = DM.dsParametros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 5
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnExit = DBCheckBox1Exit
      end
    end
  end
  object Data: TDateEdit
    Left = 57
    Top = 387
    Width = 97
    Height = 21
    DialogTitle = 'Selecione a Data'
    NumGlyphs = 2
    TabOrder = 2
    OnExit = DataExit
    OnKeyPress = DataKeyPress
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1500
    OnTimer = Timer1Timer
    Left = 636
    Top = 16
  end
  object IncFaltas: TIBStoredProc
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    StoredProcName = 'INCLUI_FALTAS'
    Left = 327
    Top = 40
    ParamData = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
  object GravaPresenca: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from FALTAS'
      'where ALU_CODIGO = :aluno and'
      '          DATA = :data and'
      '          AULA >= :aula')
    Left = 528
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'aluno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'aula'
        ParamType = ptUnknown
      end>
  end
  object dsFaltas: TDataSource
    DataSet = Faltas
    Left = 351
    Top = 176
  end
  object Faltas: TIBDataSet
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    RefreshSQL.Strings = (
      '')
    SelectSQL.Strings = (
      'select F.AULA,'
      '          D.NOME as Disciplina,'
      '          F.QTDADE'
      'from FALTAS F'
      'join DISCIPLINAS D on D.CODIGO = F.DIS_CODIGO'
      'where F.ALU_CODIGO = :aluno and'
      '          F.DATA = :data'
      'order by F.AULA')
    Left = 303
    Top = 176
    object FaltasAULA: TSmallintField
      FieldName = 'AULA'
      Origin = 'FALTAS.AULA'
      Required = True
    end
    object FaltasDISCIPLINA: TIBStringField
      FieldName = 'DISCIPLINA'
      Origin = 'DISCIPLINAS.NOME'
      Size = 40
    end
    object FaltasQTDADE: TSmallintField
      FieldName = 'QTDADE'
      Origin = 'FALTAS.QTDADE'
    end
  end
  object dsMapa: TDataSource
    DataSet = Mapa
    Left = 64
    Top = 192
  end
  object Pop1: TPopupMenu
    AutoPopup = False
    Left = 556
    Top = 24
    object LerCart1: TMenuItem
      Caption = 'LerCart'
      ShortCut = 116
      OnClick = LerCartoesClick
    end
    object DigitaCodigo1: TMenuItem
      Caption = 'DigitaCodigo'
      ShortCut = 117
      OnClick = DigitaCodigo1Click
    end
    object Limpapresenca1: TMenuItem
      Caption = 'Limpa presenca'
    end
  end
  object Mapa: TIBDataSet
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'select A.AULA,'
      '          A.DISCIPLINA as DisCod,'
      '          D.NOME as Disciplina'
      'from AULAS_DADAS A'
      'join DISCIPLINAS D on D.CODIGO = A.DISCIPLINA'
      'where A.SERIE = :serie and'
      '          A.TURMA = :turma and'
      '          A.DATA = :data'
      'order by A.AULA')
    Left = 24
    Top = 192
    object MapaAULA: TSmallintField
      FieldName = 'AULA'
      Origin = 'AULAS_DADAS.AULA'
      Required = True
    end
    object MapaDISCIPLINA: TIBStringField
      FieldName = 'DISCIPLINA'
      Origin = 'DISCIPLINAS.NOME'
      Size = 40
    end
    object MapaDISCOD: TIntegerField
      FieldName = 'DISCOD'
      Origin = 'AULAS_DADAS.DISCIPLINA'
    end
  end
  object GravaFalta: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'insert into FALTAS (ALU_CODIGO,'
      '         DIS_CODIGO,'
      '         DATA,'
      '         AULA,'
      '         QTDADE)'
      'values (:Alu_Codigo,'
      '            :Dis_Codigo,'
      '            :Data,'
      '            :Aula,'
      '            1)')
    Left = 616
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Alu_Codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Dis_Codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'aula'
        ParamType = ptUnknown
      end>
  end
  object QtAulas: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select count(*) as TotAulas'
      'from AULAS_DADAS'
      'where SERIE = :serie and'
      '          TURMA = :turma and'
      '          DATA = :data'
      '')
    Left = 463
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
        Name = 'data'
        ParamType = ptUnknown
      end>
    object QtAulasTOTAULAS: TIntegerField
      FieldName = 'TOTAULAS'
      Required = True
    end
  end
  object veFaltas: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select count(*) as TOTFALTAS'
      'from FALTAS'
      'where ALU_CODIGO = :Aluno and'
      '          DATA = :Data')
    Left = 460
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Aluno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end>
    object veFaltasTOTFALTAS: TIntegerField
      FieldName = 'TOTFALTAS'
      Required = True
    end
  end
  object dsFaltasAlu: TDataSource
    DataSet = FaltasAlu
    Left = 428
    Top = 184
  end
  object FaltasAlu: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    AutoCalcFields = False
    OnCalcFields = FaltasAluCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select F.AULA,'
      '          F.DATA,'
      '          F.QTDADE,'
      '          F.OBS,'
      '          D.NOME as Disciplina'
      'from FALTAS F'
      'join DISCIPLINAS D on D.CODIGO = F.DIS_CODIGO'
      'where F.ALU_CODIGO = :aluno and'
      '          F.DATA between :data1 and :data2'
      ''
      'order by F.DATA, F.AULA')
    Left = 492
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'aluno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object FaltasAluAULA: TSmallintField
      FieldName = 'AULA'
      Origin = 'FALTAS.AULA'
      Required = True
    end
    object FaltasAluDATA: TDateField
      FieldName = 'DATA'
      Origin = 'FALTAS.DATA'
      Required = True
    end
    object FaltasAluQTDADE: TSmallintField
      FieldName = 'QTDADE'
      Origin = 'FALTAS.QTDADE'
    end
    object FaltasAluDISCIPLINA: TIBStringField
      FieldName = 'DISCIPLINA'
      Origin = 'DISCIPLINAS.NOME'
      Size = 40
    end
    object FaltasAluDiaSemanaX: TStringField
      FieldKind = fkCalculated
      FieldName = 'DiaSemanaX'
      Size = 15
      Calculated = True
    end
    object FaltasAluOBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"FALTAS"."OBS"'
      Size = 25
    end
  end
  object DelFaltas: TIBStoredProc
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    StoredProcName = 'EXCLUI_FALTAS'
    Left = 392
    Top = 31
    ParamData = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SERIE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TURMA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PERIODO'
        ParamType = ptInput
      end>
  end
  object IBSQL1: TIBSQL
    Database = DM.DB_ANGLO
    ParamCheck = True
    Transaction = DM.IBTr_ANGLO
    Left = 583
    Top = 136
  end
  object TabelaFrequencia: TRxMemoryData
    Active = True
    Filtered = True
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftInteger
      end
      item
        Name = 'Data'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'Hora'
        DataType = ftTime
      end
      item
        Name = 'Aluno'
        DataType = ftString
        Size = 70
      end>
    Left = 244
    Top = 144
    object TabelaFrequenciaCodigo: TIntegerField
      DisplayWidth = 18
      FieldName = 'Codigo'
    end
    object TabelaFrequenciaData: TDateField
      DisplayWidth = 10
      FieldName = 'Data'
      Required = True
    end
    object TabelaFrequenciaHora: TTimeField
      DisplayWidth = 24
      FieldName = 'Hora'
    end
    object TabelaFrequenciaAluno: TStringField
      FieldName = 'Aluno'
      Size = 70
    end
  end
  object DsTabelaFrequencia: TDataSource
    DataSet = TabelaFrequencia
    Left = 140
    Top = 144
  end
  object ProcedurePresenca: TIBStoredProc
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    StoredProcName = 'ATUALIZAFALTAS'
    Left = 359
    Top = 240
    ParamData = <
      item
        DataType = ftDate
        Name = 'W_DATA'
        ParamType = ptInput
      end>
  end
  object ibqpresenca: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from presenca'
      'where ALU_PRESENCA =:balu and DATA =:bdata')
    Left = 164
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'balu'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bdata'
        ParamType = ptUnknown
      end>
    object ibqpresencaALU_PRESENCA: TIntegerField
      FieldName = 'ALU_PRESENCA'
      Origin = '"PRESENCA"."ALU_PRESENCA"'
    end
    object ibqpresencaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"PRESENCA"."DATA"'
    end
    object ibqpresencaHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"PRESENCA"."HORA"'
    end
  end
  object FPpresenca: TFormPlacement
    UseRegistry = True
    Left = 484
    Top = 344
  end
  object LipaPresenca: TIBStoredProc
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    StoredProcName = 'LIMPA_PRESENCA'
    Left = 412
    Top = 128
  end
end
