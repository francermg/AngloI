object Cad_Turmas: TCad_Turmas
  Left = 210
  Top = 224
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cadastro de Turmas'
  ClientHeight = 273
  ClientWidth = 417
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
    Left = 331
    Top = 240
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
    Width = 417
    Height = 229
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastro'
      object Label1: TLabel
        Left = 60
        Top = 24
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Série :'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 53
        Top = 48
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Turma :'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 47
        Top = 72
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'Período :'
      end
      object Label4: TLabel
        Left = 55
        Top = 96
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vagas :'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 126
        Top = 20
        Width = 7
        Height = 13
        Alignment = taRightJustify
        Caption = 'ª'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 39
        Top = 122
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cursinho :'
      end
      object DBEdit1: TDBEdit
        Left = 106
        Top = 19
        Width = 17
        Height = 21
        DataField = 'SERIE'
        DataSource = DM.dsTurmas
        Enabled = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 106
        Top = 43
        Width = 17
        Height = 21
        DataField = 'TURMA'
        DataSource = DM.dsTurmas
        Enabled = False
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 106
        Top = 91
        Width = 32
        Height = 21
        DataField = 'VAGAS'
        DataSource = DM.dsTurmas
        TabOrder = 3
      end
      object RxDBComboBox1: TRxDBComboBox
        Left = 106
        Top = 67
        Width = 145
        Height = 21
        Style = csDropDownList
        DataField = 'PERIODO'
        DataSource = DM.dsTurmas
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Matutino'
          'Vespertino'
          'Noturno')
        TabOrder = 2
        Values.Strings = (
          '1'
          '2'
          '3')
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 106
        Top = 112
        Width = 105
        Height = 29
        Columns = 2
        DataField = 'CURSINHO'
        DataSource = DM.dsTurmas
        Items.Strings = (
          'Sim'
          'Não')
        TabOrder = 4
        Values.Strings = (
          '1'
          '0')
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object RxDBGrid1: TRxDBGrid
        Left = 8
        Top = 8
        Width = 297
        Height = 184
        DataSource = DM.dsTurmas
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
            FieldName = 'SERIE'
            Title.Caption = 'Série'
            Width = 41
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TURMA'
            Title.Caption = 'Turma'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PeriodoX'
            Title.Caption = 'Período'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VAGAS'
            Title.Caption = 'Vagas'
            Width = 48
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CursinhoSN'
            Title.Caption = 'Curs'
            Visible = True
          end>
      end
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 11
    Top = 240
    Width = 261
    Height = 25
    DataSource = DM.dsTurmas
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
    StoredValues = <>
    Left = 376
  end
end
