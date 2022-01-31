object Cad_Grade: TCad_Grade
  Left = 283
  Top = 215
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'GRADE CURRICULAR'
  ClientHeight = 396
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 782
    Height = 353
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastro'
      object RxDBGrid1: TRxDBGrid
        Left = 4
        Top = 37
        Width = 733
        Height = 282
        DataSource = DM.dsGrade
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnShowEditor = RxDBGrid1ShowEditor
        Columns = <
          item
            Expanded = False
            FieldName = 'SEQUENCIA'
            Title.Caption = 'Seq.'
            Width = 29
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DISCIPLINA'
            Title.Caption = 'Cód'
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DisciplinaX'
            Title.Caption = 'Disciplina'
            Width = 313
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CH_OFICIAL'
            Title.Caption = 'CH Ofic'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTSETORES'
            Title.Caption = 'FT'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CH_N_OFICIAL'
            Title.Caption = 'CH ñOf'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CH_SEMANAL'
            Title.Caption = 'CH Sem'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            PickList.Strings = (
              'TD'
              'OF'
              'NO')
            Title.Caption = 'Tp'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TipoX'
            Title.Caption = 'Descrição'
            Width = 185
            Visible = True
          end>
      end
      object QualSerie: TRadioGroup
        Left = 6
        Top = -2
        Width = 635
        Height = 30
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          '1ª Série'
          '2ª Série'
          '3ª Série')
        TabOrder = 0
        OnClick = QualSerieClick
      end
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 19
    Top = 363
    Width = 252
    Height = 25
    DataSource = DM.dsGrade
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
  object BitBtn1: TBitBtn
    Left = 573
    Top = 363
    Width = 75
    Height = 25
    Caption = '&Fecha'
    TabOrder = 2
    Kind = bkClose
    Layout = blGlyphRight
  end
  object BitBtn2: TBitBtn
    Left = 743
    Top = 152
    Width = 25
    Height = 25
    TabOrder = 3
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
      3333333333777F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
      3333333777737777F333333099999990333333373F3333373333333309999903
      333333337F33337F33333333099999033333333373F333733333333330999033
      3333333337F337F3333333333099903333333333373F37333333333333090333
      33333333337F7F33333333333309033333333333337373333333333333303333
      333333333337F333333333333330333333333333333733333333}
    NumGlyphs = 2
  end
  object BitBtn3: TBitBtn
    Left = 743
    Top = 216
    Width = 25
    Height = 25
    TabOrder = 4
    OnClick = BitBtn3Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
      333333333337F33333333333333033333333333333373F333333333333090333
      33333333337F7F33333333333309033333333333337373F33333333330999033
      3333333337F337F33333333330999033333333333733373F3333333309999903
      333333337F33337F33333333099999033333333373333373F333333099999990
      33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
      33333333337F7F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333300033333333333337773333333}
    NumGlyphs = 2
  end
  object ProxSeq: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(Sequencia) as UltSeq'
      'from GRADE'
      'where SERIE = :serie')
    Left = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end>
    object ProxSeqULTSEQ: TSmallintField
      FieldName = 'ULTSEQ'
    end
  end
  object FS1: TFormStorage
    StoredValues = <>
    Left = 376
  end
end
