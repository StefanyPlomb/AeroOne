object FormVoos: TFormVoos
  Left = 0
  Top = 0
  Caption = 'FormVoos'
  ClientHeight = 598
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PanelCentral_Gestor: TPanel
    Left = 0
    Top = 0
    Width = 746
    Height = 598
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 811
    ExplicitHeight = 346
    object LabelTitulo_Gestor: TLabel
      Left = 18
      Top = 16
      Width = 127
      Height = 35
      Caption = 'Meus Voos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11556864
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelSubtitulo_Gestor: TLabel
      Left = 42
      Top = 57
      Width = 125
      Height = 20
      Caption = 'Gerencie seus voos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object PanelAlterarVoo: TPanel
      Left = 562
      Top = 75
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
      TabOrder = 0
    end
    object PanelExcluirVoo: TPanel
      Left = 434
      Top = 75
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
      TabOrder = 1
    end
    object StringGridVoo: TStringGrid
      Left = 18
      Top = 115
      Width = 649
      Height = 270
      ColCount = 15
      Constraints.MinHeight = 100
      Constraints.MinWidth = 100
      Ctl3D = False
      RowCount = 9
      ParentCtl3D = False
      TabOrder = 2
    end
    object PanelNovoVoo: TPanel
      Left = 312
      Top = 443
      Width = 105
      Height = 34
      Caption = 'Nova reserva'
      Color = 8404992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 41984
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
    end
  end
end
