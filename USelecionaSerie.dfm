object fselecionaserie: Tfselecionaserie
  Left = 540
  Top = 244
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Seleciona série'
  ClientHeight = 92
  ClientWidth = 309
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
    Left = 2
    Top = 8
    Width = 84
    Height = 13
    Caption = 'Selecione a série:'
  end
  object RxSelecionaSerie: TRxDBLookupCombo
    Left = 2
    Top = 24
    Width = 305
    Height = 21
    DropDownCount = 8
    LookupField = 'SerieX'
    LookupDisplay = 'SerieX'
    LookupSource = DM.dsTurmas
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 104
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object FormPlacement1: TFormPlacement
    Left = 224
    Top = 40
  end
end
