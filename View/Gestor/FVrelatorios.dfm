object FormRelatorios: TFormRelatorios
  Left = 0
  Top = 0
  Caption = 'FormRelatorios'
  ClientHeight = 598
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PanelCentralRelatorios: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 598
    Align = alClient
    TabOrder = 0
    ExplicitTop = 8
    object PanelSuperiorTitulos: TPanel
      Left = 1
      Top = 1
      Width = 748
      Height = 56
      Align = alTop
      Alignment = taLeftJustify
      Caption = '     Sistema AeroOne - Relat'#243'rios'
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
      ExplicitLeft = 2
      ExplicitTop = 0
    end
    object PanelDadosRelatórios: TPanel
      Left = 16
      Top = 160
      Width = 713
      Height = 416
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object StringGridRelatorios: TStringGrid
        Left = 24
        Top = 16
        Width = 657
        Height = 393
        TabOrder = 0
      end
    end
    object Panel1: TPanel
      Left = 16
      Top = 72
      Width = 713
      Height = 57
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object Label1: TLabel
        Left = 24
        Top = 18
        Width = 194
        Height = 28
        Caption = 'Visualizar Relat'#243'rios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BoxFiltroRelaorios: TComboBox
        Left = 311
        Top = 18
        Width = 154
        Height = 23
        TabOrder = 0
        Text = 'Filtros'
        Items.Strings = (
          'Voos finalizado '
          'Menor nivel de comparecimento '
          'Maior nivel de comparecimento '
          'Cidades com maior nivel de partida '
          'Cidade com menor nivel de chegadas ')
      end
      object EditBuscaRelatorios: TEdit
        Left = 480
        Top = 18
        Width = 217
        Height = 23
        DoubleBuffered = False
        HideSelection = False
        ParentDoubleBuffered = False
        TabOrder = 1
        TextHint = 'Buscar (nome/ID)'
      end
    end
  end
end
