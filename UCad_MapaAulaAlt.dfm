object Cad_MapaAulaAlt: TCad_MapaAulaAlt
  Left = 90
  Top = 155
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'MAPA DE AULA - Alteração'
  ClientHeight = 250
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Serie: TRxLabel
    Left = 105
    Top = 8
    Width = 36
    Height = 13
    Caption = 'Serie'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Dia: TRxLabel
    Left = 105
    Top = 24
    Width = 23
    Height = 13
    Caption = 'Dia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 11
    Top = 8
    Width = 89
    Height = 13
    Alignment = taRightJustify
    Caption = 'Série / Turma :'
  end
  object Label2: TLabel
    Left = 12
    Top = 24
    Width = 88
    Height = 13
    Alignment = taRightJustify
    Caption = 'Dia / Semana :'
  end
  object BitBtn1: TBitBtn
    Left = 395
    Top = 217
    Width = 75
    Height = 25
    Caption = '&Fecha'
    TabOrder = 0
    Kind = bkClose
    Layout = blGlyphRight
  end
  object RxDBGrid1: TRxDBGrid
    Left = 11
    Top = 44
    Width = 458
    Height = 162
    DataSource = Cad_MapaAula.dsMAPAd
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    FixedCols = 1
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'AULA'
        Title.Alignment = taCenter
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIS_CODIGO'
        Title.Caption = 'Cod'
        Width = 33
        Visible = True
      end
      item
        DropDownRows = 15
        Expanded = False
        FieldName = 'DisNomeRes'
        Title.Caption = 'NRes'
        Width = 55
        Visible = True
      end
      item
        DropDownRows = 18
        Expanded = False
        FieldName = 'DisNome'
        Title.Caption = 'Disciplina'
        Width = 297
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 265
    Top = 217
    Width = 115
    Height = 25
    Caption = '&Adiciona Aula'
    TabOrder = 2
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333FF33333333FF333993333333300033377F3333333777333993333333
      300033F77FFF3333377739999993333333333777777F3333333F399999933333
      33003777777333333377333993333333330033377F3333333377333993333333
      3333333773333333333F333333333333330033333333F33333773333333C3333
      330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
      993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
      333333333337733333FF3333333C333330003333333733333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object BitBtn3: TBitBtn
    Left = 100
    Top = 217
    Width = 153
    Height = 25
    Caption = 'Remove Última Aula'
    TabOrder = 3
    OnClick = BitBtn3Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      300033FFFFFF3333377739999993333333333777777F3333333F399999933333
      3300377777733333337733333333333333003333333333333377333333333333
      3333333333333333333F333333333333330033333F33333333773333C3333333
      330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
      993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
      333333377F33333333FF3333C333333330003333733333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object FS1: TFormStorage
    StoredValues = <>
    Left = 468
  end
end
