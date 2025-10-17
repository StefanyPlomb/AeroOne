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
    object LabelTituloRelatorios: TLabel
      Left = 24
      Top = 28
      Width = 117
      Height = 35
      Caption = 'Relat'#243'rios'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11556864
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object LabelSubtituloRelatorios: TLabel
      Left = 24
      Top = 69
      Width = 175
      Height = 20
      Caption = 'An'#225'lise os dados dos voos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object StringGridRelatorios: TStringGrid
      Left = 24
      Top = 192
      Width = 657
      Height = 376
      TabOrder = 0
    end
    object BoxFiltroRelaorios: TComboBox
      Left = 271
      Top = 144
      Width = 154
      Height = 23
      TabOrder = 1
      Text = 'Filtros'
      Items.Strings = (
        'Voos finalizado '
        'Menor nivel de comparecimento '
        'Maior nivel de comparecimento '
        'Cidades com maior nivel de partida '
        'Cidade com menor nivel de chegadas ')
    end
    object EditBuscaRelatorios: TEdit
      Left = 24
      Top = 144
      Width = 217
      Height = 23
      TabOrder = 2
      TextHint = 'Buscar (nome/ID)'
    end
    object PanelBuscarRelatorios: TPanel
      Left = 568
      Top = 140
      Width = 113
      Height = 27
      Caption = 'Buscar/Fltrar'
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
  end
end
