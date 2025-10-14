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
      Left = 16
      Top = 8
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
      Top = 37
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
      Left = 390
      Top = 51
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
      Text = 'Pesquisar por ID...'
    end
    object EditPartidaVoos: TEdit
      Left = 18
      Top = 330
      Width = 150
      Height = 23
      TabOrder = 1
      Text = 'De'
    end
    object EditAeroMVoos: TEdit
      Left = 18
      Top = 359
      Width = 150
      Height = 23
      TabOrder = 2
      Text = 'AeroMo'#231'o(a)'
    end
    object EditDestinoVoos: TEdit
      Left = 187
      Top = 330
      Width = 150
      Height = 23
      TabOrder = 3
      Text = 'Para'
    end
    object EditPVoos: TEdit
      Left = 343
      Top = 330
      Width = 150
      Height = 23
      TabOrder = 4
      Text = 'Piloto'
    end
    object PanelSalvarCadVoos: TPanel
      Left = 631
      Top = 281
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
      Top = 146
      Width = 105
      Height = 34
      Caption = 'Alterar '
      Color = 8404992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 41984
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
      Top = 216
      Width = 105
      Height = 34
      Caption = 'Excluir '
      Color = 8404992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4079359
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
      Top = 88
      Width = 105
      Height = 34
      Caption = 'Criar novo'
      Color = 8404992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 41984
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
      Top = 88
      Width = 607
      Height = 236
      DataSource = DataModule1.DataSourceVoos
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object EditDataPartida: TEdit
      Left = 187
      Top = 359
      Width = 121
      Height = 23
      TabOrder = 10
      Text = 'Data Partida'
    end
    object EditHorarioVoos: TEdit
      Left = 314
      Top = 359
      Width = 121
      Height = 23
      TabOrder = 11
      Text = 'Horario Partida'
    end
    object Edit1: TEdit
      Left = 16
      Top = 388
      Width = 121
      Height = 23
      TabOrder = 12
      Text = 'Horario Chegada'
    end
    object Edit2: TEdit
      Left = 143
      Top = 388
      Width = 121
      Height = 23
      TabOrder = 13
      Text = 'Data Chegada'
    end
  end
end
