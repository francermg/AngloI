object Cad_MapaAula: TCad_MapaAula
  Left = 315
  Top = 260
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'MAPA DE AULA'
  ClientHeight = 247
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 6
    Top = 16
    Width = 89
    Height = 13
    Alignment = taRightJustify
    Caption = 'Série / Turma :'
  end
  object Serie: TRxLabel
    Left = 10
    Top = 42
    Width = 248
    Height = 13
    Caption = 'Para alterar clique no dia da Semana:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 349
    Top = 211
    Width = 75
    Height = 25
    Caption = '&Fecha'
    TabOrder = 0
    Kind = bkClose
    Layout = blGlyphRight
  end
  object Turma: TRxDBLookupCombo
    Left = 101
    Top = 11
    Width = 292
    Height = 21
    DropDownCount = 15
    DisplayAllFields = True
    DisplayEmpty = '<< Selecione a Turma >>'
    EmptyItemColor = clMenu
    LookupField = 'Nome'
    LookupDisplay = 'Nome'
    LookupSource = DM.dsTurmas
    TabOrder = 1
    OnChange = TurmaChange
  end
  object RxDBGrid1: TRxDBGrid
    Left = 8
    Top = 56
    Width = 419
    Height = 137
    BorderStyle = bsNone
    DataSource = dsMAPA
    Options = [dgEditing, dgTitles, dgColLines, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleButtons = True
    OnTitleBtnClick = RxDBGrid1TitleBtnClick
    Columns = <
      item
        Alignment = taCenter
        Color = clMenu
        Expanded = False
        FieldName = 'AULA'
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DISC2'
        Title.Alignment = taCenter
        Title.Caption = 'Segunda'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DISC3'
        Title.Alignment = taCenter
        Title.Caption = 'Terça'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DISC4'
        Title.Alignment = taCenter
        Title.Caption = 'Quarta'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DISC5'
        Title.Alignment = taCenter
        Title.Caption = 'Quinta'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DISC6'
        Title.Alignment = taCenter
        Title.Caption = 'Sexta'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DISC7'
        Title.Alignment = taCenter
        Title.Caption = 'Sábado'
        Width = 60
        Visible = True
      end>
  end
  object FS1: TFormStorage
    StoredValues = <>
    Left = 496
    Top = 8
  end
  object dsMAPA: TDataSource
    AutoEdit = False
    DataSet = MAPA
    Left = 80
    Top = 136
  end
  object MAPA: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MONTA_MAPA(:serie,:turma)')
    Left = 128
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'turma'
        ParamType = ptUnknown
      end>
    object MAPAAULA: TSmallintField
      FieldName = 'AULA'
    end
    object MAPADISC1: TIBStringField
      FieldName = 'DISC1'
      Size = 4
    end
    object MAPADISC2: TIBStringField
      FieldName = 'DISC2'
      Size = 4
    end
    object MAPADISC3: TIBStringField
      FieldName = 'DISC3'
      Size = 4
    end
    object MAPADISC4: TIBStringField
      FieldName = 'DISC4'
      Size = 4
    end
    object MAPADISC5: TIBStringField
      FieldName = 'DISC5'
      Size = 4
    end
    object MAPADISC6: TIBStringField
      FieldName = 'DISC6'
      Size = 4
    end
    object MAPADISC7: TIBStringField
      FieldName = 'DISC7'
      Size = 4
    end
  end
  object MAPAd: TIBDataSet
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from MAPA_AULA'
      'where'
      '  TUR_SERIE = :OLD_TUR_SERIE and'
      '  TUR_TURMA = :OLD_TUR_TURMA and'
      '  DIA_SEMANA = :OLD_DIA_SEMANA and'
      '  AULA = :OLD_AULA')
    InsertSQL.Strings = (
      'insert into MAPA_AULA'
      '  (TUR_SERIE, TUR_TURMA, DIA_SEMANA, AULA, DIS_CODIGO)'
      'values'
      '  (:TUR_SERIE, :TUR_TURMA, :DIA_SEMANA, :AULA, :DIS_CODIGO)')
    RefreshSQL.Strings = (
      'Select '
      '  TUR_SERIE,'
      '  TUR_TURMA,'
      '  DIA_SEMANA,'
      '  AULA,'
      '  DIS_CODIGO'
      'from MAPA_AULA '
      'where'
      '  TUR_SERIE = :TUR_SERIE and'
      '  TUR_TURMA = :TUR_TURMA and'
      '  DIA_SEMANA = :DIA_SEMANA and'
      '  AULA = :AULA')
    SelectSQL.Strings = (
      'select * '
      'from MAPA_AULA'
      'where TUR_SERIE = :serie and'
      '           TUR_TURMA = :turma and'
      '           DIA_SEMANA = :diasem'
      'order by AULA')
    ModifySQL.Strings = (
      'update MAPA_AULA'
      'set'
      '  TUR_SERIE = :TUR_SERIE,'
      '  TUR_TURMA = :TUR_TURMA,'
      '  DIA_SEMANA = :DIA_SEMANA,'
      '  AULA = :AULA,'
      '  DIS_CODIGO = :DIS_CODIGO'
      'where'
      '  TUR_SERIE = :OLD_TUR_SERIE and'
      '  TUR_TURMA = :OLD_TUR_TURMA and'
      '  DIA_SEMANA = :OLD_DIA_SEMANA and'
      '  AULA = :OLD_AULA')
    Left = 240
    Top = 136
    object MAPAdTUR_SERIE: TSmallintField
      FieldName = 'TUR_SERIE'
      Required = True
    end
    object MAPAdTUR_TURMA: TIBStringField
      FieldName = 'TUR_TURMA'
      Required = True
      Size = 1
    end
    object MAPAdDIA_SEMANA: TSmallintField
      FieldName = 'DIA_SEMANA'
      Required = True
    end
    object MAPAdAULA: TSmallintField
      FieldName = 'AULA'
      Required = True
    end
    object MAPAdDIS_CODIGO: TIntegerField
      FieldName = 'DIS_CODIGO'
    end
    object MAPAdDisNomeRes: TStringField
      FieldKind = fkLookup
      FieldName = 'DisNomeRes'
      LookupDataSet = DM.Disciplinas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME_RES'
      KeyFields = 'DIS_CODIGO'
      Size = 4
      Lookup = True
    end
    object MAPAdDisNome: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'DisNome'
      LookupDataSet = DM.Disciplinas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'DIS_CODIGO'
      Size = 40
      Lookup = True
    end
  end
  object dsMAPAd: TDataSource
    DataSet = MAPAd
    Left = 192
    Top = 136
  end
  object UltAula: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(AULA) as Ultima'
      'from MAPA_AULA'
      'where TUR_SERIE = :serie and'
      '           TUR_TURMA = :turma and'
      '           DIA_SEMANA = :diasem')
    Left = 328
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'turma'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'diasem'
        ParamType = ptUnknown
      end>
    object UltAulaULTIMA: TSmallintField
      FieldName = 'ULTIMA'
    end
  end
end
