object Form10: TForm10
  Left = 0
  Top = 0
  Caption = 'Form10'
  ClientHeight = 198
  ClientWidth = 200
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
    Width = 200
    Height = 198
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object EditNome_cadastro: TEdit
      Left = 16
      Top = 11
      Width = 153
      Height = 23
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Nome...'
    end
    object Edit2: TEdit
      Left = 16
      Top = 48
      Width = 153
      Height = 23
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'E-mail...'
    end
    object Edit3: TEdit
      Left = 16
      Top = 128
      Width = 153
      Height = 23
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'C'#243'digo'
    end
    object Edit4: TEdit
      Left = 16
      Top = 88
      Width = 153
      Height = 23
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = 'Funs'#227'o...'
    end
    object Button1: TButton
      Left = 48
      Top = 157
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
end
