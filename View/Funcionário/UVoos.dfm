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
    ParentBackground = False
    TabOrder = 0
    object PanelSuperiorTitulos: TPanel
      Left = 1
      Top = 1
      Width = 748
      Height = 56
      Align = alTop
      Alignment = taLeftJustify
      Caption = '     Sistema AeroOne - Voss'
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
      TabOrder = 0
    end
    object PanelVoosDisponiveis: TPanel
      Left = 16
      Top = 88
      Width = 513
      Height = 249
      Color = clWhite
      Enabled = False
      ParentBackground = False
      TabOrder = 1
      object LabelVoosDisponiveisTitulo: TLabel
        Left = 62
        Top = 28
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
        Left = 219
        Top = 28
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
      object Label1: TLabel
        Left = 11
        Top = 10
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
      object DBGridVoosDisponiveis: TDBGrid
        Left = 11
        Top = 61
        Width = 479
        Height = 164
        DataSource = DataModule1.DataSourceVoos
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object EditBuscaDisponiveis: TEdit
        Left = 289
        Top = 31
        Width = 201
        Height = 23
        TabOrder = 1
        TextHint = 'Busca...'
        OnChange = EditBuscaDisponiveisChange
      end
    end
    object PanelVoosAtribuidos: TPanel
      Left = 16
      Top = 360
      Width = 513
      Height = 225
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object LabelVoosAtribuidosTitulo: TLabel
        Left = 70
        Top = 15
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
        Left = 219
        Top = 15
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
      object Label2: TLabel
        Left = 19
        Top = 1
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
      object DBGridAtribuidos: TDBGrid
        Left = 11
        Top = 52
        Width = 479
        Height = 161
        DataSource = DataModule1.DataSourceAtribuidos
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object PanelLateralBotoes: TPanel
      Left = 568
      Top = 88
      Width = 153
      Height = 249
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      object ButConecta: TPanel
        Left = 16
        Top = 31
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
        TabOrder = 0
        OnClick = ButConectaClick
      end
      object ButDesconecta: TPanel
        Left = 16
        Top = 103
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
        TabOrder = 1
        OnClick = ButDesconectaClick
      end
    end
  end
end
