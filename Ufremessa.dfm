object fremesa: Tfremesa
  Left = 345
  Top = 202
  Width = 713
  Height = 490
  Caption = 'Gerar arquivo remessa.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 119
    Width = 80
    Height = 13
    Caption = 'Nome do alunos:'
    Visible = False
  end
  object Label1: TLabel
    Left = 512
    Top = 3
    Width = 72
    Height = 13
    Caption = 'RGM do aluno:'
    Visible = False
  end
  object Label2: TLabel
    Left = 8
    Top = 142
    Width = 285
    Height = 13
    Caption = 'Selecione o Boleto a ser enviado para registro ou para Baixa'
  end
  object rgSL: TRadioGroup
    Left = 8
    Top = 16
    Width = 337
    Height = 89
    Caption = 'SELECIONE O TIPO DE ARQUIVO REMESSA A SER GERADO'
    ItemIndex = 0
    Items.Strings = (
      'Remessa.'
      'Pedido de Baixa.'
      'Altera??o de data de vencimento.'
      'Cancelamanto de abatimento concedido.'
      'Outros.')
    TabOrder = 0
  end
  object lkComboNm: TRxDBLookupCombo
    Left = 96
    Top = 112
    Width = 345
    Height = 21
    DropDownCount = 8
    LookupField = 'NOME'
    LookupSource = DM.dsAlunos
    TabOrder = 1
    Visible = False
    OnChange = lkComboNmChange
  end
  object edtCD: TEdit
    Left = 512
    Top = 19
    Width = 121
    Height = 21
    TabOrder = 2
    Visible = False
    OnChange = edtCDChange
  end
  object Lista: TRxDBGrid
    Left = 8
    Top = 160
    Width = 673
    Height = 239
    Cursor = crHandPoint
    DataSource = DM.dsBloquetosQ
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = ListaDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ALUNO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 209
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOSSO_NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGAMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ST'
        Visible = True
      end>
  end
  object btn1: TButton
    Left = 452
    Top = 112
    Width = 113
    Height = 22
    Cursor = crHandPoint
    Caption = 'Marcar/Selecionados'
    TabOrder = 4
    Visible = False
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 608
    Top = 411
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Sair'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 520
    Top = 411
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Gerar'
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TBitBtn
    Left = 240
    Top = 411
    Width = 115
    Height = 23
    Caption = 'Retorno Motivo'
    TabOrder = 7
    Visible = False
    OnClick = btn4Click
  end
  object edtFile1: TFilenameEdit
    Left = 16
    Top = 412
    Width = 217
    Height = 21
    NumGlyphs = 1
    TabOrder = 8
    Text = 'edtFile1'
    Visible = False
  end
  object redt1: TRichEdit
    Left = -800
    Top = 240
    Width = 1921
    Height = 89
    Lines.Strings = (
      'redt1')
    TabOrder = 9
    Visible = False
  end
  object dlgSave1: TSaveDialog
    Left = 376
    Top = 8
  end
end
