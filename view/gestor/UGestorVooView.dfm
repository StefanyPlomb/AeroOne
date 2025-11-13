object FormGestorVoo: TFormGestorVoo
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormGestorVoo'
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
    object cardGestorVoo: TCardPanel
      Left = 0
      Top = 0
      Width = 944
      Height = 576
      Align = alClient
      ActiveCard = cardMainVoo
      BevelOuter = bvNone
      Caption = 'cardGestorVoo'
      TabOrder = 0
      object cardMainVoo: TCard
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
          Width = 897
          Height = 576
          Align = alClient
          BevelOuter = bvNone
          Color = 15791343
          ParentBackground = False
          TabOrder = 0
          object DBGridVoos: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 84
            Width = 887
            Height = 487
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alBottom
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
                FieldName = 'numeroVoo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'N'#250'mero Voo'
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
                FieldName = 'origem'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'Origem'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -16
                Title.Font.Name = 'Segoe UI Semibold'
                Title.Font.Style = [fsBold]
                Width = 240
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'destino'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'Destino'
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
                FieldName = 'dataPartida'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'Data Partida'
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
                FieldName = 'horaPartida'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'Hora Partida'
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
                FieldName = 'dataChegada'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'Data Chegada'
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
                FieldName = 'horaChegada'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6310948
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Title.Caption = 'Hora Chegada'
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
            Width = 897
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
              Width = 777
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
                Left = 745
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
                Width = 745
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
                TextHint = ' Pesquise por ID, N'#250'mero do VOO ou status'
                ExplicitWidth = 713
              end
              object pnlDiv1: TPanel
                AlignWithMargins = True
                Left = 0
                Top = 28
                Width = 777
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
          Left = 897
          Top = 0
          Width = 47
          Height = 576
          Align = alRight
          BevelOuter = bvNone
          Color = 6310948
          ParentBackground = False
          TabOrder = 1
          object imgCadastrar: TImage
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 37
            Height = 35
            Cursor = crHandPoint
            Hint = 'Cadastrar funcion'#225'rio selecionado'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alTop
            Center = True
            ParentShowHint = False
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D494844520000001A0000
              001A0806000000A94A4CCE000000097048597300000B1300000B1301009A9C18
              000001AB4944415478DACD963D3343411486F78E5687114566904E4F860C6214
              542A62C23FF083FC0461424145134188E8A97C14140A4943C95CCF99EC9D4936
              B9D9CD079333F3CE3B9BDDECB377EFEE39D753FF145EDF817CDF1FC6A650549A
              E80D3D789EF7D13588C9A53F857650020D18437E5001EDA22C50BF6D10901896
              41D38E0F7D87D2C09E9D414064F5C768C8756B7594D11AB01B2B08C804564223
              6D4282A8A038B0C750907E2725CB767D691F6C3146E698AD7D67266813DBB7AC
              38A1FDDA322E05281B06BAC4E62D13C4B43F59C6E5012D3580F43D79578D47B8
              53D0378A002B9B20A1E7943D5C411249401726288DED19033FD1AA7ED2205EB5
              476B7E8BA033D57840B600655C4072C2561C4063E8D41594C4CE7BBC750B80AE
              4CD05F1C865140953A9086E5B1C51E81724096838609924C7D609920A1FF57B0
              8CDB0074180692F62D9A6931814B0A2ACA82425390868DAB6ACAEF34A9CA0595
              A45AB7B56165620E3B51ED9709A9B652268A6647ABC237A9AAF72AEE0891C9B7
              81BC34EB7429E5EBAA5ACA25D99A475F8EB0DC1329E5471D95F22650D9C6E0E3
              444232C47D704F6CD17F9F5BDDC62FB2CF931B3FD7AB040000000049454E44AE
              426082}
            ShowHint = True
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 36
          end
          object imgStatus: TImage
            AlignWithMargins = True
            Left = 5
            Top = 85
            Width = 37
            Height = 35
            Cursor = crHandPoint
            Hint = 'Ativar/Desativar funcion'#225'rio selecionado'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alTop
            Center = True
            ParentShowHint = False
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200806000000737A7AF4000000097048597300000B1300000B1301009A9C18
              000001914944415478DAED95BF4AC350148713157474D3451D74501C7C017548
              0B52501CF4095C8AA2220E3E83B8F967E8A0CFA0A00E8AB62EA5AB08823E82E0
              9FD64154D4F85D72042962EFCD4D9325173E0EF4DE9EDF971392B84EC2CB4D05
              5281289AF8BE3F42F9705DF73A7601C25B28CFD00AD3489C2631812DCA12BC9A
              4A4425A0FA288945788359248E6213F843E21D6674241A0AD0788CB2E004F758
              A7DF14B43BC1EDC82171612B50A0E4430E661B81655B814E8AA739815E588736
              B8820C02F75602BA0BD11E4A09FA75C32313205C5D79D1343C940061DD9413A8
              11322E2FA25B18300D3716907035E6412813342A8F5F458E4C9A841B0910D445
              398761B8842C610FA6130C25D0AC702D81BAB1BFC02A3CCA7615CE90F1E5ACEA
              9705F5E87E4291BDAAADC01E65EE9F231E212539EBC9A47E5681BD795B810CE5
              D8095EAFEA4373A87E96ED275823A42667D5956FFC9AC00E7B652B01693C4139
              800ED8853C8DBF74FEDB68993C054D91307D0FE428FB4E703B3611588955A04E
              E20E81BED80544624815046E12118872A502A9C037D2289D2116CDA6F4000000
              0049454E44AE426082}
            ShowHint = True
            ExplicitLeft = 0
            ExplicitTop = 70
            ExplicitWidth = 36
          end
          object imgEditar: TImage
            AlignWithMargins = True
            Left = 5
            Top = 45
            Width = 37
            Height = 35
            Cursor = crHandPoint
            Hint = 'Editar funcion'#225'rio selecionado'
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alTop
            Center = True
            ParentShowHint = False
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
              00180806000000E0773DF8000000097048597300000B1300000B1301009A9C18
              000001264944415478DA6364A031601CF416FCFFFF5F10482D076265205E09C4
              AD8C8C8CDFA969C15A201584247412881D619650C3821420350BCDAC66A00575
              645B0034940548B1010DF906E5E700A94948E6DD02CAA9936501D0300120B50B
              88A581D81968D00D2C96EC008A7B926C01D4F0DD406C02157A0EC44E4896A402
              2937204E058A7D20C902A0667EA8CBCDD0A45E427D72159B3EA22CC0E2727400
              F2890A2C4E48B28008C341E034105B012DF8439205788205199C076217A0E1EF
              480A226A188ED3026A198ED5026A1A8E6101B50D47B1009AFD8F00B1391EF567
              80D815968948B5C08501921CA96638BA05F540AA811AC182CB821D40CA9D9A86
              A35BF00C4849A2C9832A0F0F52830597057D402A1A88CF01F171203E06C407B0
              657FB22CA015A0B90500E0D485195B81C8410000000049454E44AE426082}
            ShowHint = True
            ExplicitLeft = 0
            ExplicitTop = 35
            ExplicitWidth = 36
          end
        end
      end
      object cardAddOrUpdateVoo: TCard
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
          end
        end
        object pnlDivPassaporte: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 369
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
        object pnlDivDataDestino: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 287
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
        object edtDestino: TEdit
          AlignWithMargins = True
          Left = 70
          Top = 218
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
          TextHint = ' Destino'
          StyleElements = [seClient, seBorder]
        end
        object pnlDivDataOrigem: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 164
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
        object edtOrigem: TEdit
          AlignWithMargins = True
          Left = 70
          Top = 95
          Width = 804
          Height = 28
          Margins.Left = 70
          Margins.Top = 95
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
          TextHint = ' Origem'
          StyleElements = [seClient, seBorder]
        end
        object pnlDivDestino: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 246
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
          TabOrder = 6
        end
        object pnlDivOrigem: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 123
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
        object pnlDivHoraDestino: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 328
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
        object edtDataDestino: TMaskEdit
          AlignWithMargins = True
          Left = 70
          Top = 259
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
          TabOrder = 9
          Text = ''
          TextHint = ' Data destino'
          OnEnter = edtDataDestinoEnter
        end
        object edtPassaporte: TMaskEdit
          AlignWithMargins = True
          Left = 70
          Top = 341
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
          TabOrder = 10
          Text = ''
          TextHint = ' Piloto'
        end
        object edtHoraDestino: TMaskEdit
          AlignWithMargins = True
          Left = 70
          Top = 300
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
          TabOrder = 11
          Text = ''
          TextHint = ' Hora destino'
          OnEnter = edtHoraDestinoEnter
        end
        object edtCEP: TEdit
          AlignWithMargins = True
          Left = 70
          Top = 382
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
          TabOrder = 12
          TextHint = ' CEP'
          StyleElements = [seClient, seBorder]
        end
        object pnlDivCEP: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 410
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
        object edtDataOrigem: TMaskEdit
          AlignWithMargins = True
          Left = 70
          Top = 136
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
          TabOrder = 14
          Text = ''
          TextHint = ' Data origem'
          OnEnter = edtDataOrigemEnter
        end
        object edtHoraOrigem: TMaskEdit
          AlignWithMargins = True
          Left = 70
          Top = 177
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
          TabOrder = 15
          Text = ''
          TextHint = ' Hora origem'
          OnEnter = edtHoraOrigemEnter
        end
        object pnlDivHoraOrigem: TPanel
          AlignWithMargins = True
          Left = 70
          Top = 205
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
          TabOrder = 16
        end
      end
    end
  end
end
