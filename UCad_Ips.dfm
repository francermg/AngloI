object fCad_ips: TfCad_ips
  Left = 625
  Top = 176
  BorderStyle = bsSingle
  Caption = 'Cadastro de Ips'
  ClientHeight = 478
  ClientWidth = 434
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
  object Label1: TLabel
    Left = 272
    Top = 130
    Width = 34
    Height = 13
    Caption = 'ID_IPS'
    FocusControl = DBEdit1
    Visible = False
  end
  object Label2: TLabel
    Left = 16
    Top = 83
    Width = 57
    Height = 13
    Caption = 'Serie Turma'
  end
  object Label4: TLabel
    Left = 16
    Top = 123
    Width = 10
    Height = 13
    Caption = 'IP'
    FocusControl = DBEdit4
  end
  object lbl1: TLabel
    Left = 8
    Top = 56
    Width = 339
    Height = 24
    Caption = 'Cadastro de Sala e seus respectivos IP´s'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object btnInserir: TSpeedButton
    Left = 5
    Top = 1
    Width = 79
    Height = 49
    Cursor = crHandPoint
    Caption = 'Inserir'
    OnClick = btnInserirClick
  end
  object btnSalvar: TSpeedButton
    Left = 177
    Top = 0
    Width = 81
    Height = 49
    Cursor = crHandPoint
    Caption = 'Salvar'
    Enabled = False
    OnClick = btnSalvarClick
  end
  object btnCacelar: TSpeedButton
    Left = 259
    Top = 1
    Width = 81
    Height = 49
    Cursor = crHandPoint
    Caption = 'Cancelar'
    Enabled = False
    OnClick = btnCacelarClick
  end
  object btnSair: TSpeedButton
    Left = 342
    Top = 1
    Width = 81
    Height = 49
    Cursor = crHandPoint
    Caption = 'Sair'
    OnClick = btnSairClick
  end
  object btnExcluir: TSpeedButton
    Left = 255
    Top = 169
    Width = 79
    Height = 49
    Caption = 'Excluir'
    OnClick = btnExcluirClick
  end
  object DBEdit1: TDBEdit
    Left = 272
    Top = 146
    Width = 64
    Height = 21
    DataField = 'ID_IPS'
    DataSource = DM.dsSerieIps
    TabOrder = 2
    Visible = False
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 139
    Width = 145
    Height = 21
    DataField = 'IP'
    DataSource = DM.dsSerieIps
    Enabled = False
    TabOrder = 1
  end
  object lkComboSERIE: TRxDBLookupCombo
    Left = 16
    Top = 99
    Width = 313
    Height = 21
    DropDownCount = 8
    Enabled = False
    LookupField = 'Nome'
    LookupDisplay = 'Nome'
    LookupSource = DM.dsTurmas
    TabOrder = 0
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 224
    Width = 320
    Height = 244
    DataSource = DM.dsSerieIps
    Options = [dgTitles, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SERIE'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURMA'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IP'
        Visible = True
      end>
  end
  object btn1: TButton
    Left = 88
    Top = 0
    Width = 85
    Height = 49
    Caption = 'Editar'
    TabOrder = 4
    OnClick = btn1Click
  end
end
