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
    ExplicitWidth = 814
    ExplicitHeight = 444
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
    object StringGridCadVoos: TStringGrid
      Left = 16
      Top = 80
      Width = 591
      Height = 233
      ColCount = 9
      FixedColor = 12615680
      RowCount = 1
      FixedRows = 0
      TabOrder = 1
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
      Left = 118
      Top = 330
      Width = 150
      Height = 23
      TabOrder = 2
      Text = 'De'
    end
    object EditCodigoVoos: TEdit
      Left = 18
      Top = 330
      Width = 79
      Height = 23
      TabOrder = 3
      Text = 'C'#243'digo'
    end
    object EditAeroMVoos: TEdit
      Left = 187
      Top = 370
      Width = 150
      Height = 23
      TabOrder = 4
      Text = 'AeroMo'#231'o(a)'
    end
    object EditDestinoVoos: TEdit
      Left = 290
      Top = 330
      Width = 150
      Height = 23
      TabOrder = 5
      Text = 'Para'
    end
    object EditPVoos: TEdit
      Left = 18
      Top = 370
      Width = 150
      Height = 23
      TabOrder = 6
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
      TabOrder = 7
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
      TabOrder = 8
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
      TabOrder = 9
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
      TabOrder = 10
    end
  end
end
