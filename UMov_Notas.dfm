object Mov_Notas: TMov_Notas
  Left = 380
  Top = 101
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsSingle
  Caption = 'QTem'
  ClientHeight = 648
  ClientWidth = 910
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 750
    Top = 616
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
    Width = 889
    Height = 609
    ActivePage = TabSheet1
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'p/&Disciplina'
      object Label1: TLabel
        Left = 7
        Top = 40
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Disciplina :'
      end
      object Label2: TLabel
        Left = 25
        Top = 16
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Turma :'
      end
      object Bevel1: TBevel
        Left = 364
        Top = 102
        Width = 124
        Height = 18
      end
      object Label6: TLabel
        Left = 372
        Top = 104
        Width = 105
        Height = 13
        Caption = 'Notas por setor.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel2: TBevel
        Left = 489
        Top = 102
        Width = 121
        Height = 17
      end
      object Label7: TLabel
        Left = 492
        Top = 104
        Width = 113
        Height = 13
        Caption = 'Notas atividades.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel3: TBevel
        Left = 611
        Top = 102
        Width = 80
        Height = 20
      end
      object Label9: TLabel
        Left = 625
        Top = 104
        Width = 49
        Height = 13
        Caption = 'M?dias.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel4: TBevel
        Left = 692
        Top = 102
        Width = 133
        Height = 20
      end
      object Label10: TLabel
        Left = 697
        Top = 103
        Width = 124
        Height = 13
        Caption = 'Notas recup/setor.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 3
        Top = 435
        Width = 161
        Height = 13
        Caption = 'Notas Bimestre Anterior.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxDBGrid1: TRxDBGrid
        Left = 3
        Top = 118
        Width = 833
        Height = 317
        Color = clWhite
        DataSource = DM.dsNotas
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnKeyPress = RxDBGrid1KeyPress
        OnGetCellParams = RxDBGrid1GetCellParams
        Columns = <
          item
            Expanded = False
            FieldName = 'ALUNO'
            ReadOnly = True
            Title.Caption = 'C?dAlu'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHAMADA'
            ReadOnly = True
            Title.Caption = 'Cham'
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            ReadOnly = True
            Title.Caption = 'Nome'
            Width = 259
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NOTA1'
            Title.Alignment = taCenter
            Title.Caption = 'SET-1'
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NOTA2'
            Title.Alignment = taCenter
            Title.Caption = 'SET-2'
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NOTA3'
            Title.Alignment = taCenter
            Title.Caption = 'SET-3'
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NOTA4'
            Title.Alignment = taCenter
            Title.Caption = 'AT-1'
            Title.Color = 9449520
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NOTA5'
            Title.Alignment = taCenter
            Title.Caption = 'AT-2'
            Title.Color = 9449520
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NOTA6'
            Title.Alignment = taCenter
            Title.Caption = 'AT-3'
            Title.Color = 9449520
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NOTA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'NF'
            Title.Color = clRed
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 39
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RECUPBIM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10309376
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'NRF'
            Title.Color = clRed
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 39
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RECUPBIM1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10309376
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            PickList.Strings = (
              '')
            Title.Caption = 'REC-1'
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RECUPBIM2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10309376
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'REC-2'
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RECUPBIM3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10309376
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'REC-3'
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Visible = True
          end>
      end
      object Disciplina: TRxDBLookupCombo
        Left = 76
        Top = 40
        Width = 332
        Height = 20
        DropDownCount = 20
        DisplayAllFields = True
        DisplayEmpty = '<< Selecione a Disciplina >>'
        EmptyItemColor = clMenu
        LookupField = 'CODIGO'
        LookupDisplay = 'CODIGO;NOME'
        LookupSource = DM.dsDisciplinas
        TabOrder = 1
        OnChange = TurmaChange
      end
      object Bimestre: TRadioGroup
        Left = 5
        Top = 59
        Width = 516
        Height = 30
        Columns = 5
        Items.Strings = (
          '&1? Bimestre'
          '&2? Bimestre'
          '&3? Bimestre'
          '&4? Bimestre'
          '&Exame')
        TabOrder = 2
        OnClick = BimestreClick
      end
      object Turma: TRxDBLookupCombo
        Left = 76
        Top = 11
        Width = 333
        Height = 21
        DropDownCount = 15
        DisplayAllFields = True
        DisplayEmpty = '<< Selecione a Turma >>'
        EmptyItemColor = clMenu
        LookupField = 'Nome'
        LookupDisplay = 'Nome'
        LookupSource = DM.dsTurmas
        TabOrder = 0
        OnChange = TurmaChange
      end
      object RepeteNotaD: TBitBtn
        Left = 532
        Top = 67
        Width = 121
        Height = 21
        Caption = 'Repete Nota [F6]'
        TabOrder = 4
        OnClick = RepeteNotaDClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
          FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
          990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
          990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
          FFFF3FFFFF3333333F330000033FFFFF0FFF77777F3333337FF30EEE0333FFF0
          00FF7F337FFF333777FF0EEE00033F00000F7F33777F3777777F0EEE0E033000
          00007FFF7F7FF777777700000E00033000FF777773777F3777F3330EEE0E0330
          00FF337FFF7F7F3777F33300000E033000FF337777737F37773333330EEE0300
          03FF33337FFF77777333333300000333333F3333777773333333}
        NumGlyphs = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'p/&Aluno'
      ImageIndex = 1
      object Label3: TLabel
        Left = 29
        Top = 40
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Aluno :'
      end
      object Label5: TLabel
        Left = 25
        Top = 16
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Turma :'
      end
      object Label4: TLabel
        Left = 336
        Top = 16
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'C?d.Alu :'
      end
      object BimestreA: TRadioGroup
        Left = 5
        Top = 59
        Width = 593
        Height = 30
        Columns = 5
        Items.Strings = (
          '&1? Bimestre'
          '&2? Bimestre'
          '&3? Bimestre'
          '&4? Bimestre'
          '&Exame')
        TabOrder = 2
        OnClick = BimestreAClick
      end
      object RxDBGrid2: TRxDBGrid
        Left = 3
        Top = 99
        Width = 846
        Height = 342
        Color = clWhite
        DataSource = DM.dsNotasA
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnColEnter = RxDBGrid2ColEnter
        OnKeyPress = RxDBGrid2KeyPress
        OnGetCellParams = RxDBGrid2GetCellParams
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            ReadOnly = True
            Title.Caption = 'Disciplina'
            Width = 347
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTA1'
            Title.Alignment = taCenter
            Title.Caption = 'SET-1'
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTA2'
            Title.Alignment = taCenter
            Title.Caption = 'SET-2'
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTA3'
            Title.Alignment = taCenter
            Title.Caption = 'SET-3'
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTA4'
            Title.Alignment = taCenter
            Title.Caption = 'AT-1'
            Title.Color = 9449520
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTA5'
            Title.Alignment = taCenter
            Title.Caption = 'AT-2'
            Title.Color = 9449520
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTA6'
            Title.Alignment = taCenter
            Title.Caption = 'AT-3'
            Title.Color = 9449520
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'NF'
            Title.Color = clRed
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RECUPBIM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10309376
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'NRF'
            Title.Color = clRed
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RECUPBIM1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10309376
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'REC-1'
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RECUPBIM2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10309376
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'REC-2'
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RECUPBIM3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10309376
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'REC-3'
            Title.Color = 8421440
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Visible = True
          end>
      end
      object Aluno: TRxDBLookupCombo
        Left = 76
        Top = 35
        Width = 397
        Height = 21
        DropDownCount = 25
        DisplayAllFields = True
        DisplayEmpty = '<< Selecione o Aluno >>'
        EmptyItemColor = clMenu
        LookupField = 'CODIGO'
        LookupDisplay = 'NOME;CODIGO'
        LookupSource = DM.dsAlunos
        TabOrder = 1
        OnChange = AlunoChange
        OnCloseUp = AlunoCloseUp
      end
      object Turma2: TRxDBLookupCombo
        Left = 76
        Top = 11
        Width = 245
        Height = 21
        DropDownCount = 15
        DisplayAllFields = True
        DisplayEmpty = '<< Selecione a Turma >>'
        EmptyItemColor = clMenu
        LookupField = 'Nome'
        LookupDisplay = 'Nome'
        LookupSource = DM.dsTurmas
        TabOrder = 0
        OnChange = Turma2Change
        OnCloseUp = Turma2CloseUp
      end
      object ProxAlu: TBitBtn
        Left = 480
        Top = 35
        Width = 121
        Height = 21
        Caption = 'Pr?ximo [F5]'
        TabOrder = 5
        OnClick = ProxAluClick
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
        NumGlyphs = 2
      end
      object RepeteNotaA: TBitBtn
        Left = 480
        Top = 11
        Width = 121
        Height = 21
        Caption = 'Repete Nota [F6]'
        TabOrder = 6
        OnClick = RepeteNotaDClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
          FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
          990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
          990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
          FFFF3FFFFF3333333F330000033FFFFF0FFF77777F3333337FF30EEE0333FFF0
          00FF7F337FFF333777FF0EEE00033F00000F7F33777F3777777F0EEE0E033000
          00007FFF7F7FF777777700000E00033000FF777773777F3777F3330EEE0E0330
          00FF337FFF7F7F3777F33300000E033000FF337777737F37773333330EEE0300
          03FF33337FFF77777333333300000333333F3333777773333333}
        NumGlyphs = 2
      end
      object CodAlu: TEdit
        Left = 394
        Top = 11
        Width = 73
        Height = 21
        TabOrder = 3
        OnExit = CodAluExit
        OnKeyPress = CodAluKeyPress
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Atualiza Notas'
      ImageIndex = 2
      object Label8: TLabel
        Left = 8
        Top = 24
        Width = 288
        Height = 13
        Caption = 'Entre com o n?mero do protocolo e clique em OK:'
      end
      object rxprotocolo: TRxLabel
        Left = 8
        Top = 96
        Width = 6
        Height = 13
      end
      object EdProtocolo: TEdit
        Left = 8
        Top = 40
        Width = 121
        Height = 21
        TabOrder = 0
        OnEnter = EdProtocoloEnter
      end
      object BProtocolo: TBitBtn
        Left = 8
        Top = 64
        Width = 75
        Height = 25
        Caption = 'OK'
        Default = True
        TabOrder = 1
        OnClick = BProtocoloClick
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
    end
  end
  object Verifica_Notas: TIBStoredProc
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    StoredProcName = 'VERIFICA_NOTAS'
    Left = 540
    Top = 200
    ParamData = <
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
        DataType = ftSmallint
        Name = 'BIMESTRE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DISCIPLINA'
        ParamType = ptInput
      end>
  end
  object FS1: TFormStorage
    UseRegistry = True
    StoredValues = <>
    Left = 812
    Top = 16
  end
  object Verifica_Notas_A: TIBStoredProc
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    StoredProcName = 'VERIFICA_NOTAS_ALUNO'
    Left = 540
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'A_CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'BIMESTRE'
        ParamType = ptInput
      end>
  end
  object Pop1: TPopupMenu
    AutoPopup = False
    Left = 628
    Top = 264
    object PrxAlunoTurma1: TMenuItem
      Caption = 'Pr?x.AlunoTurma'
      ShortCut = 116
      OnClick = ProxAluClick
    end
    object RepeteNota1: TMenuItem
      Caption = 'RepeteNota'
      ShortCut = 117
      OnClick = RepeteNotaDClick
    end
  end
  object IBAtualiza: TIBStoredProc
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    StoredProcName = 'ATUALIZANOTAS'
    Left = 628
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODPROTOCOLO'
        ParamType = ptInput
      end>
  end
  object Grade: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select cast(COUNT(*) as int) As Total'
      'from GRADE'
      'where SERIE = :serie and'
      '           DISCIPLINA = :disciplina')
    UniDirectional = True
    Left = 580
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'disciplina'
        ParamType = ptUnknown
      end>
    object GradeTOTAL: TIntegerField
      FieldName = 'TOTAL'
      Required = True
    end
  end
end
