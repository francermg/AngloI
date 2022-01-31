object fhorarioplantao: Tfhorarioplantao
  Left = 520
  Top = 162
  Width = 571
  Height = 360
  Caption = 'Cadastro de horário de plantão'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 32
    Width = 444
    Height = 37
    Caption = 'Cadastro de horário de plantão'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 72
    Width = 36
    Height = 13
    Caption = 'Código:'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 120
    Width = 31
    Height = 13
    Caption = 'Horas:'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 152
    Top = 120
    Width = 74
    Height = 13
    Caption = 'Dia da semana:'
  end
  object Label4: TLabel
    Left = 16
    Top = 160
    Width = 47
    Height = 13
    Caption = 'Professor:'
  end
  object Label5: TLabel
    Left = 16
    Top = 208
    Width = 48
    Height = 13
    Caption = 'Disciplina:'
  end
  object Label6: TLabel
    Left = 360
    Top = 120
    Width = 27
    Height = 13
    Caption = 'Série:'
    FocusControl = DBEdit6
  end
  object lbl2: TLabel
    Left = 385
    Top = 135
    Width = 7
    Height = 20
    Caption = '°'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 88
    Width = 64
    Height = 21
    DataField = 'CODIGO'
    DataSource = DM.dshorarioplantao
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 136
    Width = 124
    Height = 21
    DataField = 'HORAS'
    DataSource = DM.dshorarioplantao
    MaxLength = 5
    TabOrder = 1
  end
  object DBEdit6: TDBEdit
    Left = 360
    Top = 136
    Width = 25
    Height = 21
    DataField = 'SERIE'
    DataSource = DM.dshorarioplantao
    TabOrder = 3
  end
  object dbnv1: TDBNavigator
    Left = 16
    Top = 296
    Width = 240
    Height = 25
    DataSource = DM.dshorarioplantao
    TabOrder = 6
    OnClick = dbnv1Click
  end
  object dblkcbb1: TDBLookupComboBox
    Left = 16
    Top = 176
    Width = 505
    Height = 21
    DataField = 'PROFESSOR'
    DataSource = DM.dshorarioplantao
    KeyField = 'COD_PROF'
    ListField = 'NOME'
    ListSource = DM.dsProfessores
    TabOrder = 4
  end
  object dblkcbb2: TDBLookupComboBox
    Left = 16
    Top = 224
    Width = 505
    Height = 21
    DataField = 'DISCIPLINA'
    DataSource = DM.dshorarioplantao
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = DM.dsDisciplinas
    TabOrder = 5
  end
  object btn1: TButton
    Left = 440
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 7
    OnClick = btn1Click
  end
  object dbcbb1: TDBComboBox
    Left = 152
    Top = 136
    Width = 185
    Height = 21
    DataField = 'DIA_SEMANA'
    DataSource = DM.dshorarioplantao
    ItemHeight = 13
    Items.Strings = (
      'Domingo'
      'Segunda-feira'
      'Terça-Feira'
      'Quarta-Feira'
      'Quinta-Feira'
      'Sexta-Feira')
    TabOrder = 2
  end
end
