object ffichadosprofessores: Tffichadosprofessores
  Left = 42
  Top = 123
  Width = 833
  Height = 679
  Caption = 'Fichas dos professores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = False
    Borders.DrawTop = False
    Borders.DrawRight = False
    Borders.DrawBottom = True
    Borders.Style = bsBDiagonal
    DataSource = DM.dsProfessores
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 419
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.Style = bsCross
      Completion = ctMinBands
      object RLDraw1: TRLDraw
        Left = 0
        Top = 75
        Width = 716
        Height = 7
        DrawKind = dkLine
      end
      object RLLabel1: TRLLabel
        Left = 5
        Top = 86
        Width = 40
        Height = 15
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 52
        Top = 86
        Width = 38
        Height = 15
        DataField = 'NOME'
        DataSource = DM.dsProfessores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 5
        Top = 110
        Width = 59
        Height = 15
        Caption = 'Endereço:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 413
        Top = 110
        Width = 51
        Height = 15
        Caption = 'Número:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 71
        Top = 110
        Width = 72
        Height = 15
        DataField = 'ENDERECO'
        DataSource = DM.dsProfessores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 472
        Top = 110
        Width = 50
        Height = 15
        DataField = 'NIMERO'
        DataSource = DM.dsProfessores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 5
        Top = 134
        Width = 46
        Height = 15
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 60
        Top = 134
        Width = 40
        Height = 15
        DataField = 'cidade'
        DataSource = DM.dsProfessores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 5
        Top = 182
        Width = 85
        Height = 15
        Caption = 'Complemento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 100
        Top = 182
        Width = 95
        Height = 15
        DataField = 'COMPLEMENTO'
        DataSource = DM.dsProfessores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 5
        Top = 206
        Width = 172
        Height = 15
        Caption = 'Cidade/estado de nascimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 180
        Top = 206
        Width = 61
        Height = 15
        DataField = 'MUN_NAS'
        DataSource = DM.dsProfessores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 5
        Top = 158
        Width = 39
        Height = 15
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 52
        Top = 158
        Width = 48
        Height = 15
        DataField = 'BAIRRO'
        DataSource = DM.dsProfessores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 5
        Top = 230
        Width = 117
        Height = 15
        Caption = 'Data de nascimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 124
        Top = 230
        Width = 73
        Height = 15
        DataField = 'DATA_NASC'
        DataSource = DM.dsProfessores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 5
        Top = 254
        Width = 85
        Height = 15
        Caption = 'Nome da mãe:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 100
        Top = 254
        Width = 27
        Height = 15
        DataField = 'MAE'
        DataSource = DM.dsProfessores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 5
        Top = 278
        Width = 123
        Height = 15
        Caption = 'Telefone Residencial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 5
        Top = 302
        Width = 111
        Height = 15
        Caption = 'Telefone comercial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 5
        Top = 326
        Width = 94
        Height = 15
        Caption = 'Telefone celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 5
        Top = 350
        Width = 40
        Height = 15
        Caption = 'E-Mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = 103
        Width = 716
        Height = 3
        DrawKind = dkLine
      end
      object RLDraw3: TRLDraw
        Left = 0
        Top = 128
        Width = 716
        Height = 2
        DrawKind = dkLine
      end
      object RLDraw4: TRLDraw
        Left = 1
        Top = 152
        Width = 716
        Height = 2
        DrawKind = dkLine
      end
      object RLDraw5: TRLDraw
        Left = 1
        Top = 177
        Width = 716
        Height = 2
        DrawKind = dkLine
      end
      object RLDraw6: TRLDraw
        Left = 2
        Top = 201
        Width = 716
        Height = 2
        DrawKind = dkLine
      end
      object RLDraw7: TRLDraw
        Left = 2
        Top = 224
        Width = 716
        Height = 2
        DrawKind = dkLine
      end
      object RLDraw8: TRLDraw
        Left = 1
        Top = 248
        Width = 716
        Height = 3
        DrawKind = dkLine
      end
      object RLDraw9: TRLDraw
        Left = 1
        Top = 272
        Width = 716
        Height = 3
        DrawKind = dkLine
      end
      object RLDraw10: TRLDraw
        Left = 2
        Top = 296
        Width = 716
        Height = 3
        DrawKind = dkLine
      end
      object RLDraw11: TRLDraw
        Left = 2
        Top = 321
        Width = 716
        Height = 3
        DrawKind = dkLine
      end
      object RLDraw12: TRLDraw
        Left = 2
        Top = 343
        Width = 716
        Height = 3
        DrawKind = dkLine
      end
      object RLDraw13: TRLDraw
        Left = 2
        Top = 366
        Width = 716
        Height = 3
        DrawKind = dkLine
      end
      object RLLabel27: TRLLabel
        Left = 216
        Top = 32
        Width = 275
        Height = 30
        Caption = 'Escola Anglo Decisivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -25
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
