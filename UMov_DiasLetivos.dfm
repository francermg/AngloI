object Mov_DiasLetivos: TMov_DiasLetivos
  Left = 147
  Top = 162
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Dias Letivos'
  ClientHeight = 400
  ClientWidth = 412
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
  object RxDBGrid1: TRxDBGrid
    Left = 7
    Top = 6
    Width = 241
    Height = 387
    DataSource = dsDias
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    OnGetCellParams = RxDBGrid1GetCellParams
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DSEM'
        Title.Caption = 'Dia Semana'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LETIVO'
        Title.Alignment = taCenter
        Title.Caption = 'Let'
        Width = 23
        Visible = True
      end>
  end
  object MarcaComoLetivo: TBitBtn
    Left = 259
    Top = 72
    Width = 146
    Height = 33
    Caption = '&Marca c/Letivo'
    TabOrder = 1
    OnClick = MarcaComoLetivoClick
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
  object BitBtn1: TBitBtn
    Left = 325
    Top = 365
    Width = 75
    Height = 25
    Caption = '&Fecha'
    TabOrder = 2
    Kind = bkClose
    Layout = blGlyphRight
  end
  object ConsLetivo: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from DIAS_LETIVOS'
      'where DATA = :data')
    Left = 28
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end>
    object ConsLetivoDATA: TDateField
      FieldName = 'DATA'
      Origin = 'DIAS_LETIVOS.DATA'
      Required = True
    end
  end
  object Dias: TRxMemoryData
    FieldDefs = <>
    Left = 28
    Top = 200
    object DiasDATA: TDateField
      FieldName = 'DATA'
    end
    object DiasDSEM: TStringField
      FieldName = 'DSEM'
      Size = 15
    end
    object DiasDSEMNUM: TIntegerField
      FieldName = 'DSEMNUM'
    end
    object DiasLETIVO: TStringField
      FieldName = 'LETIVO'
      Size = 1
    end
  end
  object dsDias: TDataSource
    DataSet = Dias
    Left = 28
    Top = 152
  end
  object FS1: TFormStorage
    UseRegistry = True
    StoredValues = <>
    Left = 304
    Top = 65528
  end
  object IncluiDiaLetivo: TIBStoredProc
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    StoredProcName = 'INCLUI_DIAS_LETIVOS'
    Left = 120
    Top = 184
    ParamData = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
end
