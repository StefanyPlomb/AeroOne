object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 349
  ClientWidth = 817
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
    Width = 817
    Height = 349
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 56
      Height = 35
      Caption = 'Voos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11556864
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 18
      Top = 41
      Width = 166
      Height = 20
      Caption = 'Veja sua pr'#243'xima viagem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object StringGrid1: TStringGrid
      Left = 16
      Top = 88
      Width = 657
      Height = 233
      ColCount = 10
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 456
      Top = 42
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
      Text = 'Pesquisar por local...'
    end
    object Panelvoogestor: TPanel
      Left = 679
      Top = 88
      Width = 138
      Height = 261
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
    end
    object Panel2: TPanel
      Left = 696
      Top = 38
      Width = 105
      Height = 27
      Caption = 'Exibir'
      Color = 8404992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 41984
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      OnClick = Panel2Click
    end
  end
end
