object fusuarios: Tfusuarios
  Left = 545
  Top = 311
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Usuários'
  ClientHeight = 349
  ClientWidth = 331
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
  object Shape1: TShape
    Left = 136
    Top = 40
    Width = 185
    Height = 97
    Brush.Color = 8454143
  end
  object Label1: TLabel
    Left = 8
    Top = 0
    Width = 210
    Height = 25
    Caption = 'Cadastro de Usuários'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 38
    Width = 26
    Height = 13
    Caption = 'Login'
  end
  object Label3: TLabel
    Left = 8
    Top = 99
    Width = 31
    Height = 13
    Caption = 'Senha'
  end
  object Label4: TLabel
    Left = 140
    Top = 43
    Width = 177
    Height = 91
    Caption = 
      'Login ->   Total de caracteres,;'#13#10'                10 alfanuméric' +
      'os; '#13#10'                Letras maiúsculas.'#13#10'----------------------' +
      '-------------------------------------'#13#10'Senha -> Total de caracte' +
      'res;'#13#10'                08 alfanuméricos; '#13#10'                Letras' +
      ' minusculas.'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 139
    Top = 26
    Width = 64
    Height = 13
    Caption = 'Instruções:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 54
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'LOGIN'
    DataSource = DM2.ds_usuario
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 115
    Width = 121
    Height = 21
    CharCase = ecLowerCase
    DataField = 'SENHA'
    DataSource = DM2.ds_usuario
    PasswordChar = '*'
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 48
    Top = 144
    Width = 240
    Height = 25
    DataSource = DM2.ds_usuario
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 184
    Width = 297
    Height = 153
    Cursor = crHandPoint
    DataSource = DM2.ds_usuario
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'LOGIN'
        Width = 264
        Visible = True
      end>
  end
  object FormPlacement1: TFormPlacement
    Left = 232
    Top = 8
  end
end
