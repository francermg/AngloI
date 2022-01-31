object SelecAno: TSelecAno
  Left = 60
  Top = 219
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Seleciona Ano'
  ClientHeight = 417
  ClientWidth = 160
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object OK: TBitBtn
    Left = 16
    Top = 352
    Width = 121
    Height = 41
    Cursor = crHandPoint
    Caption = 'OK'
    Default = True
    TabOrder = 2
    OnClick = OKClick
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
  object Grid1: TRxDBGrid
    Left = 0
    Top = 8
    Width = 153
    Height = 337
    Cursor = crHandPoint
    DataSource = dsAnos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    OnDblClick = OKClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Ano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Width = 135
        Visible = True
      end>
  end
  object Bases: TFileListBox
    Left = 19
    Top = 184
    Width = 110
    Height = 145
    ItemHeight = 13
    Mask = 'Anglo_*.gdb'
    TabOrder = 1
    Visible = False
  end
  object dsAnos: TDataSource
    DataSet = Anos
    Left = 16
    Top = 136
  end
  object FS1: TFormStorage
    UseRegistry = True
    StoredProps.Strings = (
      'Anos.Name')
    StoredValues = <>
    Left = 72
    Top = 136
  end
  object Pop1: TPopupMenu
    Left = 8
    Top = 80
    object Sincroniza1: TMenuItem
      Caption = 'Sincroniza'
      ShortCut = 49235
      OnClick = Sincroniza1Click
    end
  end
  object Anos: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'Ano'
        DataType = ftInteger
      end>
    Left = 72
    Top = 72
    object AnosAno: TIntegerField
      FieldName = 'Ano'
    end
  end
end
