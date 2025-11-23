object FormComissarioCheckIn: TFormComissarioCheckIn
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormComissarioCheckIn'
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
  object cardComissarioCheckIn: TCardPanel
    Left = 0
    Top = 0
    Width = 944
    Height = 576
    Align = alClient
    ActiveCard = cardCheckIn
    BevelOuter = bvNone
    Caption = 'cardComissarioCheckIn'
    TabOrder = 0
    object cardVoos: TCard
      Left = 0
      Top = 0
      Width = 944
      Height = 576
      Caption = 'cardVoos'
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
            Hint = 'Fazer CheckIn para o voo selecionado'
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
            Hint = 'Fazer CheckIn para o voo selecionado'
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
            ExplicitLeft = 10
            ExplicitTop = 6
            ExplicitWidth = 56
            ExplicitHeight = 35
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
        object DBGridVoos: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 116
          Width = 868
          Height = 455
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
        object pnlVoosDisponiveis: TPanel
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
          TabOrder = 2
          StyleElements = [seClient, seBorder]
        end
      end
    end
    object cardCheckIn: TCard
      Left = 0
      Top = 0
      Width = 944
      Height = 576
      Caption = 'cardCheckIn'
      CardIndex = 1
      TabOrder = 1
      OnEnter = cardCheckInEnter
      object pnlLateralCheckIn: TPanel
        Left = 878
        Top = 0
        Width = 66
        Height = 576
        Align = alRight
        BevelOuter = bvNone
        Color = 6310948
        ParentBackground = False
        TabOrder = 0
        object pnlVoltar: TPanel
          Left = 0
          Top = 41
          Width = 66
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Color = 6310948
          ParentBackground = False
          TabOrder = 0
          object imgVoltarRed: TImage
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 66
            Height = 41
            Cursor = crHandPoint
            Hint = 'Voltar a tela de voos atribu'#237'dos'
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
              000003024944415478DAB5554D485451147EE73DE74D8CA691B68EC86523D4AA
              A86D2064CD8FCC2677B54925FF88CCA044428BC44A278B36B55109066774D210
              5C67AB82B4760611D44623D452DFBC9FDB77DF5C87F770E6395A3D18EE3D77EE
              F9BE73BE73EEBD24FDE78F76B399D5D555D94E5353CBFF8480C5628774D3BCCC
              242904F33836FBED7549D230BC27C6267D2525CF299158DA1501EBEE96F58585
              4E007561C37ECF20185BC59E3E5F4D4D3FF5F4583B1220EA32DD30C624A2F302
              6009F3515992662DC6BEF235CC0F03E92CD61B0050255CD33E45694036BF0A12
              D891CFCF4FE4C025E9916A18B7299D5ECB1B7D6D6D792610B80390961C493018
              7166E222C844A35D18FA44EE57D454EA593185845F238627C2EC5493C9FBDB08
              784133A6F9996BCE23F72793EDAE68C3E14A9A98F85188448B4687E07B1592AE
              A8BA5EBDD569E488E20686BB5C737563A39A666656854C84FFE2D8D80CB30DD1
              0DE6952B16AB40808BA226B92CC811C15B18279DD1DBE091C83011350AD93A20
              DB438F2C06793D10E49C3F953A9D2310516EF03EC7EF9C2F997C2DD61EC36E12
              FE2F4D45B92599A6AB152D45D14A13896F7CAE87C3754C965F8160138104E0CB
              B20438A1BAAADA8785111DF38F8F7F027807CC81628A8CCC5A0138A485424152
              9479BEE4B3AC2A5E33DA2AA02ECBCBD9BD2C88F43E429A76B4EB8322095A4010
              D7EAEB6B70BA3FD8049A7690A6A77F7A4B140EC749969B3D25328CCDD274FABB
              A744A24073304EE1CF4164D0B6C7226FB5EA1B609C71B76924D20949EE017459
              5D5F3F9AB74D85D679550A850E641485B76925CCEB68D37E17817DD00C6311D1
              96037408ADDAEA02D8F9A00DF38E2B78D09C5908B309513C2DA6C6F06B82DFB0
              3073D16F2310D7740AD30B429EB88AC2E2865CF190A5D771562671D9450B5E76
              42AA323C32A30E129EEA986C59B316D1177B8DE808F1EB5A922E0ACDB3E08140
              038D8CFC76E2793D38D7A0E74DD4A4C24B1EAE39F6F422F281A21E1C9773F684
              5F02087F324F00689F00DDC4F00EF6A42F9379E1F546EFEED14727D94E1EDDF4
              57047BF9FE00B61B9E28707D7BFF0000000049454E44AE426082}
            ShowHint = True
            OnMouseEnter = imgVoltarRedMouseEnter
            ExplicitLeft = 10
            ExplicitTop = 6
            ExplicitWidth = 56
            ExplicitHeight = 35
          end
          object imgVoltarWhite: TImage
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 66
            Height = 41
            Cursor = crHandPoint
            Hint = 'Voltar a tela de voos atribu'#237'dos'
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
              0000024D4944415478DAB5953B4C54511086EFD2680C8A81A536064B31914AA2
              AD952291123A6D648DBC62404CB0313E0241D9E5151AAC30760A2434D662A589
              463A4C8C893468C82244685CBFD9FD2F9E5CB88F453CC99FB977CECCFC67E6CC
              3927E5FDE7912AC7B85028A48B4EA9D4F7032120602DE23A680667C1214D6D83
              F760164C43B85A1601812B107DA01F1C8D59E43A78088620FA1D4B40F04AC473
              D02495AD6E06BC065FA53B012E823690966ECEFE21D90825D0CA5F39C147C03D
              9C7E86647A0C711F74382457DD4C8204FD4AD7C60D0CA7BC0403BF76C4847EFB
              F01BDC45A00DFDAC9A8F60D41D085283EE4704490E710BE4C129BFD35C823B88
              47AAB919AC4B6F36A3E026E8429F0D21A8422C6B4F76B27009DE22CEB9AB57F0
              71D02EB31EE69E466491D57E2C62777E8740817E79A53EBFC4E48274632023FF
              176000045B711BFB6F8A7319310FB6C011F4059F20ADD2D838CDC412BA1EBE87
              936C32A3139F1C3EF57C7F942E6D7BE613D420FCE35FCFC4277456A62709093A
              F019C5E70CDF1FA4AB46B71657227F73A34AB485FD4A648934B98868045926BA
              F6B9C97EABBEC1EE42B08BECEE79AC52D585B469B1D621C18F7BA536B572F762
              371424A895811DFF1C069D81007107CD32B58EDBFBA005B2B091C16832C90EE3
              9751293D77F57B11D865F7125C91CA4A3380433EA22C0FBCBF67C5DE8796D0CB
              4E4E765DCF382496AA5DDF765D7F91EEA457BAAE5B55733FB85DD79B6EBCA807
              E736B80BAA622A945716C3891E9C00919DF06B5EE9C96C008735657DFE4EAB7E
              16F54697FBE817CB11D54DFF44B09FF1073A450628E9C0B3560000000049454E
              44AE426082}
            ShowHint = True
            Visible = False
            OnClick = imgVoltarWhiteClick
            OnMouseLeave = imgVoltarWhiteMouseLeave
            ExplicitLeft = 10
            ExplicitTop = 6
            ExplicitWidth = 56
            ExplicitHeight = 35
          end
        end
        object pnlLiberar: TPanel
          Left = 0
          Top = 0
          Width = 66
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Color = 6310948
          ParentBackground = False
          TabOrder = 1
          object imgLiberarGreen: TImage
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 66
            Height = 41
            Cursor = crHandPoint
            Hint = 'Liberar passageiro selecionado'
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
              000002704944415478DAC595CD6F0C7118C79F67661D040709AD7839495A765E
              2A488DA417C201972652BBC1B98D068D8BEB22717095D6A171447638AD34EB0F
              20BA9B90B4F3B2D4CB853642F5D2E2B03AF37866BAB3ABFBE6375EE239CCCBEF
              37BFEF677ECFDB0FE11F1BC6F9582B9D3282BB9DBC5FF873006524D59ED9ECE8
              D98FA1F88BD3FBC0F74361F2E0208F3F0B9E552BDDE968DDF38057FD5800CD49
              DF42847340F088250B0438C8EFDB4200C11C028DF37283158EF1C898A598E7E3
              01DC5411017B45DC4044455B350D618062A776C8882ECF6E107234C19247A4B8
              9AF9BE35807DAEB933A3BCF55E40ECE691F542E23F41F8F28A150B5672D7C528
              265540D219D89240F9432CD156F63DD169EDB9F3A9C145BA93CEAF044DD8BE54
              EEB5DD7252586AF678A38B5600191EB92228FE8696E543207B7B39BB72350065
              2CD5BCD600E07CDE8F12E51071ABA8F8BA8DE585AF4BD20467DBE19A3ECC910F
              FD519D8480B042497ACC2F89553244B7F90B0E1E5E6A26FE6D517EC8F347EAE9
              04B0CC5A7D96922D8600DD4D1FE0C127F500CEEF21CEEF71CD4D5FE6B91B22E2
              4D01E12E8256E0F9B9A85A2B56069F4E5A9A39A139A941F012F95F89B3FC2C49
              72BFBDFBDE73D1205721C6BB81B5EDC5DB04B9026895A6655E789D108E7240FB
              DA869F28CF80130D80BF5968D21AAF63AAEBC1FCEA1D70ABD04B2F6F7284B869
              6197701FAAFE382DB2D86BDEE5533B698EF07A6A705164DAF499ED287B255148
              20CE09A0D83D7767EBE7FE4FBB0E4C775263DC55872B07CE241F3843AD0F1C18
              E59CBF100B10C664FAEDA6A82B86AD4486C9704E928C28CFF5A9B31D56CFCECF
              B18FCCA66EE39682245150A1A26B62017EC77E00A5D82128712125C300000000
              49454E44AE426082}
            ShowHint = True
            OnMouseEnter = imgLiberarGreenMouseEnter
            ExplicitLeft = 3
            ExplicitTop = 16
          end
          object imgLiberarWhite: TImage
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 66
            Height = 41
            Cursor = crHandPoint
            Hint = 'Liberar passageiro selecionado'
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
              000001C44944415478DAC5953D2F044118C7774523A1E34E1C2D85CE0927D110
              0A3412DFC1857889467B225168E54E21BE04B9DC7D00E25C424981CE897034A8
              44ACDFD8679375BBCB8C9798E49F677766F6FFDB7D66E659DBFAE3669B4C761C
              27F5FE906D1FFE1880591DA105B31BB94F123CE301FA8FA43F4EA872FF6A0AD8
              24CCA0A2184FA3840C5FA12DA4BE680CE500CC9902CA843ECD4C9401A4B40198
              77104E509326E0117503B98C0448CEB3F2D65DA851D3DC0F3993742E786BE207
              B412AE0D4DA35A1CC06D2045400A96BB68BAED49A2FF6B8B988F075224800C61
              45D3FC020DA11EB4E3EBCF00580D0030EF95896D06E6F7288F867D636A0B4F7A
              E7C41673B5C5F6507D8DD1B6E52EDE5284F92E1A097981173408A4EC01FA09FB
              21803493B6185FE67A5DD33C081048525294F04D7C46534CCC33AE4E7241C3BC
              22293AFEB00602095B643FA4E10B73D5C217590051DB5441D6D0A8FA74EBF356
              00301100FCF2418B01A9D60254A9D8B0DC0AD969E9D721AF3DA0737480160138
              8114F960ED845303883257C5AE523BF03FE55A0039C2ACE5FE704A286D45FF70
              B200E64D016A4D9ABDAA28A5A424C3296F9FD31F23DC19FF3223A0EA8D1D7542
              759F31027CA7BD0157A0B61925CFBBAE0000000049454E44AE426082}
            ShowHint = True
            Visible = False
            OnClick = imgLiberarWhiteClick
            OnMouseLeave = imgLiberarWhiteMouseLeave
            ExplicitLeft = 10
            ExplicitTop = 6
            ExplicitWidth = 56
            ExplicitHeight = 35
          end
        end
      end
      object pnlMainFrameCheckIn: TPanel
        Left = 0
        Top = 0
        Width = 878
        Height = 576
        Align = alClient
        BevelOuter = bvNone
        Color = 15791343
        ParentBackground = False
        TabOrder = 1
        object pnlVoosAtribuidos: TPanel
          AlignWithMargins = True
          Left = 8
          Top = 236
          Width = 870
          Height = 35
          Margins.Left = 8
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alBottom
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 'Lista de passageiros pendentes'
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
        object DBGridVoosPassageiros: TDBGrid
          AlignWithMargins = True
          Left = 8
          Top = 352
          Width = 865
          Height = 219
          Margins.Left = 8
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
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          StyleElements = [seBorder]
          Columns = <
            item
              Expanded = False
              FieldName = 'idUsuario'
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
              Title.Caption = 'Nome passageiro'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI Semibold'
              Title.Font.Style = [fsBold]
              Width = 480
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
              Width = 190
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'assento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6310948
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              Title.Caption = 'Assento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI Semibold'
              Title.Font.Style = [fsBold]
              Width = 185
              Visible = True
            end>
        end
        object pnlSearchCheckIn: TPanel
          Left = 0
          Top = 271
          Width = 878
          Height = 81
          Align = alBottom
          BevelOuter = bvNone
          Color = 15791343
          ParentBackground = False
          TabOrder = 2
          object pnlSearchCheckInFrame: TPanel
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
            object imgSearchCheckIn: TImage
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
            object edtSearchCheckIn: TEdit
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
              TextHint = ' Pesquise pelo Nome ou C'#243'digo do acento'
              OnChange = edtSearchCheckInChange
            end
            object pnlDivSearchCheckIn: TPanel
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
        object pnlVoo: TPanel
          AlignWithMargins = True
          Left = 8
          Top = 0
          Width = 870
          Height = 35
          Margins.Left = 8
          Margins.Top = 0
          Margins.Right = 0
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
          TabOrder = 3
          StyleElements = [seClient, seBorder]
          object pnlNumeroVooText: TPanel
            AlignWithMargins = True
            Left = 48
            Top = 0
            Width = 363
            Height = 35
            Margins.Left = 5
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 'AZ 1234'
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
          object pnlVooText: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 0
            Width = 38
            Height = 35
            Margins.Left = 5
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
            Font.Height = -19
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            StyleElements = [seClient, seBorder]
          end
        end
        object pnlQuantidades: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 55
          Width = 878
          Height = 141
          Margins.Left = 0
          Margins.Top = 20
          Margins.Right = 0
          Margins.Bottom = 40
          Align = alClient
          BevelOuter = bvNone
          Caption = 'pnlQuantidades'
          Color = 15791343
          ParentBackground = False
          TabOrder = 4
          object pnlTodos: TPanel
            AlignWithMargins = True
            Left = 80
            Top = 5
            Width = 185
            Height = 131
            Margins.Left = 80
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alLeft
            AutoSize = True
            BevelOuter = bvNone
            Color = 15791343
            ParentBackground = False
            TabOrder = 0
            object pnlTodosText: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 99
              Width = 180
              Height = 32
              Margins.Left = 5
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alBottom
              BevelOuter = bvNone
              Caption = 'Todos'
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
              object pnlDivTodos: TPanel
                AlignWithMargins = True
                Left = 0
                Top = 0
                Width = 180
                Height = 3
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alTop
                BevelOuter = bvNone
                Color = 1051799
                ParentBackground = False
                TabOrder = 0
              end
            end
            object pnlTodosQuantidade: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 0
              Width = 180
              Height = 99
              Margins.Left = 5
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              BevelOuter = bvNone
              Caption = '120'
              Color = 15791343
              Font.Charset = ANSI_CHARSET
              Font.Color = 6310948
              Font.Height = -29
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
              StyleElements = [seClient, seBorder]
              ExplicitLeft = 10
            end
          end
          object pnlLiberados: TPanel
            AlignWithMargins = True
            Left = 270
            Top = 5
            Width = 338
            Height = 131
            Margins.Left = 0
            Margins.Top = 5
            Margins.Right = 0
            Margins.Bottom = 5
            Align = alClient
            BevelOuter = bvNone
            Color = 15791343
            ParentBackground = False
            TabOrder = 1
            object pnlLiberadosText: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 99
              Width = 333
              Height = 32
              Margins.Left = 5
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alBottom
              BevelOuter = bvNone
              Caption = 'Liberados'
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
              object pnlDivLiberados: TPanel
                AlignWithMargins = True
                Left = 0
                Top = 0
                Width = 333
                Height = 3
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alTop
                BevelOuter = bvNone
                Color = 1051799
                ParentBackground = False
                TabOrder = 0
              end
            end
            object pnlLiberadosQuantidade: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 0
              Width = 333
              Height = 99
              Margins.Left = 5
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              BevelOuter = bvNone
              Caption = '75'
              Color = 15791343
              Font.Charset = ANSI_CHARSET
              Font.Color = 6310948
              Font.Height = -29
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
              StyleElements = [seClient, seBorder]
            end
          end
          object pnlFaltantes: TPanel
            AlignWithMargins = True
            Left = 613
            Top = 5
            Width = 185
            Height = 131
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 80
            Margins.Bottom = 5
            Align = alRight
            BevelOuter = bvNone
            Color = 15791343
            ParentBackground = False
            TabOrder = 2
            object pnlFaltantesText: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 99
              Width = 180
              Height = 32
              Margins.Left = 5
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alBottom
              BevelOuter = bvNone
              Caption = 'Faltantes'
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
              object pnlDivFaltantes: TPanel
                AlignWithMargins = True
                Left = 0
                Top = 0
                Width = 180
                Height = 3
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alTop
                BevelOuter = bvNone
                Color = 1051799
                ParentBackground = False
                TabOrder = 0
              end
            end
            object pnlFaltantesQuantidade: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 0
              Width = 180
              Height = 99
              Margins.Left = 5
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              BevelOuter = bvNone
              Caption = '45'
              Color = 15791343
              Font.Charset = ANSI_CHARSET
              Font.Color = 6310948
              Font.Height = -29
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
end
