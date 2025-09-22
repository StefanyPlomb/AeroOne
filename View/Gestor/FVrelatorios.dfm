object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'Form13'
  ClientHeight = 488
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 814
    Height = 488
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -8
    object Label1: TLabel
      Left = 16
      Top = 16
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
    object Label2: TLabel
      Left = 16
      Top = 50
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
    object StringGrid1: TStringGrid
      Left = 0
      Top = 112
      Width = 814
      Height = 376
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 528
      Top = 51
      Width = 145
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
    object Edit1: TEdit
      Left = 360
      Top = 51
      Width = 153
      Height = 23
      TabOrder = 2
      Text = 'Buscar (nome/ID)'
    end
    object Panel2: TPanel
      Left = 693
      Top = 50
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
