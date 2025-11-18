object FormGestorFuncionario: TFormGestorFuncionario
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormGestorFuncionario'
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
    object cardGestorFuncionario: TCardPanel
      Left = 0
      Top = 0
      Width = 944
      Height = 576
      Align = alClient
      ActiveCard = cardAddOrUpdateFuncionario
      BevelOuter = bvNone
      Caption = 'cardGestorFuncionario'
      TabOrder = 0
      object cardMainFuncionarios: TCard
        Left = 0
        Top = 0
        Width = 944
        Height = 576
        Caption = 'cardMain'
        CardIndex = 0
        TabOrder = 0
        object pnlMainFrame: TPanel
          Left = 0
          Top = 0
          Width = 878
          Height = 576
          Align = alClient
          BevelOuter = bvNone
          Color = 15791343
          ParentBackground = False
          TabOrder = 0
          object DBGridFuncionarios: TDBGrid
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
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'Nome'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI Semibold'
                Title.Font.Style = [fsBold]
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'email'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'E-mail'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI Semibold'
                Title.Font.Style = [fsBold]
                Width = 270
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'telefone'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'Telefone'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI Semibold'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cargo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'Cargo'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI Semibold'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cpf'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'CPF'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI Semibold'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'passaporte'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'Passaporte'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI Semibold'
                Title.Font.Style = [fsBold]
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'status'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'Status'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI Semibold'
                Title.Font.Style = [fsBold]
                Width = 90
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
              object Image1: TImage
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
                TextHint = ' Pesquise por ID, nome ou status'
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
        object pnlLateral: TPanel
          Left = 878
          Top = 0
          Width = 66
          Height = 576
          Align = alRight
          BevelOuter = bvNone
          Color = 6310948
          ParentBackground = False
          TabOrder = 1
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
          object pnlStatus: TPanel
            Left = 0
            Top = 82
            Width = 66
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            Color = 6310948
            ParentBackground = False
            TabOrder = 1
            object imgStatusRed: TImage
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 66
              Height = 41
              Cursor = crHandPoint
              Hint = 'Ativar/Desativar funcion'#225'rio selecionado'
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
                000002B54944415478DAC5555D481451149E333FBBAB6221BD5560081185B621
                24115410BD84067BEFB64F0541901286D80F3E663E85888954F4033DF8166D3B
                E382944F913E844120226B61D00646812248C5B63BB333B76F6D5DB575DB1D69
                F1C2E59E3BE79EF39DF39DC31992CABC684B00444B4BA5A9690CA22924292513
                2D698B8B6F686C2CBDAC0F8514339DF67B54758AC261DB35408AB110113D5BFB
                CD719CA06F7858CFC849C6184033F257EC7E2D91B84FA3A3A992019281C07E59
                966756531231CDB29A68642491CDC063A5D39724A2365C1BA09FB489CE56E8FA
                A7A20009CE6B55215EC1B8EE8F6FF113BB09D1BFCFA3B2BB5BB6A6A7AF42DF8B
                8CBFD98A72BC221C8E1704C8723B01F120B83F07A3CB307EE0338CE7FFE2D90A
                044E3BB26C9010339AAA1E415DCC0D014CC63A11F900C2EEF018C65DC9C5826D
                3B6CEF41BCEED1F53B790088982CC6E278F443539443C5BAA3005D5308AE0659
                D4AED8E700CC60F01894E3D8D710FD801BE7391F9C5FC191C9FC04B2185F0FC0
                5807A21F1444F5DE4824E6D6F92FCEEB14216EC2C7055C9FA27E8FB448E4750E
                20C5791F2E37D0D3DBD1D3DF5D47CF581B9C3FCC5186EE0313DBD6020CE2D2A1
                D9760D45A34B6E014473738DE9F57E818FCA2C408FD7306EAD52C479178E5E50
                D4088A26375503C69E208B8B1067B5EA6A3F0D0D25573360AC11BC451D493AE9
                D3F58F9B01808F7AF87801F17C5E91CBB5B60620C97940166217949F6D558D7B
                E7E7675746F5460BDC1F7684D88979152D0900061F50AC7DB90F420CA3E5D8DF
                EF32B30B53B51D53A00FDCCF82F7865201D6F7B424BD044897A7AA2A2EA55284
                81B80786A7A0CA8CEC0368C977B6E3F0CA6874AE2400D1DAAA590B0B3118EF85
                31463D2905D8C9FC706E63763D5E3B418B0264EB700675E877889A71EE00D851
                64B27BD94888396434A1F9FD6FA9A7C7715DE4FFB9CA0EF01B6B2C352888B6D4
                FD0000000049454E44AE426082}
              ShowHint = True
              OnMouseEnter = imgStatusRedMouseEnter
              ExplicitLeft = 28
              ExplicitTop = 16
              ExplicitWidth = 26
              ExplicitHeight = 25
            end
            object imgStatusWhite: TImage
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 66
              Height = 41
              Cursor = crHandPoint
              Hint = 'Ativar/Desativar funcion'#225'rio selecionado'
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
                000001E34944415478DAD5954B28445118C7EF251616243B1429890C52248592
                8DA43C57945292485E598A953421218FB297E4B16127CD4294928547148AD80A
                0961FCBEEE51A7E19A995B9253BFFEB7F39DEFFBDF73E6CC774DE39787F92706
                5EAF3702A9841778865BD8324DF355C543914CD867EECD89412DB2E0335D4DB1
                2515177379BE86619824F61C8C412A72A84D1D402E451E553C1C69826670C11E
                D4103FF36B407202B201496AEA41153FFA666D08D20943700385AC3BB7355067
                BB0D1950072D3045D2E24FE74C5E29B2AC769DC7FA173B830E6414DA59346E04
                31C86D4526A09BDC912F062C9067D9DE3D64F9BB1D36C7B50FD190F099AF1B14
                201EE822381A4C71AD461B223B2FA286C7D7A01D19837482070E8ACBA5E88306
                988719EA6CEA066EA407A208DC3930902B3BAD4DC9ED8BD40DE4ED6517D118DC
                3A3090B3BF82083535409D7EDDA0D7B0EE7336813D87BFC11CD2082790499D27
                DD201B59856202A70E0DD29135A8FFF223FFD6F8B3765D81C4C18561FDF94E3E
                5BB5CDFA1C249635AB811A1C2329DAD40AC995DFAC93DE252DC2AD5EC215A881
                EF9D5E875EB51BC9498412C36AD969B00B55185C066A106658DF8064909E126A
                733AF2C1198459BD83FA355026E586F5B52A8318C8877815963795B6BE43E177
                E387F1FFAFE907FDE5BE17BEF4388A0000000049454E44AE426082}
              ShowHint = True
              Visible = False
              OnClick = imgStatusWhiteClick
              OnMouseLeave = imgStatusWhiteMouseLeave
              ExplicitTop = -1
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
            TabOrder = 2
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
      end
      object cardAddOrUpdateFuncionario: TCard
        Left = 0
        Top = 0
        Width = 944
        Height = 576
        Caption = 'cardAddOrUpdate'
        CardIndex = 1
        Color = 15791343
        ParentBackground = False
        TabOrder = 1
        OnEnter = cardAddOrUpdateFuncionarioEnter
        object pnlFooter: TPanel
          Left = 0
          Top = 512
          Width = 944
          Height = 64
          Align = alBottom
          BevelOuter = bvNone
          Color = 6310948
          ParentBackground = False
          TabOrder = 7
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
        object pnlDivPassaporte: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 394
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
          TabOrder = 8
        end
        object pnlDivCargo: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 312
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
        object edtSenha: TEdit
          AlignWithMargins = True
          Left = 70
          Top = 202
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
          TabOrder = 2
          TextHint = ' Senha'
          StyleElements = [seClient, seBorder]
        end
        object pnlDivTelefone: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 271
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
          TabOrder = 10
        end
        object edtEmail: TEdit
          AlignWithMargins = True
          Left = 70
          Top = 161
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
          TabOrder = 1
          TextHint = ' Email'
          StyleElements = [seClient, seBorder]
        end
        object pnlDivSenha: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 230
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
          TabOrder = 11
        end
        object edtNome: TEdit
          AlignWithMargins = True
          Left = 70
          Top = 120
          Width = 804
          Height = 28
          Margins.Left = 70
          Margins.Top = 120
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
          TextHint = ' Nome'
          StyleElements = [seClient, seBorder]
        end
        object pnlDivEmail: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 189
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
          TabOrder = 12
        end
        object pnlDivNome: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 148
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
          TabOrder = 13
        end
        object pnlDivCPF: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 353
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
          TabOrder = 14
        end
        object cbxCargo: TComboBox
          AlignWithMargins = True
          Left = 70
          Top = 284
          Width = 804
          Height = 28
          Margins.Left = 70
          Margins.Top = 10
          Margins.Right = 70
          Margins.Bottom = 0
          Align = alTop
          BevelEdges = []
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15791343
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = 20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          TextHint = ' Cargo'
          Items.Strings = (
            'Gestor(a)'
            'Piloto(a)'
            'Comiss'#225'rio(a)')
        end
        object edtTelefone: TMaskEdit
          AlignWithMargins = True
          Left = 70
          Top = 243
          Width = 804
          Height = 28
          Margins.Left = 70
          Margins.Top = 10
          Margins.Right = 70
          Margins.Bottom = 0
          Align = alTop
          BorderStyle = bsNone
          Color = 15791343
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = 20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = ''
          TextHint = ' Telefone'
          OnEnter = edtTelefoneEnter
          OnExit = edtTelefoneExit
        end
        object edtPassaporte: TMaskEdit
          AlignWithMargins = True
          Left = 70
          Top = 366
          Width = 804
          Height = 28
          Margins.Left = 70
          Margins.Top = 10
          Margins.Right = 70
          Margins.Bottom = 0
          Align = alTop
          BorderStyle = bsNone
          Color = 15791343
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = 20
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 6
          Text = ''
          TextHint = ' Passaporte'
        end
        object edtCPF: TMaskEdit
          AlignWithMargins = True
          Left = 70
          Top = 325
          Width = 804
          Height = 28
          Margins.Left = 70
          Margins.Top = 10
          Margins.Right = 70
          Margins.Bottom = 0
          Align = alTop
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
          TextHint = ' CPF'
          OnEnter = edtCPFEnter
          OnExit = edtCPFExit
        end
      end
    end
  end
end
