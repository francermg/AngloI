object fprofessores: Tfprofessores
  Left = 325
  Top = 101
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '.:Cadastro dos Professores:.'
  ClientHeight = 500
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 608
    Top = 8
    Width = 169
    Height = 121
  end
  object Label1: TLabel
    Left = 16
    Top = 0
    Width = 33
    Height = 13
    Caption = 'Código'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 39
    Width = 21
    Height = 13
    Caption = 'Tipo'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 56
    Top = 40
    Width = 68
    Height = 13
    Caption = 'Código Escola'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 128
    Top = 40
    Width = 19
    Height = 13
    Caption = 'Ano'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 16
    Top = 77
    Width = 28
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 456
    Top = 77
    Width = 54
    Height = 13
    Caption = 'Data Nasc.'
  end
  object Label8: TLabel
    Left = 16
    Top = 113
    Width = 52
    Height = 13
    Caption = 'Nome Mãe'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 16
    Top = 149
    Width = 51
    Height = 13
    Caption = 'Logadouro'
  end
  object Label10: TLabel
    Left = 224
    Top = 149
    Width = 46
    Height = 13
    Caption = 'Endereço'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 528
    Top = 149
    Width = 37
    Height = 13
    Caption = 'Número'
    FocusControl = DBEdit11
  end
  object Label12: TLabel
    Left = 16
    Top = 187
    Width = 64
    Height = 13
    Caption = 'Complemento'
    FocusControl = DBEdit12
  end
  object Label13: TLabel
    Left = 288
    Top = 187
    Width = 27
    Height = 13
    Caption = 'Bairro'
  end
  object Label15: TLabel
    Left = 152
    Top = 257
    Width = 83
    Height = 13
    Caption = 'Municipio/Estado'
  end
  object Label16: TLabel
    Left = 395
    Top = 257
    Width = 21
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit16
  end
  object RxLabel1: TRxLabel
    Left = 256
    Top = 18
    Width = 240
    Height = 24
    Caption = 'Cadastro de Professores '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Nauert Wd'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 16
    Top = 293
    Width = 104
    Height = 13
    Caption = 'Número da identidade'
    FocusControl = DBEdit9
  end
  object Label17: TLabel
    Left = 135
    Top = 293
    Width = 61
    Height = 13
    Caption = 'compl. Ident.'
    FocusControl = DBEdit14
  end
  object Label18: TLabel
    Left = 210
    Top = 293
    Width = 97
    Height = 13
    Caption = 'Data Em. Identidade'
  end
  object Label19: TLabel
    Left = 560
    Top = 293
    Width = 67
    Height = 13
    Caption = 'UF Identidade'
  end
  object Label20: TLabel
    Left = 340
    Top = 293
    Width = 67
    Height = 13
    Caption = 'Orgão emissor'
  end
  object Label21: TLabel
    Left = 15
    Top = 256
    Width = 71
    Height = 13
    Caption = 'Data Admissão'
  end
  object Label22: TLabel
    Left = 16
    Top = 327
    Width = 61
    Height = 13
    Caption = 'Escolaridade'
  end
  object Label24: TLabel
    Left = 243
    Top = 328
    Width = 146
    Height = 13
    Caption = 'Cidade/Estado de nascimento.'
  end
  object SBSalva: TSpeedButton
    Left = 176
    Top = 503
    Width = 81
    Height = 22
    Cursor = crHandPoint
    Hint = 'Salvar Frentes'
    Caption = 'Salvar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFE0DDDD9574728C68658C6E6E8D6F6F8D6F6F8D
      6E6E8D6E6E8D6E6F8D6C6A8E6A678E6965896A68CCCBCBFFFFFFFFFFFFB26A65
      FDA664F4975FDABBBBDCCBCDDDC6C7DEC4C4DEC4C4DBC6CBE5A88AFF9445FF92
      3CF483418C6E6DFFFFFFFFFFFFB85C51FFB266EE985BD2C2C1D68774D6B0AAD9
      CFD0D8CBCBD5CFD4E1A585FE8630FF8F2FFF913E8F6B68FFFFFFFFFFFFB75D52
      FFB269E99C62DDD3D2D25239DDA89DE6E6E7E5DEDEE3E5E9E6A588FA7627FF92
      36FF90408E6B68FFFFFFFFFFFFB75C50FFB46CE7A168E7E7E9D8AFA3E6D7D5F1
      F6FAEFF2F5EDFBFFEAA68EF7661CFF963CFF91428E6B67FFFFFFFFFFFFB75A4F
      FFB771E89F63DBBFAEE2CFC1E2C8B8E5C5B3E8C5B3ECCCBDED8B67F66219FF99
      40FF92448E6A67FFFFFFFFFFFFB75A4DFFB876FEB472F8A966F8A763F8A45FF8
      A15BFA9F58FB9D54FC9B51FD9C50FFA04EFF93458E6966FFFFFFFFFFFFB7584B
      FEBB7FFAE4D2FAE9DBF9E7D8F8E5D6F7E4D4F6E2D2F5DFCFF4DECDF2DECFF3CD
      ADFF94488E6965FFFFFFFFFFFFB75749FDBD82F9F4F0FFFFFFFFFFFFFFFFFFFF
      FDFEFFFAFAFEF7F5FEF3EEFDF4F3F1D7C3FE94488E6864FFFFFFFFFFFFB75647
      FCBD83F9F2ECFFFFFFFFFFFEFFFBF9FFF7F3FFF4EFFFF0EAFFEFE8FEF5F2F1D5
      C0FE94498E6863FFFFFFFFFFFFB75647FCBE84F7F1EAFFFFFFFFFBF9FFF7F3FF
      F3EEFFF0EAFFEFE8FFF2EDFEF7F6F1D5BFFE964B8E6762FFFFFFFFFFFFB75343
      FCC188F7F0EAFFFFFFFFFAF7FFF6F1FFF2ECFFF2EBFFF5F0FFF8F5FFFFFFEDD4
      BFF18A3F8E6661FFFFFFFFFFFFBA5C50F9B77DF5E6DAFDF1EBFDEFE5FEEEE2FC
      EADFFBE9E0FAECE4FAEEE7FAF3F1EDCFB6EC833C987470FFFFFFFFFFFFEAD0D0
      B54D3FB14437AF463AB54D3EB95442B34D3EAF4639AF463AAF4639AE463AB343
      32B35A4AE0DDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Visible = False
    OnClick = SBSalvaClick
  end
  object SBInserir: TSpeedButton
    Left = 16
    Top = 503
    Width = 81
    Height = 22
    Cursor = crHandPoint
    Hint = 'Inserir disciplinas.'
    Caption = 'Inserir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDD9D9D9E6E6E6F8F8F8929D91838C817D87
      7AAEB1AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E09CA2A874879A74
      9CB3577C9556706EA9CBA589C588B0D6AE6E7B68F7F7F7FFFFFFFFFFFFEEEEEE
      AEB2B7788797809EB3ABD7E8C3F5FFB4F3EE7CCBAC8CBAA5AED1AD0084006EB4
      6EA4A99B757F6EB0B1AF9DA7B27390A6A4C8DAD9FBFFE0FFFFC3F6FFAEEBFF82
      BEA8BDD8B580CF7C5EBC5E119511389F386BB46BB1D4AD7E8379678FB9E3FFFF
      EBFFFFD9FFFFBFF1FFA4E4FF96DEFF7FBCA8D0EACA2FBC2E16A8161EA21E1195
      110085008FC78D8688816C92B8DEFEFFDAFEFFC1F2FFA9E5FF8ED9FF80D3FF6F
      B9B49FC69FAED9AA9AD99A15A81562BD62AFD1ADACC4A4979C946A93BCD8FBFE
      C6F5FFABE6FF92DBFF79CEFF68C5FF7BCEFC54B9D05AA6A0B4DCB02EBC2D88CF
      8197BEB04A7680EAEAEA6893BEC8F4FEB1EAFF97DDFF7ED1FF65C4FF54BBFF70
      C5FF5DC3FF51B2D3A2C49FCFE5C6C3D3B272B9B25083A9EFEFEF6393C0B6ECFE
      A0E2FF85D4FF6DC8FF53BBFF43B4FF65BEFF4DB3FF54B9FD4AA6BE58A8B559AA
      B46ACEEE4E7FA5EDEDED5D92C3A0E2FE8AD7FF70C9FF56BDFF36AEFF29A6FF68
      BAFF38A1FF3FA8FF4DB5FF54BCFF5DC4FF64CCFF477AA2EDEDED5991C78AD7FE
      70CBFF52BBFF43B2FF49B4FF60C2FF83D2FF7AC6FF5EB2FF43A5FF3CA5FF46AE
      FF53BCFF4377A5EDEDED528FC976CDFF6EC8FF7BCEFF8AD9FF8FE2FF7EDCFF65
      CCFF89E6FF93E4FF95DBFF7FC8FF5CB4FF48B0FF3C73A7EDEDED508ECB90D3FA
      A5E7FF96E1FD85D8FA7FD4F875C9F754ADF378CBF574CAF67DD1F893DEFCA7E6
      FF93D6FF4374A8EFEFEFCCDDF081AFDC5FA5DD7DC6ED9FE1F9A5E5FA8CCDEF6D
      AEDD94D6F49FDFFA9DE1FE7CC9F5539ED76594C0B2BDC9FDFDFDFFFFFFFFFFFF
      EFF4FAADCAE975ABDD77B7E4ABE1F5BCEBF3B2EDFF74B9E76997C296ACC2DEE0
      E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7E4F486B4E268
      A2D886A5C6C8D1DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Visible = False
    OnClick = SBInserirClick
  end
  object SBDeletar: TSpeedButton
    Left = 258
    Top = 503
    Width = 81
    Height = 22
    Cursor = crHandPoint
    Hint = 'Deletar Frentes'
    Caption = 'Excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFF5F7F9D4CAC6C3B0A4C1A08ABE9A80B99A85B7A89FCECDCEF7FC
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1D5CEC19B81D1A17CDA7A2AE5
      761FEA7A25E87B2CD07029AB5C2395725DD8DBDFFFFFFFFFFFFFFFFFFFFFFFFF
      EAE0DACF976BF3C89CFFE4C6E07216DF7B2EEC8D4CEA965EE69561EE9758D064
      0F916243E9ECF0FFFFFFFFFFFFFFFFFFE4C3AAECB98AEDC296F6D9BBD77F34DA
      9964E1A070D48E5EDF915AEA9D66EA8534AF5409CCCACBFFFFFFFFFFFFFFFFFF
      E7C3AAEEC9A6F4D6B6F4DABED08543D89E6EDEAC84DFA071DB8D50DC9055DB88
      3CB0580CCFCAC9FFFFFFFFFFFFFFFFFFE7C3A9F2D1B3FEEFDEFAE2C8E7A96EDD
      A674DCAB80E4AC7BE09755E19A56D8832BB15608CECBCBFFFFFFFFFFFFFFFFFF
      E9C7ADF5D2B0FCE9D6FFEBD5EDC092E5B07CD0A77DE2B588F1AD67E8A15AD987
      33B1580BCFCBCAFFFFFFFFFFFFFFFFFFE9C8ADF5D2B1FDECD9FFEDD7E7C5A2E3
      BA91D8B591D6AF87DD9750DF964EDD7B18B3590BCFCBCBFFFFFFFFFFFFFFFFFF
      EACAB0F7D2AFFDE9D4FFEEDAFDDAB4F0C49CE1A872E8A565F0A75EE5A058DD7A
      16B55A09CFCBCBFFFFFFFFFFFFFFFFFFEBCCB2F8D5B3FFDCBAFECEA6F2BD93ED
      BC98EEB993F0AE80F5A46AF39449E47A11B35A09CFCBCBFFFFFFFFFFFFFFFFFF
      ECCFB6FAC89AE49A5DDDCEC3D3D6D9C8CBCFE0E5E9CAD2D8D2D8DCDBB8A5E577
      2ABD6114CECAC9FFFFFFFFFFFFFFFFFFEFD0B4F3A45ABC6F2FC2BBB6D3D5D5DC
      E1E4CAD1D5A69891AE9083AB8E82A84E23CB6928D0CCC9FFFFFFFFFFFFFFFFFF
      F3DCC6F0A861DE893ED0701FBF7337CABBB0B99D8BA14B179B2D008F2400C052
      17CB7F4AE7E8E7FFFFFFFFFFFFFFFFFFFEFCFCEEC7A3F2AC69F09A4AE6822DCE
      6F26C35D15C35A16C45F1DD4702DDC8B51E0D1C6FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF4E2D0EDC6A0EDB784EAA66AE69E62E6A169E5AC7EE7C3A6F0ED
      EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF8FA
      F5F1FAF5F1F9F6F4FBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Visible = False
    OnClick = SBDeletarClick
  end
  object SBCacelar: TSpeedButton
    Left = 340
    Top = 503
    Width = 81
    Height = 22
    Cursor = crHandPoint
    Hint = 'Cancelar manutenção de Frentes'
    Caption = 'Cancelar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      B9BFB199A18ED5D5D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC2C5BB289D0415D3002A9F0D748A60D5D4D3FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7C7CCC2FBFBFA5C8B3A
      11E70B00FF0200FF000EE500339513A1A698FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF8799738A9A7BC1C8B62E9B111BEB1E0CF40C00FF0100FF0002FF001D
      B300ADB1A7FFFFFFFFFFFFFFFFFFFFFFFFA7B29A347F00ADB4A7819D663EBD33
      2AD92C1AE41A0AF50A00FF0000FF0018CE00929D85FFFFFFFFFFFFFFFFFFACB3
      9F25A20521AA04D6D6D4608C3E63DA633FD84324DA2616E7160DF50F1BC20755
      7330F5F5F5FFFFFFFFFFFFADB2A22D8D0504FD003F9723F4F4F4668F4360B04C
      45A6336CCA6380E7824FD65031C72B3F8C2385947795A08A6286481EAB0003F9
      000EE900839572FFFFFFDDE5D7ABBE98A4B892688C42CAEEC8A3ECA563DA6438
      D3382CC21D26C41314E60C00FF0403FF003A9018E2E2E1FFFFFFFFFFFFFFFFFF
      FFFFFFB2BAAB6E944BCCE7C5BDF5C081E6844BDB4E2BE1301EEC2215E6102F98
      0DBABDB4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4D0BC6C924985AA6A93
      C88476C86B49B73A319D165D8F3BC8CDC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFF8F9F6B3C4A690A877809D6291A778B6C2A8F9FAF8FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Visible = False
    OnClick = SBCacelarClick
  end
  object dblogin: TDBText
    Left = 664
    Top = 31
    Width = 65
    Height = 17
    DataField = 'LOGIN'
    DataSource = DM.dsProfessores
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object dbsenha: TDBText
    Left = 664
    Top = 60
    Width = 65
    Height = 17
    DataField = 'SENHA'
    DataSource = DM.dsProfessores
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label28: TLabel
    Left = 616
    Top = 33
    Width = 29
    Height = 13
    Caption = 'Login:'
    Transparent = True
  end
  object Label29: TLabel
    Left = 616
    Top = 62
    Width = 34
    Height = 13
    Caption = 'Senha:'
    Transparent = True
  end
  object TrocaSenha: TSpeedButton
    Left = 729
    Top = 77
    Width = 23
    Height = 22
    Cursor = crHandPoint
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
      333333333337FF3333333333330003333333333333777F333333333333080333
      3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
      33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
      B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
      BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
      B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
      3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
      333333333337F33333333333333B333333333333333733333333}
    NumGlyphs = 2
    OnClick = TrocaSenhaClick
  end
  object Label30: TLabel
    Left = 613
    Top = 11
    Width = 41
    Height = 13
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object SBgerador: TSpeedButton
    Left = 730
    Top = 103
    Width = 23
    Height = 22
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888800008888888888888888888800008888888888887788888800008877
      7777777077778888000080000000007000777888000080FFFFFFF07000007788
      000080F44F44F07000000778000080FFFFFFF07887000077000080F44444F078
      88870077000080FFFFFFF07888887007000080F44444F07888788007000080FF
      FFFFF07880788007000080F44FFFF07800770078000080FFFF00008000000788
      000080F44F0F088000078888000080FFFF008888007888880000800000088888
      8088888800008888888888888888888800008888888888888888888800008888
      88888888888888880000}
    OnClick = SBgeradorClick
  end
  object Label31: TLabel
    Left = 616
    Top = 111
    Width = 95
    Height = 13
    Caption = 'Gerar senha e login:'
    Transparent = True
  end
  object Label32: TLabel
    Left = 617
    Top = 87
    Width = 96
    Height = 13
    Caption = 'Editar senha e login:'
    Transparent = True
  end
  object SBEditar: TSpeedButton
    Left = 96
    Top = 504
    Width = 81
    Height = 22
    Caption = 'Editar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF7F7F8DBDEDEAD9085B7B1AFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4C6CC7C
      7167CF5430A44223B5B0AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFCFCFCA0B8BD888E879D8D7DC26D51DF6A48A54122B5AFAEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8C9D6D8739996A95134D2
      8168E88768E27F5FDF6A44AF4E30B4AFAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFA3C6CC7C6D62B0806AC38D79E47D5FE58466E58262DA7755F0997BB04E
      31B5AFAEFFFFFFFFFFFFFFFFFFFBFBFBA1B8BC88908B9C8C7CC4664BEB886CE5
      886CE48364E68365DD704CE19A79FFC1A6AF4E31BAB4B3FFFFFFF8F8F8C9D8DA
      729997AA5134D28771E68B71E4876EE7866AE88C70E58263D97956F4C5A0FFEA
      D0EC7957AE9A95FFFFFFA1CBD27C695EAF846EC18B77E37E62E5896FE58B72CE
      806BD58068D07555F6C7A3FFECD3EE9172AC8579FAFAFAFFFFFFA9A79D988A7A
      C5684EEC8C73E7947EEA9E89EDAB99CF8F81AF796F6D9DC082A0BDDA8465AF87
      7BFFFFFFFFFFFFFFFFFFD47F64E3AC9AEEB8A9EFB9ABF0B9AAF1C0B2F1B4A1CA
      877667BDDD14BCFF208FF8556080F3F3F3FFFFFFFFFFFFFFFFFFEDD2C9DE9079
      F4C9BDF4CEC4F5D3C9F1C4B7E0957CE3D4CB35F3FF00D1FF0AB1FF2494FC6A85
      A3F3F3F3FFFFFFFFFFFFFFFFFFD89984F3CDC3F8DDD5F7DAD3DD9E8BF3D8CBFF
      FCF3A3B9AA18E2F006D1FF0AB2FF2896FD6984A2F3F3F3FFFFFFFFFFFFF2DED8
      E2A896FDEDEAD9896FF5E3DBFFFFFFEF987AB58A7FB0E3E622F8FF08CFFF0BB1
      FF2795FD6784A3ECECECFFFFFFFFFFFFDA9F8CD7947ED9A08DE6A287EDA083AC
      8276FFFFFFFFFFFFB1FEFF23EDFF07CFFF08B2FF41A9FC9EAAB2FFFFFFFFFFFF
      FBF4F2F9F1EEFFFFFFE3B3A3BE978AFFFFFFFFFFFFFFFFFFFFFFFFB0F9FF21F0
      FF2BBAE16694A9DBDDDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFABF9FF84C7E3D9DDDFFFFFFF}
    ParentFont = False
    Visible = False
    OnClick = SBEditarClick
  end
  object Label14: TLabel
    Left = 17
    Top = 222
    Width = 29
    Height = 13
    Caption = 'E-Mail'
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 16
    Width = 64
    Height = 21
    DataField = 'COD_PROF'
    DataSource = DM.dsProfessores
    TabOrder = 22
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 55
    Width = 26
    Height = 21
    Color = clSilver
    DataField = 'TIPO'
    DataSource = DM.dsProfessores
    TabOrder = 25
  end
  object DBEdit3: TDBEdit
    Left = 56
    Top = 56
    Width = 57
    Height = 21
    Color = clSilver
    DataField = 'COD_ESCOLA'
    DataSource = DM.dsProfessores
    TabOrder = 26
  end
  object DBEdit4: TDBEdit
    Left = 128
    Top = 56
    Width = 36
    Height = 21
    Color = clSilver
    DataField = 'ANO'
    DataSource = DM.dsProfessores
    TabOrder = 27
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 93
    Width = 424
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DM.dsProfessores
    TabOrder = 0
    OnExit = RxDBLookupCombo6Exit
  end
  object DBEdit8: TDBEdit
    Left = 16
    Top = 127
    Width = 424
    Height = 21
    CharCase = ecUpperCase
    DataField = 'MAE'
    DataSource = DM.dsProfessores
    TabOrder = 2
  end
  object DBEdit10: TDBEdit
    Left = 224
    Top = 163
    Width = 304
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = DM.dsProfessores
    TabOrder = 5
  end
  object DBEdit11: TDBEdit
    Left = 528
    Top = 163
    Width = 64
    Height = 21
    DataField = 'NIMERO'
    DataSource = DM.dsProfessores
    TabOrder = 6
  end
  object DBEdit12: TDBEdit
    Left = 16
    Top = 201
    Width = 262
    Height = 21
    CharCase = ecUpperCase
    DataField = 'COMPLEMENTO'
    DataSource = DM.dsProfessores
    TabOrder = 7
  end
  object DBEdit16: TDBEdit
    Left = 395
    Top = 271
    Width = 97
    Height = 21
    DataField = 'CEP'
    DataSource = DM.dsProfessores
    TabOrder = 12
  end
  object DBNavigator1: TDBNavigator
    Left = 239
    Top = 367
    Width = 220
    Height = 25
    DataSource = DM.dsProfessores
    Hints.Strings = (
      'Primeiro registro'
      'Registro anterior'
      'Próximo registro'
      'Último registro'
      'Inserir registro'
      'Apagar registro'
      'Editar registro'
      'Salva'
      'Cancelar'
      'Atualizar')
    TabOrder = 20
    OnClick = DBNavigator1Click
  end
  object DBDateEdit1: TDBDateEdit
    Left = 456
    Top = 93
    Width = 113
    Height = 19
    DataField = 'DATA_NASC'
    DataSource = DM.dsProfessores
    DefaultToday = True
    DialogTitle = 'Selecione a Sata'
    NumGlyphs = 2
    CalendarStyle = csDialog
    TabOrder = 1
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 455
    Top = 117
    Width = 147
    Height = 29
    Caption = 'Sexo'
    Columns = 2
    DataField = 'SEXO'
    DataSource = DM.dsProfessores
    Items.Strings = (
      'Masculino'
      'Feminino')
    TabOrder = 3
    Values.Strings = (
      '1'
      '2')
  end
  object RxDBComboBox1: TRxDBComboBox
    Left = 16
    Top = 163
    Width = 201
    Height = 21
    Style = csDropDownList
    DataField = 'TIPO_LOGADOURO'
    DataSource = DM.dsProfessores
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'Acampamento'
      'Acesso'
      'Adro'
      'Aeroporto'
      'Alameda'
      'Alto '
      'Área'
      'Área especial'
      'Arteria'
      'Atalho'
      'Avenida'
      'Avenida Contorno'
      'Baixa'
      'Balão'
      'Balneário'
      'Beco'
      'Belvedere'
      'Bloco'
      'Bosque'
      'Boulevard'
      'Buraco '
      'Cais'
      'Calçada'
      'Caminho'
      'Campo'
      'Canal'
      'Chacara '
      'Chapadão'
      'Circular'
      'Colonia'
      'Complexo Viário'
      'Condomínio'
      'Conjunto'
      'Corredor'
      'Corrego'
      'Descida'
      'Desvio'
      'Distrito'
      'Elevada'
      'Entrada particular'
      'Entre quadra'
      'Escada'
      'Esplanada'
      'Estação'
      'Estacionamento'
      'Estádio'
      'Estância'
      'Estrada'
      'Estrada municipal'
      'Favela'
      'Fazenda'
      'Feira '
      'Ferrovia'
      'Fonte'
      'Forte'
      'Galeria'
      'Granja'
      'Habitacional'
      'Ilha'
      'Jardim'
      'Jardinete'
      'Ladeira'
      'Lago'
      'Lagoa'
      'Largo'
      'Loteamento'
      'Marina'
      'Módulo'
      'Monte'
      'Morro'
      'Núcleo'
      'Parada'
      'Paradouro'
      'Paralela'
      'Parque'
      'Passagem'
      'Passagem Subterrânea'
      'Passarela'
      'Passeio'
      'Patio '
      'Ponta'
      'Ponte'
      'Porto'
      'Praça'
      'Praça de esportes'
      'Praia'
      'Prolongamento'
      'Quadra'
      'Quinta'
      'Quintas'
      'Ramal'
      'Rampa'
      'Recanto'
      'Residêncial'
      'Reta'
      'Retiro '
      'Retorno '
      'Rodo anel'
      'Rodovia'
      'Rotatória'
      'Rótula'
      'Rua'
      'Rua de ligação'
      'Rua de Pedestre '
      'Servidão'
      'Setor'
      'Sítio'
      'Subida'
      'Terminal'
      'Travessa'
      'Travessa particular'
      'Trecho'
      'Trevo'
      'Trincheira'
      'Túnel'
      'Unidade'
      'Vala '
      'Vale'
      'Variante'
      'Vereda'
      'Via'
      'Via de acesso'
      'Via de pedestre '
      'Via Elevado'
      'Via expressa'
      'Viaduto'
      'Viela'
      'Vila'
      'Zigue-Zague')
    TabOrder = 4
    Values.Strings = (
      '645'
      '001'
      '002'
      '501'
      '004'
      '005'
      '472'
      '654'
      '465'
      '007'
      '008'
      '651'
      '015'
      '470'
      '009'
      '011'
      '010'
      '012'
      '013'
      '014'
      '496'
      '016'
      '571'
      '017'
      '023'
      '495'
      '481'
      '019'
      '479'
      '021'
      '503'
      '485'
      '020'
      '022'
      '024'
      '478'
      '027'
      '028'
      '468'
      '573'
      '652'
      '030'
      '474'
      '032'
      '564'
      '033'
      '498'
      '031'
      '650'
      '036'
      '037'
      '040'
      '038'
      '039'
      '043'
      '045'
      '046'
      '486'
      '050'
      '052'
      '473'
      '053'
      '499'
      '055'
      '054'
      '056'
      '477'
      '497'
      '060'
      '059'
      '500'
      '067'
      '471'
      '062'
      '072'
      '074'
      '502'
      '073'
      '063'
      '064'
      '483'
      '076'
      '469'
      '065'
      '504'
      '070'
      '071'
      '077'
      '079'
      '475'
      '082'
      '482'
      '087'
      '487'
      '089'
      '088'
      '091'
      '569'
      '090'
      '506'
      '476'
      '081'
      '653'
      '566'
      '094'
      '095'
      '092'
      '096'
      '098'
      '100'
      '570'
      '452'
      '099'
      '097'
      '567'
      '480'
      '565'
      '106'
      '568'
      '453'
      '101'
      '572'
      '484'
      '505'
      '646'
      '103'
      '105'
      '104'
      '108')
  end
  object DBEdit9: TDBEdit
    Left = 16
    Top = 308
    Width = 94
    Height = 21
    DataField = 'NUMEROIDENTIDADE'
    DataSource = DM.dsProfessores
    TabOrder = 13
  end
  object DBEdit14: TDBEdit
    Left = 135
    Top = 308
    Width = 55
    Height = 21
    CharCase = ecUpperCase
    DataField = 'COMPLEMENTOIDENTI'
    DataSource = DM.dsProfessores
    TabOrder = 14
  end
  object DBDateEdit2: TDBDateEdit
    Left = 210
    Top = 308
    Width = 121
    Height = 18
    DataField = 'DATAEMISSAOIDENT'
    DataSource = DM.dsProfessores
    NumGlyphs = 2
    TabOrder = 15
  end
  object DBDateEdit3: TDBDateEdit
    Left = 15
    Top = 271
    Width = 101
    Height = 18
    DataField = 'DATAADMISSAO'
    DataSource = DM.dsProfessores
    NumGlyphs = 2
    TabOrder = 10
  end
  object RxDBComboBox2: TRxDBComboBox
    Left = 16
    Top = 343
    Width = 209
    Height = 21
    Style = csDropDownList
    DataField = 'ESCOLARIDADE'
    DataSource = DM.dsProfessores
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'Fundamental Incompleto'
      'Fundamental Completo'
      'Médio com magistério conpleto'
      'Médio com outra formação completa'
      'Superior com licenciatura Completa'
      'Superior Completo sem licenciatura(com magistério)'
      'Superior Completo sem licenciatura(sem magistério)'
      '')
    TabOrder = 18
    Values.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7')
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 342
    Top = 308
    Width = 209
    Height = 20
    DropDownCount = 8
    DataField = 'ORGAOEMISSORIDENT'
    DataSource = DM.dsProfessores
    DisplayEmpty = '<<Selecione o orgão emissor>>'
    LookupField = 'COD_ORGAO'
    LookupDisplay = 'NOME'
    LookupSource = DM.dsorgao
    TabOrder = 16
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 152
    Top = 271
    Width = 225
    Height = 20
    DropDownCount = 8
    DataField = 'MUNICIPIO'
    DataSource = DM.dsProfessores
    ListStyle = lsDelimited
    LookupField = 'COD_MUNICIPIO'
    LookupDisplay = 'NOME_MUNICIPIO;UF'
    LookupDisplayIndex = 2
    LookupSource = DM.dsMunicipio
    TabOrder = 11
  end
  object DBEdit13: TDBEdit
    Left = 288
    Top = 201
    Width = 290
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = DM.dsProfessores
    TabOrder = 8
  end
  object RxDBLookupCombo6: TRxDBLookupCombo
    Left = 243
    Top = 342
    Width = 209
    Height = 20
    DropDownCount = 8
    DataField = 'UF_NAS'
    DataSource = DM.dsProfessores
    DisplayEmpty = '<<Selecione o estado de nascimento>>'
    ListStyle = lsDelimited
    LookupField = 'COD_MUNICIPIO'
    LookupDisplay = 'NOME_MUNICIPIO;UF'
    LookupDisplayIndex = 2
    LookupSource = DM.dsMunicipio
    TabOrder = 19
    OnExit = RxDBLookupCombo6Exit
  end
  object RxSplitter1: TRxSplitter
    Left = 609
    Top = 23
    Width = 167
    Height = 3
  end
  object bprofessor: TRxDBLookupCombo
    Left = 168
    Top = 54
    Width = 401
    Height = 21
    DropDownCount = 8
    DisplayEmpty = '                                            <<Busca por nome>>'
    LookupField = 'COD_PROF'
    LookupDisplay = 'NOME'
    LookupSource = DM.dsProfessores
    TabOrder = 29
  end
  object BitBtn1: TBitBtn
    Left = 632
    Top = 136
    Width = 121
    Height = 25
    Caption = 'Gerar senha e login'
    Enabled = False
    TabOrder = 30
    Visible = False
    OnClick = BitBtn1Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FFFFFFA0A0A0
      8E8E8E8A8A8A8B8B8B8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8989898989898989
      89868686929292FFFFFFFFFFFF9B9B9BFFFFFFF8F8F8F8F8F7F7F7F6F6F5F5F4
      F4F3F3F2F2F2F1F1F0F0EFEEEEEDECECECF3F3F37C7C7CFFFFFFFFFFFFA1A1A1
      FCFCFCEDECECEAE4E5E5DFE0E4DEDFE2DCDEE1DBDCDFD9DBDED8D9E1DEDDE0E0
      E0E8E8E8848484FFFFFFFFFFFFA1A1A1FEFEFEDBE0E668ACCF5CAFD05FAFD05F
      AED05EAECF5EAECF58A9CE86AAC1E3DFDDEAEAEA848484FFFFFFFFFFFFA2A2A2
      FFFFFFC8D2E029C6EF1EE6FF20E4FF21E8FF22E7FF23E4FF1CE1FF56A5CBE0D9
      D9ECECEC858585FFFFFFFFFFFFA5A5A5FFFFFFC7D5E24AC0EF52D8FF34C8FE1C
      AFE91AB6F115CFFF10CDFF59A5CCE2DBDBEEEDED878787FFFFFFFFFFFFA7A7A7
      FFFFFFC5D5E362C0EF7AD8FF5EC6FC5E6E813C8AB803BBFF01B6FF56A1CCE5DE
      DDEFEFEE888888FFFFFFFFFFFFA8A8A8FFFFFFC6D6E56CC3F08ADDFF7DCFF867
      65665B8AA312B8FF07B1FF59A2CDE6DFDEF0F0EF898989FFFFFFFFFFFFABABAB
      FFFFFFC5D6E579C9F2A2E8FF90DEFF8DAEBB7CBCDA37C6FF2CC1FF5DA4CEE5E0
      DFF2F2F18B8B8BFFFFFFFFFFFFADADADFFFFFFE0E8EE75B0D569A8CE67AAD17B
      C1EA70B9E459A5D153A0CE93B9D3ECE9E8F2F2F18C8C8CFFFFFFFFFFFFAFAFAF
      FFFFFFFAF9F9E5E3E5ABA8ACAEACAFC4C3C5C3C1C3B6B1B3B0ACAEECEBEAECEC
      ECF2F2F28E8E8EFFFFFFFFFFFFB1B1B1FFFFFFF8F8F8FAFAF9C3C1C0C5C2C1C3
      C0BFCBC7C7B9B6B5D2D1D0F1F1F1EBEBEBF4F4F4909090FFFFFFFFFFFFB3B3B3
      FFFFFFF9F9F9FAFAFAEDEDEDBCBBBBBDBBBBB9B7B7C8C6C6F1F1F1EEEEEEEDED
      EDF5F5F5909090FFFFFFFFFFFFB5B5B5FFFFFFFAFAFAF9F9F9FAFAFAF5F5F5E6
      E6E6E8E8E8F4F4F4F1F1F1EFEFEFEEEEEEF6F6F6929292FFFFFFFFFFFFB8B8B8
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFCFBFBFBFAFA
      FAFFFFFF939393FFFFFFFFFFFFB1B1B1B6B6B6B4B4B4B4B4B4B4B4B4B3B3B3B7
      B7B7B7B7B7B7B7B7B6B6B6B6B6B6B6B6B6B2B2B29F9F9FFFFFFF}
  end
  object brelacao: TBitBtn
    Left = 624
    Top = 368
    Width = 75
    Height = 25
    Cursor = crDrag
    Caption = 'Relação'
    TabOrder = 23
    OnClick = brelacaoClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFDAD8D2B8B5AAF9F8F6FFFFFFFFFFFFFFFFFFF3F3F3F1F1F1F1F1F1F1F1F1F1
      F1F1F1F1F1F1F1F1F1F1F1F7F7F6B0ADA716245F0014775D6375FFFFFFFFFFFF
      8D8D8D2A2A2A3636363434343434343434343535353737373A3A3A1515150517
      57174BDE0A47EC02113FFFFFFFD2D2D2646564C0BEC1BBBAB9BBBBB5BABABAB4
      B4B4A3A3A3939393908F8B2632563168F43361FA0119837A7C81FFFFFF6A6A6A
      D8D7D8C5D4C3AFB7BEB5B4D0B2B2B15C5C5C6060605E5E5E51504D7582A04069
      E703157E1B1A1DC3C2BFFFFFFF737373E2DBE26DB568407280413AD54D4D4CAB
      ACAFEBEAEBD7D6D5D7D6D6C7C6C54E51644646485C5C59A3A4A4FFFFFF717171
      D9DBDDE0D2BFEEAF70B981504D4D4ED5CCB3EED693FCE096F8DFA5F9ECCE9F9D
      985D5D5C5C5C5CA0A0A0FFFFFF5F5F5FC9CCCFE9D0B8FFB15DC89F685B544DF8
      D790FFF9CEFFF0BDFFE79CFFE9A8CAB7A06062656B6B6BB2B2B2FFFFFF949494
      858485F4EEE9FAB56BD5B0803A3531C4A683FBE7D0F7E4CBF6D08CEFC8949084
      77706A696E6D6DDCDCDCFFFFFFE2E2E23A3A3AC8C6C4E5AC72DBC9B987888940
      3D3A7A6551A3886C9B847070676150302286736A686A6BFFFFFFFFFFFFFFFFFF
      A1A1A1535353585857C2C2C3D4D4D5AAABAC6C6E706263657C7D7F6A6C6E3D3A
      38575655DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C6A7A7A7DFDFDFD8
      D8D8E2E2E2EAEAEAF1F1F2BCBCBCB2B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB4B4B4A4A4A4DFDFDFD5D5D5D4D4D4D2D2D2DFDFDFC0C0C09D9D
      9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B29F9F9FEFEFEFE8
      E8E8E8E8E8E8E8E8ECECECAFAFAF767676FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD8D8D8595959565656565656565656565656565656555555A4A4
      A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object bsair: TBitBtn
    Left = 715
    Top = 368
    Width = 55
    Height = 23
    Cursor = crHandPoint
    Caption = '&Sair'
    TabOrder = 24
    OnClick = bsairClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A94A5359555B5D56515160
      54536355525E4D4A60504E5F4F4D55464452403F726E6EFFFFFFFFFFFFFFFFFF
      FFFFFF828383083E5B1050731D506B2F51653E505F4B4A5357424465413E7146
      41794D47615553FFFFFFFFFFFFB2B2B2908F8F81818110476521668A2E739636
      7DA03B83A63A81A23A7B9B326D8A3246545F3A35564C4AFFFFFF949494A5A5A5
      E3E2E24746460A3B5531789C3F82A24B8EAD5296B5569BBA5499B84C96B83761
      784A2D29514947FFFFFF646464D2D2D2FFFFFFF1EFEE626C722359744E96B75B
      9FBE60A4C263A6C365A8C45FA8C73C667A38211E453C3CFFFFFFFDFDFD888888
      AEAEAEFFFFFFFCFAF8868A8C426F8460A5C360A4C13C86B32A75A5599EBF4674
      882717163A3332FFFFFFFFFFFFFFFFFF6A6A6AD9D9D9FFFFFFF9F5F3555D6152
      95B25698B977AFD83A92D12B7BAE4A798C150D0C322F2EFFFFFFFFFFFF969696
      A7A7A7FFFFFFFAF7F5767C7F44789060A7C55698B9B4CADB94C5E73B8BBC4575
      89040202211F1FFFFFFF888888BEBEBEFFFFFFF4F2F2616C7129617D569DBE5F
      A4C160A5C35999BA5895B760A6C542768D0001011E1E1EFFFFFFA6A6A6999999
      EDEDED5553521039503880A4478AAA5498B65B9FBD5EA2C05DA1BF589FBE386C
      850101011C1C1CFFFFFFFFFFFFC4C4C48484839C9C9C1541592A7195377B9C42
      86A7498EAE4D92B24B90B0458DAF2C627C0101010F0F0FFFFFFFFFFFFFFFFFFF
      FFFFFFB7B7B7093046185A7C2361822C6A8A2F6C8A316C892F6A882963801B47
      5F0102030F0F0FFFFFFFFFFFFFFFFFFFFFFFFFD7D7D77E80817E81828385868F
      91928F90919193949C9E9E9C9D9E9E9F9FA0A0A0B0B0B0FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 412
    Width = 784
    Height = 149
    DataSource = DM.dsGradePorfessor
    TabOrder = 31
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnExit = DBGrid1Exit
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SERIE'
        Title.Caption = 'Série'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TURMA'
        Title.Caption = 'Turma'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nomedisciplina'
        Title.Caption = 'Disciplina'
        Width = 262
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SETOR'
        Title.Caption = 'Setor'
        Width = 69
        Visible = True
      end>
  end
  object bfrentes: TBitBtn
    Left = 496
    Top = 368
    Width = 113
    Height = 25
    Cursor = crHandPoint
    Caption = 'Cadastrar Setores'
    TabOrder = 21
    OnClick = bfrentesClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FFFFFFA0A0A0
      8E8E8E8A8B8D8B8C8C8A8B8C8A8B8C8A8B8C8A8B8C8A8B8C8A8B8C898A8B898A
      8B868686929292FFFFFFFFFFFF9B9B9BFFFFFFF8F7F7F6F5F2F5F3F1F4F3F1F2
      F1EFF0EEEDEFEEECEEECEBEDEDEDECECEDF3F3F37C7C7CFFFFFFFFFFFFA0A2A5
      FDF0DFEEA84CECAD5FE9AB5FE4A151E1A058DFA363DB9D5CD79657CD803BCC8A
      50E8E5E2848485FFFFFFFFFFFFA1A4A8FDEBD1F09217EF9C36EA9631E6902CDF
      8117DB7E1BD77A19D07012C55800C56714E8E4E1848687FFFFFFFFFFFFA2A5A8
      FEEBD2F19D2FEFA549EBA044E7973CDC7D12D67001D06700CA6200C65C00C66C
      1DE9E5E3868788FFFFFFFFFFFFA5A8ABFFECD3F19927EFA03EEB9936E79638E2
      8F35DB801ED2700BCD6C0CC8640CC66C1EEAE6E4888889FFFFFFFFFFFFA7A9AD
      FFEDD4F19B2AEE9C36EB9C3DE7983DE18C2CDF903CDD9042DA8F47D17D32C76D
      1DECE7E588898BFFFFFFFFFFFFA8ABAFFFEED6F19824EE9E3BEA9835E69435E2
      8F33DF8E38DB8B39D88B40CA6910C56A19EDE9E68A8B8CFFFFFFFFFFFFABAEB1
      FFEFD6F08F11ED962BE99125E48C24E0841FDC8425D87E24D47E2AC86003C465
      11EEEAE78C8C8EFFFFFFFFFFFFADAEAFFFFAF0F3C993F0C48EECC18CEABF8DE7
      BD8DE4B98CE0B487DDB287DAAF88DAB493F0EFED8C8D8DFFFFFFFFFFFFAFAFAF
      FFFFFFF9FFFFF8FFFFF6FFFFF5FFFFF4FFFFF3FFFFF2FFFFF1FEFFF0FDFFEEFA
      FFF3F3F38D8D8DFFFFFFFFFFFFB1B2B5FFF8EFE9B67CE6B075E4B076E2AC74E0
      AB74DEA976DDAA78DAA777D7A376D9AB84F3F1F0909091FFFFFFFFFFFFB4B6BA
      FFEED7DF8620DF892CDD8629DC8932D9852FD06E0CC65500C45500BE4E00C462
      0DF3EFEC919394FFFFFFFFFFFFB5B8BBFFF2DFE08B2ADD8322DA801ED87F21D5
      7C20D07419CC6B0FC9690EC5620EC9742BF5F1EF939495FFFFFFFFFFFFB8B8B8
      FFFFFFFFFBF1FFFAF0FFF9EFFFF7EEFDF5ECFCF4EBFBF3ECF9F1EAF7EFE9F7F0
      EAFFFFFF939393FFFFFFFFFFFFB1B1B1B6B6B6B5B7B9B5B7B9B4B6B9B4B6B8B8
      BABCB8BABCB8B9BBB7B9BBB7B9BAB7B9BAB2B3B39F9F9FFFFFFF}
  end
  object dbcEstadoid: TDBComboBox
    Left = 560
    Top = 308
    Width = 65
    Height = 21
    DataField = 'UFIDENTIDADE'
    DataSource = DM.dsProfessores
    ItemHeight = 13
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'GO'
      'ES'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR '
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SP'
      'SC'
      'SE'
      'TO')
    TabOrder = 17
  end
  object DBEdit6: TDBEdit
    Left = 16
    Top = 235
    Width = 424
    Height = 21
    CharCase = ecUpperCase
    DataField = 'EMAIL'
    DataSource = DM.dsProfessores
    TabOrder = 9
  end
  object FS: TFormStorage
    StoredValues = <>
    Left = 80
    Top = 65520
  end
end
