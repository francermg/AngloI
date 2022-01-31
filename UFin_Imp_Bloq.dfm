object Fin_Imp_Bloq: TFin_Imp_Bloq
  Left = 614
  Top = 220
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Imprime Bloquetos'
  ClientHeight = 407
  ClientWidth = 489
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
  object Label1: TLabel
    Left = 148
    Top = 16
    Width = 77
    Height = 13
    Alignment = taRightJustify
    Caption = 'Parcelas De :'
  end
  object Label2: TLabel
    Left = 257
    Top = 16
    Width = 8
    Height = 13
    Caption = 'A'
  end
  object Label3: TLabel
    Left = 140
    Top = 40
    Width = 85
    Height = 13
    Alignment = taRightJustify
    Caption = 'Bloquetos De :'
  end
  object Label4: TLabel
    Left = 303
    Top = 40
    Width = 8
    Height = 13
    Caption = 'A'
  end
  object Label5: TLabel
    Left = 13
    Top = 124
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Turma :'
  end
  object Label7: TLabel
    Left = 17
    Top = 100
    Width = 41
    Height = 13
    Alignment = taRightJustify
    Caption = 'Aluno :'
  end
  object Label47: TLabel
    Left = 9
    Top = 76
    Width = 49
    Height = 13
    Caption = 'Código :'
  end
  object Periodo: TRadioGroup
    Left = 8
    Top = 4
    Width = 121
    Height = 57
    Caption = 'Período'
    ItemIndex = 0
    Items.Strings = (
      '1º Semestre'
      '2º Semestre')
    TabOrder = 1
    OnClick = PeriodoClick
  end
  object BitBtn1: TBitBtn
    Left = 393
    Top = 148
    Width = 89
    Height = 25
    Caption = '&Fecha'
    TabOrder = 0
    Kind = bkClose
    Layout = blGlyphRight
  end
  object BtFiltra: TBitBtn
    Left = 190
    Top = 148
    Width = 89
    Height = 25
    Caption = 'Filtr&a'
    TabOrder = 8
    OnClick = BtFiltraClick
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
  object Bloq1: TMaskEdit
    Left = 229
    Top = 35
    Width = 68
    Height = 21
    EditMask = '99999999;1; '
    MaxLength = 8
    TabOrder = 4
    Text = '        '
  end
  object Bloq2: TMaskEdit
    Left = 318
    Top = 35
    Width = 68
    Height = 21
    EditMask = '99999999;1; '
    MaxLength = 8
    TabOrder = 5
    Text = '        '
  end
  object Aluno: TRxDBLookupCombo
    Left = 63
    Top = 95
    Width = 330
    Height = 21
    DropDownCount = 25
    DisplayAllFields = True
    DisplayEmpty = 'Todos'
    EmptyValue = '0'
    EmptyItemColor = clSilver
    LookupField = 'CODIGO'
    LookupDisplay = 'NOME'
    LookupSource = DM.dsAlunos
    TabOrder = 7
    OnChange = AlunoChange
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 181
    Width = 489
    Height = 226
    TabStop = False
    Align = alBottom
    DataSource = DM.dsBloquetosQ
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOSSO_NUMERO'
        Title.Caption = 'Nosso Nº'
        Width = 56
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SERIE'
        Title.Alignment = taCenter
        Title.Caption = 'Sér'
        Width = 26
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TURMA'
        Title.Alignment = taCenter
        Title.Caption = 'Tur'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALUNO'
        Title.Caption = 'Aluno'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELA'
        Title.Caption = 'Parc.Nº'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMISSAO'
        Title.Caption = 'Dt.Emissão'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Title.Caption = 'Dt.Vcto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_ANT'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Width = 93
        Visible = True
      end>
  end
  object BitBtn3: TBitBtn
    Left = 292
    Top = 148
    Width = 89
    Height = 25
    Caption = '&Imprime'
    Enabled = False
    TabOrder = 9
    OnClick = BitBtn3Click
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
  object Parc1: TCurrencyEdit
    Left = 229
    Top = 11
    Width = 23
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0;- 0'
    TabOrder = 2
  end
  object Parc2: TCurrencyEdit
    Left = 269
    Top = 11
    Width = 23
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0;- 0'
    TabOrder = 3
  end
  object SerieTurma: TRxDBLookupCombo
    Left = 63
    Top = 119
    Width = 218
    Height = 21
    DropDownCount = 15
    DisplayAllFields = True
    DisplayEmpty = '<< Selecione a Turma >>'
    EmptyItemColor = clMenu
    LookupField = 'Nome'
    LookupDisplay = 'Nome'
    LookupSource = DM.dsTurmas
    TabOrder = 11
  end
  object Codigo: TCurrencyEdit
    Left = 63
    Top = 71
    Width = 57
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0;- 0'
    TabOrder = 6
  end
  object ImprimeBrc: TBitBtn
    Left = 16
    Top = 148
    Width = 154
    Height = 25
    Caption = '&Imprime em Branco'
    TabOrder = 12
    OnClick = ImprimeBrcClick
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
  object FS1: TFormStorage
    UseRegistry = True
    StoredProps.Strings = (
      'Periodo.ItemIndex'
      'Parc1.Value'
      'Parc2.Value')
    StoredValues = <>
    Left = 128
    Top = 65512
  end
end
