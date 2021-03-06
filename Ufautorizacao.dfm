object fautorizacao: Tfautorizacao
  Left = 430
  Top = 166
  BorderStyle = bsSingle
  Caption = 'Cadastro de autoriza??o.'
  ClientHeight = 510
  ClientWidth = 737
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 465
    Height = 29
    Caption = 'Cadastro de forma de pagamento - Material'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 100
    Width = 110
    Height = 13
    Caption = 'N?mero da autoriza??o'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 24
    Top = 148
    Width = 122
    Height = 13
    Caption = 'Nome do titular do cart?o:'
    FocusControl = DBEdit2
  end
  object Label4: TLabel
    Left = 373
    Top = 148
    Width = 97
    Height = 13
    Caption = 'Data do pagamento.'
  end
  object Label5: TLabel
    Left = 549
    Top = 147
    Width = 113
    Height = 13
    Caption = 'Quantidade de parcelas'
    FocusControl = DBEdit4
  end
  object Contador: TRxSpinButton
    Left = 622
    Top = 164
    Width = 20
    Height = 20
    Enabled = False
    DownGlyph.Data = {
      56000000424D56000000000000003E0000002800000006000000060000000100
      010000000000180000000000000000000000020000000200000000000000FFFF
      FF00CC0000008400000000000000CC000000CC000000CC000000}
    UpGlyph.Data = {
      56000000424D56000000000000003E0000002800000006000000060000000100
      010000000000180000000000000000000000020000000200000000000000FFFF
      FF00CC000000CC000000CC0000000000000084000000CC000000}
    OnBottomClick = ContadorBottomClick
    OnTopClick = ContadorTopClick
  end
  object Label6: TLabel
    Left = 27
    Top = 304
    Width = 64
    Height = 13
    Caption = 'Autoriza??es:'
  end
  object Label7: TLabel
    Left = 25
    Top = 197
    Width = 61
    Height = 13
    Caption = 'Observa??o:'
  end
  object Label8: TLabel
    Left = 384
    Top = 96
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 116
    Width = 345
    Height = 21
    CharCase = ecUpperCase
    DataField = 'AUTORIZACAO'
    DataSource = DM.DsAutorizacao
    Enabled = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 164
    Width = 304
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME_TITULAR'
    DataSource = DM.DsAutorizacao
    Enabled = False
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 550
    Top = 164
    Width = 64
    Height = 21
    DataField = 'PARCELAS'
    DataSource = DM.DsAutorizacao
    Enabled = False
    TabOrder = 5
  end
  object DBDateEdit1: TDBDateEdit
    Left = 373
    Top = 164
    Width = 121
    Height = 21
    DataField = 'DATA_PAGAMENTO'
    DataSource = DM.DsAutorizacao
    DefaultToday = True
    DialogTitle = 'Sel. uma data'
    Enabled = False
    NumGlyphs = 2
    TabOrder = 4
  end
  object RxDBGrid1: TRxDBGrid
    Left = 25
    Top = 331
    Width = 696
    Height = 110
    DataSource = DM.DsAutorizacao
    Options = [dgTitles, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'AUTORIZACAO'
        Title.Caption = 'Autoriza??o'
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_TITULAR'
        Title.Caption = 'Titular'
        Width = 287
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_PAGAMENTO'
        Title.Caption = 'Data'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELAS'
        Title.Caption = 'Parcelas'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORP'
        Title.Caption = 'Valor/Parc'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Title.Caption = 'Total'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 24
    Top = 447
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Inserir'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 479
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 9
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 648
    Top = 464
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Fechar'
    TabOrder = 10
    OnClick = Button3Click
  end
  object BitBtn1: TBitBtn
    Left = 108
    Top = 447
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Editar'
    TabOrder = 11
    OnClick = BitBtn1Click
  end
  object Rdforma: TDBRadioGroup
    Left = 24
    Top = 48
    Width = 369
    Height = 38
    Caption = 'Forma de pagamento:'
    Columns = 4
    DataField = 'FORMAP'
    DataSource = DM.DsAutorizacao
    Enabled = False
    Items.Strings = (
      'Cr?dito'
      'D?bito'
      'Dinheiro'
      'Cheque')
    TabOrder = 0
    Values.Strings = (
      'CD'
      'DB'
      'DN'
      'CH')
    OnChange = RdformaChange
  end
  object MemoObs: TDBMemo
    Left = 24
    Top = 215
    Width = 697
    Height = 79
    DataField = 'MEMOBS'
    DataSource = DM.DsAutorizacao
    Enabled = False
    TabOrder = 6
  end
  object DBEdit3: TDBEdit
    Left = 384
    Top = 112
    Width = 121
    Height = 21
    DataField = 'VALORP'
    DataSource = DM.DsAutorizacao
    Enabled = False
    TabOrder = 2
  end
  object Brelatorio: TButton
    Left = 555
    Top = 464
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Relat?rio'
    TabOrder = 12
    OnClick = BrelatorioClick
  end
  object Bcancelar: TButton
    Left = 192
    Top = 448
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Cancela'
    Enabled = False
    TabOrder = 13
    OnClick = BcancelarClick
  end
  object FormStyle: TFormPlacement
    Left = 584
    Top = 8
  end
end
