object FormCheckInIniciado: TFormCheckInIniciado
  Left = 0
  Top = 0
  Caption = 'FormCheckInIniciado'
  ClientHeight = 596
  ClientWidth = 749
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PanelCentral: TPanel
    Left = 0
    Top = 0
    Width = 749
    Height = 596
    Align = alClient
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    object LabelOrigem: TLabel
      Left = 36
      Top = 78
      Width = 16
      Height = 20
      Caption = 'SP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LabelDestino: TLabel
      Left = 81
      Top = 78
      Width = 16
      Height = 20
      Caption = 'SP'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 58
      Top = 71
      Width = 17
      Height = 28
      Caption = #8594
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LabelHoraPartida: TLabel
      Left = 114
      Top = 78
      Width = 39
      Height = 20
      Caption = '14: 00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 103
      Top = 71
      Width = 5
      Height = 28
      Caption = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 44
      Top = 124
      Width = 169
      Height = 104
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 279
      Top = 124
      Width = 172
      Height = 104
      TabOrder = 1
    end
    object Panel4: TPanel
      Left = 505
      Top = 124
      Width = 166
      Height = 104
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 73
      Top = 264
      Width = 303
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = 'Buscar passageiro'
      TextHint = 'Buscar passageiro'
      OnChange = Edit1Change
    end
    object Button1: TButton
      Left = 18
      Top = 264
      Width = 49
      Height = 28
      Caption = #55357#56590
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Panel5: TPanel
      Left = 18
      Top = 312
      Width = 599
      Height = 273
      Color = clWhite
      ParentBackground = False
      TabOrder = 5
      object Label6: TLabel
        Left = 18
        Top = 11
        Width = 231
        Height = 35
        Caption = 'Lista de Passageiros'
        Color = 5581568
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11556864
        Font.Height = -25
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 18
        Top = 52
        Width = 415
        Height = 205
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object Button2: TButton
        Left = 463
        Top = 120
        Width = 113
        Height = 33
        Caption = 'Mapa de Acentos'
        TabOrder = 1
      end
      object Button3: TButton
        Left = 463
        Top = 56
        Width = 113
        Height = 33
        Caption = 'Liberar'
        TabOrder = 2
      end
    end
    object PanelSuperiorTitulos: TPanel
      Left = 1
      Top = 1
      Width = 747
      Height = 56
      Align = alTop
      Alignment = taLeftJustify
      Caption = '     Sistema AeroOne - Check-in'
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
      TabOrder = 6
    end
  end
end
