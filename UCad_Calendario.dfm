object Cad_Calendario: TCad_Calendario
  Left = 400
  Top = 273
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'CALENDÁRIO'
  ClientHeight = 191
  ClientWidth = 338
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
  object Label1: TLabel
    Left = 7
    Top = 130
    Width = 240
    Height = 52
    Caption = 
      'Obs: Este calendário não é válido para o'#13#10'        lançamento da ' +
      'notas na internet.'#13#10'        Para lançamento de  notas  acesse'#13#10' ' +
      '       Menu->Cadastro->Calendário Notas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 245
    Top = 139
    Width = 75
    Height = 25
    Caption = '&Fecha'
    TabOrder = 0
    Kind = bkClose
    Layout = blGlyphRight
  end
  object RxDBGrid1: TRxDBGrid
    Left = 8
    Top = 16
    Width = 310
    Height = 106
    BorderStyle = bsNone
    DataSource = DM.dsBimestres
    Options = [dgEditing, dgTitles, dgColLines, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleButtons = True
    Columns = <
      item
        Alignment = taCenter
        Color = clMenu
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'Bim'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INICIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FIM'
        Visible = True
      end>
  end
  object FS1: TFormStorage
    UseRegistry = True
    StoredValues = <>
    Left = 328
  end
end
