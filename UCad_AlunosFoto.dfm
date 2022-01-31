object Cad_AlunosFoto: TCad_AlunosFoto
  Left = 243
  Top = 189
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cad_AlunosFoto'
  ClientHeight = 446
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 0
    Top = 421
    Width = 317
    Height = 25
    Caption = '&Fecha'
    TabOrder = 0
    Kind = bkClose
    Layout = blGlyphRight
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 316
    Height = 420
    Align = alTop
    BevelWidth = 5
    TabOrder = 1
    object Foto: TImage
      Left = 5
      Top = 5
      Width = 306
      Height = 410
      Align = alClient
      Stretch = True
      OnClick = FotoClick
    end
  end
end
