object Mov_Ocorrencias: TMov_Ocorrencias
  Left = 250
  Top = 165
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Ocorrências de Alunos'
  ClientHeight = 426
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = Pop1
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBText9: TDBText
    Left = 216
    Top = 391
    Width = 65
    Height = 17
    DataField = 'TOTAL'
    DataSource = DsTotalOcorrencias
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 16
    Top = 392
    Width = 185
    Height = 18
    Caption = 'Total de ocorrências:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Fecha: TBitBtn
    Left = 651
    Top = 389
    Width = 75
    Height = 25
    Caption = '&Fecha'
    TabOrder = 1
    Kind = bkClose
    Layout = blGlyphRight
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 741
    Height = 377
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Cadastro'
      object Label2: TLabel
        Left = 530
        Top = 45
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Hora :'
      end
      object DBText1: TDBText
        Left = 572
        Top = 45
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'HORA'
        DataSource = DM.dsOcorrencias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 5
        Top = 64
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Obs :'
      end
      object Label4: TLabel
        Left = 5
        Top = 45
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Aluno :'
      end
      object DBText2: TDBText
        Left = 52
        Top = 45
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'ALUNO'
        DataSource = DM.dsOcorrencias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 105
        Top = 45
        Width = 270
        Height = 13
        DataField = 'NOME'
        DataSource = DM.dsOcorrencias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 436
        Top = 45
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'SerieX'
        DataSource = DM.dsOcorrencias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 391
        Top = 45
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Série :'
      end
      object Label12: TLabel
        Left = 29
        Top = 132
        Width = 573
        Height = 12
        Caption = 
          'Ctrl-F1 Faltou | Ctrl-F2 Chegou atrasado | Ctrl-F3 Matou aula | ' +
          'Ctrl-F4 Não fez a tarefa | Ctrl-F5 Levou advertência'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBTexto: TDBMemo
        Left = 42
        Top = 64
        Width = 559
        Height = 67
        DataField = 'TEXTO'
        DataSource = DM.dsOcorrencias
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object OK: TBitBtn
        Left = 616
        Top = 112
        Width = 113
        Height = 25
        Caption = '&Grava [F8]'
        TabOrder = 2
        OnClick = OKClick
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
      object RxDBGrid2: TRxDBGrid
        Left = -1
        Top = 145
        Width = 735
        Height = 204
        DataSource = DM.dsOcorrencias
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDrawColumnCell = RxDBGrid2DrawColumnCell
        TitleButtons = True
        Columns = <
          item
            Expanded = False
            FieldName = 'ALUNO'
            Title.Caption = 'Aluno'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 247
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SerieX'
            Title.Caption = 'Série'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HoraX'
            Title.Caption = 'Data / Hora'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TEXTO'
            Title.Caption = 'Observação'
            Visible = True
          end>
      end
      object Cancela: TBitBtn
        Left = 616
        Top = 80
        Width = 113
        Height = 25
        Cancel = True
        Caption = '&Cancela [F7]'
        TabOrder = 4
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
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 733
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel1'
        Color = clGray
        TabOrder = 0
        object Label1: TLabel
          Left = 6
          Top = 0
          Width = 123
          Height = 13
          Caption = 'Pesquisa       Aluno'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object PesqAluno: TRxDBLookupCombo
          Left = 91
          Top = 14
          Width = 398
          Height = 21
          DropDownCount = 25
          DisplayEmpty = 'Pesquisa por Nome'
          EmptyValue = '0'
          EmptyItemColor = clSilver
          LookupField = 'CODIGO'
          LookupDisplay = 'NOME'
          LookupSource = DM.dsAlunos
          TabOrder = 2
          OnChange = PesqAlunoChange
        end
        object CodAlu: TEdit
          Left = 7
          Top = 14
          Width = 75
          Height = 21
          TabOrder = 0
          OnKeyPress = CodAluKeyPress
        end
        object Inclui: TBitBtn
          Left = 544
          Top = 10
          Width = 185
          Height = 24
          Caption = '&Inclui Ocorrência [F5]'
          TabOrder = 1
          OnClick = IncluiClick
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
          NumGlyphs = 2
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta Aluno'
      ImageIndex = 1
      object Label9: TLabel
        Left = 5
        Top = 70
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Aluno :'
      end
      object DBText5: TDBText
        Left = 52
        Top = 70
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'ALUNO'
        DataSource = dsOcorr
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 105
        Top = 70
        Width = 270
        Height = 13
        DataField = 'NOME'
        DataSource = dsOcorr
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 391
        Top = 70
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Série :'
      end
      object DBText7: TDBText
        Left = 436
        Top = 70
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'SerieX'
        DataSource = dsOcorr
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 538
        Top = 70
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Hora :'
      end
      object DBText8: TDBText
        Left = 580
        Top = 70
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'HORA'
        DataSource = dsOcorr
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 5
        Top = 86
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Obs :'
      end
      object RxDBGrid1: TRxDBGrid
        Left = -1
        Top = 160
        Width = 735
        Height = 190
        DataSource = dsOcorr
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
            FieldName = 'HoraX'
            Title.Caption = 'Data / Hora'
            Width = 87
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DSem'
            Title.Alignment = taCenter
            Title.Caption = 'Semana'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TEXTO'
            Title.Caption = 'Observação'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 733
        Height = 67
        Align = alTop
        BevelOuter = bvNone
        Color = clGray
        TabOrder = 1
        object Label6: TLabel
          Left = 6
          Top = 0
          Width = 123
          Height = 13
          Caption = 'Pesquisa       Aluno'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 6
          Top = 46
          Width = 17
          Height = 13
          Caption = 'De'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 134
          Top = 46
          Width = 8
          Height = 13
          Caption = 'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object PesqAluno2: TRxDBLookupCombo
          Left = 91
          Top = 14
          Width = 398
          Height = 21
          DropDownCount = 25
          DisplayEmpty = 'Pesquisa por Nome'
          EmptyValue = '0'
          EmptyItemColor = clSilver
          LookupField = 'CODIGO'
          LookupDisplay = 'NOME'
          LookupSource = DM.dsAlunos
          TabOrder = 1
        end
        object CodAlu2: TEdit
          Left = 7
          Top = 14
          Width = 75
          Height = 21
          TabOrder = 0
          OnKeyPress = CodAlu2KeyPress
        end
        object Imprime: TBitBtn
          Left = 632
          Top = 13
          Width = 97
          Height = 24
          Caption = '&Imprime'
          TabOrder = 5
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
        object Pesquisa: TBitBtn
          Left = 504
          Top = 13
          Width = 117
          Height = 24
          Action = APesquisa2
          Caption = '&Pesquisa[F4]'
          TabOrder = 4
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
          NumGlyphs = 2
        end
        object DateEdit1: TDateEdit
          Left = 30
          Top = 40
          Width = 99
          Height = 21
          NumGlyphs = 2
          TabOrder = 2
        end
        object DateEdit2: TDateEdit
          Left = 144
          Top = 40
          Width = 97
          Height = 21
          NumGlyphs = 2
          TabOrder = 3
        end
      end
      object DBMemo1: TDBMemo
        Left = 42
        Top = 86
        Width = 559
        Height = 67
        DataField = 'TEXTO'
        DataSource = dsOcorr
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Tempo de Tolerância'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 733
        Height = 81
        Align = alTop
        BevelOuter = bvNone
        Color = clGray
        TabOrder = 0
        object Label14: TLabel
          Left = 14
          Top = 6
          Width = 123
          Height = 13
          Caption = 'Pesquisa       Aluno'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 14
          Top = 54
          Width = 17
          Height = 13
          Caption = 'De'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 142
          Top = 54
          Width = 8
          Height = 13
          Caption = 'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLookNome: TRxDBLookupCombo
          Left = 101
          Top = 21
          Width = 397
          Height = 21
          DropDownCount = 25
          DisplayEmpty = 'Todos os alunos'
          EmptyValue = '0'
          EmptyItemColor = clSilver
          LookupField = 'CODIGO'
          LookupDisplay = 'NOME'
          LookupSource = DM.dsAlunos
          TabOrder = 1
          OnChange = RxLookNomeChange
        end
        object EdCodigo: TEdit
          Left = 14
          Top = 21
          Width = 75
          Height = 21
          TabOrder = 0
          OnClick = EdCodigoClick
        end
        object TImp: TBitBtn
          Left = 632
          Top = 7
          Width = 97
          Height = 24
          Caption = '&Imprime'
          TabOrder = 5
          OnClick = TImpClick
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
        object TPesq: TBitBtn
          Left = 504
          Top = 7
          Width = 117
          Height = 24
          Action = Apesquisa
          Caption = '&Pesquisa [F6]'
          TabOrder = 4
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
          NumGlyphs = 2
        end
        object DInicial: TDateEdit
          Left = 38
          Top = 48
          Width = 99
          Height = 21
          NumGlyphs = 2
          TabOrder = 2
        end
        object DFinal: TDateEdit
          Left = 152
          Top = 48
          Width = 97
          Height = 21
          NumGlyphs = 2
          TabOrder = 3
        end
      end
      object GTolerancia: TDBGrid
        Left = 2
        Top = 110
        Width = 721
        Height = 233
        DataSource = dsTolerancia
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDrawColumnCell = GToleranciaDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'ALUNO'
            Title.Caption = 'Código'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 211
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SerieX'
            Title.Caption = 'Série'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HoraX'
            Title.Caption = 'Data  /  Hora'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SemanaX'
            Title.Caption = 'Dia Semana'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TEXTO'
            Title.Caption = 'Obs.'
            Visible = True
          end>
      end
    end
  end
  object FS: TFormStorage
    UseRegistry = True
    StoredValues = <>
    Left = 480
    Top = 65520
  end
  object Pop1: TPopupMenu
    AutoPopup = False
    Left = 372
    Top = 65520
    object IncluiOcorrncia1: TMenuItem
      Caption = 'Inclui Ocorrência'
      ShortCut = 116
      OnClick = IncluiClick
    end
    object Grava1: TMenuItem
      Caption = 'Grava'
      ShortCut = 119
      OnClick = OKClick
    end
    object Cancela1: TMenuItem
      Caption = 'Cancela'
      ShortCut = 118
      OnClick = CancelaClick
    end
    object Faltou1: TMenuItem
      Tag = 1
      Caption = 'Faltou'
      ShortCut = 16496
      OnClick = Faltou1Click
    end
    object ChegouAtrasado1: TMenuItem
      Tag = 2
      Caption = 'Chegou Atrasado'
      ShortCut = 16497
      OnClick = Faltou1Click
    end
    object MatouAula1: TMenuItem
      Tag = 3
      Caption = 'Matou Aula'
      ShortCut = 16498
      OnClick = Faltou1Click
    end
    object Nofeztarefa1: TMenuItem
      Tag = 4
      Caption = 'Não fez tarefa'
      ShortCut = 16499
      OnClick = Faltou1Click
    end
    object LevouAdvertncia1: TMenuItem
      Tag = 5
      Caption = 'Levou Advertência'
      ShortCut = 16500
      OnClick = Faltou1Click
    end
  end
  object dsOcorr: TDataSource
    DataSet = Ocorr
    Left = 80
    Top = 336
  end
  object Ocorr: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    OnCalcFields = OcorrCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select O.*, '
      '     A.NOME,'
      '     A.SERIE,'
      '     A.TURMA,'
      '     A.FONE,'
      '     A.MAE_NOME,'
      '     A.PAI_NOME'
      'from OCORRENCIAS O'
      'join ALUNOS A on A.CODIGO = O.ALUNO'
      'where O.ALUNO = :aluno and '
      '    cast(HORA as date) between :inicio and :fim'
      'order by O.HORA desc')
    Left = 28
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'aluno'
        ParamType = ptUnknown
      end
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
    object OcorrALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = 'OCORRENCIAS.ALUNO'
      Required = True
    end
    object OcorrHORA: TDateTimeField
      FieldName = 'HORA'
      Origin = 'OCORRENCIAS.HORA'
      Required = True
    end
    object OcorrTEXTO: TIBStringField
      FieldName = 'TEXTO'
      Origin = 'OCORRENCIAS.TEXTO'
      Size = 1000
    end
    object OcorrNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'ALUNOS.NOME'
      Required = True
      Size = 60
    end
    object OcorrSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = 'ALUNOS.SERIE'
    end
    object OcorrTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = 'ALUNOS.TURMA'
      FixedChar = True
      Size = 1
    end
    object OcorrSerieX: TStringField
      FieldKind = fkCalculated
      FieldName = 'SerieX'
      Size = 15
      Calculated = True
    end
    object OcorrHoraX: TStringField
      FieldKind = fkCalculated
      FieldName = 'HoraX'
      Size = 12
      Calculated = True
    end
    object OcorrDSem: TStringField
      FieldKind = fkCalculated
      FieldName = 'DSem'
      Size = 8
      Calculated = True
    end
    object OcorrTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"OCORRENCIAS"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object OcorrFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"ALUNOS"."FONE"'
      Size = 30
    end
    object OcorrMAE_NOME: TIBStringField
      FieldName = 'MAE_NOME'
      Origin = '"ALUNOS"."MAE_NOME"'
      Size = 50
    end
    object OcorrPAI_NOME: TIBStringField
      FieldName = 'PAI_NOME'
      Origin = '"ALUNOS"."PAI_NOME"'
      Size = 50
    end
  end
  object Tolerancia: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    OnCalcFields = ToleranciaCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select O.*, '
      '     A.NOME,'
      '     A.CONT_TOL,'
      '     A.SERIE,'
      '     A.TURMA,'
      '     A.CODIGO,'
      '     A.FONE,'
      '     A.MAE_NOME,'
      '     A.PAI_NOME'
      'from OCORRENCIAS O'
      'join ALUNOS A on A.CODIGO = O.ALUNO'
      
        'where cast(HORA as date) between :inicio and :fim and cast(HORA ' +
        'as time) = '#39'7:10'#39' and A.NOME = :ALUNO'
      'order by A.SERIE asc')
    Left = 452
    Top = 304
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
      end
      item
        DataType = ftUnknown
        Name = 'ALUNO'
        ParamType = ptUnknown
      end>
    object ToleranciaALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = '"OCORRENCIAS"."ALUNO"'
      Required = True
    end
    object ToleranciaHORA: TDateTimeField
      FieldName = 'HORA'
      Origin = '"OCORRENCIAS"."HORA"'
      Required = True
    end
    object ToleranciaTEXTO: TIBStringField
      FieldName = 'TEXTO'
      Origin = '"OCORRENCIAS"."TEXTO"'
      Size = 1000
    end
    object ToleranciaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ALUNOS"."NOME"'
      Required = True
      Size = 60
    end
    object ToleranciaSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = '"ALUNOS"."SERIE"'
    end
    object ToleranciaTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"ALUNOS"."TURMA"'
      FixedChar = True
      Size = 1
    end
    object ToleranciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"ALUNOS"."CODIGO"'
      Required = True
    end
    object ToleranciaCONT_TOL: TIntegerField
      FieldName = 'CONT_TOL'
      Origin = '"ALUNOS"."CONT_TOL"'
    end
    object ToleranciaSerieX: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'SerieX'
      Calculated = True
    end
    object ToleranciaSemanaX: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'SemanaX'
      Calculated = True
    end
    object ToleranciaHoraX: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'HoraX'
      Calculated = True
    end
    object ToleranciaTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"OCORRENCIAS"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object ToleranciaFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"ALUNOS"."FONE"'
      Size = 30
    end
    object ToleranciaMAE_NOME: TIBStringField
      FieldName = 'MAE_NOME'
      Origin = '"ALUNOS"."MAE_NOME"'
      Size = 50
    end
    object ToleranciaPAI_NOME: TIBStringField
      FieldName = 'PAI_NOME'
      Origin = '"ALUNOS"."PAI_NOME"'
      Size = 50
    end
  end
  object dsTolerancia: TDataSource
    DataSet = Tolerancia
    Left = 524
    Top = 304
  end
  object ActionList1: TActionList
    Left = 676
    Top = 64
    object Apesquisa: TAction
      Caption = '&Pesquisa [F6]'
      ShortCut = 117
      OnExecute = ApesquisaExecute
    end
    object APesquisa2: TAction
      Caption = '&Pesquisa[F4]'
      ShortCut = 115
      OnExecute = APesquisa2Execute
    end
  end
  object QTotalOcorrencias: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select count(aluno) as total'
      'from ocorrencias'
      'where aluno = :baluno')
    Left = 592
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'baluno'
        ParamType = ptUnknown
      end>
    object QTotalOcorrenciasTOTAL: TIntegerField
      FieldName = 'TOTAL'
      Required = True
      EditFormat = '00'
    end
  end
  object DsTotalOcorrencias: TDataSource
    DataSet = QTotalOcorrencias
    Left = 520
    Top = 384
  end
end
