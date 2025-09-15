object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 618
  ClientWidth = 942
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PanelFundo_Gestor: TPanel
    Left = 0
    Top = 0
    Width = 942
    Height = 618
    Align = alClient
    Color = 15263976
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 599
    object Label1: TLabel
      Left = 229
      Top = 80
      Width = 77
      Height = 31
      Caption = 'HOME'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -25
      Font.Name = 'Lucida Sans Unicode'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PanelLateral_Gestor: TPanel
      Left = 1
      Top = 1
      Width = 208
      Height = 616
      Align = alLeft
      Color = 5975552
      ParentBackground = False
      TabOrder = 0
      ExplicitHeight = 597
      object Label7: TLabel
        Left = -7
        Top = 56
        Width = 215
        Height = 15
        Caption = '-------------------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaption
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Panel1: TPanel
        Left = 21
        Top = 112
        Width = 169
        Height = 41
        Caption = 'Funcion'#225'rios'
        Color = 5975552
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        OnClick = Panel1Click
      end
      object Panel2: TPanel
        Left = 23
        Top = 176
        Width = 169
        Height = 43
        Caption = 'Reservas'
        Color = 5975552
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
      object Panel3: TPanel
        Left = 21
        Top = 241
        Width = 170
        Height = 40
        Caption = 'VOOS'
        Color = 5975552
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
      end
      object Panel4: TPanel
        Left = 21
        Top = 296
        Width = 169
        Height = 41
        Caption = 'Relat'#243'rios'
        Color = 5975552
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
      end
    end
    object PanelSuperior_Gestor: TPanel
      Left = 208
      Top = 0
      Width = 734
      Height = 64
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object LabelSaida_Gestor: TLabel
        Left = 521
        Top = 20
        Width = 73
        Height = 20
        Caption = 'Name User'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 560
        Top = 37
        Width = 34
        Height = 15
        Caption = 'Gestor'
      end
      object Panel7: TPanel
        Left = 600
        Top = 11
        Width = 113
        Height = 41
        Caption = 'Logout'
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 352
      Top = 98
      Width = 185
      Height = 113
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object Label3: TLabel
        Left = 40
        Top = 73
        Width = 108
        Height = 20
        Caption = 'Voos ativos hoje'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 80
        Top = 26
        Width = 34
        Height = 41
        Caption = '12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12016384
        Font.Height = -30
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel6: TPanel
      Left = 601
      Top = 97
      Width = 185
      Height = 113
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      object Label4: TLabel
        Left = 32
        Top = 72
        Width = 126
        Height = 20
        Caption = 'Check-ins iniciados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 72
        Top = 25
        Width = 51
        Height = 41
        Caption = '345'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12016384
        Font.Height = -30
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object PanelConteudo: TPanel
      Left = 215
      Top = 242
      Width = 725
      Height = 375
      Caption = '   Click'
      Color = 11316396
      ParentBackground = False
      TabOrder = 4
    end
  end
end
