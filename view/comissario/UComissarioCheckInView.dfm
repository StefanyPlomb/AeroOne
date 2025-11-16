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
          000002064944415478DAE595BF4FDB5010C7EFEC10606958200B120B8D449C18
          2A98D8BA752A30D044552594118642FB5F30B41248949105A1A4190A5B471698
          0005DB01412B3180448105061A48F03BCE945F766CE30A9090B8C54FEFDDBBCF
          BDAFBF7A0FE191039F0F20A1A5A35823355B63AA881D43CDEEDD1BD0B2355017
          393E1922C00C22246C8B443ACF4F95C287DF7EC77E9EFE37A0BD985608609687
          AD7E4D10D12F19446F21915F0B0CB08A0B8205EE3A124406223892C1EC768354
          012E64F97BAA3B3BE72225FE84192A7B4036592ED52957154035529F01F18B43
          865DA95217C770B9D1249143C457AE10A0115DC98DF9029246CAE0028A7D23CC
          EB4AF6F5D5095F1C9F8C72CE471784A629B9764F80654549863FD59DDD00AE73
          8D771904698225ABB725574251AD637ADF15905C7FDF89422C0501FC3B6DFA2D
          03E66CB992D4A5B7CD2C3F0CA098EA41C0595B2E8A4E3DFE7DE5D124926ACCA6
          422C7FE00AB0825DA4B18B925E00BF9FCC2E2AB08B6C0E737151FA1377F5D5B6
          916D0A42563064369280AC974D398635253BEE0B68DD7C535B5F8EE85CE4A51D
          022504AAE5D349AEA50936CEC054D712F9B22FC08A0EA33F6E82BC18F8AA003A
          1402BA8BC9DCBA73CDF3B2BB84FC6048EC8EEA1B26519F5B715FC0B55C670D83
          4894E154D5B1BCCA9D4FF1D531E9942530E076A8850F4D142E5F3C387288B66F
          5BD12F9ECE93F96401E7CFE9E8195FFF1D360000000049454E44AE426082}
        ShowHint = True
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
          000001764944415478DAE5953B2F444114C767483C2A95DD4689C2B222ABD2F9
          021E1F4149E1F52D14242428B554F8061A2A84DD0D4149E2D55009CDF59BCC84
          EB98B9F70A9B6C62927F4EEE9C33E737F7DC3373B5AAF1D0FF071045511ED3E1
          1E6FB4D6F7BF0690B40533852650AF7057D0065A03F6FA6300C90B981DD499B2
          C92B3406E42C33C025DF476D192BF88C867C906F0057968A67E72FA809350620
          97A828CBE503CC6316C5F42DEA41ED680B0D0420B30096D300554C414CEFB170
          38F6860B68DA032813D71F04B856BCF32CFC00C4624D67ADA256119B27F62104
          28610EB3005CFC0866574C0F127BF4578051655B393E4AC41ED7B24439621FBD
          00B7B08CE90B01523EF209715F3ACC0798C32C8969D3A6A6B34C9B6EAA709BCE
          00584903342B7BD0BA84CB1C34E36B0824BF50F6A0BD25021CC41CAA0395FDAA
          7852F6AA38978EA4CBCE40B651774A72B3F3715FF24440AC5C93CA5ED745E13E
          55F6BA5E9765C90C10B09CFAFCE15CC75B3169D4CF2FB36E01EF42D68819C4B2
          CD100000000049454E44AE426082}
        ShowHint = True
        Visible = False
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
    ExplicitLeft = 8
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
      Caption = ' Inicie VOO atribu'#237'do'
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
