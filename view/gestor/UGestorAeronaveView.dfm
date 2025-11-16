object FormGestorAeronaves: TFormGestorAeronaves
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormGestorAeronaves'
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
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 944
    Height = 576
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object cardGestorAeronave: TCardPanel
      Left = 0
      Top = 0
      Width = 944
      Height = 576
      Align = alClient
      ActiveCard = cardMainAeronave
      BevelOuter = bvNone
      Caption = 'cardGestorAeronave'
      TabOrder = 0
      object cardMainAeronave: TCard
        Left = 0
        Top = 0
        Width = 944
        Height = 576
        Caption = 'cardMain'
        CardIndex = 0
        TabOrder = 0
        object pnlLateral: TPanel
          Left = 878
          Top = 0
          Width = 66
          Height = 576
          Align = alRight
          BevelOuter = bvNone
          Color = 6310948
          ParentBackground = False
          TabOrder = 0
          object pnlCadastrar: TPanel
            Left = 0
            Top = 0
            Width = 66
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            Color = 6310948
            ParentBackground = False
            TabOrder = 0
            object imgCadastrarGreen: TImage
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 66
              Height = 41
              Cursor = crHandPoint
              Hint = 'Cadastrar funcion'#225'rio'
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              Center = True
              ParentShowHint = False
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
                000001DD4944415478DAC5953B4F024110C777CE47811813B5B03070F1153556
                6AE0BE05A81135D15A0F4BDF95B113A195D3DE273E829F42206265881A152EB1
                21510B35161A18E748440E04048E30CD6677E7E6B7FBFFDFEE022B73404501BD
                579EDA8F8F972186710B22F403C356651C193C02E0257DEED5D53579437DB6CF
                82018673F70807B041196D399788788F1CB7289B664EFF07F078AA78C3B38366
                E60A910219BA64537489C15A3C2780F749AE428BA7403664B37D292B20210B07
                C7C514FF552C3E240BB3DE0C40C2D0F7A71003682F054088B0AEAEB9FBC7F824
                800F6C8D11FE20D7A711B398C8E7FD12E6CAA3BFCD1636DB8FD400BFB44FCDB8
                16005AE86E44B04FAA0046BFFB1618746A01406437B22076A701A437EAE8B315
                CD167FC168E05D368BF5E504BC12A0410DF0B96F00A04B230FAEC9831E1580F7
                BBF7A83BA191073BE4C1541A40B25173A80500908D8605F1580518B8D8AE798A
                C54334D0C14A09640F3A7D534FC64153C218D81A06C4931201D688209E257793
                3E4FE7C149E761BEA8DAC81CA4FDB24AAECCAC55CE186859A78985C2164E37A9
                29BA92F7BA4EEEC4B76965C039F379426EDF91A9F3A9B2FC0BA08462FC4B2C66
                A5AD5B942E02249E4CF2E9919A2049E96DACE6CE8283D35FD96A54F6D1D722BE
                01824ECF1974353C380000000049454E44AE426082}
              ShowHint = True
              OnMouseEnter = imgCadastrarGreenMouseEnter
              ExplicitLeft = 10
              ExplicitTop = 6
              ExplicitWidth = 56
              ExplicitHeight = 35
            end
            object imgCadastrarWhite: TImage
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 66
              Height = 41
              Cursor = crHandPoint
              Hint = 'Cadastrar funcion'#225'rio'
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              Center = True
              ParentShowHint = False
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
                000001524944415478DAC5955B4E023114865B893E69D8804FDE02AFB8104123
                6AA2AB50447620C832BC4634B0107D3462BCBCB802F50913C7AFA163C6622D33
                53C249FEFCC9CCE9FFD136C39162C425C70A0882600A2BA1155440B3FAD52BBA
                456D2529652F3680F035AC81E61C3FF209ED03B91E0A407006ABA3DD98A7D144
                55405F2E40334178580D00552B401F4B2B6178582520ED0180BED03B349F12F0
                8272E1C547011BD8F97F2B5924756FE0809469BD340167D8A627C009ADDB26E0
                015BF404E8D29A3301EFD8B42DD45616D807CB664609786359D60474B1254F47
                744F6BDE049C625B9E00C7B4EE98803276E109B04E6BCB044C8AFE87B620D2D5
                33CA0F7C681AB28A5DA5041409EFFCECDA7C0BE408DB4B185E27FC20FAE02FC0
                0476882A31C3D5ECA839FFAE23A022A676E3BA9347B5E3E8B10C05D01075F10A
                A446E6B2F83D326F447F647608FFB4658C77E8FBA86F3F349019BF92F8B80000
                000049454E44AE426082}
              ShowHint = True
              Visible = False
              OnClick = imgCadastrarWhiteClick
              OnMouseLeave = imgCadastrarWhiteMouseLeave
              ExplicitLeft = 10
              ExplicitTop = 6
              ExplicitWidth = 56
              ExplicitHeight = 35
            end
          end
          object pnlEditar: TPanel
            Left = 0
            Top = 41
            Width = 66
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            Color = 6310948
            ParentBackground = False
            TabOrder = 1
            object imgEditarYellow: TImage
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 66
              Height = 41
              Cursor = crHandPoint
              Hint = 'Editar funcion'#225'rio selecionado'
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              Center = True
              ParentShowHint = False
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
                000001054944415478DAD5D3310E82301480E1F70C466F2078059D9C61F00E46
                0707BD856E62E2A0F72031F11AC0ECE4198A4720549F25C65805B5963AD889D0
                F07F4D4B117E3CF02F802C747C406AD6DD646E1CC8E388B0C89F0968F38C5402
                D2B8D5AD516D2F22D6ED1D112CEB1EF32B03228462E5C4A3F648AC3C78856801
                3C746684D0B33236C63EF02CB60740B8BD23E45B6EB2D402F2B8F86A7DDD73D8
                15115ADDE25F033CB2C561A22FBF13DB11588C4D7108A7346C751ADEF120CF2B
                0365F107C465137126E7E7392540DE9652A0E4F75406AAC43F02F225D289BF05
                4CC45F02A6E2A580C97801F814976FA816C023874CC6BF00F4E28A807E5C01A8
                162F00BF18FF0F5C00B5669A19F1B345480000000049454E44AE426082}
              ShowHint = True
              OnMouseEnter = imgEditarYellowMouseEnter
              ExplicitLeft = 10
              ExplicitTop = 6
              ExplicitWidth = 56
              ExplicitHeight = 35
            end
            object imgEditarWhite: TImage
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 66
              Height = 41
              Cursor = crHandPoint
              Hint = 'Editar funcion'#225'rio selecionado'
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              Center = True
              ParentShowHint = False
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
                000000D64944415478DAD593410A02310C450DB8F02EBAF22C820B177A0BDD99
                0117CE3D04C1CBB8F2366AFD031542A7D534ED2C2650D224F01EB4842603078D
                42E09C63A419111DAA0B3CFCE8CB36941409005F20DD71A6A2DD40C2C502C0C1
                2124B7467949494C0240F7484B9C0D404FD42BDCAF42C2E8372681879F7D798B
                484E5F78B60090EE33396877CFB303F485F91CF921876A41022E255BC0DFE140
                25089E25166D6C07548212F85F41B044D9F09F821AF0A4A0163C2AA809EF0914
                70964B6411B89AF01C8109AE1598E11A4111BC271822C62FF8002A607319CA8A
                AB650000000049454E44AE426082}
              ShowHint = True
              Visible = False
              OnClick = imgEditarWhiteClick
              OnMouseLeave = imgEditarWhiteMouseLeave
              ExplicitTop = -1
            end
          end
        end
        object pnlMainFrame: TPanel
          Left = 0
          Top = 0
          Width = 878
          Height = 576
          Align = alClient
          BevelOuter = bvNone
          Color = 15791343
          ParentBackground = False
          TabOrder = 1
          object DBGridAeronaves: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 81
            Width = 868
            Height = 490
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alClient
            BorderStyle = bsNone
            Color = 15791343
            DrawingStyle = gdsClassic
            FixedColor = 6310948
            GradientEndColor = 6310948
            GradientStartColor = 4733212
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            StyleElements = [seBorder]
            Columns = <
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'id'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'ID'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI Semibold'
                Title.Font.Style = [fsBold]
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'fabricante'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'Fabricante'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI Semibold'
                Title.Font.Style = [fsBold]
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'modelo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'Modelo'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI Semibold'
                Title.Font.Style = [fsBold]
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'passageirosMax'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'M'#225'x. Passageiros'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI Semibold'
                Title.Font.Style = [fsBold]
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pilotosMax'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'M'#225'x. Pilotos'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI Semibold'
                Title.Font.Style = [fsBold]
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'comissariosMax'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'M'#225'x. Comiss'#225'rios'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI Semibold'
                Title.Font.Style = [fsBold]
                Width = 150
                Visible = True
              end>
          end
          object pnlHeader: TPanel
            Left = 0
            Top = 0
            Width = 878
            Height = 81
            Align = alTop
            BevelOuter = bvNone
            Color = 15791343
            ParentBackground = False
            TabOrder = 1
            object pnlSearch: TPanel
              AlignWithMargins = True
              Left = 60
              Top = 25
              Width = 758
              Height = 31
              Margins.Left = 60
              Margins.Top = 25
              Margins.Right = 60
              Margins.Bottom = 25
              Align = alClient
              BevelOuter = bvNone
              Color = 15791343
              ParentBackground = False
              TabOrder = 0
              object imgSearch: TImage
                AlignWithMargins = True
                Left = 726
                Top = 3
                Width = 32
                Height = 22
                Cursor = crHandPoint
                Margins.Left = 0
                Margins.Right = 0
                Align = alRight
                Center = True
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
                  00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
                  000002804944415478DACD944D48146118C79FE7DD2571EDD0553A68EE6EE4A5
                  2F4A4482E820B5BB9306D12D9D51A13C5497EDD00744104150114997346C6C0B
                  02214A664D09A228B4BA180551B66341A2141151EC16E6CCD3DF4CB0B6662751
                  E885E165DE79DEFFEFF91CA6055EFC5F012A62CDEB9472B7094B25138744649C
                  48EEB0E35CCFF45DF934674034D1B8544875C03A264213CC324CC29F85A91C02
                  A500BD27E683B6655EF867C0724D5FE110DF66A162BC1E25E7DBC5D9DE2ED38C
                  F54AE43833D7E2F574C632F7FB06ACACDD59922B0A0CC1EB12D77537BDBA991A
                  FE5BAA239A71127B92845A3269B3D31720ACE98791EB63E2D206BBD71C28102C
                  87137A3F1457F3E46464264A6F40C21881C533E456F359AB2A61F550481A6DAB
                  2BE509288F37970595FB1A05DC6DA7BBDAFD007EA66A0C805E005A3C0191AD7A
                  353A6510F9DF62A7CD7E9F80A9A80799E9238A1DF30444134DABD0EF8FD9A5ED
                  2F7BCD6B7E01114D7F2A44CF11C10E4FC054076517053F10CB19181FF0235E56
                  AF2F093AF40EB22750B7239E801FE16A8645226B725C141DB7DA7385D3A32731
                  0FA748396B333DA9A1C280B85183A9BD87903B50E8562FDB68BCA1D255810770
                  E82E6CEB66CE0B4D32BA42BF8FAD06DD74BE64C2493EB975399B9FF7A68DF827
                  5D85234E50A9AA173D9D637E0053E26DD8F6E0F20026B45A98DFE23CC5248F5C
                  929C222EC3F77A9C6D8603C398F6BADFA79D7D889FCB585DFBC25A03DA561DC2
                  8D5A4C77D18C21BCB6F19FEAF81ACAB68D76777FC913F2233EAD33BD4AB55DA1
                  626722CC0167310502A3F60DF38D678EF3C58DB3D8F7E269C7B0B4CE169FCB9A
                  0D9877F15F00150923AE98D27F4ACB7C4540155A636CC4BAD4375FE279808558
                  0B0EF80EAC181728D666FBC20000000049454E44AE426082}
                ExplicitLeft = 864
                ExplicitWidth = 20
                ExplicitHeight = 75
              end
              object edtSearch: TEdit
                AlignWithMargins = True
                Left = 0
                Top = 0
                Width = 726
                Height = 28
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alClient
                BorderStyle = bsNone
                Color = 15791343
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = 20
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                TextHint = ' Pesquise por ID ou Modelo'
                OnChange = edtSearchChange
              end
              object pnlDiv1: TPanel
                AlignWithMargins = True
                Left = 0
                Top = 28
                Width = 758
                Height = 3
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alBottom
                BevelOuter = bvNone
                Color = 6310948
                ParentBackground = False
                TabOrder = 1
              end
            end
          end
        end
      end
      object cardAddOrUpdateAeronave: TCard
        Left = 0
        Top = 0
        Width = 944
        Height = 576
        Caption = 'cardAddOrUpdate'
        CardIndex = 1
        Color = 15791343
        ParentBackground = False
        TabOrder = 1
        object pnlFooter: TPanel
          Left = 0
          Top = 512
          Width = 944
          Height = 64
          Align = alBottom
          BevelOuter = bvNone
          Color = 6310948
          ParentBackground = False
          TabOrder = 2
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
          end
          object btnVoltar: TPanel
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
            Caption = 'Voltar'
            Color = 15791343
            Font.Charset = ANSI_CHARSET
            Font.Color = 6310948
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            StyleElements = [seClient, seBorder]
            OnClick = btnVoltarClick
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
            StyleElements = [seClient, seBorder]
            OnClick = btnSalvarClick
          end
        end
        object edtComissariosMax: TEdit
          AlignWithMargins = True
          Left = 70
          Top = 319
          Width = 804
          Height = 28
          Margins.Left = 70
          Margins.Top = 10
          Margins.Right = 70
          Margins.Bottom = 0
          Align = alTop
          BorderStyle = bsNone
          Color = 15791343
          Font.Charset = GB2312_CHARSET
          Font.Color = clGray
          Font.Height = 20
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 1
          TextHint = ' M'#225'ximo de comiss'#225'rios'
          StyleElements = [seClient, seBorder]
        end
        object edtModelo: TEdit
          AlignWithMargins = True
          Left = 70
          Top = 196
          Width = 804
          Height = 28
          Margins.Left = 70
          Margins.Top = 10
          Margins.Right = 70
          Margins.Bottom = 0
          Align = alTop
          BorderStyle = bsNone
          Color = 15791343
          Font.Charset = GB2312_CHARSET
          Font.Color = clGray
          Font.Height = 20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = ' Modelo'
          StyleElements = [seClient, seBorder]
        end
        object pnlDivComissariosMax: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 347
          Width = 804
          Height = 3
          Margins.Left = 70
          Margins.Top = 0
          Margins.Right = 70
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          Color = 6310948
          ParentBackground = False
          TabOrder = 3
        end
        object pnlDivModelo: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 224
          Width = 804
          Height = 3
          Margins.Left = 70
          Margins.Top = 0
          Margins.Right = 70
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          Color = 6310948
          ParentBackground = False
          TabOrder = 4
        end
        object pnlDivFabricante: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 183
          Width = 804
          Height = 3
          Margins.Left = 70
          Margins.Top = 0
          Margins.Right = 70
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          Color = 6310948
          ParentBackground = False
          TabOrder = 5
        end
        object edtPilotosMax: TEdit
          AlignWithMargins = True
          Left = 70
          Top = 278
          Width = 804
          Height = 28
          Margins.Left = 70
          Margins.Top = 10
          Margins.Right = 70
          Margins.Bottom = 0
          Align = alTop
          BorderStyle = bsNone
          Color = 15791343
          Font.Charset = GB2312_CHARSET
          Font.Color = clGray
          Font.Height = 20
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 6
          TextHint = ' M'#225'ximo de pilotos'
          StyleElements = [seClient, seBorder]
        end
        object pnlDivPilotosMax: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 306
          Width = 804
          Height = 3
          Margins.Left = 70
          Margins.Top = 0
          Margins.Right = 70
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          Color = 6310948
          ParentBackground = False
          TabOrder = 7
        end
        object edtPassageirosMax: TEdit
          AlignWithMargins = True
          Left = 70
          Top = 237
          Width = 804
          Height = 28
          Margins.Left = 70
          Margins.Top = 10
          Margins.Right = 70
          Margins.Bottom = 0
          Align = alTop
          BorderStyle = bsNone
          Color = 15791343
          Font.Charset = GB2312_CHARSET
          Font.Color = clGray
          Font.Height = 20
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 8
          TextHint = ' M'#225'ximo de passageiros'
          StyleElements = [seClient, seBorder]
        end
        object pnlDivPassageirosMax: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 265
          Width = 804
          Height = 3
          Margins.Left = 70
          Margins.Top = 0
          Margins.Right = 70
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          Color = 6310948
          ParentBackground = False
          TabOrder = 9
        end
        object edtFabricante: TEdit
          AlignWithMargins = True
          Left = 70
          Top = 155
          Width = 804
          Height = 28
          Margins.Left = 70
          Margins.Top = 155
          Margins.Right = 70
          Margins.Bottom = 0
          Align = alTop
          BorderStyle = bsNone
          Color = 15791343
          Font.Charset = GB2312_CHARSET
          Font.Color = clGray
          Font.Height = 20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          TextHint = ' Fabricante'
          StyleElements = [seClient, seBorder]
        end
      end
    end
  end
end
