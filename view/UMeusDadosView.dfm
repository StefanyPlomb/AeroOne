object FormMeusDados: TFormMeusDados
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormMeusDados'
  ClientHeight = 576
  ClientWidth = 944
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object pnlMainn: TPanel
    Left = 0
    Top = 0
    Width = 944
    Height = 576
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlForm: TPanel
      AlignWithMargins = True
      Left = 8
      Top = 0
      Width = 928
      Height = 512
      Margins.Left = 8
      Margins.Top = 0
      Margins.Right = 8
      Margins.Bottom = 0
      Align = alClient
      BevelOuter = bvNone
      Color = 15791343
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 16
      object edtCidade: TEdit
        AlignWithMargins = True
        Left = 264
        Top = 308
        Width = 235
        Height = 28
        Margins.Left = 70
        Margins.Top = 120
        Margins.Right = 70
        Margins.Bottom = 0
        BorderStyle = bsNone
        Color = 15791343
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clGray
        Font.Height = 20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        Text = ' Cidade'
        TextHint = ' Cidade'
        StyleElements = [seClient, seBorder]
      end
      object edtBairro: TEdit
        AlignWithMargins = True
        Left = 0
        Top = 308
        Width = 235
        Height = 28
        Margins.Left = 70
        Margins.Top = 120
        Margins.Right = 70
        Margins.Bottom = 0
        BorderStyle = bsNone
        Color = 15791343
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clGray
        Font.Height = 20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        Text = ' Bairro'
        TextHint = ' Bairro'
        StyleElements = [seClient, seBorder]
      end
      object edtRua: TEdit
        AlignWithMargins = True
        Left = 264
        Top = 260
        Width = 672
        Height = 28
        Margins.Left = 70
        Margins.Top = 120
        Margins.Right = 70
        Margins.Bottom = 0
        BorderStyle = bsNone
        Color = 15791343
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clGray
        Font.Height = 20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Text = ' Rua'
        TextHint = ' Rua'
        StyleElements = [seClient, seBorder]
      end
      object edtCEP: TMaskEdit
        AlignWithMargins = True
        Left = 0
        Top = 260
        Width = 235
        Height = 28
        Margins.Left = 70
        Margins.Top = 10
        Margins.Right = 70
        Margins.Bottom = 0
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = 15791343
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = 20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Text = ''
        TextHint = ' CEP'
        OnEnter = edtCEPEnter
        OnExit = edtCEPExit
      end
      object edtNome: TEdit
        AlignWithMargins = True
        Left = 0
        Top = 46
        Width = 235
        Height = 28
        Margins.Left = 70
        Margins.Top = 120
        Margins.Right = 70
        Margins.Bottom = 0
        BorderStyle = bsNone
        Color = 15791343
        Font.Charset = GB2312_CHARSET
        Font.Color = clGray
        Font.Height = 20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TextHint = ' Nome'
        StyleElements = [seClient, seBorder]
      end
      object pnlDivNome: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 74
        Width = 235
        Height = 3
        Margins.Left = 70
        Margins.Top = 0
        Margins.Right = 70
        Margins.Bottom = 0
        BevelOuter = bvNone
        Color = 6310948
        ParentBackground = False
        TabOrder = 12
      end
      object pnlHeader: TPanel
        Left = 0
        Top = 0
        Width = 928
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        Color = 15791343
        ParentBackground = False
        TabOrder = 13
        object Panel3: TPanel
          AlignWithMargins = True
          Left = 574
          Top = 5
          Width = 117
          Height = 39
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alLeft
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 'Documentos'
          Color = 15791343
          Font.Charset = ANSI_CHARSET
          Font.Color = 6310948
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          StyleElements = [seClient, seBorder]
        end
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 5
          Width = 564
          Height = 39
          Margins.Left = 0
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alLeft
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 'Informa'#231#245'es Pessoais'
          Color = 15791343
          Font.Charset = ANSI_CHARSET
          Font.Color = 6310948
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          StyleElements = [seClient, seBorder]
        end
      end
      object pnlEndereco: TPanel
        Left = 0
        Top = 210
        Width = 944
        Height = 49
        BevelOuter = bvNone
        Color = 15791343
        ParentBackground = False
        TabOrder = 14
        object imgEnderecoAlerta: TImage
          AlignWithMargins = True
          Left = 107
          Top = 2
          Width = 20
          Height = 47
          Hint = 'Nenhum endere'#231'o cadastrado'
          Margins.Left = 0
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Center = True
          ParentShowHint = False
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
            00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
            0000016C4944415478DA6364A031601CB5806A16FC3FC3C0CAF0856D3F98C3F3
            CB91D184E137752D38C456C8F09FB10FCA2B64B4FF35816A16FC3FC620C4F09B
            ED1650B9304480E13DC37F563546C72F6FA863C141B6A940A559A882FFA7323A
            FCCAA1D882FF07D8341918192F01992C68527F19FEFF336474F87D99520B7600
            2D7007B133DA74191899FE334CAFB802F3C55EA02F5CC8B60018B13EC088DD0C
            E3E776EB303031FE679858721559950F30C2B7926C012459B25F06AA50878915
            4FD00272FF33F4145C4756798741F89736A30EC32FD22C404996105039450318
            5A0C0C6DD937D055E34CB6582DC04896505037530D18440C0C0D69B7D034E04E
            B6D82DC0962C81A065AE2AD807D549B7B168C29E6C312CC0932C0901ACC9169B
            05F064890EA6AE9607D3D9A10FB15B8125D9A258809E2CD1413D300E40A031FD
            16036E809A6C512D38C80EF29E0E8941830EAE30DAFFD4C56101A8386674A0CC
            FCFF07803E70C46A012DC0A805040100EB2E8E196D57E0720000000049454E44
            AE426082}
          ShowHint = True
          Visible = False
          ExplicitLeft = 88
          ExplicitTop = 0
          ExplicitHeight = 49
        end
        object imgEnderecoExcluir: TImage
          AlignWithMargins = True
          Left = 87
          Top = 2
          Width = 20
          Height = 47
          Hint = 'Nenhum endere'#231'o cadastrado'
          Margins.Left = 0
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Center = True
          ParentShowHint = False
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000140000
            001408060000008D891D0D000000097048597300000B1300000B1301009A9C18
            000001134944415478DA6364A03260A4B9815339F94CB9BE7FBA9CC8C0F0039F
            C6F90C0C1CDF38F974B3BF7F3A8DD3C069DCFC058C8C8CFDFFFFFF3FF48F8BCD
            3BE7F5EB2FD80CEB6590E1E4E2F9B209C874F9CFC05899F5E57D078681209731
            31339D82F1FF3330EC65FEC2E997CEF0FC1BB261331924B9FEF27CDF04D4E80C
            13FBF7F79F19CCA57003415EF8CE23B0055921BAA1D80C03A9E1FCF2C1071644
            285E46F60A5CF0FFFFC37FB9D8BC585FB3FCC3300C18343C3C1C5E712F5F7EC5
            1929B85C01558CD3F5380DC4E95224802FD270A6435C86124A01380DC4E675E4
            3025C9409C861161286D23055BB8C1C2ECE76BF6BFB8E4905D4ABB844DF5AC07
            02C885037A0EC01534380B07649752ADF8A206A0BA81006B15E3153C54FAFB00
            00000049454E44AE426082}
          ShowHint = True
          Visible = False
          ExplicitLeft = 88
          ExplicitTop = 0
          ExplicitHeight = 49
        end
        object pnlEnderecoText: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 5
          Width = 82
          Height = 39
          Margins.Left = 0
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alLeft
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 'Endere'#231'o'
          Color = 15791343
          Font.Charset = ANSI_CHARSET
          Font.Color = 6310948
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          StyleElements = [seClient, seBorder]
        end
      end
      object pnlDivCPF: TPanel
        AlignWithMargins = True
        Left = 574
        Top = 74
        Width = 235
        Height = 3
        Margins.Left = 70
        Margins.Top = 0
        Margins.Right = 70
        Margins.Bottom = 0
        BevelOuter = bvNone
        Color = 6310948
        ParentBackground = False
        TabOrder = 15
      end
      object pnlDivCEP: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 287
        Width = 235
        Height = 3
        Margins.Left = 70
        Margins.Top = 0
        Margins.Right = 70
        Margins.Bottom = 0
        BevelOuter = bvNone
        Color = 6310948
        ParentBackground = False
        TabOrder = 16
      end
      object edtUF: TEdit
        AlignWithMargins = True
        Left = 528
        Top = 308
        Width = 84
        Height = 28
        Margins.Left = 70
        Margins.Top = 120
        Margins.Right = 70
        Margins.Bottom = 0
        BorderStyle = bsNone
        Color = 15791343
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clGray
        Font.Height = 20
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        TabOrder = 10
        Text = ' UF'
        TextHint = ' UF'
        StyleElements = [seClient, seBorder]
      end
      object pnlDivBairro: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 335
        Width = 235
        Height = 3
        Margins.Left = 70
        Margins.Top = 0
        Margins.Right = 70
        Margins.Bottom = 0
        BevelOuter = bvNone
        Color = 6310948
        ParentBackground = False
        TabOrder = 17
      end
      object pnlDivCidade: TPanel
        AlignWithMargins = True
        Left = 264
        Top = 335
        Width = 235
        Height = 3
        Margins.Left = 70
        Margins.Top = 0
        Margins.Right = 70
        Margins.Bottom = 0
        BevelOuter = bvNone
        Color = 6310948
        ParentBackground = False
        TabOrder = 18
      end
      object pnlDivRua: TPanel
        AlignWithMargins = True
        Left = 264
        Top = 287
        Width = 672
        Height = 3
        Margins.Left = 70
        Margins.Top = 0
        Margins.Right = 70
        Margins.Bottom = 0
        BevelOuter = bvNone
        Color = 6310948
        ParentBackground = False
        TabOrder = 19
      end
      object pnlDivUF: TPanel
        AlignWithMargins = True
        Left = 528
        Top = 335
        Width = 84
        Height = 3
        Margins.Left = 70
        Margins.Top = 0
        Margins.Right = 70
        Margins.Bottom = 0
        BevelOuter = bvNone
        Color = 6310948
        ParentBackground = False
        TabOrder = 20
      end
      object edtSenha: TEdit
        AlignWithMargins = True
        Left = 0
        Top = 142
        Width = 235
        Height = 28
        Margins.Left = 70
        Margins.Top = 120
        Margins.Right = 70
        Margins.Bottom = 0
        BorderStyle = bsNone
        Color = 15791343
        Font.Charset = GB2312_CHARSET
        Font.Color = clGray
        Font.Height = 20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TextHint = ' Senha'
        StyleElements = [seClient, seBorder]
      end
      object edtEmail: TEdit
        AlignWithMargins = True
        Left = 0
        Top = 94
        Width = 499
        Height = 28
        Margins.Left = 70
        Margins.Top = 120
        Margins.Right = 70
        Margins.Bottom = 0
        BorderStyle = bsNone
        Color = 15791343
        Font.Charset = GB2312_CHARSET
        Font.Color = clGray
        Font.Height = 20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TextHint = ' Email'
        StyleElements = [seClient, seBorder]
      end
      object pnlDivSenha: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 170
        Width = 235
        Height = 3
        Margins.Left = 70
        Margins.Top = 0
        Margins.Right = 70
        Margins.Bottom = 0
        BevelOuter = bvNone
        Color = 6310948
        ParentBackground = False
        TabOrder = 21
      end
      object pnlDivEmail: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 122
        Width = 499
        Height = 3
        Margins.Left = 70
        Margins.Top = 0
        Margins.Right = 70
        Margins.Bottom = 0
        BevelOuter = bvNone
        Color = 6310948
        ParentBackground = False
        TabOrder = 22
      end
      object pnlDivPassaporte: TPanel
        AlignWithMargins = True
        Left = 574
        Top = 122
        Width = 235
        Height = 3
        Margins.Left = 70
        Margins.Top = 0
        Margins.Right = 70
        Margins.Bottom = 0
        BevelOuter = bvNone
        Color = 6310948
        ParentBackground = False
        TabOrder = 23
      end
      object pnlDivTelefone: TPanel
        AlignWithMargins = True
        Left = 264
        Top = 74
        Width = 235
        Height = 3
        Margins.Left = 70
        Margins.Top = 0
        Margins.Right = 70
        Margins.Bottom = 0
        BevelOuter = bvNone
        Color = 6310948
        ParentBackground = False
        TabOrder = 24
      end
      object edtNumero: TEdit
        AlignWithMargins = True
        Left = 639
        Top = 308
        Width = 84
        Height = 28
        Margins.Left = 70
        Margins.Top = 120
        Margins.Right = 70
        Margins.Bottom = 0
        BorderStyle = bsNone
        Color = 15791343
        Font.Charset = GB2312_CHARSET
        Font.Color = clGray
        Font.Height = 20
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 6
        NumbersOnly = True
        ParentFont = False
        TabOrder = 11
        TextHint = ' N'#250'mero'
        StyleElements = [seClient, seBorder]
      end
      object pnlDivNumero: TPanel
        AlignWithMargins = True
        Left = 639
        Top = 335
        Width = 84
        Height = 3
        Margins.Left = 70
        Margins.Top = 0
        Margins.Right = 70
        Margins.Bottom = 0
        BevelOuter = bvNone
        Color = 6310948
        ParentBackground = False
        TabOrder = 25
      end
      object edtCPF: TMaskEdit
        AlignWithMargins = True
        Left = 574
        Top = 46
        Width = 236
        Height = 28
        Margins.Left = 70
        Margins.Top = 10
        Margins.Right = 70
        Margins.Bottom = 0
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = 15791343
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = 20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = ''
        TextHint = ' CPF'
        OnEnter = edtCPFEnter
        OnExit = edtCPFExit
      end
      object edtPassaporte: TMaskEdit
        AlignWithMargins = True
        Left = 574
        Top = 94
        Width = 236
        Height = 28
        Margins.Left = 70
        Margins.Top = 10
        Margins.Right = 70
        Margins.Bottom = 0
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = 15791343
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = 20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Text = ''
        TextHint = ' Passaporte'
        OnEnter = edtPassaporteEnter
        OnExit = edtPassaporteExit
      end
      object edtTelefone: TMaskEdit
        AlignWithMargins = True
        Left = 264
        Top = 46
        Width = 235
        Height = 28
        Margins.Left = 70
        Margins.Top = 10
        Margins.Right = 70
        Margins.Bottom = 0
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = 15791343
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = 20
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = ''
        TextHint = ' Telefone'
        OnEnter = edtTelefoneEnter
        OnExit = edtTelefoneExit
      end
    end
    object pnlFooter: TPanel
      Left = 0
      Top = 512
      Width = 944
      Height = 64
      Align = alBottom
      BevelOuter = bvNone
      Color = 6310948
      ParentBackground = False
      TabOrder = 1
      object pnlSeparador: TPanel
        Left = 435
        Top = 0
        Width = 74
        Height = 64
        Align = alClient
        BevelOuter = bvNone
        Color = 6310948
        ParentBackground = False
        TabOrder = 0
        Visible = False
      end
      object btnCancelar: TPanel
        AlignWithMargins = True
        Left = 280
        Top = 15
        Width = 155
        Height = 34
        Cursor = crHandPoint
        Margins.Left = 280
        Margins.Top = 15
        Margins.Right = 0
        Margins.Bottom = 15
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Cancelar'
        Color = 15791343
        Font.Charset = ANSI_CHARSET
        Font.Color = 6310948
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        Visible = False
        StyleElements = [seClient, seBorder]
        OnClick = btnCancelarClick
      end
      object btnSalvar: TPanel
        AlignWithMargins = True
        Left = 509
        Top = 15
        Width = 155
        Height = 34
        Cursor = crHandPoint
        Margins.Left = 0
        Margins.Top = 15
        Margins.Right = 280
        Margins.Bottom = 15
        Align = alRight
        BevelOuter = bvNone
        Caption = 'Salvar'
        Color = 15791343
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6310948
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        Visible = False
        StyleElements = [seClient, seBorder]
        OnClick = btnSalvarClick
        ExplicitLeft = 512
      end
      object btnEditar: TPanel
        AlignWithMargins = True
        Left = 815
        Top = 15
        Width = 0
        Height = 34
        Cursor = crHandPoint
        Margins.Left = 380
        Margins.Top = 15
        Margins.Right = 380
        Margins.Bottom = 15
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Editar'
        Color = 15791343
        Font.Charset = ANSI_CHARSET
        Font.Color = 6310948
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        StyleElements = [seClient, seBorder]
        OnClick = btnEditarClick
      end
    end
  end
end
