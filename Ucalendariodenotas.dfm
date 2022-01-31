object fcalendariodenotas: Tfcalendariodenotas
  Left = 509
  Top = 324
  BorderStyle = bsSingle
  Caption = 'Calendário de Notas'
  ClientHeight = 218
  ClientWidth = 278
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
    Left = 8
    Top = 33
    Width = 71
    Height = 13
    Caption = 'Digite a senha:'
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 8
    Width = 192
    Height = 18
    Caption = 'Data/Notas para internet'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 5
    Top = 45
    Width = 184
    Height = 26
    Caption = 'Ao inserir a data utilize o'#13#10'formato da data: DD/MM/AAAA.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object senha: TEdit
    Left = 8
    Top = 49
    Width = 121
    Height = 21
    CharCase = ecLowerCase
    PasswordChar = '*'
    TabOrder = 0
  end
  object bsenha: TBitBtn
    Left = 200
    Top = 48
    Width = 75
    Height = 23
    Caption = 'OK'
    Default = True
    TabOrder = 1
    OnClick = bsenhaClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 84
    Width = 278
    Height = 134
    Align = alBottom
    DataSource = DM2.Dsdatanotas
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Bimestre'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INICIO_NOTA'
        Title.Caption = 'Data inicio'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FIM_NOTA'
        Title.Caption = 'Data fim'
        Width = 71
        Visible = True
      end>
  end
  object FPcalendarionotas: TFormPlacement
    UseRegistry = True
    Left = 216
  end
end
