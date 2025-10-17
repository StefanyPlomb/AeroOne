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
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object LabelTituloVoos: TLabel
      Left = 18
      Top = 32
      Width = 202
      Height = 35
      Caption = 'Cadastro de Voos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11556864
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelSubtituloVoos: TLabel
      Left = 18
      Top = 73
      Width = 150
      Height = 20
      Caption = 'Crie a pr'#243'xima viagem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object EditBuscaVoos: TEdit
      Left = 408
      Top = 91
      Width = 217
      Height = 23
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Buscar...'
      OnChange = EditBuscaVoosChange
    end
    object EditPartidaVoos: TEdit
      Left = 18
      Top = 418
      Width = 150
      Height = 23
      Color = clMenu
      TabOrder = 1
      TextHint = 'Partida'
    end
    object EditAeroMVoos: TEdit
      Left = 18
      Top = 460
      Width = 150
      Height = 23
      Color = clMenu
      TabOrder = 2
      TextHint = 'AeroMo'#231'o(a)'
    end
    object EditDestinoVoos: TEdit
      Left = 186
      Top = 418
      Width = 150
      Height = 23
      Color = clMenu
      TabOrder = 3
      TextHint = 'Origem'
    end
    object EditPVoos: TEdit
      Left = 186
      Top = 460
      Width = 150
      Height = 23
      Color = clMenu
      TabOrder = 4
      TextHint = 'Piloto '
    end
    object PanelSalvarCadVoos: TPanel
      Left = 631
      Top = 361
      Width = 105
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
      TabOrder = 5
      OnClick = PanelSalvarCadVoosClick
    end
    object PanelAlterarCadVoos: TPanel
      Left = 631
      Top = 226
      Width = 105
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
      TabOrder = 6
      OnClick = PanelAlterarCadVoosClick
    end
    object PanelExcluirCadVoos: TPanel
      Left = 631
      Top = 296
      Width = 105
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
      TabOrder = 7
      OnClick = PanelExcluirCadVoosClick
    end
    object PanelNovoCadVoos: TPanel
      Left = 631
      Top = 168
      Width = 105
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
      TabOrder = 8
      OnClick = PanelNovoCadVoosClick
    end
    object DBGridCadastroVoos: TDBGrid
      Left = 18
      Top = 128
      Width = 607
      Height = 268
      DataSource = DataModule1.DataSourceVoos
      ReadOnly = True
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object EditDataPartida: TEdit
      Left = 352
      Top = 418
      Width = 121
      Height = 23
      Color = clMenu
      TabOrder = 10
      TextHint = 'Data Partida'
    end
    object EditHorarioVoos: TEdit
      Left = 352
      Top = 460
      Width = 121
      Height = 23
      Color = clMenu
      TabOrder = 11
      TextHint = 'Horario Partida'
    end
    object Edit1: TEdit
      Left = 504
      Top = 460
      Width = 121
      Height = 23
      Color = clMenu
      TabOrder = 12
      TextHint = 'Horario Chegada'
    end
    object Edit2: TEdit
      Left = 504
      Top = 418
      Width = 121
      Height = 23
      Color = clMenu
      TabOrder = 13
      TextHint = 'Data Chegada'
    end
  end
end
