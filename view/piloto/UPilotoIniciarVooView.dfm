object FormPilotoIniciarVoo: TFormPilotoIniciarVoo
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormPilotoIniciarVoo'
  ClientHeight = 601
  ClientWidth = 944
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object pnlMainFrame: TPanel
    Left = 0
    Top = 0
    Width = 944
    Height = 601
    Align = alClient
    BevelOuter = bvNone
    Color = 15791343
    ParentBackground = False
    TabOrder = 0
    object cardPiloto: TCardPanel
      Left = 0
      Top = 0
      Width = 944
      Height = 601
      Align = alClient
      ActiveCard = cardPilotoVoos
      BevelOuter = bvNone
      Caption = 'cardPiloto'
      Color = 15791343
      ParentBackground = False
      TabOrder = 0
      object cardPilotoVoos: TCard
        Left = 0
        Top = 0
        Width = 944
        Height = 601
        Caption = 'cardPilotoVoos'
        CardIndex = 0
        Color = 15791343
        ParentBackground = False
        TabOrder = 0
        OnEnter = cardPilotoVoosEnter
        object pnlLateral: TPanel
          Left = 878
          Top = 0
          Width = 66
          Height = 601
          Align = alRight
          BevelOuter = bvNone
          Color = 6310948
          ParentBackground = False
          TabOrder = 0
          object pnlInciar: TPanel
            Left = 0
            Top = 0
            Width = 66
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            Color = 6310948
            ParentBackground = False
            TabOrder = 0
            object imgIniciarGreen: TImage
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
                000002444944415478DAC595CF4F135110C767DE36551BBDD84421D09FE1648C
                D148BADB10A3FF81261AFF044B8B090910F046BCA009D6A891D6F6C01FD00BFC
                0D4661B7404C8CF16094B4050A262817F520EC1BA725F4175BBB2D125FB29BDD
                7933F3D9F9BED9F7108E79E0FF0764324AD0B3133685A9B2734FC94420D61589
                D955ADB800F8507604E8FBF4FCC4EE77670C902610F0BCA513C1165F8F5D67DC
                C98F17EFFEB60DE8D3D3BD7B68CEF3E3553B3210C07B9070331F8EE65A02FC6F
                5FFA4051749EE96A4B6CA24DE150B4D5FE48A129A02CCB8E33CBC64B6D25AF96
                F2CE75DAADD5CA5507F019AF461028DE51F22A6538A7C65E1C0670B7F87CDB1B
                960B4A34C7F739F67EC4213DADA4CAA95F7B0FBAAB0208E8896B84F8DABA7248
                E7D568A47B39E5729A729C83C6D97CAA1943A21C28848616EA007E3D39C66FD3
                7F0354A45C4CFA41D034577BC7DA1F47F3EAE0D30640220E882376009598ECCC
                75906296B3041B02E2392D3A76640057720305CD729A404B80CF488C72C94FEC
                00BC7A3A20D02CC979DBB644DEA5E48090F0C6DE22D304879E6CB6C84414CE6B
                31BD0E003429FC46D786E51FDC4E9B021473A12DCFA1362DAFC3627218043C83
                230C4974BFA0C5660EDEEB00173E649CBF7E7C33D87AB9C3FC2B6E458457FA23
                BB9680D2082EA7BC72CFE4CD0EBBDB4C5E54506A5F42436BB546CBED7A1F22E7
                79F68ADD2F779072EBB3766FBD71A2E9815396EBE7F620B7D083A6D5F0BEC3AD
                3D75D62152B5B2D80254934C0AEFD2390DA55011C9B39F17D718AAE7439B46C7
                47E6BF1AC70EF8033B18EA19C9764CEA0000000049454E44AE426082}
              ShowHint = True
              OnMouseEnter = imgIniciarGreenMouseEnter
              ExplicitLeft = 10
              ExplicitTop = 6
              ExplicitWidth = 56
              ExplicitHeight = 35
            end
            object imgIniciarWhite: TImage
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 66
              Height = 41
              Cursor = crHandPoint
              Hint = 'Conectar/Desconectar voo '#224' comiss'#225'rio'
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
                000001924944415478DAC5956D4A03311086B30A7E5D40C556AD0710C51FB614
                D11B28E81D14110A6D514FA082564410D11F5E41CF20525A41044F20B67E9C41
                C1F51D76A221DDC4646D71E065DAEC649EF6DDD96C203A1CC1BF03C230EC46CA
                41B3D0082F37A15BA81A04C16722001AF722AD435BD0A0A1EC0DDA834E017A77
                06A0790AE90A9A7174E2015A04E4F157009A8F21D5A021C7E6325EA12C204F46
                00DB42DE4E7A369771CF906FBB744011A992B0B98C0200C72D009E9667117F43
                2F59BBE267926C56A5E474A98039A46BC3A6736C5845CD003E6FB2FA2D903CEA
                AB3AA08CB46F0328B5E35CBB62A82FA1FE500790F7451780B2671EE9029AD02E
                55505F6E0760810119174009E9C0D1A20C5BB4EC63511EE9C606506E321D1F7D
                C21C39D4D774409788C634EE09F619D31728DD32A60C29201D89BFC5069A9FC8
                2F3AA007A90E4D256C7EC7F67CC40218322AA2C36ED8B3395943E750435D341D
                D704A1E37ADAE3972FA17953BF607BE1905D6BD0B6E5DFD0B9B3039DA9B63801
                14104D575644AFCC342F37D8C67AE25766BBA2E3802F4FE596199F4ED6A00000
                000049454E44AE426082}
              ShowHint = True
              Visible = False
              OnClick = imgIniciarWhiteClick
              OnMouseLeave = imgIniciarWhiteMouseLeave
              ExplicitLeft = 3
            end
          end
        end
        object pnlMain: TPanel
          Left = 0
          Top = 0
          Width = 878
          Height = 601
          Align = alClient
          BevelOuter = bvNone
          Color = 15791343
          ParentBackground = False
          TabOrder = 1
          object pnlVoosAtribuidos: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 81
            Width = 873
            Height = 35
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 'Voos atribu'#237'dos'
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
                TextHint = ' Pesquise por ID, N'#250'mero Voo ou status'
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
          object DBGridVoos: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 116
            Width = 868
            Height = 480
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
            TabOrder = 2
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
                Width = 90
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
                Width = 40
                Visible = True
              end>
          end
        end
      end
      object cardPilotoVooEmAndamento: TCard
        Left = 0
        Top = 0
        Width = 944
        Height = 601
        Caption = 'cardPilotoVooEmAndamento'
        CardIndex = 1
        Color = 15791343
        ParentBackground = False
        TabOrder = 1
        object imgFlecha: TImage
          Left = 286
          Top = 191
          Width = 62
          Height = 186
          Center = True
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
            003208060000001E3F88B1000000097048597300000B1300000B1301009A9C18
            000002AF4944415478DAED974D68134114C7DF9B9688B9E8453DF851CDC74144
            11BC14C18B4AADD90DC1B620826637C58B2845543C081E8228B61E3C2805B5DA
            6C4145163CB4D9A282A989374F9EC490A4A078102FA2B658D266C75725609B8D
            A94299B19DFF65C27B8FE1FFDBF7667683B04484A20D28100522B914886C5220
            B24981C82605229B14886C5220B269F98084F4781BBAF8A9306ABD1661B02566
            ACF655F070219DBAF5CF2081A8B997B990A6AADE623A95140132EB01397F423F
            93A5B475F9AF4182117337207F8A888304D12302A2AA70C4EC70197F44662F16
            D3D6D5058384A2462B77E119656D7A0AC729C44582FCF4A425BA38BA0F19C085
            42DABAD610241C3176BA0C9E5362A4B86B73372493AE6888AA029A6910C85D72
            DD4353D25F17644B34BE83B92C830899E2CAC92360DB15D1E6E72BA499DD3420
            7768444E941CEB760D48301ADF061CC7900375802569A981609CBF2D8C0EE5C2
            5A623FAF945F01F85620AB6C5D8C5850330F90E1162F18048CD3D24A79A3E858
            F7E78268E629EAC40D4A7EA170D16B03CE798E9EC219AA1D00E65E870A5B85C8
            3B69B3B38B101B243FDB3D7D005F47301B687D4C67B8B366B482BA798ECAAE90
            E3AE9233342C7A8CBC14D08F6D62C0729C637E6682C7DE65ADA91A905F9D312E
            51F83C8D5107BD041DD1C6E7788B991B6106B2647A7CCA3F19FD60DBDFAB39EF
            EB5737A82B789A6E2F7D7C2495110D30ABB0165FEF22CBD219FEE8F3FBDBDFD8
            FD13BFE7EBBF1035B30F819FA4DB41A373F1422444E0D0D1B5586E1A23BB5F9B
            9B585B7EF8DEB7F9357FFA44411AB39B8068300E070B4EEAA50888507B620D34
            BB193A13D3D350DEF7DE79F0D9D36C837D30A81B03D4CE3CDD247D2240C29AB9
            87A6A2B70C65AD1EC44240AA35A23F511A7A583EFF47FE172910D9A440649302
            914D0A44362910D9A440649302914D4B06E407E7A42E420366D7910000000049
            454E44AE426082}
        end
        object pnlVoo: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 0
          Width = 934
          Height = 49
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
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
          object pnlNumeroVoo: TPanel
            AlignWithMargins = True
            Left = 73
            Top = 0
            Width = 861
            Height = 49
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Color = 15791343
            Font.Charset = ANSI_CHARSET
            Font.Color = 6310948
            Font.Height = -32
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            StyleElements = [seClient, seBorder]
          end
          object pnlVooText: TPanel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 73
            Height = 49
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 'Voo:'
            Color = 15791343
            Font.Charset = ANSI_CHARSET
            Font.Color = 6310948
            Font.Height = -32
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            StyleElements = [seClient, seBorder]
          end
        end
        object pnlBoxOrigem: TPanel
          Left = 5
          Top = 191
          Width = 281
          Height = 186
          BevelOuter = bvNone
          Color = 6310948
          ParentBackground = False
          TabOrder = 1
          object pnlFrameOrigem: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 275
            Height = 180
            Align = alClient
            AutoSize = True
            BevelOuter = bvNone
            Color = 15791343
            ParentBackground = False
            TabOrder = 0
            object pnlOrigem: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 148
              Width = 265
              Height = 32
              Margins.Left = 5
              Margins.Top = 0
              Margins.Right = 5
              Margins.Bottom = 0
              Align = alBottom
              BevelOuter = bvNone
              Caption = 'Origem'
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
              object pnlDivOrigem: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 0
                Width = 255
                Height = 3
                Margins.Left = 5
                Margins.Top = 0
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                BevelOuter = bvNone
                Color = 1051799
                ParentBackground = False
                TabOrder = 0
              end
            end
            object pnlOrigemText: TPanel
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 275
              Height = 148
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              BevelOuter = bvNone
              Color = 15791343
              Font.Charset = ANSI_CHARSET
              Font.Color = 6310948
              Font.Height = -27
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
              StyleElements = [seClient, seBorder]
            end
          end
        end
        object pnlBoxDestino: TPanel
          Left = 348
          Top = 191
          Width = 281
          Height = 186
          BevelOuter = bvNone
          Color = 6310948
          ParentBackground = False
          TabOrder = 2
          object pnlFrameDestino: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 275
            Height = 180
            Align = alClient
            AutoSize = True
            BevelOuter = bvNone
            Color = 15791343
            ParentBackground = False
            TabOrder = 0
            object pnlDestino: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 148
              Width = 265
              Height = 32
              Margins.Left = 5
              Margins.Top = 0
              Margins.Right = 5
              Margins.Bottom = 0
              Align = alBottom
              BevelOuter = bvNone
              Caption = 'Destino'
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
              object pnlDivDestino: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 0
                Width = 255
                Height = 3
                Margins.Left = 5
                Margins.Top = 0
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                BevelOuter = bvNone
                Color = 1051799
                ParentBackground = False
                TabOrder = 0
              end
            end
            object pnlDestinoText: TPanel
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 275
              Height = 148
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              BevelOuter = bvNone
              Color = 15791343
              Font.Charset = ANSI_CHARSET
              Font.Color = 6310948
              Font.Height = -27
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
              StyleElements = [seClient, seBorder]
            end
          end
        end
        object pnlFooter: TPanel
          Left = 0
          Top = 537
          Width = 944
          Height = 64
          Align = alBottom
          BevelOuter = bvNone
          Color = 6310948
          ParentBackground = False
          TabOrder = 3
          object btnFinalizar: TPanel
            AlignWithMargins = True
            Left = 380
            Top = 15
            Width = 184
            Height = 34
            Cursor = crHandPoint
            Margins.Left = 380
            Margins.Top = 15
            Margins.Right = 380
            Margins.Bottom = 15
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Finalizar'
            Color = 15791343
            Font.Charset = ANSI_CHARSET
            Font.Color = 6310948
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            StyleElements = [seClient, seBorder]
            OnClick = btnFinalizarClick
          end
        end
        object pnlDataPartida: TPanel
          AlignWithMargins = True
          Left = 650
          Top = 191
          Width = 289
          Height = 33
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Color = 15791343
          Font.Charset = ANSI_CHARSET
          Font.Color = 6310948
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 4
          StyleElements = [seClient, seBorder]
          object pnlDataPartidaText: TPanel
            AlignWithMargins = True
            Left = 145
            Top = 3
            Width = 144
            Height = 30
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Alignment = taLeftJustify
            BevelOuter = bvNone
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
          object pnlDataPartidaDisplay: TPanel
            AlignWithMargins = True
            Left = 0
            Top = 3
            Width = 145
            Height = 30
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 'Data Partida:'
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
          object pnlDivDataPartida: TPanel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 289
            Height = 3
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            BevelOuter = bvNone
            Color = 6310948
            ParentBackground = False
            TabOrder = 2
          end
        end
        object pnlHoraPartida: TPanel
          AlignWithMargins = True
          Left = 650
          Top = 242
          Width = 289
          Height = 33
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Color = 15791343
          Font.Charset = ANSI_CHARSET
          Font.Color = 6310948
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 5
          StyleElements = [seClient, seBorder]
          object pnlHoraPartidaText: TPanel
            AlignWithMargins = True
            Left = 145
            Top = 0
            Width = 144
            Height = 33
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Alignment = taLeftJustify
            BevelOuter = bvNone
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
          object pnlHoraPartidaDisplay: TPanel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 145
            Height = 33
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 'Hora Partida:'
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
        object pnlDataChegada: TPanel
          AlignWithMargins = True
          Left = 650
          Top = 292
          Width = 289
          Height = 33
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Color = 15791343
          Font.Charset = ANSI_CHARSET
          Font.Color = 6310948
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 6
          StyleElements = [seClient, seBorder]
          object pnlDataChegadaText: TPanel
            AlignWithMargins = True
            Left = 145
            Top = 0
            Width = 144
            Height = 33
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Alignment = taLeftJustify
            BevelOuter = bvNone
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
          object pnlDataChegadaDisplay: TPanel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 145
            Height = 33
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 'Data Chegada:'
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
        object pnlHoraChegada: TPanel
          AlignWithMargins = True
          Left = 650
          Top = 344
          Width = 289
          Height = 33
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Color = 15791343
          Font.Charset = ANSI_CHARSET
          Font.Color = 6310948
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 7
          StyleElements = [seClient, seBorder]
          object pnlHoraChegadaText: TPanel
            AlignWithMargins = True
            Left = 145
            Top = 0
            Width = 144
            Height = 30
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Alignment = taLeftJustify
            BevelOuter = bvNone
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
          object pnlHoraChegadaDisplay: TPanel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 145
            Height = 30
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 'Hora Chegada:'
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
          object pnlDivHoraChegada: TPanel
            AlignWithMargins = True
            Left = 0
            Top = 30
            Width = 289
            Height = 3
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alBottom
            BevelOuter = bvNone
            Color = 6310948
            ParentBackground = False
            TabOrder = 2
          end
        end
        object pnlID: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 49
          Width = 934
          Height = 16
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Color = 15791343
          Font.Charset = ANSI_CHARSET
          Font.Color = 6310948
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 8
          StyleElements = [seClient, seBorder]
          object pnlIDText: TPanel
            AlignWithMargins = True
            Left = 73
            Top = 0
            Width = 861
            Height = 16
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Color = 15791343
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -19
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            StyleElements = [seClient, seBorder]
          end
          object pnlIDDisplay: TPanel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 73
            Height = 16
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 'ID:'
            Color = 15791343
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -19
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            StyleElements = [seClient, seBorder]
          end
        end
      end
    end
  end
end
