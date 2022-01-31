object Lst_Alunos_Notas: TLst_Alunos_Notas
  Left = 327
  Top = 319
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Relatório de Alunos - Notas'
  ClientHeight = 117
  ClientWidth = 253
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
  object Label1: TLabel
    Left = 11
    Top = 5
    Width = 85
    Height = 13
    Caption = 'Seleciona a turma'
  end
  object Label2: TLabel
    Left = 11
    Top = 48
    Width = 102
    Height = 13
    Caption = 'Selecione a disciplina'
  end
  object Turma: TRxDBLookupCombo
    Left = 11
    Top = 19
    Width = 236
    Height = 21
    DropDownCount = 15
    DisplayAllFields = True
    DisplayEmpty = '<< Selecione a Turma >>'
    EmptyItemColor = clMenu
    LookupField = 'Nome'
    LookupDisplay = 'Nome'
    LookupSource = DM.dsTurmas
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 33
    Top = 88
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object Disciplina: TRxDBLookupCombo
    Left = 13
    Top = 62
    Width = 233
    Height = 21
    DropDownCount = 20
    DisplayAllFields = True
    DisplayEmpty = '<< Selecione a Disciplina >>'
    EmptyItemColor = clMenu
    LookupField = 'CODIGO'
    LookupDisplay = 'CODIGO;NOME'
    LookupSource = DM.dsDisciplinas
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 128
    Top = 88
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 3
    OnClick = BitBtn2Click
    Kind = bkClose
  end
  object FS: TFormStorage
    StoredValues = <>
    Left = 216
    Top = 65528
  end
end
