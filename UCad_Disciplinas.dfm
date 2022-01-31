object Cad_Disciplinas: TCad_Disciplinas
  Left = 662
  Top = 208
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'DISCIPLINAS'
  ClientHeight = 412
  ClientWidth = 517
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
  object BitBtn1: TBitBtn
    Left = 429
    Top = 379
    Width = 75
    Height = 25
    Caption = '&Fecha'
    TabOrder = 2
    Kind = bkClose
    Layout = blGlyphRight
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 517
    Height = 369
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastro'
      object Label1: TLabel
        Left = 113
        Top = 24
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'Código :'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 120
        Top = 56
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome :'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 91
        Top = 80
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome Res. :'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 94
        Top = 104
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Caption = 'Máx.Faltas :'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 219
        Top = 103
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
      object Label6: TLabel
        Left = 111
        Top = 128
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'Frentes :'
        FocusControl = DBEdit4
      end
      object Label9: TLabel
        Left = 91
        Top = 160
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome ATA. :'
        FocusControl = DBEdit3
      end
      object Label7: TLabel
        Left = 16
        Top = 224
        Width = 144
        Height = 13
        Caption = 'Área de Conhecimento. :'
      end
      object SpeedButton1: TSpeedButton
        Left = 296
        Top = 248
        Width = 76
        Height = 22
        Cursor = crHandPoint
        Caption = 'Inserir Área'
        OnClick = SpeedButton1Click
      end
      object DBEdit1: TDBEdit
        Left = 170
        Top = 19
        Width = 49
        Height = 21
        DataField = 'CODIGO'
        DataSource = DM.dsDisciplinas
        Enabled = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 170
        Top = 51
        Width = 284
        Height = 21
        DataField = 'NOME'
        DataSource = DM.dsDisciplinas
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 170
        Top = 75
        Width = 40
        Height = 21
        DataField = 'NOME_RES'
        DataSource = DM.dsDisciplinas
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 170
        Top = 99
        Width = 47
        Height = 21
        DataField = 'MAX_FALTAS'
        DataSource = DM.dsDisciplinas
        TabOrder = 3
      end
      object DBFrentes: TDBRadioGroup
        Left = 170
        Top = 120
        Width = 89
        Height = 30
        Columns = 3
        DataField = 'FRENTES'
        DataSource = DM.dsDisciplinas
        Enabled = False
        Items.Strings = (
          '1'
          '2')
        TabOrder = 4
        Values.Strings = (
          '1'
          '2')
      end
      object DBEdit5: TDBEdit
        Left = 170
        Top = 155
        Width = 74
        Height = 21
        DataField = 'NOME_ATA_1'
        DataSource = DM.dsDisciplinas
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 170
        Top = 176
        Width = 74
        Height = 21
        DataField = 'NOME_ATA_2'
        DataSource = DM.dsDisciplinas
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 170
        Top = 197
        Width = 74
        Height = 21
        DataField = 'NOME_ATA_3'
        DataSource = DM.dsDisciplinas
        TabOrder = 7
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 170
        Top = 221
        Width = 327
        Height = 21
        DropDownCount = 8
        DataField = 'AREA_CONHECIMENTO'
        DataSource = DM.dsDisciplinas
        DisplayEmpty = '              <<Área de Conhecimento>>'
        LookupField = 'ID_AREA'
        LookupDisplay = 'NOME_AREA'
        LookupSource = DM.DsArea
        TabOrder = 8
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object RxDBGrid1: TRxDBGrid
        Left = 4
        Top = 5
        Width = 504
        Height = 330
        DataSource = DM.dsDisciplinas
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
            FieldName = 'CODIGO'
            Title.Caption = 'Código'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 277
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_RES'
            Title.Caption = 'N.Res.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MAX_FALTAS'
            Title.Caption = 'Máx.Faltas'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRENTES'
            Title.Alignment = taCenter
            Title.Caption = 'Fr.'
            Width = 30
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Conteúdo Programático'
      ImageIndex = 2
      OnShow = TabSheet3Show
      object Label8: TLabel
        Left = 10
        Top = 8
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Disciplina :'
      end
      object DBText1: TDBText
        Left = 79
        Top = 8
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'NOME'
        DataSource = DM.dsDisciplinas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label0: TLabel
        Left = 11
        Top = 88
        Width = 146
        Height = 13
        Caption = '0ª Série / 0º Bimestre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bimestre: TRadioGroup
        Left = 9
        Top = 53
        Width = 486
        Height = 30
        Columns = 4
        ItemIndex = 0
        Items.Strings = (
          '&1º Bimestre'
          '&2º Bimestre'
          '&3º Bimestre'
          '&4º Bimestre')
        TabOrder = 1
        OnClick = BimestreClick
      end
      object Serie: TRadioGroup
        Left = 9
        Top = 21
        Width = 486
        Height = 30
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          '1ª Série'
          '2ª Série'
          '3ª Série')
        TabOrder = 0
        OnClick = SerieClick
      end
      object DBMemo1: TDBMemo
        Left = 10
        Top = 102
        Width = 487
        Height = 228
        DataField = 'CONTEUDO'
        DataSource = DM.dsMat_Lecionada
        ScrollBars = ssVertical
        TabOrder = 2
      end
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 11
    Top = 379
    Width = 261
    Height = 25
    DataSource = DM.dsDisciplinas
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
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
    TabOrder = 1
    OnClick = DBNavigator1Click
  end
  object FS1: TFormStorage
    StoredProps.Strings = (
      'Bimestre.ItemIndex'
      'Serie.ItemIndex')
    StoredValues = <>
    Left = 392
    Top = 32
  end
  object VerificaMat: TIBStoredProc
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    StoredProcName = 'VERIFICA_MAT_LECIONADA'
    Left = 424
    Top = 65520
  end
end
