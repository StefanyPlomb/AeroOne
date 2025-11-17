object FormPilotoVoo: TFormPilotoVoo
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormPilotoVoo'
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
    object pnlConectarDesconectar: TPanel
      Left = 0
      Top = 0
      Width = 66
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = 6310948
      ParentBackground = False
      TabOrder = 0
      object imgConectarDesconectarGreen: TImage
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
          000001BF4944415478DAD5943D2F04511486CF99BB1A1D4285F1511215BB6315
          5B68C42F5011053243C5DFD048D68C8F864E49A35390583BAB13DACD2E2A922D
          B43B33C719B1B1999D8FBBC96EE11677927BDFF33EF7BEF76410BA3CF05F0126
          EECD214FC02501D4AB9A91EB28C0377705DE20C23411951890691B305C38ED4F
          09671F889608F00B900EAA69FD68A2600DFE99C3B37069B1BC607C480154DBBA
          6351AF0BEE9A42E2C23769DEE7384E78CA8699CB018A56898BE7D8C463B512A5
          0B33970234671BA723A0638E4B07444A043462511C5AF64F240BF188765E35E3
          3019F01B4BF3B5A52004E58AA64F260246ECFC9420F1E467DE1E846A958C3110
          0BF05B5128CE6DB3893484E8ACA219EBB100D536CF1170B5B5361EE2EFBB5E2A
          F79EDDA8C502C66CCB17F485061005E11676D19D79CBECBC046B4200669997C7
          23DF3102C2EB8F554D4F2702468BE6B68298879811847829BCE6E57A25A3CF27
          02B81AD59265F13B6CC942E2742D00C97EF77E5B383496484020D367DE2DB060
          3378720FDD1501E23C2A965040D0FCE7FA59FD73D4B60C057097957DEC7EE578
          3D7BC1569402A845F311116765B36D1BC0FDFFC09F9EC60FAE13E62D6FD08DD1
          75C037685F2928A8841F720000000049454E44AE426082}
        ShowHint = True
        OnMouseEnter = imgConectarDesconectarGreenMouseEnter
        ExplicitLeft = 10
        ExplicitTop = 6
        ExplicitWidth = 56
        ExplicitHeight = 35
      end
      object imgConectarDesconectarWhite: TImage
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
          000001544944415478DAD5943D4B0341104077051B3B0DDA8BA5626522DAA448
          23FE022BC546895A257F238DA0F85199CE521B3B0B2D14924EB4CD0F5048612B
          78BE251B39D7DDBD39C9150E3C0676E7E6ED0DCB6A5570E87F25489264867405
          1F5AEBEA4805B6F92D2C4007C1726E014DA6482D588377388453984E357F861A
          82579180A6F7A409D8824BDB241DE7B0EA6B2E15744865F884B148E9AFE65241
          7AB6B138833A822453901ACBBA39510EC901F5C712C1702CDFBF2D94F4A89D93
          08E6494F76E679247DEA4A5181BD8A774E13A9E4829AED2C419BB4E9F9384B62
          F6ABECF7B304A66032308290C45CE145D65FDC0F7C821E6956852324E9B25691
          08F649472A1EAEE4460D1EB81589C0AC9DC0AE54122BF20924F77DF86C78C712
          1438CDCD091F60C773F20D6887C6E215789AD7E00DF6A0A10637EB1A9AEE5594
          0ABAA425E96CFF2278248D2BFBC08DA2F90F415151B8E00B1441AA196AEE24CF
          0000000049454E44AE426082}
        ShowHint = True
        Visible = False
        OnClick = imgConectarDesconectarWhiteClick
        OnMouseLeave = imgConectarDesconectarWhiteMouseLeave
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
    object DBGridVoosDisponiveis: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 116
      Width = 868
      Height = 167
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
      OnEnter = DBGridVoosDisponiveisEnter
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
    object pnlVoosAtribuidos: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 369
      Width = 873
      Height = 35
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alBottom
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
      ExplicitTop = 413
    end
    object DBGridVoosAtribuidos: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 404
      Width = 868
      Height = 167
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
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      StyleElements = [seBorder]
      OnEnter = DBGridVoosAtribuidosEnter
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
          Width = 90
          Visible = True
        end>
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
      Caption = 'Voos dispon'#237'veis'
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
    end
    object pnlHeaderVoosAtribuidos: TPanel
      Left = 0
      Top = 288
      Width = 878
      Height = 81
      Align = alBottom
      BevelOuter = bvNone
      Color = 15791343
      ParentBackground = False
      TabOrder = 5
      ExplicitLeft = 5
      ExplicitTop = 364
      object pnlSearchVoosAtribuidos: TPanel
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
        object imgSearchVoosAtribuidos: TImage
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
        object edtSearchVoosAtribuidos: TEdit
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
          OnChange = edtSearchVoosAtribuidosChange
        end
        object pnlDiv2: TPanel
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
