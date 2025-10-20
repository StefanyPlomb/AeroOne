object FormVoosAeroMo: TFormVoosAeroMo
  Left = 0
  Top = 0
  Caption = 'FormVoosAeroMo'
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
  object PanelCentral_AeroMo: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 598
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 748
    ExplicitHeight = 590
    object LabelSubtituloVoo: TLabel
      Left = 26
      Top = 60
      Width = 230
      Height = 20
      Caption = 'Gerencie os voos atribuidos a voc'#234
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LabelTituloVoo: TLabel
      Left = 26
      Top = 19
      Width = 127
      Height = 35
      Caption = 'Meus Voos'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11556864
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object LabelVoosDisponiveisTitulo: TLabel
      Left = 77
      Top = 118
      Width = 133
      Height = 23
      Caption = 'Voos Dispon'#237'veis'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11556864
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelQuantidadeDisponivel: TLabel
      Left = 216
      Top = 118
      Width = 22
      Height = 23
      Caption = '(7)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11556864
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelVoosAtribuidosTitulo: TLabel
      Left = 78
      Top = 366
      Width = 132
      Height = 23
      Caption = 'Voos Atribu'#237'dos '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11556864
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelQuantidadeAtribuida: TLabel
      Left = 216
      Top = 366
      Width = 22
      Height = 23
      Caption = '(2)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11556864
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 26
      Top = 100
      Width = 45
      Height = 45
      Caption = #55357#57068
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 27
      Top = 348
      Width = 45
      Height = 45
      Caption = #55357#57067
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBGridVoosDisponiveis: TDBGrid
      Left = 27
      Top = 165
      Width = 479
      Height = 164
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object DBGrid2: TDBGrid
      Left = 27
      Top = 416
      Width = 479
      Height = 161
      DataSource = DataModule1.DataSourceAtribuidos
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object EditBuscaDisponiveis: TEdit
      Left = 408
      Top = 60
      Width = 201
      Height = 23
      TabOrder = 2
      TextHint = 'Busca...'
      OnChange = EditBuscaDisponiveisChange
    end
    object ButBuscar_Aeromo: TPanel
      Left = 615
      Top = 60
      Width = 91
      Height = 30
      Caption = 'Buscar'
      Color = 5975552
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
    end
    object ButConecta: TPanel
      Left = 512
      Top = 288
      Width = 121
      Height = 41
      Caption = 'Me Conectar'
      Color = 5975552
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      OnClick = ButConectaClick
    end
    object ButDesconecta: TPanel
      Left = 512
      Top = 536
      Width = 121
      Height = 41
      Caption = 'Me Desconectar'
      Color = 5975552
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
    end
  end
end
