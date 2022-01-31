object Mov_Plantoes: TMov_Plantoes
  Left = 276
  Top = 176
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Plantões de Dúvidas'
  ClientHeight = 495
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Fecha: TBitBtn
    Left = 435
    Top = 462
    Width = 89
    Height = 25
    Caption = '&Fecha'
    TabOrder = 0
    Kind = bkClose
    Layout = blGlyphRight
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 536
    Height = 453
    ActivePage = TabSheet2
    Align = alTop
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Cadastro'
      object Label1: TLabel
        Left = 6
        Top = 34
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Disciplina :'
      end
      object Label2: TLabel
        Left = 28
        Top = 87
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Aluno :'
      end
      object Label3: TLabel
        Left = 33
        Top = 10
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data :'
      end
      object Label4: TLabel
        Left = 6
        Top = 58
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Professor :'
      end
      object DSem: TLabel
        Left = 186
        Top = 8
        Width = 12
        Height = 13
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Aluno: TRxDBLookupCombo
        Left = 80
        Top = 82
        Width = 377
        Height = 21
        DropDownCount = 25
        DataField = 'ALUNO'
        DataSource = DM.dsPlantoes
        Enabled = False
        LookupField = 'CODIGO'
        LookupDisplay = 'NOME'
        LookupSource = DM.dsAlunos
        TabOrder = 4
        OnCloseUp = AlunoCloseUp
      end
      object Disciplina: TRxDBLookupCombo
        Left = 80
        Top = 29
        Width = 353
        Height = 21
        DropDownCount = 25
        DisplayAllFields = True
        DisplayEmpty = '<< Selecione a Disciplina >>'
        LookupField = 'CODIGO'
        LookupDisplay = 'CODIGO;NOME'
        LookupSource = DM.dsDisciplinas
        TabOrder = 1
        OnChange = DisciplinaChange
        OnCloseUp = DisciplinaCloseUp
      end
      object Data: TDateEdit
        Left = 80
        Top = 5
        Width = 100
        Height = 21
        CheckOnExit = True
        NumGlyphs = 2
        TabOrder = 0
        OnChange = DataChange
        OnExit = DataExit
        OnKeyPress = DataKeyPress
      end
      object RxDBGrid1: TRxDBGrid
        Left = 0
        Top = 136
        Width = 529
        Height = 289
        DataSource = DM.dsPlantoes
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 8
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ALUNO'
            Title.Caption = 'Código'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALUNOME'
            Title.Caption = 'Nome Aluno'
            Width = 359
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SerieX'
            Title.Caption = 'Turma'
            Width = 79
            Visible = True
          end>
      end
      object Confirma: TBitBtn
        Left = 128
        Top = 107
        Width = 105
        Height = 25
        Caption = '&Confirma'
        TabOrder = 5
        OnClick = ConfirmaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555559055555
          55555555577FF5555555555599905555555555557777F5555555555599905555
          555555557777FF5555555559999905555555555777777F555555559999990555
          5555557777777FF5555557990599905555555777757777F55555790555599055
          55557775555777FF5555555555599905555555555557777F5555555555559905
          555555555555777FF5555555555559905555555555555777FF55555555555579
          05555555555555777FF5555555555557905555555555555777FF555555555555
          5990555555555555577755555555555555555555555555555555}
        NumGlyphs = 2
      end
      object Cancela: TBitBtn
        Left = 240
        Top = 107
        Width = 105
        Height = 25
        Caption = 'C&ancela'
        TabOrder = 6
        OnClick = CancelaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
          993337777F777F3377F3393999707333993337F77737333337FF993399933333
          399377F3777FF333377F993339903333399377F33737FF33377F993333707333
          399377F333377FF3377F993333101933399377F333777FFF377F993333000993
          399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
          99333773FF777F777733339993707339933333773FF7FFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
      end
      object Apaga: TBitBtn
        Left = 352
        Top = 107
        Width = 105
        Height = 25
        Caption = '&Apaga'
        TabOrder = 7
        OnClick = ApagaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        NumGlyphs = 2
      end
      object Inclui: TBitBtn
        Left = 16
        Top = 107
        Width = 105
        Height = 25
        Caption = '&Inclui'
        TabOrder = 3
        OnClick = IncluiClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
      end
      object Professor: TEdit
        Left = 80
        Top = 53
        Width = 265
        Height = 21
        TabOrder = 2
        OnExit = ProfessorExit
        OnKeyPress = ProfessorKeyPress
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta p/Aluno'
      ImageIndex = 1
      object Label5: TLabel
        Left = 15
        Top = 23
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Aluno :'
      end
      object DBText1: TDBText
        Left = 62
        Top = 48
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'CODIGO'
        DataSource = DM.dsAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label6: TLabel
        Left = 7
        Top = 47
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'Código :'
      end
      object Label7: TLabel
        Left = 138
        Top = 47
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Turma :'
      end
      object DBText2: TDBText
        Left = 190
        Top = 48
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'SerieX'
        DataSource = DM.dsAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Detalhado: TSpeedButton
        Left = 320
        Top = 45
        Width = 94
        Height = 22
        GroupIndex = 1
        Down = True
        Caption = 'Detalhado'
        OnClick = DetalhadoClick
      end
      object Totalizado: TSpeedButton
        Left = 421
        Top = 45
        Width = 94
        Height = 22
        GroupIndex = 1
        Caption = 'Totalizado'
        OnClick = DetalhadoClick
      end
      object Aluno2: TRxDBLookupCombo
        Left = 64
        Top = 18
        Width = 377
        Height = 21
        DropDownCount = 25
        DisplayEmpty = 'Pesquisa por Nome'
        EmptyItemColor = clSilver
        LookupField = 'CODIGO'
        LookupDisplay = 'NOME'
        LookupSource = DM.dsAlunos
        TabOrder = 0
        OnChange = Aluno2Change
      end
      object Notebook1: TNotebook
        Left = 0
        Top = 69
        Width = 528
        Height = 356
        Align = alBottom
        TabOrder = 1
        object TPage
          Left = 0
          Top = 0
          Caption = 'Detalhado'
          object RxDBGrid2: TRxDBGrid
            Left = 0
            Top = 3
            Width = 528
            Height = 353
            Align = alBottom
            DataSource = dsQuery1
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
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
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DSem'
                Title.Caption = 'Dia Semana'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Caption = 'Disciplina'
                Width = 198
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PROFESSOR'
                Title.Caption = 'Professor'
                Width = 127
                Visible = True
              end>
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'Total'
          object RxDBGrid3: TRxDBGrid
            Left = 0
            Top = 3
            Width = 528
            Height = 353
            Align = alBottom
            DataSource = dsQuery2
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DISCIPLINA'
                Title.Caption = 'Disciplina'
                Width = 399
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDADE'
                Title.Alignment = taCenter
                Title.Caption = 'Quantidade'
                Width = 96
                Visible = True
              end>
          end
        end
      end
    end
  end
  object btn1: TButton
    Left = 304
    Top = 464
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = btn1Click
  end
  object FS1: TFormStorage
    StoredValues = <>
    Left = 384
    Top = 65512
  end
  object Query1: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    OnCalcFields = Query1CalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select P.DATA,'
      '   P.PROFESSOR,'
      '   D.NOME'
      'from PLANTOES P'
      'join ALUNOS A on A.CODIGO = P.ALUNO'
      'join DISCIPLINAS D on D.CODIGO = P.DISCIPLINA'
      'where P.ALUNO = :ALUNO'
      'order by P.DATA')
    Left = 468
    Top = 65520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ALUNO'
        ParamType = ptUnknown
      end>
    object Query1DATA: TDateField
      FieldName = 'DATA'
      Origin = 'PLANTOES.DATA'
      Required = True
    end
    object Query1NOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'DISCIPLINAS.NOME'
      Size = 40
    end
    object Query1PROFESSOR: TIBStringField
      FieldName = 'PROFESSOR'
      Origin = 'PLANTOES.PROFESSOR'
    end
    object Query1DSem: TStringField
      FieldKind = fkCalculated
      FieldName = 'DSem'
      Size = 15
      Calculated = True
    end
  end
  object dsQuery1: TDataSource
    DataSet = Query1
    Left = 428
    Top = 65528
  end
  object Query2: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    OnCalcFields = Query1CalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select MAX(D.NOME) as Disciplina,'
      '   COUNT(*) as Qtdade'
      'from PLANTOES P'
      'join DISCIPLINAS D on D.CODIGO = P.DISCIPLINA'
      'where P.ALUNO = :ALUNO'
      'group by P.DISCIPLINA'
      '')
    Left = 324
    Top = 65520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ALUNO'
        ParamType = ptUnknown
      end>
    object Query2DISCIPLINA: TIBStringField
      FieldName = 'DISCIPLINA'
      Size = 40
    end
    object Query2QTDADE: TIntegerField
      FieldName = 'QTDADE'
      Required = True
    end
  end
  object dsQuery2: TDataSource
    DataSet = Query2
    Left = 292
    Top = 65520
  end
end
