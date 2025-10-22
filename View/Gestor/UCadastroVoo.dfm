object FormCadastroVoos: TFormCadastroVoos
  Left = 0
  Top = 0
  Caption = 'FormCadastroVoos'
  ClientHeight = 598
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object PanelCentralVoos: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 598
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 18
      Top = 464
      Width = 577
      Height = 105
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object EditDataPartida: TEdit
        Left = 216
        Top = 18
        Width = 145
        Height = 23
        Color = clMenu
        TabOrder = 0
        TextHint = 'Data Partida'
      end
      object EditDestinoVoos: TEdit
        Left = 25
        Top = 58
        Width = 150
        Height = 23
        Color = clMenu
        TabOrder = 1
        TextHint = 'Origem'
      end
      object EditHorarioVoos: TEdit
        Left = 216
        Top = 58
        Width = 145
        Height = 23
        Color = clMenu
        TabOrder = 2
        TextHint = 'Horario Partida'
      end
      object EditPartidaVoos: TEdit
        Left = 25
        Top = 18
        Width = 150
        Height = 23
        Color = clMenu
        TabOrder = 3
        TextHint = 'Partida'
      end
      object EditHorarioChegada: TEdit
        Left = 404
        Top = 58
        Width = 135
        Height = 23
        Color = clMenu
        TabOrder = 4
        TextHint = 'Horario Chegada'
      end
      object EditDataChegada: TEdit
        Left = 404
        Top = 18
        Width = 135
        Height = 23
        Color = clMenu
        TabOrder = 5
        TextHint = 'Data Chegada'
      end
    end
    object Panel2: TPanel
      Left = 18
      Top = 96
      Width = 577
      Height = 353
      Caption = 'Panel2'
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 12
        Top = 13
        Width = 163
        Height = 28
        Caption = 'Cadastro de Voos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGridCadastroVoos: TDBGrid
        Left = 12
        Top = 72
        Width = 549
        Height = 268
        DataSource = DataModule1.DataSourceVoos
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object EditBuscaVoos: TEdit
        Left = 344
        Top = 21
        Width = 217
        Height = 23
        Color = clMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TextHint = 'Buscar...'
        OnChange = EditBuscaVoosChange
      end
    end
    object PanelSuperiorTitulos: TPanel
      Left = 1
      Top = 1
      Width = 748
      Height = 56
      Align = alTop
      Alignment = taLeftJustify
      Caption = '     Sistema AeroOne - Voos'
      Color = 8404992
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
    end
    object Panel3: TPanel
      Left = 609
      Top = 96
      Width = 130
      Height = 353
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      object PanelAlterarCadVoos: TPanel
        Left = 8
        Top = 34
        Width = 114
        Height = 34
        Caption = 'Alterar '
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        OnClick = PanelAlterarCadVoosClick
      end
      object PanelExcluirCadVoos: TPanel
        Left = 8
        Top = 158
        Width = 114
        Height = 34
        Caption = 'Excluir '
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        OnClick = PanelExcluirCadVoosClick
      end
      object PanelNovoCadVoos: TPanel
        Left = 8
        Top = 98
        Width = 114
        Height = 34
        Caption = 'Criar novo'
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnClick = PanelNovoCadVoosClick
      end
      object PanelSalvarCadVoos: TPanel
        Left = 8
        Top = 219
        Width = 113
        Height = 33
        Caption = 'Salvar'
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        OnClick = PanelSalvarCadVoosClick
      end
    end
  end
end
